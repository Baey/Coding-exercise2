`include "quadra_types.vs"

module lut
(
    input  x1_t  x1,
    output a_t   a,
    output b_t   b,
    output c_t   c
);
    // Read coefficients:
    always_comb
    unique casez (x1)
        7'b0000000 :  a = 19'h00052bec;
        7'b0000001 :  a = 19'h000542e6;
        7'b0000010 :  a = 19'h00055a90;
        7'b0000011 :  a = 19'h000572e3;
        7'b0000100 :  a = 19'h00058bd9;
        7'b0000101 :  a = 19'h0005a56c;
        7'b0000110 :  a = 19'h0005bf95;
        7'b0000111 :  a = 19'h0005da4f;
        7'b0001000 :  a = 19'h0005f592;
        7'b0001001 :  a = 19'h00061158;
        7'b0001010 :  a = 19'h00062d9a;
        7'b0001011 :  a = 19'h00064a50;
        7'b0001100 :  a = 19'h00066773;
        7'b0001101 :  a = 19'h000684fd;
        7'b0001110 :  a = 19'h0006a2e5;
        7'b0001111 :  a = 19'h0006c125;
        7'b0010000 :  a = 19'h0006dfb4;
        7'b0010001 :  a = 19'h0006fe8b;
        7'b0010010 :  a = 19'h00071da3;
        7'b0010011 :  a = 19'h00073cf4;
        7'b0010100 :  a = 19'h00075c75;
        7'b0010101 :  a = 19'h00077c1f;
        7'b0010110 :  a = 19'h00079bea;
        7'b0010111 :  a = 19'h0007bbce;
        7'b0011000 :  a = 19'h0007dbc3;
        7'b0011001 :  a = 19'h0007fbc1;
        7'b0011010 :  a = 19'h00001bc0;
        7'b0011011 :  a = 19'h00003bb8;
        7'b0011100 :  a = 19'h00005ba1;
        7'b0011101 :  a = 19'h00007b74;
        7'b0011110 :  a = 19'h00009b27;
        7'b0011111 :  a = 19'h0000bab4;
        7'b0100000 :  a = 19'h0000da12;
        7'b0100001 :  a = 19'h0000f939;
        7'b0100010 :  a = 19'h00011823;
        7'b0100011 :  a = 19'h000136c6;
        7'b0100100 :  a = 19'h0001551b;
        7'b0100101 :  a = 19'h0001731b;
        7'b0100110 :  a = 19'h000190bf;
        7'b0100111 :  a = 19'h0001adfe;
        7'b0101000 :  a = 19'h0001cad2;
        7'b0101001 :  a = 19'h0001e733;
        7'b0101010 :  a = 19'h0002031a;
        7'b0101011 :  a = 19'h00021e81;
        7'b0101100 :  a = 19'h00023960;
        7'b0101101 :  a = 19'h000253b1;
        7'b0101110 :  a = 19'h00026d6c;
        7'b0101111 :  a = 19'h0002868d;
        7'b0110000 :  a = 19'h00029f0b;
        7'b0110001 :  a = 19'h0002b6e2;
        7'b0110010 :  a = 19'h0002ce0c;
        7'b0110011 :  a = 19'h0002e481;
        7'b0110100 :  a = 19'h0002fa3e;
        7'b0110101 :  a = 19'h00030f3c;
        7'b0110110 :  a = 19'h00032376;
        7'b0110111 :  a = 19'h000336e8;
        7'b0111000 :  a = 19'h0003498c;
        7'b0111001 :  a = 19'h00035b5d;
        7'b0111010 :  a = 19'h00036c58;
        7'b0111011 :  a = 19'h00037c77;
        7'b0111100 :  a = 19'h00038bb8;
        7'b0111101 :  a = 19'h00039a15;
        7'b0111110 :  a = 19'h0003a78c;
        7'b0111111 :  a = 19'h0003b419;
        7'b1000000 :  a = 19'h0003bfb9;
        7'b1000001 :  a = 19'h0003ca6a;
        7'b1000010 :  a = 19'h0003d427;
        7'b1000011 :  a = 19'h0003dcf0;
        7'b1000100 :  a = 19'h0003e4c1;
        7'b1000101 :  a = 19'h0003eb99;
        7'b1000110 :  a = 19'h0003f177;
        7'b1000111 :  a = 19'h0003f658;
        7'b1001000 :  a = 19'h0003fa3b;
        7'b1001001 :  a = 19'h0003fd20;
        7'b1001010 :  a = 19'h0003ff06;
        7'b1001011 :  a = 19'h0003ffec;
        7'b1001100 :  a = 19'h0003ffd2;
        7'b1001101 :  a = 19'h0003feb8;
        7'b1001110 :  a = 19'h0003fc9e;
        7'b1001111 :  a = 19'h0003f985;
        7'b1010000 :  a = 19'h0003f56e;
        7'b1010001 :  a = 19'h0003f05a;
        7'b1010010 :  a = 19'h0003ea49;
        7'b1010011 :  a = 19'h0003e33e;
        7'b1010100 :  a = 19'h0003db3a;
        7'b1010101 :  a = 19'h0003d23f;
        7'b1010110 :  a = 19'h0003c850;
        7'b1010111 :  a = 19'h0003bd6f;
        7'b1011000 :  a = 19'h0003b19e;
        7'b1011001 :  a = 19'h0003a4e1;
        7'b1011010 :  a = 19'h0003973b;
        7'b1011011 :  a = 19'h000388af;
        7'b1011100 :  a = 19'h00037941;
        7'b1011101 :  a = 19'h000368f5;
        7'b1011110 :  a = 19'h000357ce;
        7'b1011111 :  a = 19'h000345d1;
        7'b1100000 :  a = 19'h00033303;
        7'b1100001 :  a = 19'h00031f69;
        7'b1100010 :  a = 19'h00030b06;
        7'b1100011 :  a = 19'h0002f5e1;
        7'b1100100 :  a = 19'h0002dffe;
        7'b1100101 :  a = 19'h0002c963;
        7'b1100110 :  a = 19'h0002b216;
        7'b1100111 :  a = 19'h00029a1c;
        7'b1101000 :  a = 19'h0002817c;
        7'b1101001 :  a = 19'h0002683c;
        7'b1101010 :  a = 19'h00024e61;
        7'b1101011 :  a = 19'h000233f3;
        7'b1101100 :  a = 19'h000218f8;
        7'b1101101 :  a = 19'h0001fd77;
        7'b1101110 :  a = 19'h0001e176;
        7'b1101111 :  a = 19'h0001c4fd;
        7'b1110000 :  a = 19'h0001a813;
        7'b1110001 :  a = 19'h00018abe;
        7'b1110010 :  a = 19'h00016d07;
        7'b1110011 :  a = 19'h00014ef5;
        7'b1110100 :  a = 19'h0001308f;
        7'b1110101 :  a = 19'h000111dd;
        7'b1110110 :  a = 19'h0000f2e7;
        7'b1110111 :  a = 19'h0000d3b3;
        7'b1111000 :  a = 19'h0000b44b;
        7'b1111001 :  a = 19'h000094b6;
        7'b1111010 :  a = 19'h000074fc;
        7'b1111011 :  a = 19'h00005524;
        7'b1111100 :  a = 19'h00003537;
        7'b1111101 :  a = 19'h0000153d;
        7'b1111110 :  a = 19'h0007f53d;
        7'b1111111 :  a = 19'h0007d540;
        default    :  a = 'x;
    endcase

    always_comb
    unique casez (x1)
        7'b0000000 :  b = 15'h000016a1;
        7'b0000001 :  b = 15'h00001753;
        7'b0000010 :  b = 15'h000017ff;
        7'b0000011 :  b = 15'h000018a6;
        7'b0000100 :  b = 15'h00001946;
        7'b0000101 :  b = 15'h000019e0;
        7'b0000110 :  b = 15'h00001a73;
        7'b0000111 :  b = 15'h00001b00;
        7'b0001000 :  b = 15'h00001b86;
        7'b0001001 :  b = 15'h00001c05;
        7'b0001010 :  b = 15'h00001c7d;
        7'b0001011 :  b = 15'h00001cee;
        7'b0001100 :  b = 15'h00001d58;
        7'b0001101 :  b = 15'h00001dba;
        7'b0001110 :  b = 15'h00001e15;
        7'b0001111 :  b = 15'h00001e69;
        7'b0010000 :  b = 15'h00001eb5;
        7'b0010001 :  b = 15'h00001ef9;
        7'b0010010 :  b = 15'h00001f36;
        7'b0010011 :  b = 15'h00001f6a;
        7'b0010100 :  b = 15'h00001f97;
        7'b0010101 :  b = 15'h00001fbc;
        7'b0010110 :  b = 15'h00001fd9;
        7'b0010111 :  b = 15'h00001fee;
        7'b0011000 :  b = 15'h00001ffb;
        7'b0011001 :  b = 15'h00002000;
        7'b0011010 :  b = 15'h00001ffd;
        7'b0011011 :  b = 15'h00001ff2;
        7'b0011100 :  b = 15'h00001fdf;
        7'b0011101 :  b = 15'h00001fc4;
        7'b0011110 :  b = 15'h00001fa2;
        7'b0011111 :  b = 15'h00001f77;
        7'b0100000 :  b = 15'h00001f44;
        7'b0100001 :  b = 15'h00001f0a;
        7'b0100010 :  b = 15'h00001ec8;
        7'b0100011 :  b = 15'h00001e7e;
        7'b0100100 :  b = 15'h00001e2c;
        7'b0100101 :  b = 15'h00001dd3;
        7'b0100110 :  b = 15'h00001d73;
        7'b0100111 :  b = 15'h00001d0b;
        7'b0101000 :  b = 15'h00001c9c;
        7'b0101001 :  b = 15'h00001c26;
        7'b0101010 :  b = 15'h00001ba8;
        7'b0101011 :  b = 15'h00001b24;
        7'b0101100 :  b = 15'h00001a99;
        7'b0101101 :  b = 15'h00001a07;
        7'b0101110 :  b = 15'h0000196f;
        7'b0101111 :  b = 15'h000018d1;
        7'b0110000 :  b = 15'h0000182c;
        7'b0110001 :  b = 15'h00001781;
        7'b0110010 :  b = 15'h000016d1;
        7'b0110011 :  b = 15'h0000161a;
        7'b0110100 :  b = 15'h0000155e;
        7'b0110101 :  b = 15'h0000149d;
        7'b0110110 :  b = 15'h000013d7;
        7'b0110111 :  b = 15'h0000130c;
        7'b0111000 :  b = 15'h0000123b;
        7'b0111001 :  b = 15'h00001167;
        7'b0111010 :  b = 15'h0000108e;
        7'b0111011 :  b = 15'h00000fb1;
        7'b0111100 :  b = 15'h00000ed0;
        7'b0111101 :  b = 15'h00000deb;
        7'b0111110 :  b = 15'h00000d03;
        7'b0111111 :  b = 15'h00000c17;
        7'b1000000 :  b = 15'h00000b29;
        7'b1000001 :  b = 15'h00000a37;
        7'b1000010 :  b = 15'h00000944;
        7'b1000011 :  b = 15'h0000084d;
        7'b1000100 :  b = 15'h00000755;
        7'b1000101 :  b = 15'h0000065b;
        7'b1000110 :  b = 15'h0000055f;
        7'b1000111 :  b = 15'h00000462;
        7'b1001000 :  b = 15'h00000364;
        7'b1001001 :  b = 15'h00000265;
        7'b1001010 :  b = 15'h00000166;
        7'b1001011 :  b = 15'h00000066;
        7'b1001100 :  b = 15'h00007f66;
        7'b1001101 :  b = 15'h00007e66;
        7'b1001110 :  b = 15'h00007d67;
        7'b1001111 :  b = 15'h00007c68;
        7'b1010000 :  b = 15'h00007b6a;
        7'b1010001 :  b = 15'h00007a6d;
        7'b1010010 :  b = 15'h00007972;
        7'b1010011 :  b = 15'h00007878;
        7'b1010100 :  b = 15'h00007780;
        7'b1010101 :  b = 15'h0000768b;
        7'b1010110 :  b = 15'h00007597;
        7'b1010111 :  b = 15'h000074a7;
        7'b1011000 :  b = 15'h000073b9;
        7'b1011001 :  b = 15'h000072ce;
        7'b1011010 :  b = 15'h000071e6;
        7'b1011011 :  b = 15'h00007102;
        7'b1011100 :  b = 15'h00007022;
        7'b1011101 :  b = 15'h00006f46;
        7'b1011110 :  b = 15'h00006e6e;
        7'b1011111 :  b = 15'h00006d9a;
        7'b1100000 :  b = 15'h00006ccb;
        7'b1100001 :  b = 15'h00006c00;
        7'b1100010 :  b = 15'h00006b3b;
        7'b1100011 :  b = 15'h00006a7b;
        7'b1100100 :  b = 15'h000069c0;
        7'b1100101 :  b = 15'h0000690b;
        7'b1100110 :  b = 15'h0000685c;
        7'b1100111 :  b = 15'h000067b2;
        7'b1101000 :  b = 15'h0000670f;
        7'b1101001 :  b = 15'h00006671;
        7'b1101010 :  b = 15'h000065da;
        7'b1101011 :  b = 15'h0000654a;
        7'b1101100 :  b = 15'h000064c0;
        7'b1101101 :  b = 15'h0000643e;
        7'b1101110 :  b = 15'h000063c2;
        7'b1101111 :  b = 15'h0000634d;
        7'b1110000 :  b = 15'h000062df;
        7'b1110001 :  b = 15'h00006279;
        7'b1110010 :  b = 15'h0000621a;
        7'b1110011 :  b = 15'h000061c2;
        7'b1110100 :  b = 15'h00006173;
        7'b1110101 :  b = 15'h0000612a;
        7'b1110110 :  b = 15'h000060ea;
        7'b1110111 :  b = 15'h000060b1;
        7'b1111000 :  b = 15'h00006080;
        7'b1111001 :  b = 15'h00006057;
        7'b1111010 :  b = 15'h00006035;
        7'b1111011 :  b = 15'h0000601c;
        7'b1111100 :  b = 15'h0000600b;
        7'b1111101 :  b = 15'h00006002;
        7'b1111110 :  b = 15'h00006000;
        7'b1111111 :  b = 15'h00006007;
        default    :  b = 'x;
    endcase

    always_comb
    unique casez (x1)
        7'b0000000 :  c = 10'h000000b4;
        7'b0000001 :  c = 10'h000000ae;
        7'b0000010 :  c = 10'h000000a8;
        7'b0000011 :  c = 10'h000000a2;
        7'b0000100 :  c = 10'h0000009b;
        7'b0000101 :  c = 10'h00000095;
        7'b0000110 :  c = 10'h0000008e;
        7'b0000111 :  c = 10'h00000088;
        7'b0001000 :  c = 10'h00000081;
        7'b0001001 :  c = 10'h0000007a;
        7'b0001010 :  c = 10'h00000073;
        7'b0001011 :  c = 10'h0000006c;
        7'b0001100 :  c = 10'h00000064;
        7'b0001101 :  c = 10'h0000005d;
        7'b0001110 :  c = 10'h00000055;
        7'b0001111 :  c = 10'h0000004e;
        7'b0010000 :  c = 10'h00000046;
        7'b0010001 :  c = 10'h0000003e;
        7'b0010010 :  c = 10'h00000037;
        7'b0010011 :  c = 10'h0000002f;
        7'b0010100 :  c = 10'h00000027;
        7'b0010101 :  c = 10'h0000001f;
        7'b0010110 :  c = 10'h00000017;
        7'b0010111 :  c = 10'h0000000f;
        7'b0011000 :  c = 10'h00000007;
        7'b0011001 :  c = 10'h000003ff;
        7'b0011010 :  c = 10'h000003f7;
        7'b0011011 :  c = 10'h000003ef;
        7'b0011100 :  c = 10'h000003e7;
        7'b0011101 :  c = 10'h000003df;
        7'b0011110 :  c = 10'h000003d7;
        7'b0011111 :  c = 10'h000003cf;
        7'b0100000 :  c = 10'h000003c8;
        7'b0100001 :  c = 10'h000003c0;
        7'b0100010 :  c = 10'h000003b8;
        7'b0100011 :  c = 10'h000003b0;
        7'b0100100 :  c = 10'h000003a9;
        7'b0100101 :  c = 10'h000003a1;
        7'b0100110 :  c = 10'h0000039a;
        7'b0100111 :  c = 10'h00000393;
        7'b0101000 :  c = 10'h0000038c;
        7'b0101001 :  c = 10'h00000384;
        7'b0101010 :  c = 10'h0000037e;
        7'b0101011 :  c = 10'h00000377;
        7'b0101100 :  c = 10'h00000370;
        7'b0101101 :  c = 10'h00000369;
        7'b0101110 :  c = 10'h00000363;
        7'b0101111 :  c = 10'h0000035d;
        7'b0110000 :  c = 10'h00000357;
        7'b0110001 :  c = 10'h00000351;
        7'b0110010 :  c = 10'h0000034b;
        7'b0110011 :  c = 10'h00000345;
        7'b0110100 :  c = 10'h00000340;
        7'b0110101 :  c = 10'h0000033b;
        7'b0110110 :  c = 10'h00000336;
        7'b0110111 :  c = 10'h00000331;
        7'b0111000 :  c = 10'h0000032c;
        7'b0111001 :  c = 10'h00000328;
        7'b0111010 :  c = 10'h00000324;
        7'b0111011 :  c = 10'h00000320;
        7'b0111100 :  c = 10'h0000031c;
        7'b0111101 :  c = 10'h00000319;
        7'b0111110 :  c = 10'h00000315;
        7'b0111111 :  c = 10'h00000312;
        7'b1000000 :  c = 10'h0000030f;
        7'b1000001 :  c = 10'h0000030d;
        7'b1000010 :  c = 10'h0000030a;
        7'b1000011 :  c = 10'h00000308;
        7'b1000100 :  c = 10'h00000306;
        7'b1000101 :  c = 10'h00000305;
        7'b1000110 :  c = 10'h00000303;
        7'b1000111 :  c = 10'h00000302;
        7'b1001000 :  c = 10'h00000301;
        7'b1001001 :  c = 10'h00000301;
        7'b1001010 :  c = 10'h00000300;
        7'b1001011 :  c = 10'h00000300;
        7'b1001100 :  c = 10'h00000300;
        7'b1001101 :  c = 10'h00000300;
        7'b1001110 :  c = 10'h00000301;
        7'b1001111 :  c = 10'h00000302;
        7'b1010000 :  c = 10'h00000303;
        7'b1010001 :  c = 10'h00000304;
        7'b1010010 :  c = 10'h00000306;
        7'b1010011 :  c = 10'h00000308;
        7'b1010100 :  c = 10'h0000030a;
        7'b1010101 :  c = 10'h0000030c;
        7'b1010110 :  c = 10'h0000030f;
        7'b1010111 :  c = 10'h00000311;
        7'b1011000 :  c = 10'h00000314;
        7'b1011001 :  c = 10'h00000318;
        7'b1011010 :  c = 10'h0000031b;
        7'b1011011 :  c = 10'h0000031f;
        7'b1011100 :  c = 10'h00000323;
        7'b1011101 :  c = 10'h00000327;
        7'b1011110 :  c = 10'h0000032b;
        7'b1011111 :  c = 10'h00000330;
        7'b1100000 :  c = 10'h00000334;
        7'b1100001 :  c = 10'h00000339;
        7'b1100010 :  c = 10'h0000033f;
        7'b1100011 :  c = 10'h00000344;
        7'b1100100 :  c = 10'h00000349;
        7'b1100101 :  c = 10'h0000034f;
        7'b1100110 :  c = 10'h00000355;
        7'b1100111 :  c = 10'h0000035b;
        7'b1101000 :  c = 10'h00000361;
        7'b1101001 :  c = 10'h00000368;
        7'b1101010 :  c = 10'h0000036e;
        7'b1101011 :  c = 10'h00000375;
        7'b1101100 :  c = 10'h0000037b;
        7'b1101101 :  c = 10'h00000382;
        7'b1101110 :  c = 10'h00000389;
        7'b1101111 :  c = 10'h00000391;
        7'b1110000 :  c = 10'h00000398;
        7'b1110001 :  c = 10'h0000039f;
        7'b1110010 :  c = 10'h000003a7;
        7'b1110011 :  c = 10'h000003ae;
        7'b1110100 :  c = 10'h000003b6;
        7'b1110101 :  c = 10'h000003bd;
        7'b1110110 :  c = 10'h000003c5;
        7'b1110111 :  c = 10'h000003cd;
        7'b1111000 :  c = 10'h000003d5;
        7'b1111001 :  c = 10'h000003dd;
        7'b1111010 :  c = 10'h000003e5;
        7'b1111011 :  c = 10'h000003ed;
        7'b1111100 :  c = 10'h000003f5;
        7'b1111101 :  c = 10'h000003fd;
        7'b1111110 :  c = 10'h00000005;
        7'b1111111 :  c = 10'h0000000d;
        default    :  c = 'x;
    endcase

endmodule    
