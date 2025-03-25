import subprocess
import re

from tqdm import tqdm

# Define the range of fractional bits to test
A_F_range = range(28, 5, -1)  # Test from 28 down to 10 bits
B_F_range = range(28, 5, -1)
C_F_range = range(28, 5, -1)

# Error tolerance
ERR_TOL = 5.25e-6

def update_fractional_bits(a_f: int, b_f: int, c_f: int) -> None:
    """
    Updates the fractional bit definitions in the Quadra.hpp file.
    This function modifies the constants `A_F`, `B_F`, and `C_F` in the 
    Quadra.hpp file to the specified values. Each constant is updated 
    with a comment indicating the optimization.
    Args:
        a_f (int): The number of fractional bits to set for `A_F`.
        b_f (int): The number of fractional bits to set for `B_F`.
        c_f (int): The number of fractional bits to set for `C_F`.
    Returns:
        None: This function does not return a value. It directly modifies 
        the Quadra.hpp file.
    """
    with open("Quadra.hpp", "r") as file:
        lines = file.readlines()

    with open("Quadra.hpp", "w") as file:
        for line in lines:
            if "const int A_F = " in line:
                file.write(f"const int A_F = {a_f};  // <optimize>\n")
            elif "const int B_F = " in line:
                file.write(f"const int B_F = {b_f};  // <optimize>\n")
            elif "const int C_F = " in line:
                file.write(f"const int C_F = {c_f};  // <optimize>\n")
            else:
                file.write(line)

def main():
    # Main optimization loop
    best_config = [28] * 3
    best_error = ERR_TOL

    with tqdm(total=len(A_F_range)*len(B_F_range)*len(C_F_range)) as pbar:
        for a_f in A_F_range:
            for b_f in B_F_range:
                for c_f in C_F_range:
                    # Update fractional bits in Quadra.hpp
                    update_fractional_bits(a_f, b_f, c_f)

                    # Run the test bench and get the maximum error
                    out = subprocess.run(
                        "make DBG_TST=1 clean all run | egrep y_err | cut -d'=' -f2",
                        shell=True,
                        capture_output=True,
                        text=True
                    )
                    errors = [float(e) for e in out.stdout.split()]
                    max_error = max(errors)

                    # Check if this configuration meets the error tolerance
                    if max_error < ERR_TOL:
                        # print(f"Configuration (A_F={a_f}, B_F={b_f}, C_F={c_f}) meets tolerance with error {max_error}")
                        if (a_f + b_f + c_f) < (best_config[0] + best_config[1] + best_config[2]):
                            best_config = (a_f, b_f, c_f)
                            best_error = max_error

                    pbar.update(1)

    print(f"\nBest configuration: A_F={best_config[0]}, B_F={best_config[1]}, C_F={best_config[2]}")
    print(f"Maximum error: {best_error}")

if __name__ == "__main__":
    main()