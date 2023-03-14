
module REG_FILE ( Reset, \Addr_A[1] , \Addr_A[0] , \Addr_B[1] , \Addr_B[0] , 
    \Addr_C[1] , \Addr_C[0] , RegPort_C, Write_RegC, RegPort_A, RegPort_B, 
    CTS_in_, CTS_in_a, CTS_in_b, CTS_in_c, CTS_in_d, CTS_in_e, CTS_in_f );
output [15:0] RegPort_A;
input  [15:0] RegPort_C;
output [15:0] RegPort_B;
input  Reset, \Addr_A[1] , \Addr_A[0] , \Addr_B[1] , \Addr_B[0] , \Addr_C[1] , 
    \Addr_C[0] , Write_RegC, CTS_in_, CTS_in_a, CTS_in_b, CTS_in_c, CTS_in_d, 
    CTS_in_e, CTS_in_f;
    wire \Reg_Array26[3][7] , \larray[1][5] , \Reg_Array26[2][4] , 
        \Reg_Array26[3][10] , \larray[0][6] , \larray[2][10] , \larray[3][12] , 
        \Reg_Array26[2][12] , \Reg_Array26[2][9] , \larray[1][1] , 
        \Reg_Array26[3][3] , \larray[2][14] , \larray[0][2] , 
        \Reg_Array26[3][14] , \Reg_Array26[2][2] , \Reg_Array26[2][0] , 
        \larray[1][8] , \Reg_Array26[3][8] , \larray[0][0] , 
        \Reg_Array26[3][1] , \larray[0][9] , \larray[3][10] , 
        \Reg_Array26[2][10] , \larray[1][3] , \Reg_Array26[3][12] , 
        \Reg_Array26[2][6] , \larray[0][4] , \larray[2][12] , 
        \Reg_Array26[2][14] , \larray[1][7] , \Reg_Array26[3][5] , 
        \larray[3][14] , \Reg_Array26[0][9] , \Reg_Array26[1][3] , 
        \larray[0][15] , \larray[3][1] , \Reg_Array26[1][15] , 
        \Reg_Array26[0][0] , \larray[3][8] , \Reg_Array26[0][13] , 
        \larray[1][13] , \larray[2][2] , \Reg_Array26[1][11] , \larray[0][11] , 
        \Reg_Array26[1][7] , \larray[3][5] , \larray[2][6] , 
        \Reg_Array26[0][4] , \Reg_Array26[0][6] , \Reg_Array26[0][15] , 
        \larray[2][4] , \Reg_Array26[1][5] , \larray[1][15] , 
        \Reg_Array26[1][13] , \larray[0][13] , \larray[3][7] , 
        \Reg_Array26[0][11] , \larray[1][11] , \larray[2][0] , 
        \Reg_Array26[0][2] , \Reg_Array26[1][8] , \larray[3][3] , 
        \Reg_Array26[1][1] , \larray[2][9] , \Reg_Array26[0][10] , 
        \Reg_Array26[1][9] , \larray[1][10] , \larray[2][1] , 
        \Reg_Array26[0][3] , \larray[3][2] , \Reg_Array26[0][7] , 
        \Reg_Array26[1][0] , \larray[2][8] , \Reg_Array26[0][14] , 
        \larray[2][5] , \Reg_Array26[1][4] , \larray[1][14] , 
        \Reg_Array26[1][12] , \Reg_Array26[1][10] , \larray[0][12] , 
        \larray[3][6] , \Reg_Array26[0][5] , \Reg_Array26[1][6] , 
        \larray[0][10] , \larray[3][4] , \larray[2][7] , \Reg_Array26[1][2] , 
        \Reg_Array26[0][8] , \larray[0][14] , \larray[3][0] , 
        \Reg_Array26[0][1] , \Reg_Array26[1][14] , \larray[3][9] , 
        \Reg_Array26[0][12] , \larray[1][12] , \Reg_Array26[3][13] , 
        \larray[2][3] , \larray[2][13] , \larray[0][5] , \Reg_Array26[2][7] , 
        \Reg_Array26[2][15] , \larray[1][6] , \larray[3][15] , 
        \Reg_Array26[2][3] , \Reg_Array26[3][4] , \Reg_Array26[3][9] , 
        \larray[0][1] , \Reg_Array26[3][0] , \larray[0][8] , 
        \Reg_Array26[2][11] , \larray[1][2] , \larray[3][11] , 
        \Reg_Array26[2][8] , \larray[3][13] , \larray[1][0] , 
        \Reg_Array26[2][13] , \Reg_Array26[3][2] , \Reg_Array26[3][15] , 
        \larray[0][3] , \larray[2][15] , \Reg_Array26[2][1] , 
        \Reg_Array26[3][6] , \larray[1][9] , \larray[1][4] , 
        \Reg_Array26[2][5] , \Reg_Array26[3][11] , \larray[2][11] , 
        \larray[0][7] , n410, n411, n412, n413, n414, n415, n416, n417, n418, 
        n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, 
        n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, 
        n443, n444, n445, n446, n855, n856, n857, n873, n874, n875, n876, n877, 
        n878, n879, n880, n881, n882, n883, n884, n885, n886, n887, n888, n889, 
        n890, n891, n892, n893, n894, n895, n896, n897, n898, n899, n900, n901, 
        n902, n903, n904, n905, n906, n907, n908, n909, n910, n911, n912, n913, 
        n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, n924, n925, 
        n926, n927, n929, n930, n995, n997, n998, n999, n1000, n1001, n1002, 
        n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, 
        n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, 
        n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, 
        n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, 
        n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, 
        n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, 
        n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, 
        n1073, n1075, n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, 
        n1086, n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, 
        n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, 
        n1107, n1108, n1109, n1110, n1112, n1113, n1114, n1115, n1118, n1119, 
        n1120, n1122, n1126, n1128, n1131, n1132, n1133, n1134, n1135, n1136, 
        n1137, n1138, n1139, n1140, n1141, n1142, n1143;
    and2c3 U55 ( .A(n926), .B(n995), .Y(n914) );
    and2c3 U56 ( .A(n926), .B(n1002), .Y(n894) );
    and2c3 U57 ( .A(n926), .B(n1011), .Y(n886) );
    and2c3 U58 ( .A(n926), .B(n1017), .Y(n878) );
    and2c3 U59 ( .A(n926), .B(n1020), .Y(n874) );
    and2c3 U60 ( .A(n926), .B(n1023), .Y(n855) );
    and2c3 U61 ( .A(n926), .B(n1029), .Y(n910) );
    and2c3 U62 ( .A(n927), .B(n1032), .Y(n906) );
    and2c3 U63 ( .A(n926), .B(n1035), .Y(n902) );
    and2c3 U64 ( .A(n926), .B(n1041), .Y(n898) );
    or2b9 U65 ( .A(n1119), .B(n1122), .Y(n1098) );
    inv1a3 U68 ( .A(RegPort_C[8]), .Y(n1053) );
    inv1a3 U69 ( .A(RegPort_C[4]), .Y(n1057) );
    inv1a3 U70 ( .A(RegPort_C[14]), .Y(n1047) );
    inv1a3 U71 ( .A(RegPort_C[1]), .Y(n1060) );
    inv1a3 U75 ( .A(RegPort_C[5]), .Y(n1056) );
    inv1a3 U76 ( .A(RegPort_C[12]), .Y(n1049) );
    inv1a3 U81 ( .A(RegPort_C[2]), .Y(n1059) );
    inv1a3 U82 ( .A(RegPort_C[3]), .Y(n1058) );
    inv1a3 U83 ( .A(RegPort_C[6]), .Y(n1055) );
    inv1a3 U84 ( .A(RegPort_C[7]), .Y(n1054) );
    inv1a3 U85 ( .A(RegPort_C[9]), .Y(n1052) );
    inv1a3 U86 ( .A(RegPort_C[10]), .Y(n1051) );
    inv1a3 U87 ( .A(RegPort_C[11]), .Y(n1050) );
    inv1a3 U88 ( .A(RegPort_C[13]), .Y(n1048) );
    or2b9 U90 ( .A(n1128), .B(n1122), .Y(n1044) );
    inv1a3 U91 ( .A(RegPort_C[15]), .Y(n1045) );
    or2b9 U92 ( .A(Write_RegC), .B(n1128), .Y(n1046) );
    inv1a1 U93 ( .A(\larray[3][14] ), .Y(n1101) );
    inv1a1 U97 ( .A(\Addr_C[0] ), .Y(n1118) );
    inv1a3 U99 ( .A(\larray[0][5] ), .Y(n1011) );
    inv1a3 U100 ( .A(\larray[0][1] ), .Y(n999) );
    inv1a3 U101 ( .A(\larray[0][8] ), .Y(n1020) );
    inv1a3 U102 ( .A(\larray[0][4] ), .Y(n1008) );
    inv1a3 U103 ( .A(\larray[0][12] ), .Y(n1032) );
    inv1a1 U104 ( .A(\larray[3][11] ), .Y(n1104) );
    fdesf1a3 \Reg_Array_reg[2][2]  ( .D0(\Reg_Array26[2][2] ), .D1(
        \larray[2][2] ), .S(1'b0), .E(n930), .CLK(CTS_in_), .Q(\larray[2][2] )
         );
    inv1a3 U106 ( .A(\larray[2][2] ), .Y(n1095) );
    fdesf1a3 \Reg_Array_reg[2][9]  ( .D0(\Reg_Array26[2][9] ), .D1(
        \larray[2][9] ), .S(1'b0), .E(n930), .CLK(CTS_in_e), .Q(\larray[2][9] 
        ) );
    fdesf1a3 \Reg_Array_reg[2][8]  ( .D0(\Reg_Array26[2][8] ), .D1(
        \larray[2][8] ), .S(1'b0), .E(n930), .CLK(CTS_in_c), .Q(\larray[2][8] 
        ) );
    inv1a3 U108 ( .A(\larray[2][8] ), .Y(n1089) );
    fdesf1a3 \Reg_Array_reg[2][7]  ( .D0(\Reg_Array26[2][7] ), .D1(
        \larray[2][7] ), .S(1'b0), .E(n930), .CLK(CTS_in_), .Q(\larray[2][7] )
         );
    inv1a3 U109 ( .A(\larray[2][7] ), .Y(n1090) );
    fdesf1a3 \Reg_Array_reg[2][3]  ( .D0(\Reg_Array26[2][3] ), .D1(
        \larray[2][3] ), .S(1'b0), .E(n930), .CLK(CTS_in_), .Q(\larray[2][3] )
         );
    inv1a3 U110 ( .A(\larray[2][3] ), .Y(n1094) );
    fdesf1a3 \Reg_Array_reg[2][6]  ( .D0(\Reg_Array26[2][6] ), .D1(
        \larray[2][6] ), .S(1'b0), .E(n930), .CLK(CTS_in_), .Q(\larray[2][6] )
         );
    inv1a3 U111 ( .A(\larray[2][6] ), .Y(n1091) );
    fdesf1a3 \Reg_Array_reg[2][12]  ( .D0(\Reg_Array26[2][12] ), .D1(
        \larray[2][12] ), .S(1'b0), .E(n930), .CLK(CTS_in_c), .Q(
        \larray[2][12] ) );
    inv1a3 U112 ( .A(\larray[2][12] ), .Y(n1085) );
    fdesf1a3 \Reg_Array_reg[2][13]  ( .D0(\Reg_Array26[2][13] ), .D1(
        \larray[2][13] ), .S(1'b0), .E(n930), .CLK(CTS_in_c), .Q(
        \larray[2][13] ) );
    inv1a3 U113 ( .A(\larray[2][13] ), .Y(n1084) );
    fdesf1a3 \Reg_Array_reg[2][5]  ( .D0(\Reg_Array26[2][5] ), .D1(
        \larray[2][5] ), .S(1'b0), .E(n930), .CLK(CTS_in_b), .Q(\larray[2][5] 
        ) );
    inv1a3 U114 ( .A(\larray[2][5] ), .Y(n1092) );
    fdesf1a3 \Reg_Array_reg[2][4]  ( .D0(\Reg_Array26[2][4] ), .D1(
        \larray[2][4] ), .S(1'b0), .E(n930), .CLK(CTS_in_e), .Q(\larray[2][4] 
        ) );
    inv1a1 U115 ( .A(\larray[2][4] ), .Y(n1093) );
    fdesf1a3 \Reg_Array_reg[2][14]  ( .D0(\Reg_Array26[2][14] ), .D1(
        \larray[2][14] ), .S(1'b0), .E(n930), .CLK(CTS_in_d), .Q(
        \larray[2][14] ) );
    inv1a1 U116 ( .A(\larray[2][14] ), .Y(n1083) );
    fdesf1a3 \Reg_Array_reg[2][15]  ( .D0(\Reg_Array26[2][15] ), .D1(
        \larray[2][15] ), .S(1'b0), .E(n930), .CLK(CTS_in_c), .Q(
        \larray[2][15] ) );
    inv1a3 U117 ( .A(\larray[2][15] ), .Y(n1081) );
    fdesf1a3 \Reg_Array_reg[2][1]  ( .D0(\Reg_Array26[2][1] ), .D1(
        \larray[2][1] ), .S(1'b0), .E(n930), .CLK(CTS_in_d), .Q(\larray[2][1] 
        ) );
    inv1a1 U118 ( .A(\larray[2][1] ), .Y(n1096) );
    fdesf1a3 \Reg_Array_reg[2][0]  ( .D0(\Reg_Array26[2][0] ), .D1(
        \larray[2][0] ), .S(1'b0), .E(n930), .CLK(CTS_in_f), .Q(\larray[2][0] 
        ) );
    inv1a3 U119 ( .A(\larray[2][0] ), .Y(n1097) );
    fdesf1a3 \Reg_Array_reg[1][0]  ( .D0(\Reg_Array26[1][0] ), .D1(
        \larray[1][0] ), .S(1'b0), .E(n930), .CLK(CTS_in_c), .Q(\larray[1][0] 
        ) );
    inv1a1 U120 ( .A(\larray[1][0] ), .Y(n1079) );
    fdesf1a3 \Reg_Array_reg[1][2]  ( .D0(\Reg_Array26[1][2] ), .D1(
        \larray[1][2] ), .S(1'b0), .E(n930), .CLK(CTS_in_f), .Q(\larray[1][2] 
        ) );
    fdesf1a3 \Reg_Array_reg[1][3]  ( .D0(\Reg_Array26[1][3] ), .D1(
        \larray[1][3] ), .S(1'b0), .E(n930), .CLK(CTS_in_), .Q(\larray[1][3] )
         );
    fdesf1a3 \Reg_Array_reg[1][5]  ( .D0(\Reg_Array26[1][5] ), .D1(
        \larray[1][5] ), .S(1'b0), .E(n930), .CLK(CTS_in_b), .Q(\larray[1][5] 
        ) );
    fdesf1a3 \Reg_Array_reg[1][6]  ( .D0(\Reg_Array26[1][6] ), .D1(
        \larray[1][6] ), .S(1'b0), .E(n930), .CLK(CTS_in_), .Q(\larray[1][6] )
         );
    inv1a1 U124 ( .A(\larray[1][6] ), .Y(n1073) );
    fdesf1a3 \Reg_Array_reg[1][7]  ( .D0(\Reg_Array26[1][7] ), .D1(
        \larray[1][7] ), .S(1'b0), .E(n930), .CLK(CTS_in_), .Q(\larray[1][7] )
         );
    inv1a1 U125 ( .A(\larray[1][7] ), .Y(n1072) );
    fdesf1a3 \Reg_Array_reg[1][8]  ( .D0(\Reg_Array26[1][8] ), .D1(
        \larray[1][8] ), .S(1'b0), .E(n930), .CLK(CTS_in_c), .Q(\larray[1][8] 
        ) );
    inv1a1 U126 ( .A(\larray[1][8] ), .Y(n1071) );
    fdesf1a3 \Reg_Array_reg[1][9]  ( .D0(\Reg_Array26[1][9] ), .D1(
        \larray[1][9] ), .S(1'b0), .E(n930), .CLK(CTS_in_f), .Q(\larray[1][9] 
        ) );
    inv1a1 U127 ( .A(\larray[1][9] ), .Y(n1070) );
    fdesf1a3 \Reg_Array_reg[1][10]  ( .D0(\Reg_Array26[1][10] ), .D1(
        \larray[1][10] ), .S(1'b0), .E(n930), .CLK(CTS_in_f), .Q(
        \larray[1][10] ) );
    inv1a1 U128 ( .A(\larray[1][10] ), .Y(n1069) );
    fdesf1a3 \Reg_Array_reg[1][11]  ( .D0(\Reg_Array26[1][11] ), .D1(
        \larray[1][11] ), .S(1'b0), .E(n930), .CLK(CTS_in_f), .Q(
        \larray[1][11] ) );
    inv1a1 U129 ( .A(\larray[1][11] ), .Y(n1068) );
    fdesf1a3 \Reg_Array_reg[1][12]  ( .D0(\Reg_Array26[1][12] ), .D1(
        \larray[1][12] ), .S(1'b0), .E(n930), .CLK(CTS_in_c), .Q(
        \larray[1][12] ) );
    inv1a1 U130 ( .A(\larray[1][12] ), .Y(n1067) );
    fdesf1a3 \Reg_Array_reg[1][13]  ( .D0(\Reg_Array26[1][13] ), .D1(
        \larray[1][13] ), .S(1'b0), .E(n930), .CLK(CTS_in_c), .Q(
        \larray[1][13] ) );
    inv1a1 U131 ( .A(\larray[1][13] ), .Y(n1066) );
    fdesf1a3 \Reg_Array_reg[1][15]  ( .D0(\Reg_Array26[1][15] ), .D1(
        \larray[1][15] ), .S(1'b0), .E(n930), .CLK(CTS_in_c), .Q(
        \larray[1][15] ) );
    inv1a1 U132 ( .A(\larray[1][15] ), .Y(n1063) );
    fdesf1a3 \Reg_Array_reg[0][0]  ( .D0(\Reg_Array26[0][0] ), .D1(
        \larray[0][0] ), .S(1'b0), .E(n930), .CLK(CTS_in_d), .Q(\larray[0][0] 
        ) );
    inv1a3 U133 ( .A(\larray[0][0] ), .Y(n995) );
    fdesf1a3 \Reg_Array_reg[0][2]  ( .D0(\Reg_Array26[0][2] ), .D1(
        \larray[0][2] ), .S(1'b0), .E(n930), .CLK(CTS_in_f), .Q(\larray[0][2] 
        ) );
    inv1a3 U134 ( .A(\larray[0][2] ), .Y(n1002) );
    fdesf1a3 \Reg_Array_reg[0][3]  ( .D0(\Reg_Array26[0][3] ), .D1(
        \larray[0][3] ), .S(1'b0), .E(n930), .CLK(CTS_in_), .Q(\larray[0][3] )
         );
    inv1a3 U135 ( .A(\larray[0][3] ), .Y(n1005) );
    fdesf1a3 \Reg_Array_reg[0][6]  ( .D0(\Reg_Array26[0][6] ), .D1(
        \larray[0][6] ), .S(1'b0), .E(n930), .CLK(CTS_in_), .Q(\larray[0][6] )
         );
    inv1a3 U136 ( .A(\larray[0][6] ), .Y(n1014) );
    fdesf1a3 \Reg_Array_reg[0][7]  ( .D0(\Reg_Array26[0][7] ), .D1(
        \larray[0][7] ), .S(1'b0), .E(n930), .CLK(CTS_in_), .Q(\larray[0][7] )
         );
    inv1a3 U137 ( .A(\larray[0][7] ), .Y(n1017) );
    fdesf1a3 \Reg_Array_reg[0][9]  ( .D0(\Reg_Array26[0][9] ), .D1(
        \larray[0][9] ), .S(1'b0), .E(n930), .CLK(CTS_in_f), .Q(\larray[0][9] 
        ) );
    inv1a3 U138 ( .A(\larray[0][9] ), .Y(n1023) );
    fdesf1a3 \Reg_Array_reg[0][10]  ( .D0(\Reg_Array26[0][10] ), .D1(
        \larray[0][10] ), .S(1'b0), .E(n930), .CLK(CTS_in_f), .Q(
        \larray[0][10] ) );
    inv1a1 U139 ( .A(\larray[0][10] ), .Y(n1026) );
    fdesf1a3 \Reg_Array_reg[0][11]  ( .D0(\Reg_Array26[0][11] ), .D1(
        \larray[0][11] ), .S(1'b0), .E(n930), .CLK(CTS_in_b), .Q(
        \larray[0][11] ) );
    inv1a3 U140 ( .A(\larray[0][11] ), .Y(n1029) );
    fdesf1a3 \Reg_Array_reg[0][13]  ( .D0(\Reg_Array26[0][13] ), .D1(
        \larray[0][13] ), .S(1'b0), .E(n930), .CLK(CTS_in_c), .Q(
        \larray[0][13] ) );
    inv1a3 U141 ( .A(\larray[0][13] ), .Y(n1035) );
    fdesf1a3 \Reg_Array_reg[0][15]  ( .D0(\Reg_Array26[0][15] ), .D1(
        \larray[0][15] ), .S(1'b0), .E(n930), .CLK(CTS_in_c), .Q(
        \larray[0][15] ) );
    inv1a3 U142 ( .A(\larray[0][15] ), .Y(n1041) );
    inv1a15 U146 ( .A(n924), .Y(n410) );
    inv1a3 U147 ( .A(\larray[2][11] ), .Y(n1086) );
    fdesf1a3 \Reg_Array_reg[3][14]  ( .D0(\Reg_Array26[3][14] ), .D1(
        \larray[3][14] ), .S(1'b0), .E(n930), .CLK(CTS_in_d), .Q(
        \larray[3][14] ) );
    fdesf1a3 \Reg_Array_reg[3][4]  ( .D0(\Reg_Array26[3][4] ), .D1(
        \larray[3][4] ), .S(1'b0), .E(n930), .CLK(CTS_in_f), .Q(\larray[3][4] 
        ) );
    or2b2 U149 ( .A(Write_RegC), .B(Reset), .Y(n1122) );
    inv1a1 U150 ( .A(\larray[3][6] ), .Y(n1109) );
    fdesf1a3 \Reg_Array_reg[3][6]  ( .D0(\Reg_Array26[3][6] ), .D1(
        \larray[3][6] ), .S(1'b0), .E(n930), .CLK(CTS_in_f), .Q(\larray[3][6] 
        ) );
    inv1a1 U151 ( .A(\larray[3][0] ), .Y(n1115) );
    fdesf1a3 \Reg_Array_reg[3][0]  ( .D0(\Reg_Array26[3][0] ), .D1(
        \larray[3][0] ), .S(1'b0), .E(n930), .CLK(CTS_in_c), .Q(\larray[3][0] 
        ) );
    inv1a1 U152 ( .A(\larray[3][2] ), .Y(n1113) );
    fdesf1a3 \Reg_Array_reg[3][2]  ( .D0(\Reg_Array26[3][2] ), .D1(
        \larray[3][2] ), .S(1'b0), .E(n930), .CLK(CTS_in_), .Q(\larray[3][2] )
         );
    inv1a1 U153 ( .A(\larray[3][9] ), .Y(n1106) );
    fdesf1a3 \Reg_Array_reg[3][9]  ( .D0(\Reg_Array26[3][9] ), .D1(
        \larray[3][9] ), .S(1'b0), .E(n930), .CLK(CTS_in_f), .Q(\larray[3][9] 
        ) );
    inv1a1 U154 ( .A(\larray[3][8] ), .Y(n1107) );
    fdesf1a3 \Reg_Array_reg[3][8]  ( .D0(\Reg_Array26[3][8] ), .D1(
        \larray[3][8] ), .S(1'b0), .E(n930), .CLK(CTS_in_c), .Q(\larray[3][8] 
        ) );
    inv1a1 U155 ( .A(\larray[3][7] ), .Y(n1108) );
    and2a3 U156 ( .A(n927), .B(\larray[3][7] ), .Y(n877) );
    fdesf1a3 \Reg_Array_reg[3][7]  ( .D0(\Reg_Array26[3][7] ), .D1(
        \larray[3][7] ), .S(1'b0), .E(n930), .CLK(CTS_in_), .Q(\larray[3][7] )
         );
    inv1a1 U157 ( .A(\larray[3][5] ), .Y(n1110) );
    and2a3 U158 ( .A(n927), .B(\larray[3][5] ), .Y(n885) );
    fdesf1a3 \Reg_Array_reg[3][5]  ( .D0(\Reg_Array26[3][5] ), .D1(
        \larray[3][5] ), .S(1'b0), .E(n930), .CLK(CTS_in_), .Q(\larray[3][5] )
         );
    inv1a1 U159 ( .A(\larray[3][3] ), .Y(n1112) );
    and2a3 U160 ( .A(n927), .B(\larray[3][3] ), .Y(n889) );
    fdesf1a3 \Reg_Array_reg[3][3]  ( .D0(\Reg_Array26[3][3] ), .D1(
        \larray[3][3] ), .S(1'b0), .E(n930), .CLK(CTS_in_), .Q(\larray[3][3] )
         );
    inv1a1 U161 ( .A(\larray[3][1] ), .Y(n1114) );
    fdesf1a3 \Reg_Array_reg[3][1]  ( .D0(\Reg_Array26[3][1] ), .D1(
        \larray[3][1] ), .S(1'b0), .E(n930), .CLK(CTS_in_d), .Q(\larray[3][1] 
        ) );
    inv1a1 U162 ( .A(\larray[3][15] ), .Y(n1099) );
    and2a3 U163 ( .A(n927), .B(\larray[3][15] ), .Y(n897) );
    fdesf1a3 \Reg_Array_reg[3][15]  ( .D0(\Reg_Array26[3][15] ), .D1(
        \larray[3][15] ), .S(1'b0), .E(n930), .CLK(CTS_in_c), .Q(
        \larray[3][15] ) );
    inv1a1 U164 ( .A(\larray[3][12] ), .Y(n1103) );
    and2a3 U165 ( .A(n927), .B(\larray[3][12] ), .Y(n905) );
    fdesf1a3 \Reg_Array_reg[3][12]  ( .D0(\Reg_Array26[3][12] ), .D1(
        \larray[3][12] ), .S(1'b0), .E(n930), .CLK(CTS_in_c), .Q(
        \larray[3][12] ) );
    inv1a1 U166 ( .A(\larray[3][13] ), .Y(n1102) );
    and2a3 U167 ( .A(n927), .B(\larray[3][13] ), .Y(n901) );
    fdesf1a3 \Reg_Array_reg[3][13]  ( .D0(\Reg_Array26[3][13] ), .D1(
        \larray[3][13] ), .S(1'b0), .E(n930), .CLK(CTS_in_c), .Q(
        \larray[3][13] ) );
    inv1a3 U168 ( .A(\larray[0][14] ), .Y(n1038) );
    clk1b6 U169 ( .A(n925), .Y(n431) );
    mx2d6 U170 ( .D0(n913), .D1(n914), .S(n410), .Y(n417) );
    and2a3 U171 ( .A(n927), .B(\larray[3][0] ), .Y(n913) );
    mx2d6 U172 ( .D0(n873), .D1(n874), .S(n410), .Y(n436) );
    and2a3 U173 ( .A(n927), .B(\larray[3][8] ), .Y(n873) );
    mx2d6 U174 ( .D0(n893), .D1(n894), .S(n410), .Y(n421) );
    and2a3 U175 ( .A(n927), .B(\larray[3][2] ), .Y(n893) );
    mx2d6 U176 ( .D0(n881), .D1(n882), .S(n410), .Y(n415) );
    and2a3 U177 ( .A(n927), .B(\larray[3][6] ), .Y(n881) );
    mx2d6 U178 ( .D0(n446), .D1(n855), .S(n410), .Y(n411) );
    and2a3 U179 ( .A(n927), .B(\larray[3][9] ), .Y(n446) );
    mx2d2 U180 ( .D0(n910), .D1(n909), .S(n924), .Y(n427) );
    and2c6 U181 ( .A(n925), .B(n1097), .Y(n911) );
    and2c6 U182 ( .A(n925), .B(n1085), .Y(n903) );
    and2c6 U183 ( .A(n924), .B(n1084), .Y(n899) );
    and2c6 U184 ( .A(n924), .B(n1081), .Y(n895) );
    and2c6 U185 ( .A(n924), .B(n1095), .Y(n891) );
    and2c6 U186 ( .A(n925), .B(n1094), .Y(n887) );
    and2c6 U187 ( .A(n925), .B(n1092), .Y(n883) );
    and2c6 U188 ( .A(n924), .B(n1091), .Y(n879) );
    and2c6 U189 ( .A(n924), .B(n1089), .Y(n856) );
    and2c6 U190 ( .A(n925), .B(n1090), .Y(n875) );
    and2c6 U191 ( .A(n925), .B(n1088), .Y(n444) );
    buf1a27 U192 ( .A(\Addr_A[1] ), .Y(n927) );
    buf1a27 U194 ( .A(\Addr_A[1] ), .Y(n926) );
    or2c6 U196 ( .A(n925), .B(\larray[3][14] ), .Y(n919) );
    or2c9 U199 ( .A(n419), .B(n420), .Y(RegPort_A[15]) );
    mx2d3 U200 ( .D0(n898), .D1(n897), .S(n925), .Y(n419) );
    or2c9 U201 ( .A(n425), .B(n426), .Y(RegPort_A[7]) );
    mx2d3 U202 ( .D0(n878), .D1(n877), .S(n925), .Y(n425) );
    or2c9 U203 ( .A(n411), .B(n412), .Y(RegPort_A[9]) );
    or2c9 U204 ( .A(n415), .B(n416), .Y(RegPort_A[6]) );
    or2c9 U205 ( .A(n413), .B(n414), .Y(RegPort_A[13]) );
    mx2d3 U206 ( .D0(n902), .D1(n901), .S(n925), .Y(n413) );
    or2c9 U207 ( .A(n436), .B(n437), .Y(RegPort_A[8]) );
    or2c9 U208 ( .A(n423), .B(n424), .Y(RegPort_A[3]) );
    mx2d3 U209 ( .D0(n890), .D1(n889), .S(n925), .Y(n423) );
    or2c9 U210 ( .A(n421), .B(n422), .Y(RegPort_A[2]) );
    or2c9 U211 ( .A(n434), .B(n435), .Y(RegPort_A[5]) );
    mx2d3 U212 ( .D0(n886), .D1(n885), .S(n925), .Y(n434) );
    or2c9 U213 ( .A(n429), .B(n430), .Y(RegPort_A[12]) );
    mx2d3 U214 ( .D0(n906), .D1(n905), .S(n925), .Y(n429) );
    or2c9 U215 ( .A(n417), .B(n418), .Y(RegPort_A[0]) );
    ao1d9 U216 ( .A(n442), .B(n431), .C(n443), .Y(RegPort_A[1]) );
    ao1d9 U217 ( .A(n440), .B(n431), .C(n441), .Y(RegPort_A[4]) );
    or2c9 U218 ( .A(n427), .B(n428), .Y(RegPort_A[11]) );
    ao1e6 U219 ( .A(n432), .B(n431), .C(n433), .Y(RegPort_A[10]) );
    and2a6 U223 ( .A(n923), .B(\larray[1][9] ), .Y(n445) );
    and2a6 U224 ( .A(n923), .B(\larray[1][8] ), .Y(n857) );
    and2a6 U225 ( .A(n923), .B(\larray[1][7] ), .Y(n876) );
    and2a6 U226 ( .A(n923), .B(\larray[1][6] ), .Y(n880) );
    and2a6 U227 ( .A(n923), .B(\larray[1][5] ), .Y(n884) );
    and2a6 U228 ( .A(n923), .B(\larray[1][3] ), .Y(n888) );
    and2a6 U229 ( .A(n923), .B(\larray[1][2] ), .Y(n892) );
    and2a6 U230 ( .A(n923), .B(\larray[1][15] ), .Y(n896) );
    and2a6 U231 ( .A(n923), .B(\larray[1][13] ), .Y(n900) );
    and2a6 U232 ( .A(n923), .B(\larray[1][12] ), .Y(n904) );
    and2c6 U233 ( .A(n924), .B(n1086), .Y(n907) );
    and2a6 U234 ( .A(n923), .B(\larray[1][11] ), .Y(n908) );
    and2a6 U235 ( .A(n927), .B(\larray[3][11] ), .Y(n909) );
    and2a6 U236 ( .A(n923), .B(\larray[1][0] ), .Y(n912) );
    mx2d2 U237 ( .D0(n1008), .D1(n1093), .S(n927), .Y(n440) );
    or2c3 U238 ( .A(n924), .B(\larray[1][4] ), .Y(n916) );
    mx2a6 U239 ( .D0(n916), .D1(n915), .S(n926), .Y(n441) );
    mx2d2 U240 ( .D0(n999), .D1(n1096), .S(n927), .Y(n442) );
    or2c3 U241 ( .A(n923), .B(\larray[3][1] ), .Y(n917) );
    or2c3 U242 ( .A(n924), .B(\larray[1][1] ), .Y(n918) );
    mx2a6 U243 ( .D0(n918), .D1(n917), .S(n927), .Y(n443) );
    mx2d2 U244 ( .D0(n1038), .D1(n1083), .S(n927), .Y(n438) );
    or2c3 U245 ( .A(n923), .B(\larray[1][14] ), .Y(n920) );
    mx2a6 U246 ( .D0(n920), .D1(n919), .S(n926), .Y(n439) );
    or2c6 U247 ( .A(n925), .B(\larray[3][10] ), .Y(n921) );
    or2c3 U248 ( .A(n923), .B(\larray[1][10] ), .Y(n922) );
    mx2a6 U249 ( .D0(n922), .D1(n921), .S(n927), .Y(n433) );
    ao1d6 U250 ( .A(n438), .B(n431), .C(n439), .Y(RegPort_A[14]) );
    mx2d6 U251 ( .D0(n912), .D1(n911), .S(n926), .Y(n418) );
    mx2d6 U253 ( .D0(n908), .D1(n907), .S(n926), .Y(n428) );
    mx2d6 U254 ( .D0(n904), .D1(n903), .S(n926), .Y(n430) );
    mx2d6 U255 ( .D0(n900), .D1(n899), .S(n926), .Y(n414) );
    mx2d6 U256 ( .D0(n896), .D1(n895), .S(n926), .Y(n420) );
    mx2d6 U257 ( .D0(n892), .D1(n891), .S(n926), .Y(n422) );
    mx2d6 U258 ( .D0(n888), .D1(n887), .S(n926), .Y(n424) );
    mx2d6 U259 ( .D0(n884), .D1(n883), .S(n926), .Y(n435) );
    mx2d6 U260 ( .D0(n880), .D1(n879), .S(n926), .Y(n416) );
    mx2d6 U261 ( .D0(n876), .D1(n875), .S(n926), .Y(n426) );
    mx2d6 U262 ( .D0(n857), .D1(n856), .S(n926), .Y(n437) );
    mx2d6 U263 ( .D0(n445), .D1(n444), .S(n926), .Y(n412) );
    clk1a54 U264 ( .A(\Addr_A[0] ), .Y(n924) );
    clk1a54 U265 ( .A(\Addr_A[0] ), .Y(n923) );
    clk1a54 U266 ( .A(\Addr_A[0] ), .Y(n925) );
    fdesf1a3 \Reg_Array_reg[0][5]  ( .D0(\Reg_Array26[0][5] ), .D1(
        \larray[0][5] ), .S(1'b0), .E(n930), .CLK(CTS_in_b), .Q(\larray[0][5] 
        ) );
    fdesf1a3 \Reg_Array_reg[0][1]  ( .D0(\Reg_Array26[0][1] ), .D1(
        \larray[0][1] ), .S(1'b0), .E(n930), .CLK(CTS_in_d), .Q(\larray[0][1] 
        ) );
    fdesf1a3 \Reg_Array_reg[0][14]  ( .D0(\Reg_Array26[0][14] ), .D1(
        \larray[0][14] ), .S(1'b0), .E(n930), .CLK(CTS_in_d), .Q(
        \larray[0][14] ) );
    fdesf1a3 \Reg_Array_reg[0][8]  ( .D0(\Reg_Array26[0][8] ), .D1(
        \larray[0][8] ), .S(1'b0), .E(n930), .CLK(CTS_in_), .Q(\larray[0][8] )
         );
    fdesf1a3 \Reg_Array_reg[0][4]  ( .D0(\Reg_Array26[0][4] ), .D1(
        \larray[0][4] ), .S(1'b0), .E(n930), .CLK(CTS_in_d), .Q(\larray[0][4] 
        ) );
    fdesf1a3 \Reg_Array_reg[0][12]  ( .D0(\Reg_Array26[0][12] ), .D1(
        \larray[0][12] ), .S(1'b0), .E(n930), .CLK(CTS_in_c), .Q(
        \larray[0][12] ) );
    fdesf1a3 \Reg_Array_reg[2][11]  ( .D0(\Reg_Array26[2][11] ), .D1(
        \larray[2][11] ), .S(1'b0), .E(n930), .CLK(CTS_in_a), .Q(
        \larray[2][11] ) );
    fdesf1a3 \Reg_Array_reg[3][11]  ( .D0(\Reg_Array26[3][11] ), .D1(
        \larray[3][11] ), .S(1'b0), .E(n930), .CLK(CTS_in_f), .Q(
        \larray[3][11] ) );
    inv1a1 U267 ( .A(\larray[3][10] ), .Y(n1105) );
    fdesf1a3 \Reg_Array_reg[2][10]  ( .D0(\Reg_Array26[2][10] ), .D1(
        \larray[2][10] ), .S(1'b0), .E(n930), .CLK(CTS_in_f), .Q(
        \larray[2][10] ) );
    fdesf1a3 \Reg_Array_reg[3][10]  ( .D0(\Reg_Array26[3][10] ), .D1(
        \larray[3][10] ), .S(1'b0), .E(n930), .CLK(CTS_in_f), .Q(
        \larray[3][10] ) );
    fdesf1a9 \Reg_Array_reg[1][14]  ( .D0(\Reg_Array26[1][14] ), .D1(
        \larray[1][14] ), .S(1'b0), .E(n930), .CLK(CTS_in_d), .Q(
        \larray[1][14] ) );
    ao2i3 U332 ( .A(n995), .B(n1137), .C(n997), .D(n998), .Y(RegPort_B[0]) );
    ao2i3 U333 ( .A(n999), .B(n1137), .C(n1000), .D(n1001), .Y(RegPort_B[1])
         );
    ao2i3 U334 ( .A(n1002), .B(n1137), .C(n1003), .D(n1004), .Y(RegPort_B[2])
         );
    ao2i3 U335 ( .A(n1005), .B(n1137), .C(n1006), .D(n1007), .Y(RegPort_B[3])
         );
    ao2i3 U336 ( .A(n1008), .B(n1137), .C(n1009), .D(n1010), .Y(RegPort_B[4])
         );
    ao2i3 U337 ( .A(n1011), .B(n1137), .C(n1012), .D(n1013), .Y(RegPort_B[5])
         );
    ao2i3 U338 ( .A(n1014), .B(n1137), .C(n1015), .D(n1016), .Y(RegPort_B[6])
         );
    ao2i3 U339 ( .A(n1017), .B(n1137), .C(n1018), .D(n1019), .Y(RegPort_B[7])
         );
    ao2i3 U340 ( .A(n1020), .B(n1137), .C(n1021), .D(n1022), .Y(RegPort_B[8])
         );
    ao2i3 U341 ( .A(n1023), .B(n1137), .C(n1024), .D(n1025), .Y(RegPort_B[9])
         );
    ao2i3 U342 ( .A(n1026), .B(n1137), .C(n1027), .D(n1028), .Y(RegPort_B[10])
         );
    ao2i3 U343 ( .A(n1029), .B(n1137), .C(n1030), .D(n1031), .Y(RegPort_B[11])
         );
    ao2i3 U344 ( .A(n1032), .B(n1137), .C(n1033), .D(n1034), .Y(RegPort_B[12])
         );
    ao2i3 U345 ( .A(n1035), .B(n1137), .C(n1036), .D(n1037), .Y(RegPort_B[13])
         );
    ao2i3 U346 ( .A(n1038), .B(n1137), .C(n1039), .D(n1040), .Y(RegPort_B[14])
         );
    ao2i3 U347 ( .A(n1041), .B(n1137), .C(n1042), .D(n1043), .Y(RegPort_B[15])
         );
    ao4f3 U348 ( .A(n1044), .B(n1041), .C(n1045), .D(n1046), .Y(
        \Reg_Array26[0][15] ) );
    ao4f3 U349 ( .A(n1044), .B(n1038), .C(n1047), .D(n1046), .Y(
        \Reg_Array26[0][14] ) );
    ao4f3 U350 ( .A(n1044), .B(n1035), .C(n1048), .D(n1046), .Y(
        \Reg_Array26[0][13] ) );
    ao4f3 U351 ( .A(n1044), .B(n1032), .C(n1049), .D(n1046), .Y(
        \Reg_Array26[0][12] ) );
    ao4f3 U352 ( .A(n1044), .B(n1029), .C(n1050), .D(n1046), .Y(
        \Reg_Array26[0][11] ) );
    ao4f3 U353 ( .A(n1044), .B(n1026), .C(n1051), .D(n1046), .Y(
        \Reg_Array26[0][10] ) );
    ao4f3 U354 ( .A(n1044), .B(n1023), .C(n1052), .D(n1046), .Y(
        \Reg_Array26[0][9] ) );
    ao4f3 U355 ( .A(n1044), .B(n1020), .C(n1053), .D(n1046), .Y(
        \Reg_Array26[0][8] ) );
    ao4f3 U356 ( .A(n1044), .B(n1017), .C(n1054), .D(n1046), .Y(
        \Reg_Array26[0][7] ) );
    ao4f3 U357 ( .A(n1044), .B(n1014), .C(n1055), .D(n1046), .Y(
        \Reg_Array26[0][6] ) );
    ao4f3 U358 ( .A(n1044), .B(n1011), .C(n1056), .D(n1046), .Y(
        \Reg_Array26[0][5] ) );
    ao4f3 U359 ( .A(n1044), .B(n1008), .C(n1057), .D(n1046), .Y(
        \Reg_Array26[0][4] ) );
    ao4f3 U360 ( .A(n1044), .B(n1005), .C(n1058), .D(n1046), .Y(
        \Reg_Array26[0][3] ) );
    ao4f3 U361 ( .A(n1044), .B(n1002), .C(n1059), .D(n1046), .Y(
        \Reg_Array26[0][2] ) );
    ao4f3 U362 ( .A(n1044), .B(n999), .C(n1060), .D(n1046), .Y(
        \Reg_Array26[0][1] ) );
    ao4f3 U363 ( .A(n1044), .B(n995), .C(n1061), .D(n1046), .Y(
        \Reg_Array26[0][0] ) );
    ao4f3 U364 ( .A(n1062), .B(n1063), .C(n1045), .D(n1064), .Y(
        \Reg_Array26[1][15] ) );
    ao4f3 U365 ( .A(n1062), .B(n1065), .C(n1047), .D(n1064), .Y(
        \Reg_Array26[1][14] ) );
    ao4f3 U366 ( .A(n1062), .B(n1066), .C(n1048), .D(n1064), .Y(
        \Reg_Array26[1][13] ) );
    ao4f3 U367 ( .A(n1062), .B(n1067), .C(n1049), .D(n1064), .Y(
        \Reg_Array26[1][12] ) );
    ao4f3 U368 ( .A(n1062), .B(n1068), .C(n1050), .D(n1064), .Y(
        \Reg_Array26[1][11] ) );
    ao4f3 U369 ( .A(n1062), .B(n1069), .C(n1051), .D(n1064), .Y(
        \Reg_Array26[1][10] ) );
    ao4f3 U370 ( .A(n1062), .B(n1070), .C(n1052), .D(n1064), .Y(
        \Reg_Array26[1][9] ) );
    ao4f3 U371 ( .A(n1062), .B(n1071), .C(n1053), .D(n1064), .Y(
        \Reg_Array26[1][8] ) );
    ao4f3 U372 ( .A(n1062), .B(n1072), .C(n1054), .D(n1064), .Y(
        \Reg_Array26[1][7] ) );
    ao4f3 U373 ( .A(n1062), .B(n1073), .C(n1055), .D(n1064), .Y(
        \Reg_Array26[1][6] ) );
    ao4f3 U375 ( .A(n1062), .B(n1075), .C(n1057), .D(n1064), .Y(
        \Reg_Array26[1][4] ) );
    ao4f3 U378 ( .A(n1062), .B(n1078), .C(n1060), .D(n1064), .Y(
        \Reg_Array26[1][1] ) );
    ao4f3 U379 ( .A(n1062), .B(n1079), .C(n1061), .D(n1064), .Y(
        \Reg_Array26[1][0] ) );
    ao4f3 U380 ( .A(n1080), .B(n1081), .C(n1045), .D(n1082), .Y(
        \Reg_Array26[2][15] ) );
    ao4f3 U381 ( .A(n1080), .B(n1083), .C(n1047), .D(n1082), .Y(
        \Reg_Array26[2][14] ) );
    ao4f3 U382 ( .A(n1080), .B(n1084), .C(n1048), .D(n1082), .Y(
        \Reg_Array26[2][13] ) );
    ao4f3 U383 ( .A(n1080), .B(n1085), .C(n1049), .D(n1082), .Y(
        \Reg_Array26[2][12] ) );
    ao4f3 U384 ( .A(n1080), .B(n1086), .C(n1050), .D(n1082), .Y(
        \Reg_Array26[2][11] ) );
    ao4f3 U387 ( .A(n1080), .B(n1089), .C(n1053), .D(n1082), .Y(
        \Reg_Array26[2][8] ) );
    ao4f3 U388 ( .A(n1080), .B(n1090), .C(n1054), .D(n1082), .Y(
        \Reg_Array26[2][7] ) );
    ao4f3 U389 ( .A(n1080), .B(n1091), .C(n1055), .D(n1082), .Y(
        \Reg_Array26[2][6] ) );
    ao4f3 U390 ( .A(n1080), .B(n1092), .C(n1056), .D(n1082), .Y(
        \Reg_Array26[2][5] ) );
    ao4f3 U391 ( .A(n1080), .B(n1093), .C(n1057), .D(n1082), .Y(
        \Reg_Array26[2][4] ) );
    ao4f3 U392 ( .A(n1080), .B(n1094), .C(n1058), .D(n1082), .Y(
        \Reg_Array26[2][3] ) );
    ao4f3 U393 ( .A(n1080), .B(n1095), .C(n1059), .D(n1082), .Y(
        \Reg_Array26[2][2] ) );
    ao4f3 U394 ( .A(n1080), .B(n1096), .C(n1060), .D(n1082), .Y(
        \Reg_Array26[2][1] ) );
    ao4f3 U395 ( .A(n1080), .B(n1097), .C(n1061), .D(n1082), .Y(
        \Reg_Array26[2][0] ) );
    ao4f3 U396 ( .A(n1098), .B(n1099), .C(n1100), .D(n1045), .Y(
        \Reg_Array26[3][15] ) );
    ao4f3 U397 ( .A(n1098), .B(n1101), .C(n1100), .D(n1047), .Y(
        \Reg_Array26[3][14] ) );
    ao4f3 U398 ( .A(n1098), .B(n1102), .C(n1100), .D(n1048), .Y(
        \Reg_Array26[3][13] ) );
    ao4f3 U399 ( .A(n1098), .B(n1103), .C(n1100), .D(n1049), .Y(
        \Reg_Array26[3][12] ) );
    ao4f3 U400 ( .A(n1098), .B(n1104), .C(n1100), .D(n1050), .Y(
        \Reg_Array26[3][11] ) );
    ao4f3 U401 ( .A(n1098), .B(n1105), .C(n1100), .D(n1051), .Y(
        \Reg_Array26[3][10] ) );
    ao4f3 U402 ( .A(n1098), .B(n1106), .C(n1100), .D(n1052), .Y(
        \Reg_Array26[3][9] ) );
    ao4f3 U403 ( .A(n1098), .B(n1107), .C(n1100), .D(n1053), .Y(
        \Reg_Array26[3][8] ) );
    ao4f3 U404 ( .A(n1098), .B(n1108), .C(n1100), .D(n1054), .Y(
        \Reg_Array26[3][7] ) );
    ao4f3 U405 ( .A(n1098), .B(n1109), .C(n1100), .D(n1055), .Y(
        \Reg_Array26[3][6] ) );
    ao4f3 U406 ( .A(n1098), .B(n1110), .C(n1100), .D(n1056), .Y(
        \Reg_Array26[3][5] ) );
    ao4f3 U408 ( .A(n1098), .B(n1112), .C(n1100), .D(n1058), .Y(
        \Reg_Array26[3][3] ) );
    ao4f3 U409 ( .A(n1098), .B(n1113), .C(n1100), .D(n1059), .Y(
        \Reg_Array26[3][2] ) );
    ao4f3 U410 ( .A(n1098), .B(n1114), .C(n1100), .D(n1060), .Y(
        \Reg_Array26[3][1] ) );
    ao4f3 U411 ( .A(n1098), .B(n1115), .C(n1100), .D(n1061), .Y(
        \Reg_Array26[3][0] ) );
    or2b2 U415 ( .A(\Addr_C[0] ), .B(\Addr_C[1] ), .Y(n1126) );
    or2b2 U416 ( .A(n1118), .B(\Addr_C[1] ), .Y(n1128) );
    or2b2 U418 ( .A(\Addr_B[1] ), .B(\Addr_B[0] ), .Y(n1132) );
    or2b2 U419 ( .A(\Addr_B[0] ), .B(\Addr_B[1] ), .Y(n1133) );
    oa4f3 U420 ( .A(n1134), .B(\larray[3][9] ), .C(n1135), .D(\larray[2][9] ), 
        .Y(n1025) );
    oa4f3 U421 ( .A(n1134), .B(\larray[3][8] ), .C(n1135), .D(\larray[2][8] ), 
        .Y(n1022) );
    oa4f3 U422 ( .A(n1134), .B(\larray[3][7] ), .C(n1135), .D(\larray[2][7] ), 
        .Y(n1019) );
    oa4f3 U423 ( .A(n1134), .B(\larray[3][6] ), .C(n1135), .D(\larray[2][6] ), 
        .Y(n1016) );
    oa4f3 U424 ( .A(n1134), .B(\larray[3][5] ), .C(n1135), .D(\larray[2][5] ), 
        .Y(n1013) );
    oa4f3 U425 ( .A(n1134), .B(\larray[3][4] ), .C(n1135), .D(\larray[2][4] ), 
        .Y(n1010) );
    oa4f3 U426 ( .A(n1134), .B(\larray[3][3] ), .C(n1135), .D(\larray[2][3] ), 
        .Y(n1007) );
    oa4f3 U427 ( .A(n1134), .B(\larray[3][2] ), .C(n1135), .D(\larray[2][2] ), 
        .Y(n1004) );
    oa4f3 U428 ( .A(n1134), .B(\larray[3][1] ), .C(n1135), .D(\larray[2][1] ), 
        .Y(n1001) );
    oa4f3 U429 ( .A(n1134), .B(\larray[3][15] ), .C(n1135), .D(\larray[2][15] 
        ), .Y(n1043) );
    oa4f3 U430 ( .A(n1134), .B(\larray[3][14] ), .C(n1135), .D(\larray[2][14] 
        ), .Y(n1040) );
    oa4f3 U431 ( .A(n1134), .B(\larray[3][13] ), .C(n1135), .D(\larray[2][13] 
        ), .Y(n1037) );
    oa4f3 U432 ( .A(n1134), .B(\larray[3][12] ), .C(n1135), .D(\larray[2][12] 
        ), .Y(n1034) );
    oa4f3 U434 ( .A(n1134), .B(\larray[3][10] ), .C(n1135), .D(\larray[2][10] 
        ), .Y(n1028) );
    oa4f3 U435 ( .A(n1134), .B(\larray[3][0] ), .C(n1135), .D(\larray[2][0] ), 
        .Y(n998) );
    or2b2 U446 ( .A(n1136), .B(n1065), .Y(n1039) );
    or2a9 U452 ( .A(\Addr_B[0] ), .B(\Addr_B[1] ), .Y(n1137) );
    or2c1 U453 ( .A(\larray[1][11] ), .B(n1136), .Y(n1030) );
    ao4a3 U454 ( .A(n1140), .B(\larray[1][5] ), .C(RegPort_C[5]), .D(n1141), 
        .Y(\Reg_Array26[1][5] ) );
    ao4a3 U455 ( .A(n1140), .B(\larray[1][3] ), .C(RegPort_C[3]), .D(n1141), 
        .Y(\Reg_Array26[1][3] ) );
    or2c1 U456 ( .A(\larray[1][8] ), .B(n1136), .Y(n1021) );
    or2c1 U457 ( .A(\larray[1][3] ), .B(n1136), .Y(n1006) );
    or2c1 U458 ( .A(\larray[1][10] ), .B(n1136), .Y(n1027) );
    or2c1 U459 ( .A(\larray[1][12] ), .B(n1136), .Y(n1033) );
    or2c1 U460 ( .A(\Addr_C[1] ), .B(\Addr_C[0] ), .Y(n1119) );
    and2a3 U461 ( .A(n1118), .B(\Addr_C[1] ), .Y(n1138) );
    or2c1 U462 ( .A(\larray[1][1] ), .B(n1136), .Y(n1000) );
    or2c1 U463 ( .A(\larray[1][2] ), .B(n1136), .Y(n1003) );
    or2c1 U464 ( .A(\larray[1][9] ), .B(n1136), .Y(n1024) );
    or2c1 U465 ( .A(\larray[1][15] ), .B(n1136), .Y(n1042) );
    or2c1 U466 ( .A(\larray[1][6] ), .B(n1136), .Y(n1015) );
    or2c1 U467 ( .A(\larray[1][7] ), .B(n1136), .Y(n1018) );
    or2c1 U468 ( .A(\larray[1][5] ), .B(n1136), .Y(n1012) );
    or2c1 U469 ( .A(\larray[1][4] ), .B(n1136), .Y(n1009) );
    or2c1 U470 ( .A(\larray[1][0] ), .B(n1136), .Y(n997) );
    or2c1 U471 ( .A(\larray[1][13] ), .B(n1136), .Y(n1036) );
    oa4a2 U472 ( .A(n1131), .B(n1104), .C(n1132), .D(n1086), .Y(n1031) );
    or2c3 U473 ( .A(\Addr_B[0] ), .B(\Addr_B[1] ), .Y(n1131) );
    clk1b6 U474 ( .A(n1132), .Y(n1135) );
    clk1b6 U475 ( .A(n1131), .Y(n1134) );
    clk1b6 U476 ( .A(n1133), .Y(n1136) );
    ao4a3 U477 ( .A(n1142), .B(\larray[2][10] ), .C(RegPort_C[10]), .D(n1143), 
        .Y(\Reg_Array26[2][10] ) );
    ao4b3 U478 ( .A(n1098), .B(\larray[3][4] ), .C(n1139), .D(RegPort_C[4]), 
        .Y(\Reg_Array26[3][4] ) );
    clk1b6 U479 ( .A(n1139), .Y(n1100) );
    and2c3 U480 ( .A(n1120), .B(n1119), .Y(n1139) );
    ao4a3 U481 ( .A(n1140), .B(\larray[1][2] ), .C(RegPort_C[2]), .D(n1141), 
        .Y(\Reg_Array26[1][2] ) );
    and2b2 U482 ( .A(n1122), .B(n1126), .Y(n1140) );
    clk1b6 U483 ( .A(n1141), .Y(n1064) );
    clk1b6 U484 ( .A(n1140), .Y(n1062) );
    and2c3 U485 ( .A(n1120), .B(n1126), .Y(n1141) );
    ao4a3 U486 ( .A(n1142), .B(\larray[2][9] ), .C(RegPort_C[9]), .D(n1143), 
        .Y(\Reg_Array26[2][9] ) );
    clk1b6 U487 ( .A(n1143), .Y(n1082) );
    inv1a1 U488 ( .A(\larray[2][9] ), .Y(n1088) );
    clk1b6 U489 ( .A(n1142), .Y(n1080) );
    and2c6 U490 ( .A(Write_RegC), .B(Reset), .Y(n929) );
    and2c3 U491 ( .A(n1138), .B(n1122), .Y(n1142) );
    and2a3 U492 ( .A(Write_RegC), .B(n1138), .Y(n1143) );
    inv1a1 U493 ( .A(Write_RegC), .Y(n1120) );
    inv1a3 U494 ( .A(RegPort_C[0]), .Y(n1061) );
    fdesf1a3 \Reg_Array_reg[1][1]  ( .D0(\Reg_Array26[1][1] ), .D1(
        \larray[1][1] ), .S(1'b0), .E(n930), .CLK(CTS_in_d), .Q(\larray[1][1] 
        ) );
    and2c3 U495 ( .A(n927), .B(n1005), .Y(n890) );
    or2c3 U496 ( .A(n924), .B(\larray[3][4] ), .Y(n915) );
    fdesf1a3 \Reg_Array_reg[1][4]  ( .D0(\Reg_Array26[1][4] ), .D1(
        \larray[1][4] ), .S(1'b0), .E(n930), .CLK(CTS_in_f), .Q(\larray[1][4] 
        ) );
    and2c3 U497 ( .A(n926), .B(n1014), .Y(n882) );
    mx2d3 U498 ( .D0(\larray[0][10] ), .D1(\larray[2][10] ), .S(n927), .Y(n432
        ) );
    inv1a1 U499 ( .A(\larray[1][14] ), .Y(n1065) );
    inv1a1 U500 ( .A(\larray[1][4] ), .Y(n1075) );
    inv1a1 U501 ( .A(\larray[1][1] ), .Y(n1078) );
    inv1a27 U502 ( .A(n929), .Y(n930) );
endmodule


module STACK_TOP ( Reset, PushEnbl, PopEnbl, \PushDataIn[10] , \PushDataIn[9] , 
    \PushDataIn[8] , \PushDataIn[7] , \PushDataIn[6] , \PushDataIn[5] , 
    \PushDataIn[4] , \PushDataIn[3] , \PushDataIn[2] , \PushDataIn[1] , 
    \PushDataIn[0] , \PopDataOut[10] , \PopDataOut[9] , \PopDataOut[8] , 
    \PopDataOut[7] , \PopDataOut[6] , \PopDataOut[5] , \PopDataOut[4] , 
    \PopDataOut[3] , \PopDataOut[2] , \PopDataOut[1] , \PopDataOut[0] , 
    STACK_FULL, CTS_in_, CTS_in_a, CTS_in_b, CTS_in_c, CTS_in_d, CTS_in_e, 
    CTS_in_f, CTS_in_g );
input  Reset, PushEnbl, PopEnbl, \PushDataIn[10] , \PushDataIn[9] , 
    \PushDataIn[8] , \PushDataIn[7] , \PushDataIn[6] , \PushDataIn[5] , 
    \PushDataIn[4] , \PushDataIn[3] , \PushDataIn[2] , \PushDataIn[1] , 
    \PushDataIn[0] , CTS_in_, CTS_in_a, CTS_in_b, CTS_in_c, CTS_in_d, CTS_in_e, 
    CTS_in_f, CTS_in_g;
output \PopDataOut[10] , \PopDataOut[9] , \PopDataOut[8] , \PopDataOut[7] , 
    \PopDataOut[6] , \PopDataOut[5] , \PopDataOut[4] , \PopDataOut[3] , 
    \PopDataOut[2] , \PopDataOut[1] , \PopDataOut[0] , STACK_FULL;
    wire \TOS[1] , n1, n2, n3, net10614, net10626, sub_37_minus_minus_N19, N17, 
        \larray117[3][0]2 , \larray117[7][2]2 , \larray117[6][1]2 , 
        \larray[1][1]2 , \member296[1]2 , \larray[0][2]2 , \larray[4][0]2 , 
        \larray[0][0]2 , \larray[4][2]2 , \larray[5][1]2 , \larray117[2][1]2 , 
        \larray117[7][0]2 , \larray117[3][2]2 , \larray[3][1]2 , 
        \larray[6][0]2 , \larray[2][2]2 , \larray117[1][0]2 , 
        \larray117[5][2]2 , \larray117[4][1]2 , \larray117[0][1]2 , 
        \larray117[1][2]2 , \larray117[5][0]2 , \larray[6][2]2 , 
        \larray[2][0]2 , \n39[2]2 , \larray[7][1]2 , \larray[2][1]2 , 
        \larray[3][2]2 , \larray[7][0]2 , \larray117[4][2]2 , 
        \larray117[0][0]2 , \larray117[1][1]2 , \larray117[5][1]2 , 
        \larray117[4][0]2 , \larray117[0][2]2 , \larray[3][0]2 , 
        \larray[7][2]2 , \larray[6][1]2 , \larray117[2][0]2 , 
        \larray117[6][2]2 , \larray117[7][1]2 , \____return37[1]2 , 
        \larray[0][1]2 , \member296[2]2 , \larray[1][2]2 , \larray[5][0]2 , 
        \larray[5][2]2 , \larray[1][0]2 , \member296[0]2 , \larray[4][1]2 , 
        \larray117[3][1]2 , \larray117[2][2]2 , \larray117[6][0]2 , n447, n448, 
        n449, n450, n451, n452, n453, n454, n455, n492, n493, n494, n495, n496, 
        n497, n498, n499, n500, n504, n505, n506, n507, n508, n509, n511, n512, 
        n514, n516, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, 
        n532, n533, n534, n535, n536, n537, n539, n542, n543, n545, n547, n548, 
        n549, n550, n551, n552, n553, n554, n555, n558, n559, n560, n561, n562, 
        n563, n564, n565, n566, n567, n568, n569, \larray117[3][0]1 , 
        \larray117[7][2]1 , \larray[5][3]1 , \larray117[2][3]1 , 
        \larray117[6][1]1 , \larray[1][1]1 , \member296[1]1 , \larray[0][2]1 , 
        \larray[4][0]1 , \larray[0][0]1 , \larray[4][2]1 , \member296[3]1 , 
        \larray[5][1]1 , \larray[1][3]1 , \larray117[2][1]1 , 
        \larray117[6][3]1 , \larray117[7][0]1 , \larray117[3][2]1 , 
        \larray[3][1]1 , \larray[7][3]1 , \larray[6][0]1 , \larray[2][2]1 , 
        \larray117[1][0]1 , \larray117[5][2]1 , \larray117[0][3]1 , 
        \larray117[4][1]1 , \larray117[0][1]1 , \larray117[4][3]1 , 
        \larray117[1][2]1 , \larray117[5][0]1 , \larray[6][2]1 , 
        \larray[2][0]1 , \n39[2]1 , \larray[3][3]1 , \larray[7][1]1 , 
        \larray[6][3]1 , \larray[2][1]1 , \larray[3][2]1 , \larray[7][0]1 , 
        \larray117[4][2]1 , \larray117[0][0]1 , \larray117[1][3]1 , 
        \larray117[1][1]1 , \larray117[5][1]1 , \larray117[5][3]1 , 
        \larray117[4][0]1 , \larray117[0][2]1 , \larray[3][0]1 , 
        \larray[7][2]1 , \larray[2][3]1 , \larray[6][1]1 , \larray117[2][0]1 , 
        \larray117[6][2]1 , \larray117[7][1]1 , \____return37[1]1 , 
        \larray117[3][3]1 , \larray[0][1]1 , \larray[4][3]1 , \member296[2]1 , 
        \larray[1][2]1 , \larray[5][0]1 , \larray[5][2]1 , \larray[1][0]1 , 
        \member296[0]1 , \larray[0][3]1 , \larray[4][1]1 , \larray117[7][3]1 , 
        \larray117[3][1]1 , \larray117[2][2]1 , \larray117[6][0]1 , n570, n571, 
        n572, n573, n574, n575, n576, n577, n578, n615, n616, n617, n618, n619, 
        n620, n621, n622, n623, n624, n625, n626, n627, n628, n629, n633, n634, 
        n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646, 
        n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, 
        n659, n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, 
        n671, n672, n679, n680, n681, n682, n683, n684, n685, n686, 
        \larray117[3][0] , \larray117[7][2] , \larray[5][3] , 
        \larray117[2][3] , \larray117[6][1] , \larray[1][1] , \member296[1] , 
        \larray[0][2] , \larray[4][0] , \larray[0][0] , \larray[4][2] , 
        \member296[3] , \larray[5][1] , \larray[1][3] , \larray117[2][1] , 
        \larray117[6][3] , \larray117[7][0] , \larray117[3][2] , 
        \larray[3][1] , \larray[7][3] , \larray[6][0] , \larray[2][2] , 
        \larray117[1][0] , \larray117[5][2] , \larray117[0][3] , 
        \larray117[4][1] , \larray117[0][1] , \larray117[4][3] , 
        \larray117[1][2] , \larray117[5][0] , \larray[6][2] , \larray[2][0] , 
        \n39[2] , \larray[3][3] , \larray[7][1] , \larray[6][3] , 
        \larray[2][1] , \larray[3][2] , \larray[7][0] , \larray117[4][2] , 
        \larray117[0][0] , \larray117[1][3] , \larray117[1][1] , 
        \larray117[5][1] , \larray117[5][3] , \larray117[4][0] , 
        \larray117[0][2] , \larray[3][0] , \larray[7][2] , \larray[2][3] , 
        \larray[6][1] , \larray117[2][0] , \larray117[6][2] , 
        \larray117[7][1] , \____return37[1] , \larray117[3][3] , 
        \larray[0][1] , \larray[4][3] , \member296[2] , \larray[1][2] , 
        \larray[5][0] , \larray[5][2] , \larray[1][0] , \member296[0] , 
        \larray[0][3] , \larray[4][1] , \larray117[7][3] , \larray117[3][1] , 
        \larray117[2][2] , \larray117[6][0] , n693, n694, n695, n696, n697, 
        n698, n699, n700, n701, n738, n739, n740, n741, n742, n743, n744, n745, 
        n746, n747, n748, n749, n750, n751, n752, n756, n757, n758, n759, n760, 
        n761, n762, n763, n764, n765, n766, n767, n768, n769, n770, n771, n772, 
        n773, n774, n775, n792, n793, n802, n803, n804, n805, n806, n807, n808, 
        n809, \Crnt_Stack[1] , \Crnt_Stack[0] , STACK_FULL408, \TOS_int369[0] , 
        n377, \TOS_int369[2] , n872, \____return312[1] , n870, n871, 
        \____return312[2] , \____return312[0] , \TOS_int369[1] , n816, n817, 
        n820, n821, n823, n825, n827, n828, n829, n830, n831, n834, n835, n840, 
        n841, n844, n846, n847, n849, n850, n852, n854, n858, n860, n866, n4, 
        n5, n6, n7, n8, n9, n10, n11, n12;
    or2b2 U23 ( .A(n509), .B(\TOS[1] ), .Y(net10614) );
    xor2a2 U32 ( .A(\TOS[1] ), .B(n509), .Y(\____return37[1]2 ) );
    xor2b2 _cell_1494 ( .A(n870), .B(net10614), .Y(\n39[2]2 ) );
    or2b2 U22 ( .A(\____return312[0] ), .B(\TOS[1] ), .Y(net10626) );
    xor2a2 U31 ( .A(\TOS[1] ), .B(n509), .Y(\____return37[1]1 ) );
    xor2b2 _cell_1502 ( .A(n870), .B(net10626), .Y(\n39[2]1 ) );
    or2b2 U21 ( .A(\____return312[0] ), .B(\TOS[1] ), .Y(
        sub_37_minus_minus_N19) );
    xor2a2 U3 ( .A(\TOS[1] ), .B(n509), .Y(\____return37[1] ) );
    xor2b2 sub_37_minus_minus_I9 ( .A(n870), .B(sub_37_minus_minus_N19), .Y(
        \n39[2] ) );
    fa1b3 I7 ( .A(n2), .B(\TOS[1] ), .CI(\____return312[0] ), .S(
        \____return312[1] ), .CO(N17) );
    xor3a1 U2 ( .A(n2), .B(n870), .C(N17), .Y(\____return312[2] ) );
    inv1a3 U612 ( .A(n504), .Y(n512) );
    mx2d3 U622 ( .D0(\____return37[1]2 ), .D1(\TOS[1] ), .S(STACK_FULL), .Y(
        n504) );
    mx2d3 U632 ( .D0(n509), .D1(n872), .S(STACK_FULL), .Y(n506) );
    mx2d3 U642 ( .D0(\n39[2]2 ), .D1(n870), .S(STACK_FULL), .Y(n505) );
    inv1a3 U652 ( .A(n506), .Y(n514) );
    inv1a3 U662 ( .A(n505), .Y(n516) );
    inv1a3 U682 ( .A(n564), .Y(n550) );
    clk1b6 U762 ( .A(\PushDataIn[8] ), .Y(n549) );
    fdesf1a3 \Stack_Mem_reg[7][0]2  ( .D0(\larray117[7][0]2 ), .D1(
        \larray[7][0]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_a), .Q(\larray[7][0]2 
        ) );
    fdesf1a3 \Stack_Mem_reg[7][1]2  ( .D0(\larray117[7][1]2 ), .D1(
        \larray[7][1]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_f), .Q(\larray[7][1]2 
        ) );
    inv1a1 U782 ( .A(\larray[7][1]2 ), .Y(n530) );
    fdesf1a3 \Stack_Mem_reg[7][2]2  ( .D0(\larray117[7][2]2 ), .D1(
        \larray[7][2]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_f), .Q(\larray[7][2]2 
        ) );
    inv1a1 U792 ( .A(\larray[7][2]2 ), .Y(n522) );
    fdesf1a3 \Stack_Mem_reg[6][0]2  ( .D0(\larray117[6][0]2 ), .D1(
        \larray[6][0]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[6][0]2 
        ) );
    fdesf1a3 \Stack_Mem_reg[6][1]2  ( .D0(\larray117[6][1]2 ), .D1(
        \larray[6][1]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[6][1]2 
        ) );
    inv1a1 U822 ( .A(\larray[6][1]2 ), .Y(n536) );
    fdesf1a3 \Stack_Mem_reg[6][2]2  ( .D0(\larray117[6][2]2 ), .D1(
        \larray[6][2]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[6][2]2 
        ) );
    inv1a1 U832 ( .A(\larray[6][2]2 ), .Y(n528) );
    fdesf1a3 \Stack_Mem_reg[5][0]2  ( .D0(\larray117[5][0]2 ), .D1(
        \larray[5][0]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_a), .Q(\larray[5][0]2 
        ) );
    inv1a1 U852 ( .A(\larray[5][0]2 ), .Y(n539) );
    fdesf1a3 \Stack_Mem_reg[5][1]2  ( .D0(\larray117[5][1]2 ), .D1(
        \larray[5][1]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_f), .Q(\larray[5][1]2 
        ) );
    inv1a1 U862 ( .A(\larray[5][1]2 ), .Y(n531) );
    fdesf1a3 \Stack_Mem_reg[5][2]2  ( .D0(\larray117[5][2]2 ), .D1(
        \larray[5][2]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_f), .Q(\larray[5][2]2 
        ) );
    inv1a1 U872 ( .A(\larray[5][2]2 ), .Y(n523) );
    fdesf1a3 \Stack_Mem_reg[4][0]2  ( .D0(\larray117[4][0]2 ), .D1(
        \larray[4][0]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_c), .Q(\larray[4][0]2 
        ) );
    fdesf1a3 \Stack_Mem_reg[4][1]2  ( .D0(\larray117[4][1]2 ), .D1(
        \larray[4][1]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[4][1]2 
        ) );
    inv1a1 U902 ( .A(\larray[4][1]2 ), .Y(n532) );
    fdesf1a3 \Stack_Mem_reg[4][2]2  ( .D0(\larray117[4][2]2 ), .D1(
        \larray[4][2]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_f), .Q(\larray[4][2]2 
        ) );
    inv1a1 U912 ( .A(\larray[4][2]2 ), .Y(n524) );
    fdesf1a3 \Stack_Mem_reg[3][0]2  ( .D0(\larray117[3][0]2 ), .D1(
        \larray[3][0]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[3][0]2 
        ) );
    fdesf1a3 \Stack_Mem_reg[3][1]2  ( .D0(\larray117[3][1]2 ), .D1(
        \larray[3][1]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[3][1]2 
        ) );
    inv1a1 U942 ( .A(\larray[3][1]2 ), .Y(n533) );
    fdesf1a3 \Stack_Mem_reg[3][2]2  ( .D0(\larray117[3][2]2 ), .D1(
        \larray[3][2]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_f), .Q(\larray[3][2]2 
        ) );
    inv1a1 U952 ( .A(\larray[3][2]2 ), .Y(n525) );
    fdesf1a3 \Stack_Mem_reg[2][0]2  ( .D0(\larray117[2][0]2 ), .D1(
        \larray[2][0]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_a), .Q(\larray[2][0]2 
        ) );
    inv1a1 U972 ( .A(\larray[2][0]2 ), .Y(n542) );
    fdesf1a3 \Stack_Mem_reg[2][1]2  ( .D0(\larray117[2][1]2 ), .D1(
        \larray[2][1]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_a), .Q(\larray[2][1]2 
        ) );
    inv1a1 U982 ( .A(\larray[2][1]2 ), .Y(n534) );
    fdesf1a3 \Stack_Mem_reg[2][2]2  ( .D0(\larray117[2][2]2 ), .D1(
        \larray[2][2]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_a), .Q(\larray[2][2]2 
        ) );
    inv1a1 U992 ( .A(\larray[2][2]2 ), .Y(n526) );
    fdesf1a3 \Stack_Mem_reg[1][0]2  ( .D0(\larray117[1][0]2 ), .D1(
        \larray[1][0]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_a), .Q(\larray[1][0]2 
        ) );
    inv1a1 U1013 ( .A(\larray[1][0]2 ), .Y(n543) );
    fdesf1a3 \Stack_Mem_reg[1][1]2  ( .D0(\larray117[1][1]2 ), .D1(
        \larray[1][1]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_a), .Q(\larray[1][1]2 
        ) );
    inv1a1 U1023 ( .A(\larray[1][1]2 ), .Y(n535) );
    fdesf1a3 \Stack_Mem_reg[1][2]2  ( .D0(\larray117[1][2]2 ), .D1(
        \larray[1][2]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_a), .Q(\larray[1][2]2 
        ) );
    inv1a1 U1033 ( .A(\larray[1][2]2 ), .Y(n527) );
    fdesf1a3 \Stack_Mem_reg[0][0]2  ( .D0(\larray117[0][0]2 ), .D1(
        \larray[0][0]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_a), .Q(\larray[0][0]2 
        ) );
    inv1a1 U1053 ( .A(\larray[0][0]2 ), .Y(n545) );
    fdesf1a3 \Stack_Mem_reg[0][1]2  ( .D0(\larray117[0][1]2 ), .D1(
        \larray[0][1]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_f), .Q(\larray[0][1]2 
        ) );
    inv1a1 U1063 ( .A(\larray[0][1]2 ), .Y(n537) );
    fdesf1a3 \Stack_Mem_reg[0][2]2  ( .D0(\larray117[0][2]2 ), .D1(
        \larray[0][2]2 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[0][2]2 
        ) );
    inv1a1 U1073 ( .A(\larray[0][2]2 ), .Y(n529) );
    fdesf1a3 \PopDataOut_reg[2]2  ( .D0(\member296[2]2 ), .D1(\PopDataOut[10] 
        ), .S(1'b0), .E(PopEnbl), .CLK(CTS_in_), .Q(\PopDataOut[10] ) );
    fdesf1a3 \PopDataOut_reg[1]2  ( .D0(\member296[1]2 ), .D1(\PopDataOut[9] ), 
        .S(1'b0), .E(PopEnbl), .CLK(CTS_in_), .Q(\PopDataOut[9] ) );
    fdesf1a3 \PopDataOut_reg[0]2  ( .D0(\member296[0]2 ), .D1(\PopDataOut[8] ), 
        .S(1'b0), .E(PopEnbl), .CLK(CTS_in_), .Q(\PopDataOut[8] ) );
    clk1b6 U1183 ( .A(\PushDataIn[9] ), .Y(n548) );
    or3c2 U1553 ( .A(n493), .B(n494), .C(n492), .Y(\member296[0]2 ) );
    or3c2 U1563 ( .A(n496), .B(n497), .C(n495), .Y(\member296[1]2 ) );
    or3c2 U1573 ( .A(n499), .B(n500), .C(n498), .Y(\member296[2]2 ) );
    or3a3 U1593 ( .A(n512), .B(n506), .C(n505), .Y(n511) );
    mx2d2 U1612 ( .D0(n522), .D1(n547), .S(n454), .Y(\larray117[7][2]2 ) );
    mx2d2 U1622 ( .D0(n530), .D1(n548), .S(n454), .Y(\larray117[7][1]2 ) );
    mx2d2 U1652 ( .D0(n528), .D1(n547), .S(n550), .Y(\larray117[6][2]2 ) );
    mx2d2 U1662 ( .D0(n536), .D1(n548), .S(n550), .Y(\larray117[6][1]2 ) );
    mx2d2 U1692 ( .D0(n523), .D1(n547), .S(n551), .Y(\larray117[5][2]2 ) );
    mx2d2 U1702 ( .D0(n531), .D1(n548), .S(n551), .Y(\larray117[5][1]2 ) );
    mx2d2 U1712 ( .D0(n539), .D1(n549), .S(n551), .Y(\larray117[5][0]2 ) );
    mx2d2 U1732 ( .D0(n524), .D1(n547), .S(n552), .Y(\larray117[4][2]2 ) );
    mx2d2 U1742 ( .D0(n532), .D1(n548), .S(n552), .Y(\larray117[4][1]2 ) );
    mx2d2 U1772 ( .D0(n525), .D1(n547), .S(n553), .Y(\larray117[3][2]2 ) );
    mx2d2 U1782 ( .D0(n533), .D1(n548), .S(n553), .Y(\larray117[3][1]2 ) );
    mx2d2 U1812 ( .D0(n526), .D1(n547), .S(n554), .Y(\larray117[2][2]2 ) );
    mx2d2 U1822 ( .D0(n534), .D1(n548), .S(n554), .Y(\larray117[2][1]2 ) );
    mx2d2 U1832 ( .D0(n542), .D1(n549), .S(n554), .Y(\larray117[2][0]2 ) );
    mx2d2 U1852 ( .D0(n527), .D1(n547), .S(n555), .Y(\larray117[1][2]2 ) );
    mx2d2 U1862 ( .D0(n535), .D1(n548), .S(n555), .Y(\larray117[1][1]2 ) );
    mx2d2 U1872 ( .D0(n543), .D1(n549), .S(n555), .Y(\larray117[1][0]2 ) );
    mx2d2 U1892 ( .D0(n529), .D1(n547), .S(n455), .Y(\larray117[0][2]2 ) );
    mx2d2 U1902 ( .D0(n537), .D1(n548), .S(n455), .Y(\larray117[0][1]2 ) );
    mx2d2 U1912 ( .D0(n545), .D1(n549), .S(n455), .Y(\larray117[0][0]2 ) );
    oa4f3 U1962 ( .A(\larray[4][2]2 ), .B(n452), .C(\larray[3][2]2 ), .D(n447), 
        .Y(n558) );
    ao2i3 U1972 ( .A(n511), .B(n523), .C(n559), .D(n558), .Y(n498) );
    oa4f3 U2002 ( .A(\larray[4][1]2 ), .B(n452), .C(\larray[3][1]2 ), .D(n447), 
        .Y(n560) );
    ao2i3 U2012 ( .A(n511), .B(n531), .C(n561), .D(n560), .Y(n495) );
    oa4f3 U2022 ( .A(\larray[2][1]2 ), .B(n448), .C(\larray[1][1]2 ), .D(n451), 
        .Y(n496) );
    oa4f3 U2032 ( .A(\larray[6][1]2 ), .B(n450), .C(\larray[0][1]2 ), .D(n449), 
        .Y(n497) );
    oa4f3 U2042 ( .A(\larray[4][0]2 ), .B(n452), .C(\larray[3][0]2 ), .D(n447), 
        .Y(n562) );
    ao2i3 U2052 ( .A(n511), .B(n539), .C(n563), .D(n562), .Y(n492) );
    oa4f3 U2062 ( .A(\larray[2][0]2 ), .B(n448), .C(\larray[1][0]2 ), .D(n451), 
        .Y(n493) );
    oa4f3 U2072 ( .A(\larray[6][0]2 ), .B(n450), .C(\larray[0][0]2 ), .D(n449), 
        .Y(n494) );
    clk1b6 U2082 ( .A(\PushDataIn[10] ), .Y(n547) );
    or3c2 U2142 ( .A(\TOS[1] ), .B(n870), .C(n872), .Y(n564) );
    or3c2 U2152 ( .A(n870), .B(n872), .C(\TOS[1] ), .Y(n565) );
    or3c2 U2162 ( .A(n507), .B(n870), .C(n872), .Y(n566) );
    or3c2 U2172 ( .A(\TOS[1] ), .B(n872), .C(n870), .Y(n567) );
    or3c2 U2182 ( .A(n508), .B(\TOS[1] ), .C(n872), .Y(n568) );
    or3c2 U2192 ( .A(n508), .B(n872), .C(\TOS[1] ), .Y(n569) );
    inv1a3 U611 ( .A(n627), .Y(n635) );
    mx2d3 U621 ( .D0(\____return37[1]1 ), .D1(\TOS[1] ), .S(STACK_FULL), .Y(
        n627) );
    mx2d3 U631 ( .D0(n509), .D1(n872), .S(STACK_FULL), .Y(n629) );
    mx2d3 U641 ( .D0(\n39[2]1 ), .D1(n870), .S(STACK_FULL), .Y(n628) );
    inv1a3 U661 ( .A(n628), .Y(n639) );
    fdesf1a3 \Stack_Mem_reg[7][0]1  ( .D0(\larray117[7][0]1 ), .D1(
        \larray[7][0]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_e), .Q(\larray[7][0]1 
        ) );
    inv1a1 U761 ( .A(\larray[7][0]1 ), .Y(n661) );
    fdesf1a3 \Stack_Mem_reg[7][1]1  ( .D0(\larray117[7][1]1 ), .D1(
        \larray[7][1]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_e), .Q(\larray[7][1]1 
        ) );
    inv1a1 U771 ( .A(\larray[7][1]1 ), .Y(n653) );
    fdesf1a3 \Stack_Mem_reg[7][2]1  ( .D0(\larray117[7][2]1 ), .D1(
        \larray[7][2]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_c), .Q(\larray[7][2]1 
        ) );
    inv1a1 U781 ( .A(\larray[7][2]1 ), .Y(n645) );
    fdesf1a3 \Stack_Mem_reg[7][3]1  ( .D0(\larray117[7][3]1 ), .D1(
        \larray[7][3]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_c), .Q(\larray[7][3]1 
        ) );
    inv1a1 U791 ( .A(\larray[7][3]1 ), .Y(n633) );
    fdesf1a3 \Stack_Mem_reg[6][0]1  ( .D0(\larray117[6][0]1 ), .D1(
        \larray[6][0]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_e), .Q(\larray[6][0]1 
        ) );
    inv1a1 U801 ( .A(\larray[6][0]1 ), .Y(n667) );
    fdesf1a3 \Stack_Mem_reg[6][1]1  ( .D0(\larray117[6][1]1 ), .D1(
        \larray[6][1]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_e), .Q(\larray[6][1]1 
        ) );
    inv1a1 U811 ( .A(\larray[6][1]1 ), .Y(n659) );
    fdesf1a3 \Stack_Mem_reg[6][2]1  ( .D0(\larray117[6][2]1 ), .D1(
        \larray[6][2]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_e), .Q(\larray[6][2]1 
        ) );
    inv1a1 U821 ( .A(\larray[6][2]1 ), .Y(n651) );
    fdesf1a3 \Stack_Mem_reg[6][3]1  ( .D0(\larray117[6][3]1 ), .D1(
        \larray[6][3]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_e), .Q(\larray[6][3]1 
        ) );
    inv1a1 U831 ( .A(\larray[6][3]1 ), .Y(n642) );
    fdesf1a3 \Stack_Mem_reg[5][0]1  ( .D0(\larray117[5][0]1 ), .D1(
        \larray[5][0]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[5][0]1 
        ) );
    inv1a1 U841 ( .A(\larray[5][0]1 ), .Y(n662) );
    fdesf1a3 \Stack_Mem_reg[5][1]1  ( .D0(\larray117[5][1]1 ), .D1(
        \larray[5][1]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_e), .Q(\larray[5][1]1 
        ) );
    inv1a1 U851 ( .A(\larray[5][1]1 ), .Y(n654) );
    fdesf1a3 \Stack_Mem_reg[5][2]1  ( .D0(\larray117[5][2]1 ), .D1(
        \larray[5][2]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[5][2]1 
        ) );
    inv1a1 U861 ( .A(\larray[5][2]1 ), .Y(n646) );
    fdesf1a3 \Stack_Mem_reg[5][3]1  ( .D0(\larray117[5][3]1 ), .D1(
        \larray[5][3]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[5][3]1 
        ) );
    inv1a1 U871 ( .A(\larray[5][3]1 ), .Y(n636) );
    fdesf1a3 \Stack_Mem_reg[4][0]1  ( .D0(\larray117[4][0]1 ), .D1(
        \larray[4][0]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[4][0]1 
        ) );
    inv1a1 U881 ( .A(\larray[4][0]1 ), .Y(n663) );
    fdesf1a3 \Stack_Mem_reg[4][1]1  ( .D0(\larray117[4][1]1 ), .D1(
        \larray[4][1]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[4][1]1 
        ) );
    inv1a1 U891 ( .A(\larray[4][1]1 ), .Y(n655) );
    fdesf1a3 \Stack_Mem_reg[4][2]1  ( .D0(\larray117[4][2]1 ), .D1(
        \larray[4][2]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[4][2]1 
        ) );
    inv1a1 U901 ( .A(\larray[4][2]1 ), .Y(n647) );
    fdesf1a3 \Stack_Mem_reg[4][3]1  ( .D0(\larray117[4][3]1 ), .D1(
        \larray[4][3]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[4][3]1 
        ) );
    inv1a1 U911 ( .A(\larray[4][3]1 ), .Y(n638) );
    fdesf1a3 \Stack_Mem_reg[3][0]1  ( .D0(\larray117[3][0]1 ), .D1(
        \larray[3][0]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[3][0]1 
        ) );
    inv1a1 U921 ( .A(\larray[3][0]1 ), .Y(n664) );
    fdesf1a3 \Stack_Mem_reg[3][1]1  ( .D0(\larray117[3][1]1 ), .D1(
        \larray[3][1]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[3][1]1 
        ) );
    inv1a1 U931 ( .A(\larray[3][1]1 ), .Y(n656) );
    fdesf1a3 \Stack_Mem_reg[3][2]1  ( .D0(\larray117[3][2]1 ), .D1(
        \larray[3][2]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[3][2]1 
        ) );
    inv1a1 U941 ( .A(\larray[3][2]1 ), .Y(n648) );
    fdesf1a3 \Stack_Mem_reg[3][3]1  ( .D0(\larray117[3][3]1 ), .D1(
        \larray[3][3]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_g), .Q(\larray[3][3]1 
        ) );
    inv1a1 U951 ( .A(\larray[3][3]1 ), .Y(n640) );
    fdesf1a3 \Stack_Mem_reg[2][0]1  ( .D0(\larray117[2][0]1 ), .D1(
        \larray[2][0]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_c), .Q(\larray[2][0]1 
        ) );
    inv1a1 U961 ( .A(\larray[2][0]1 ), .Y(n665) );
    fdesf1a3 \Stack_Mem_reg[2][1]1  ( .D0(\larray117[2][1]1 ), .D1(
        \larray[2][1]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_c), .Q(\larray[2][1]1 
        ) );
    inv1a1 U971 ( .A(\larray[2][1]1 ), .Y(n657) );
    fdesf1a3 \Stack_Mem_reg[2][2]1  ( .D0(\larray117[2][2]1 ), .D1(
        \larray[2][2]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_c), .Q(\larray[2][2]1 
        ) );
    inv1a1 U981 ( .A(\larray[2][2]1 ), .Y(n649) );
    fdesf1a3 \Stack_Mem_reg[2][3]1  ( .D0(\larray117[2][3]1 ), .D1(
        \larray[2][3]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_), .Q(\larray[2][3]1 )
         );
    inv1a1 U991 ( .A(\larray[2][3]1 ), .Y(n641) );
    fdesf1a3 \Stack_Mem_reg[1][0]1  ( .D0(\larray117[1][0]1 ), .D1(
        \larray[1][0]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_c), .Q(\larray[1][0]1 
        ) );
    inv1a1 U1002 ( .A(\larray[1][0]1 ), .Y(n666) );
    fdesf1a3 \Stack_Mem_reg[1][1]1  ( .D0(\larray117[1][1]1 ), .D1(
        \larray[1][1]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_), .Q(\larray[1][1]1 )
         );
    inv1a1 U1012 ( .A(\larray[1][1]1 ), .Y(n658) );
    fdesf1a3 \Stack_Mem_reg[1][2]1  ( .D0(\larray117[1][2]1 ), .D1(
        \larray[1][2]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_c), .Q(\larray[1][2]1 
        ) );
    inv1a1 U1022 ( .A(\larray[1][2]1 ), .Y(n650) );
    fdesf1a3 \Stack_Mem_reg[1][3]1  ( .D0(\larray117[1][3]1 ), .D1(
        \larray[1][3]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_), .Q(\larray[1][3]1 )
         );
    inv1a1 U1032 ( .A(\larray[1][3]1 ), .Y(n643) );
    fdesf1a3 \Stack_Mem_reg[0][0]1  ( .D0(\larray117[0][0]1 ), .D1(
        \larray[0][0]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_e), .Q(\larray[0][0]1 
        ) );
    inv1a1 U1042 ( .A(\larray[0][0]1 ), .Y(n668) );
    fdesf1a3 \Stack_Mem_reg[0][1]1  ( .D0(\larray117[0][1]1 ), .D1(
        \larray[0][1]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_e), .Q(\larray[0][1]1 
        ) );
    inv1a1 U1052 ( .A(\larray[0][1]1 ), .Y(n660) );
    fdesf1a3 \Stack_Mem_reg[0][2]1  ( .D0(\larray117[0][2]1 ), .D1(
        \larray[0][2]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_e), .Q(\larray[0][2]1 
        ) );
    inv1a1 U1062 ( .A(\larray[0][2]1 ), .Y(n652) );
    fdesf1a3 \Stack_Mem_reg[0][3]1  ( .D0(\larray117[0][3]1 ), .D1(
        \larray[0][3]1 ), .S(1'b0), .E(n3), .CLK(CTS_in_e), .Q(\larray[0][3]1 
        ) );
    inv1a1 U1072 ( .A(\larray[0][3]1 ), .Y(n644) );
    fdesf1a3 \PopDataOut_reg[3]1  ( .D0(\member296[3]1 ), .D1(\PopDataOut[7] ), 
        .S(1'b0), .E(PopEnbl), .CLK(CTS_in_), .Q(\PopDataOut[7] ) );
    fdesf1a3 \PopDataOut_reg[2]1  ( .D0(\member296[2]1 ), .D1(\PopDataOut[6] ), 
        .S(1'b0), .E(PopEnbl), .CLK(CTS_in_), .Q(\PopDataOut[6] ) );
    fdesf1a3 \PopDataOut_reg[1]1  ( .D0(\member296[1]1 ), .D1(\PopDataOut[5] ), 
        .S(1'b0), .E(PopEnbl), .CLK(CTS_in_), .Q(\PopDataOut[5] ) );
    fdesf1a3 \PopDataOut_reg[0]1  ( .D0(\member296[0]1 ), .D1(\PopDataOut[4] ), 
        .S(1'b0), .E(PopEnbl), .CLK(CTS_in_c), .Q(\PopDataOut[4] ) );
    and3d6 U1082 ( .A(n627), .B(n629), .C(n639), .Y(n570) );
    and3d6 U1162 ( .A(n872), .B(\TOS[1] ), .C(n870), .Y(n578) );
    clk1b9 U1172 ( .A(\PushDataIn[4] ), .Y(n672) );
    clk1b9 U1182 ( .A(\PushDataIn[5] ), .Y(n671) );
    clk1b9 U1192 ( .A(\PushDataIn[6] ), .Y(n670) );
    clk1b9 U1202 ( .A(\PushDataIn[7] ), .Y(n669) );
    or3c2 U1572 ( .A(n616), .B(n617), .C(n615), .Y(\member296[0]1 ) );
    or3c2 U1582 ( .A(n619), .B(n620), .C(n618), .Y(\member296[1]1 ) );
    or3c2 U1592 ( .A(n622), .B(n623), .C(n621), .Y(\member296[2]1 ) );
    or3c2 U1601 ( .A(n625), .B(n626), .C(n624), .Y(\member296[3]1 ) );
    or3a3 U1611 ( .A(n635), .B(n629), .C(n628), .Y(n634) );
    mx2d2 U1621 ( .D0(n633), .D1(n669), .S(n577), .Y(\larray117[7][3]1 ) );
    mx2d2 U1631 ( .D0(n645), .D1(n670), .S(n577), .Y(\larray117[7][2]1 ) );
    mx2d2 U1641 ( .D0(n653), .D1(n671), .S(n577), .Y(\larray117[7][1]1 ) );
    mx2d2 U1651 ( .D0(n661), .D1(n672), .S(n577), .Y(\larray117[7][0]1 ) );
    mx2d2 U1661 ( .D0(n642), .D1(n669), .S(n550), .Y(\larray117[6][3]1 ) );
    mx2d2 U1671 ( .D0(n651), .D1(n670), .S(n550), .Y(\larray117[6][2]1 ) );
    mx2d2 U1681 ( .D0(n659), .D1(n671), .S(n550), .Y(\larray117[6][1]1 ) );
    mx2d2 U1691 ( .D0(n667), .D1(n672), .S(n550), .Y(\larray117[6][0]1 ) );
    mx2d2 U1701 ( .D0(n636), .D1(n669), .S(n551), .Y(\larray117[5][3]1 ) );
    mx2d2 U1711 ( .D0(n646), .D1(n670), .S(n551), .Y(\larray117[5][2]1 ) );
    mx2d2 U1721 ( .D0(n654), .D1(n671), .S(n551), .Y(\larray117[5][1]1 ) );
    mx2d2 U1731 ( .D0(n662), .D1(n672), .S(n551), .Y(\larray117[5][0]1 ) );
    mx2d2 U1741 ( .D0(n638), .D1(n669), .S(n552), .Y(\larray117[4][3]1 ) );
    mx2d2 U1751 ( .D0(n647), .D1(n670), .S(n552), .Y(\larray117[4][2]1 ) );
    mx2d2 U1761 ( .D0(n655), .D1(n671), .S(n552), .Y(\larray117[4][1]1 ) );
    mx2d2 U1771 ( .D0(n663), .D1(n672), .S(n552), .Y(\larray117[4][0]1 ) );
    mx2d2 U1781 ( .D0(n640), .D1(n669), .S(n553), .Y(\larray117[3][3]1 ) );
    mx2d2 U1791 ( .D0(n648), .D1(n670), .S(n553), .Y(\larray117[3][2]1 ) );
    mx2d2 U1801 ( .D0(n656), .D1(n671), .S(n553), .Y(\larray117[3][1]1 ) );
    mx2d2 U1811 ( .D0(n664), .D1(n672), .S(n553), .Y(\larray117[3][0]1 ) );
    mx2d2 U1821 ( .D0(n641), .D1(n669), .S(n554), .Y(\larray117[2][3]1 ) );
    mx2d2 U1831 ( .D0(n649), .D1(n670), .S(n554), .Y(\larray117[2][2]1 ) );
    mx2d2 U1841 ( .D0(n657), .D1(n671), .S(n554), .Y(\larray117[2][1]1 ) );
    mx2d2 U1851 ( .D0(n665), .D1(n672), .S(n554), .Y(\larray117[2][0]1 ) );
    mx2d2 U1861 ( .D0(n643), .D1(n669), .S(n555), .Y(\larray117[1][3]1 ) );
    mx2d2 U1871 ( .D0(n650), .D1(n670), .S(n555), .Y(\larray117[1][2]1 ) );
    mx2d2 U1881 ( .D0(n658), .D1(n671), .S(n555), .Y(\larray117[1][1]1 ) );
    mx2d2 U1891 ( .D0(n666), .D1(n672), .S(n555), .Y(\larray117[1][0]1 ) );
    mx2d2 U1901 ( .D0(n644), .D1(n669), .S(n578), .Y(\larray117[0][3]1 ) );
    mx2d2 U1911 ( .D0(n652), .D1(n670), .S(n578), .Y(\larray117[0][2]1 ) );
    mx2d2 U1921 ( .D0(n660), .D1(n671), .S(n578), .Y(\larray117[0][1]1 ) );
    mx2d2 U1931 ( .D0(n668), .D1(n672), .S(n578), .Y(\larray117[0][0]1 ) );
    oa4f3 U1941 ( .A(\larray[4][3]1 ), .B(n575), .C(\larray[3][3]1 ), .D(n570), 
        .Y(n679) );
    ao2i3 U1951 ( .A(n634), .B(n636), .C(n680), .D(n679), .Y(n624) );
    oa4f3 U1961 ( .A(\larray[2][3]1 ), .B(n571), .C(\larray[6][3]1 ), .D(n573), 
        .Y(n625) );
    oa4f3 U1971 ( .A(\larray[1][3]1 ), .B(n574), .C(\larray[0][3]1 ), .D(n572), 
        .Y(n626) );
    oa4f3 U1981 ( .A(\larray[4][2]1 ), .B(n575), .C(\larray[3][2]1 ), .D(n570), 
        .Y(n681) );
    ao2i3 U1991 ( .A(n634), .B(n646), .C(n682), .D(n681), .Y(n621) );
    oa4f3 U2001 ( .A(\larray[2][2]1 ), .B(n571), .C(\larray[1][2]1 ), .D(n574), 
        .Y(n622) );
    oa4f3 U2011 ( .A(\larray[6][2]1 ), .B(n573), .C(\larray[0][2]1 ), .D(n572), 
        .Y(n623) );
    oa4f3 U2021 ( .A(\larray[4][1]1 ), .B(n575), .C(\larray[3][1]1 ), .D(n570), 
        .Y(n683) );
    ao2i3 U2031 ( .A(n634), .B(n654), .C(n684), .D(n683), .Y(n618) );
    oa4f3 U2041 ( .A(\larray[2][1]1 ), .B(n571), .C(\larray[1][1]1 ), .D(n574), 
        .Y(n619) );
    oa4f3 U2051 ( .A(\larray[6][1]1 ), .B(n573), .C(\larray[0][1]1 ), .D(n572), 
        .Y(n620) );
    oa4f3 U2061 ( .A(\larray[4][0]1 ), .B(n575), .C(\larray[3][0]1 ), .D(n570), 
        .Y(n685) );
    ao2i3 U2071 ( .A(n634), .B(n662), .C(n686), .D(n685), .Y(n615) );
    oa4f3 U2081 ( .A(\larray[2][0]1 ), .B(n571), .C(\larray[1][0]1 ), .D(n574), 
        .Y(n616) );
    oa4f3 U2091 ( .A(\larray[6][0]1 ), .B(n573), .C(\larray[0][0]1 ), .D(n572), 
        .Y(n617) );
    inv1a3 U61 ( .A(n751), .Y(n758) );
    mx2d3 U62 ( .D0(\____return37[1] ), .D1(\TOS[1] ), .S(STACK_FULL), .Y(n751
        ) );
    mx2d3 U63 ( .D0(\____return312[0] ), .D1(n872), .S(STACK_FULL), .Y(n752)
         );
    mx2d3 U64 ( .D0(\n39[2] ), .D1(n870), .S(STACK_FULL), .Y(n750) );
    inv1a3 U66 ( .A(n750), .Y(n762) );
    fdesf1a3 \Stack_Mem_reg[7][0]  ( .D0(\larray117[7][0] ), .D1(
        \larray[7][0] ), .S(1'b0), .E(n1), .CLK(CTS_in_b), .Q(\larray[7][0] )
         );
    fdesf1a3 \Stack_Mem_reg[7][1]  ( .D0(\larray117[7][1] ), .D1(
        \larray[7][1] ), .S(1'b0), .E(n1), .CLK(CTS_in_b), .Q(\larray[7][1] )
         );
    fdesf1a3 \Stack_Mem_reg[7][2]  ( .D0(\larray117[7][2] ), .D1(
        \larray[7][2] ), .S(1'b0), .E(n1), .CLK(CTS_in_b), .Q(\larray[7][2] )
         );
    inv1a1 U78 ( .A(\larray[7][2] ), .Y(n768) );
    fdesf1a3 \Stack_Mem_reg[7][3]  ( .D0(\larray117[7][3] ), .D1(
        \larray[7][3] ), .S(1'b0), .E(n1), .CLK(CTS_in_b), .Q(\larray[7][3] )
         );
    inv1a1 U79 ( .A(\larray[7][3] ), .Y(n756) );
    fdesf1a3 \Stack_Mem_reg[6][0]  ( .D0(\larray117[6][0] ), .D1(
        \larray[6][0] ), .S(1'b0), .E(n1), .CLK(CTS_in_d), .Q(\larray[6][0] )
         );
    fdesf1a3 \Stack_Mem_reg[6][1]  ( .D0(\larray117[6][1] ), .D1(
        \larray[6][1] ), .S(1'b0), .E(n1), .CLK(CTS_in_d), .Q(\larray[6][1] )
         );
    fdesf1a3 \Stack_Mem_reg[6][2]  ( .D0(\larray117[6][2] ), .D1(
        \larray[6][2] ), .S(1'b0), .E(n1), .CLK(CTS_in_b), .Q(\larray[6][2] )
         );
    inv1a1 U82 ( .A(\larray[6][2] ), .Y(n774) );
    fdesf1a3 \Stack_Mem_reg[6][3]  ( .D0(\larray117[6][3] ), .D1(
        \larray[6][3] ), .S(1'b0), .E(n1), .CLK(CTS_in_d), .Q(\larray[6][3] )
         );
    inv1a1 U83 ( .A(\larray[6][3] ), .Y(n765) );
    fdesf1a3 \Stack_Mem_reg[5][0]  ( .D0(\larray117[5][0] ), .D1(
        \larray[5][0] ), .S(1'b0), .E(n1), .CLK(CTS_in_b), .Q(\larray[5][0] )
         );
    fdesf1a3 \Stack_Mem_reg[5][1]  ( .D0(\larray117[5][1] ), .D1(
        \larray[5][1] ), .S(1'b0), .E(n1), .CLK(CTS_in_b), .Q(\larray[5][1] )
         );
    fdesf1a3 \Stack_Mem_reg[5][2]  ( .D0(\larray117[5][2] ), .D1(
        \larray[5][2] ), .S(1'b0), .E(n1), .CLK(CTS_in_b), .Q(\larray[5][2] )
         );
    inv1a1 U86 ( .A(\larray[5][2] ), .Y(n769) );
    fdesf1a3 \Stack_Mem_reg[5][3]  ( .D0(\larray117[5][3] ), .D1(
        \larray[5][3] ), .S(1'b0), .E(n1), .CLK(CTS_in_b), .Q(\larray[5][3] )
         );
    inv1a1 U87 ( .A(\larray[5][3] ), .Y(n759) );
    fdesf1a3 \Stack_Mem_reg[4][0]  ( .D0(\larray117[4][0] ), .D1(
        \larray[4][0] ), .S(1'b0), .E(n1), .CLK(CTS_in_a), .Q(\larray[4][0] )
         );
    fdesf1a3 \Stack_Mem_reg[4][1]  ( .D0(\larray117[4][1] ), .D1(
        \larray[4][1] ), .S(1'b0), .E(n1), .CLK(CTS_in_a), .Q(\larray[4][1] )
         );
    fdesf1a3 \Stack_Mem_reg[4][2]  ( .D0(\larray117[4][2] ), .D1(
        \larray[4][2] ), .S(1'b0), .E(n1), .CLK(CTS_in_b), .Q(\larray[4][2] )
         );
    inv1a1 U90 ( .A(\larray[4][2] ), .Y(n770) );
    fdesf1a3 \Stack_Mem_reg[4][3]  ( .D0(\larray117[4][3] ), .D1(
        \larray[4][3] ), .S(1'b0), .E(n1), .CLK(CTS_in_a), .Q(\larray[4][3] )
         );
    inv1a1 U91 ( .A(\larray[4][3] ), .Y(n761) );
    fdesf1a3 \Stack_Mem_reg[3][0]  ( .D0(\larray117[3][0] ), .D1(
        \larray[3][0] ), .S(1'b0), .E(n1), .CLK(CTS_in_a), .Q(\larray[3][0] )
         );
    fdesf1a3 \Stack_Mem_reg[3][1]  ( .D0(\larray117[3][1] ), .D1(
        \larray[3][1] ), .S(1'b0), .E(n1), .CLK(CTS_in_a), .Q(\larray[3][1] )
         );
    fdesf1a3 \Stack_Mem_reg[3][2]  ( .D0(\larray117[3][2] ), .D1(
        \larray[3][2] ), .S(1'b0), .E(n1), .CLK(CTS_in_b), .Q(\larray[3][2] )
         );
    inv1a1 U94 ( .A(\larray[3][2] ), .Y(n771) );
    fdesf1a3 \Stack_Mem_reg[3][3]  ( .D0(\larray117[3][3] ), .D1(
        \larray[3][3] ), .S(1'b0), .E(n1), .CLK(CTS_in_a), .Q(\larray[3][3] )
         );
    inv1a1 U95 ( .A(\larray[3][3] ), .Y(n763) );
    fdesf1a3 \Stack_Mem_reg[2][0]  ( .D0(\larray117[2][0] ), .D1(
        \larray[2][0] ), .S(1'b0), .E(n1), .CLK(CTS_in_d), .Q(\larray[2][0] )
         );
    fdesf1a3 \Stack_Mem_reg[2][1]  ( .D0(\larray117[2][1] ), .D1(
        \larray[2][1] ), .S(1'b0), .E(n1), .CLK(CTS_in_d), .Q(\larray[2][1] )
         );
    fdesf1a3 \Stack_Mem_reg[2][2]  ( .D0(\larray117[2][2] ), .D1(
        \larray[2][2] ), .S(1'b0), .E(n1), .CLK(CTS_in_b), .Q(\larray[2][2] )
         );
    inv1a1 U98 ( .A(\larray[2][2] ), .Y(n772) );
    fdesf1a3 \Stack_Mem_reg[2][3]  ( .D0(\larray117[2][3] ), .D1(
        \larray[2][3] ), .S(1'b0), .E(n1), .CLK(CTS_in_d), .Q(\larray[2][3] )
         );
    inv1a1 U99 ( .A(\larray[2][3] ), .Y(n764) );
    fdesf1a3 \Stack_Mem_reg[1][0]  ( .D0(\larray117[1][0] ), .D1(
        \larray[1][0] ), .S(1'b0), .E(n1), .CLK(CTS_in_d), .Q(\larray[1][0] )
         );
    fdesf1a3 \Stack_Mem_reg[1][1]  ( .D0(\larray117[1][1] ), .D1(
        \larray[1][1] ), .S(1'b0), .E(n1), .CLK(CTS_in_d), .Q(\larray[1][1] )
         );
    fdesf1a3 \Stack_Mem_reg[1][2]  ( .D0(\larray117[1][2] ), .D1(
        \larray[1][2] ), .S(1'b0), .E(n1), .CLK(CTS_in_b), .Q(\larray[1][2] )
         );
    inv1a1 U1021 ( .A(\larray[1][2] ), .Y(n773) );
    fdesf1a3 \Stack_Mem_reg[1][3]  ( .D0(\larray117[1][3] ), .D1(
        \larray[1][3] ), .S(1'b0), .E(n1), .CLK(CTS_in_b), .Q(\larray[1][3] )
         );
    inv1a1 U1031 ( .A(\larray[1][3] ), .Y(n766) );
    fdesf1a3 \Stack_Mem_reg[0][0]  ( .D0(\larray117[0][0] ), .D1(
        \larray[0][0] ), .S(1'b0), .E(n1), .CLK(CTS_in_b), .Q(\larray[0][0] )
         );
    fdesf1a3 \Stack_Mem_reg[0][1]  ( .D0(\larray117[0][1] ), .D1(
        \larray[0][1] ), .S(1'b0), .E(n1), .CLK(CTS_in_d), .Q(\larray[0][1] )
         );
    fdesf1a3 \Stack_Mem_reg[0][2]  ( .D0(\larray117[0][2] ), .D1(
        \larray[0][2] ), .S(1'b0), .E(n1), .CLK(CTS_in_b), .Q(\larray[0][2] )
         );
    inv1a1 U1061 ( .A(\larray[0][2] ), .Y(n775) );
    fdesf1a3 \Stack_Mem_reg[0][3]  ( .D0(\larray117[0][3] ), .D1(
        \larray[0][3] ), .S(1'b0), .E(n1), .CLK(CTS_in_b), .Q(\larray[0][3] )
         );
    inv1a1 U1071 ( .A(\larray[0][3] ), .Y(n767) );
    fdesf1a3 \PopDataOut_reg[3]  ( .D0(\member296[3] ), .D1(\PopDataOut[3] ), 
        .S(1'b0), .E(PopEnbl), .CLK(CTS_in_d), .Q(\PopDataOut[3] ) );
    fdesf1a3 \PopDataOut_reg[2]  ( .D0(\member296[2] ), .D1(\PopDataOut[2] ), 
        .S(1'b0), .E(PopEnbl), .CLK(CTS_in_d), .Q(\PopDataOut[2] ) );
    and3d6 U1081 ( .A(n751), .B(n752), .C(n762), .Y(n693) );
    and3d6 U1161 ( .A(n872), .B(\TOS[1] ), .C(n870), .Y(n701) );
    clk1b9 U1171 ( .A(\PushDataIn[2] ), .Y(n793) );
    clk1b9 U1181 ( .A(\PushDataIn[3] ), .Y(n792) );
    fdesf1a3 \PopDataOut_reg[1]  ( .D0(\member296[1] ), .D1(\PopDataOut[1] ), 
        .S(1'b0), .E(PopEnbl), .CLK(CTS_in_d), .Q(\PopDataOut[1] ) );
    fdesf1a3 \PopDataOut_reg[0]  ( .D0(\member296[0] ), .D1(\PopDataOut[0] ), 
        .S(1'b0), .E(PopEnbl), .CLK(CTS_in_d), .Q(\PopDataOut[0] ) );
    or3c2 U1551 ( .A(n739), .B(n740), .C(n738), .Y(\member296[0] ) );
    or3c2 U1561 ( .A(n742), .B(n743), .C(n741), .Y(\member296[1] ) );
    or3c2 U1571 ( .A(n745), .B(n746), .C(n744), .Y(\member296[2] ) );
    or3c2 U1581 ( .A(n748), .B(n749), .C(n747), .Y(\member296[3] ) );
    or3a3 U1591 ( .A(n758), .B(n752), .C(n750), .Y(n757) );
    mx2d2 U160 ( .D0(n756), .D1(n792), .S(n700), .Y(\larray117[7][3] ) );
    mx2d2 U161 ( .D0(n768), .D1(n793), .S(n700), .Y(\larray117[7][2] ) );
    mx2d2 U164 ( .D0(n765), .D1(n792), .S(n12), .Y(\larray117[6][3] ) );
    mx2d2 U165 ( .D0(n774), .D1(n793), .S(n12), .Y(\larray117[6][2] ) );
    mx2d2 U168 ( .D0(n759), .D1(n792), .S(n551), .Y(\larray117[5][3] ) );
    mx2d2 U169 ( .D0(n769), .D1(n793), .S(n551), .Y(\larray117[5][2] ) );
    mx2d2 U172 ( .D0(n761), .D1(n792), .S(n552), .Y(\larray117[4][3] ) );
    mx2d2 U173 ( .D0(n770), .D1(n793), .S(n552), .Y(\larray117[4][2] ) );
    mx2d2 U176 ( .D0(n763), .D1(n792), .S(n553), .Y(\larray117[3][3] ) );
    mx2d2 U177 ( .D0(n771), .D1(n793), .S(n553), .Y(\larray117[3][2] ) );
    mx2d2 U180 ( .D0(n764), .D1(n792), .S(n554), .Y(\larray117[2][3] ) );
    mx2d2 U181 ( .D0(n772), .D1(n793), .S(n554), .Y(\larray117[2][2] ) );
    mx2d2 U184 ( .D0(n766), .D1(n792), .S(n555), .Y(\larray117[1][3] ) );
    mx2d2 U185 ( .D0(n773), .D1(n793), .S(n555), .Y(\larray117[1][2] ) );
    mx2d2 U188 ( .D0(n767), .D1(n792), .S(n701), .Y(\larray117[0][3] ) );
    mx2d2 U189 ( .D0(n775), .D1(n793), .S(n701), .Y(\larray117[0][2] ) );
    oa4f3 U192 ( .A(\larray[4][3] ), .B(n698), .C(\larray[3][3] ), .D(n693), 
        .Y(n802) );
    ao2i3 U193 ( .A(n757), .B(n759), .C(n803), .D(n802), .Y(n747) );
    oa4f3 U194 ( .A(\larray[2][3] ), .B(n694), .C(\larray[6][3] ), .D(n696), 
        .Y(n748) );
    oa4f3 U195 ( .A(\larray[1][3] ), .B(n697), .C(\larray[0][3] ), .D(n695), 
        .Y(n749) );
    oa4f3 U196 ( .A(\larray[4][2] ), .B(n698), .C(\larray[3][2] ), .D(n693), 
        .Y(n804) );
    ao2i3 U197 ( .A(n757), .B(n769), .C(n805), .D(n804), .Y(n744) );
    oa4f3 U198 ( .A(\larray[2][2] ), .B(n694), .C(\larray[1][2] ), .D(n697), 
        .Y(n745) );
    oa4f3 U199 ( .A(\larray[6][2] ), .B(n696), .C(\larray[0][2] ), .D(n695), 
        .Y(n746) );
    oa4f3 U200 ( .A(\larray[4][1] ), .B(n698), .C(\larray[3][1] ), .D(n693), 
        .Y(n806) );
    oa4f3 U202 ( .A(\larray[2][1] ), .B(n694), .C(\larray[1][1] ), .D(n697), 
        .Y(n742) );
    oa4f3 U203 ( .A(\larray[6][1] ), .B(n696), .C(\larray[0][1] ), .D(n695), 
        .Y(n743) );
    oa4f3 U204 ( .A(\larray[4][0] ), .B(n698), .C(\larray[3][0] ), .D(n693), 
        .Y(n808) );
    oa4f3 U206 ( .A(\larray[2][0] ), .B(n694), .C(\larray[1][0] ), .D(n697), 
        .Y(n739) );
    oa4f3 U207 ( .A(\larray[6][0] ), .B(n696), .C(\larray[0][0] ), .D(n695), 
        .Y(n740) );
    and2c3 U101 ( .A(n872), .B(n841), .Y(n849) );
    oa1f3 U106 ( .A(n820), .B(n821), .C(Reset), .Y(n858) );
    mx2a1 U109 ( .D0(\Crnt_Stack[1] ), .D1(PushEnbl), .S(PopEnbl), .Y(n816) );
    oa1f3 U112 ( .A(n7), .B(n834), .C(n835), .Y(n828) );
    or2c3 U115 ( .A(n844), .B(n840), .Y(n823) );
    or3d3 U119 ( .A(n817), .B(n854), .C(\____return312[2] ), .Y(n825) );
    fdmf1a3 \Crnt_Stack_reg[1]  ( .D0(n860), .D1(\Crnt_Stack[1] ), .S(1'b0), 
        .CLK(CTS_in_d), .Q(\Crnt_Stack[1] ) );
    and2a2 U128 ( .A(n840), .B(\Crnt_Stack[0] ), .Y(n817) );
    or2b2 U132 ( .A(n377), .B(PushEnbl), .Y(n852) );
    or3d3 U134 ( .A(n850), .B(PushEnbl), .C(n840), .Y(n846) );
    and3d2 U136 ( .A(PushEnbl), .B(n866), .C(PopEnbl), .Y(n844) );
    ao1c3 U137 ( .A(PushEnbl), .B(PopEnbl), .C(\Crnt_Stack[1] ), .Y(n847) );
    ao2i3 U139 ( .A(n508), .B(n823), .C(n8), .D(n825), .Y(\TOS_int369[0] ) );
    ao2e3 U141 ( .A(n823), .B(n872), .C(n829), .D(n828), .Y(\TOS_int369[2] )
         );
    mx2d2 U149 ( .D0(n847), .D1(PopEnbl), .S(n866), .Y(n821) );
    fdmf1a3 \Crnt_Stack_reg[0]  ( .D0(n858), .D1(\Crnt_Stack[0] ), .S(1'b0), 
        .CLK(CTS_in_c), .Q(\Crnt_Stack[0] ) );
    fdmf1a3 \TOS_int_reg[1]  ( .D0(\TOS_int369[1] ), .D1(\TOS[1] ), .S(1'b0), 
        .CLK(CTS_in_a), .Q(n871) );
    fdesf1a9 STACK_FULL_reg ( .D0(STACK_FULL408), .D1(STACK_FULL), .S(1'b0), 
        .E(n377), .CLK(CTS_in_c), .Q(STACK_FULL) );
    or2b2 U7 ( .A(PopEnbl), .B(\Crnt_Stack[1] ), .Y(n6) );
    and3a2 U8 ( .A(n751), .B(n752), .C(n750), .Y(n695) );
    and3a2 U9 ( .A(n752), .B(n750), .C(n758), .Y(n694) );
    and3a2 U10 ( .A(n752), .B(n751), .C(n762), .Y(n698) );
    and3a2 U11 ( .A(n627), .B(n629), .C(n628), .Y(n572) );
    and3a2 U12 ( .A(n629), .B(n628), .C(n635), .Y(n571) );
    and3a2 U13 ( .A(n629), .B(n627), .C(n639), .Y(n575) );
    ao2i3 U14 ( .A(n507), .B(n823), .C(n827), .D(n8), .Y(\TOS_int369[1] ) );
    ao1f2 U15 ( .A(n830), .B(n2), .C(n841), .Y(n4) );
    inv1a1 U16 ( .A(n4), .Y(n820) );
    ao2h2 U17 ( .A(n757), .B(\larray[5][0] ), .C(n808), .D(n809), .Y(n738) );
    ao2h2 U18 ( .A(n757), .B(\larray[5][1] ), .C(n806), .D(n807), .Y(n741) );
    mx2a3 U19 ( .D0(\PushDataIn[8] ), .D1(\larray[3][0]2 ), .S(n567), .Y(
        \larray117[3][0]2 ) );
    mx2a1 U20 ( .D0(\PushDataIn[8] ), .D1(\larray[4][0]2 ), .S(n566), .Y(
        \larray117[4][0]2 ) );
    mx2a1 U24 ( .D0(\PushDataIn[8] ), .D1(\larray[6][0]2 ), .S(n564), .Y(
        \larray117[6][0]2 ) );
    mx2a1 U25 ( .D0(\larray[7][0]2 ), .D1(\PushDataIn[8] ), .S(n454), .Y(
        \larray117[7][0]2 ) );
    and3b3 U26 ( .A(n750), .B(n752), .C(n758), .Y(n696) );
    inv1a1 U27 ( .A(n752), .Y(n760) );
    and3b3 U28 ( .A(n628), .B(n635), .C(n629), .Y(n573) );
    inv1a1 U29 ( .A(n629), .Y(n637) );
    mx2a1 U30 ( .D0(\larray[7][1] ), .D1(\PushDataIn[1] ), .S(n700), .Y(
        \larray117[7][1] ) );
    mx2a1 U33 ( .D0(\larray[7][0] ), .D1(\PushDataIn[0] ), .S(n700), .Y(
        \larray117[7][0] ) );
    and3d3 U34 ( .A(n872), .B(\TOS[1] ), .C(n870), .Y(n455) );
    ao1d2 U35 ( .A(n872), .B(\Crnt_Stack[0] ), .C(PushEnbl), .Y(n834) );
    ao1f3 U36 ( .A(Reset), .B(PopEnbl), .C(n852), .Y(n840) );
    inv1a1 U37 ( .A(Reset), .Y(n377) );
    ao1f2 U38 ( .A(n5), .B(\____return312[0] ), .C(PopEnbl), .Y(n841) );
    or2a2 U39 ( .A(\TOS[1] ), .B(n870), .Y(n5) );
    and2c1 U40 ( .A(n866), .B(n831), .Y(n830) );
    oa1d2 U41 ( .A(n2), .B(n831), .C(\Crnt_Stack[1] ), .Y(n7) );
    or2c1 U42 ( .A(\larray[7][0] ), .B(n699), .Y(n809) );
    and3d3 U43 ( .A(n752), .B(n751), .C(n750), .Y(n699) );
    or2c1 U44 ( .A(\larray[7][1] ), .B(n699), .Y(n807) );
    or2c1 U45 ( .A(\larray[7][2] ), .B(n699), .Y(n805) );
    and3a2 U46 ( .A(n760), .B(n751), .C(n750), .Y(n697) );
    or2c1 U47 ( .A(\larray[7][3] ), .B(n699), .Y(n803) );
    or2c1 U48 ( .A(\larray[7][0]1 ), .B(n576), .Y(n686) );
    and3d3 U49 ( .A(n627), .B(n629), .C(n628), .Y(n576) );
    or2c1 U50 ( .A(\larray[7][1]1 ), .B(n576), .Y(n684) );
    or2c1 U51 ( .A(\larray[7][2]1 ), .B(n576), .Y(n682) );
    and3a2 U52 ( .A(n637), .B(n627), .C(n628), .Y(n574) );
    or2c1 U53 ( .A(\larray[7][3]1 ), .B(n576), .Y(n680) );
    or2c1 U54 ( .A(\larray[7][0]2 ), .B(n453), .Y(n563) );
    or2c1 U55 ( .A(\larray[7][1]2 ), .B(n453), .Y(n561) );
    or2c1 U56 ( .A(\larray[7][2]2 ), .B(n453), .Y(n559) );
    and3d3 U57 ( .A(n9), .B(\Crnt_Stack[0] ), .C(n831), .Y(STACK_FULL408) );
    oa1a3 U58 ( .A(n9), .B(n835), .C(n846), .Y(n8) );
    inv1a1 U59 ( .A(\Crnt_Stack[1] ), .Y(n9) );
    clk1b3 U60 ( .A(n840), .Y(n835) );
    oa1a3 U65 ( .A(n816), .B(n11), .C(n10), .Y(n860) );
    inv1a1 U67 ( .A(Reset), .Y(n10) );
    mx2d3 U68 ( .D0(n7), .D1(n6), .S(n866), .Y(n11) );
    mx2a1 U69 ( .D0(\larray[0][1] ), .D1(\PushDataIn[1] ), .S(n701), .Y(
        \larray117[0][1] ) );
    mx2a1 U70 ( .D0(\larray[0][0] ), .D1(\PushDataIn[0] ), .S(n701), .Y(
        \larray117[0][0] ) );
    mx2a1 U71 ( .D0(\larray[1][1] ), .D1(\PushDataIn[1] ), .S(n555), .Y(
        \larray117[1][1] ) );
    mx2a1 U72 ( .D0(\larray[1][0] ), .D1(\PushDataIn[0] ), .S(n555), .Y(
        \larray117[1][0] ) );
    mx2a1 U73 ( .D0(\larray[2][1] ), .D1(\PushDataIn[1] ), .S(n554), .Y(
        \larray117[2][1] ) );
    mx2a1 U74 ( .D0(\larray[2][0] ), .D1(\PushDataIn[0] ), .S(n554), .Y(
        \larray117[2][0] ) );
    mx2a1 U75 ( .D0(\larray[3][1] ), .D1(\PushDataIn[1] ), .S(n553), .Y(
        \larray117[3][1] ) );
    mx2a1 U76 ( .D0(\larray[3][0] ), .D1(\PushDataIn[0] ), .S(n553), .Y(
        \larray117[3][0] ) );
    mx2a1 U77 ( .D0(\larray[4][1] ), .D1(\PushDataIn[1] ), .S(n552), .Y(
        \larray117[4][1] ) );
    mx2a1 U80 ( .D0(\larray[4][0] ), .D1(\PushDataIn[0] ), .S(n552), .Y(
        \larray117[4][0] ) );
    mx2a1 U81 ( .D0(\larray[5][1] ), .D1(\PushDataIn[1] ), .S(n551), .Y(
        \larray117[5][1] ) );
    mx2a1 U84 ( .D0(\larray[5][0] ), .D1(\PushDataIn[0] ), .S(n551), .Y(
        \larray117[5][0] ) );
    and3a2 U85 ( .A(\____return312[0] ), .B(n870), .C(\TOS[1] ), .Y(n12) );
    mx2a1 U88 ( .D0(\larray[6][1] ), .D1(\PushDataIn[1] ), .S(n12), .Y(
        \larray117[6][1] ) );
    mx2a1 U89 ( .D0(\larray[6][0] ), .D1(\PushDataIn[0] ), .S(n12), .Y(
        \larray117[6][0] ) );
    and3a2 U92 ( .A(n870), .B(\TOS[1] ), .C(n872), .Y(n700) );
    inv1a3 U93 ( .A(n872), .Y(n509) );
    inv1a1 U96 ( .A(\TOS[1] ), .Y(n507) );
    and3a2 U97 ( .A(\TOS[1] ), .B(n870), .C(n872), .Y(n577) );
    oa4f2 U100 ( .A(\larray[2][2]2 ), .B(n448), .C(\larray[1][2]2 ), .D(n451), 
        .Y(n499) );
    oa4f2 U102 ( .A(\larray[6][2]2 ), .B(n450), .C(\larray[0][2]2 ), .D(n449), 
        .Y(n500) );
    and3a2 U103 ( .A(\TOS[1] ), .B(n870), .C(n872), .Y(n454) );
    inv1a3 U104 ( .A(n870), .Y(n508) );
    inv1a3 U105 ( .A(\Crnt_Stack[0] ), .Y(n866) );
    or3d3 U107 ( .A(n870), .B(\TOS[1] ), .C(n872), .Y(n831) );
    and3d3 U108 ( .A(n504), .B(n506), .C(n516), .Y(n447) );
    and3d3 U110 ( .A(n514), .B(n512), .C(n505), .Y(n452) );
    or2c3 U111 ( .A(n849), .B(n817), .Y(n829) );
    and2c3 U113 ( .A(n866), .B(n831), .Y(n850) );
    or2c1 U114 ( .A(n2), .B(n841), .Y(n854) );
    and3d3 U116 ( .A(n504), .B(n506), .C(n505), .Y(n453) );
    and3d3 U117 ( .A(n512), .B(n514), .C(n516), .Y(n449) );
    and3d3 U118 ( .A(n504), .B(n514), .C(n505), .Y(n450) );
    and3d3 U120 ( .A(n506), .B(n512), .C(n516), .Y(n451) );
    and3d3 U121 ( .A(n504), .B(n514), .C(n516), .Y(n448) );
    or3d3 U122 ( .A(\____return312[1] ), .B(n854), .C(n817), .Y(n827) );
    inv1a15 U123 ( .A(n2), .Y(n1) );
    clk1b27 U124 ( .A(n2), .Y(n3) );
    inv1a3 U125 ( .A(n872), .Y(\____return312[0] ) );
    clk1b6 U126 ( .A(n565), .Y(n551) );
    clk1b6 U127 ( .A(n566), .Y(n552) );
    clk1b6 U129 ( .A(n567), .Y(n553) );
    clk1b6 U130 ( .A(n568), .Y(n554) );
    clk1b6 U131 ( .A(n569), .Y(n555) );
    clk1a15 U133 ( .A(n871), .Y(\TOS[1] ) );
    fdmf1a15 \TOS_int_reg[2]  ( .D0(\TOS_int369[2] ), .D1(n872), .S(1'b0), 
        .CLK(CTS_in_c), .Q(n872) );
    fdmf1a15 \TOS_int_reg[0]  ( .D0(\TOS_int369[0] ), .D1(n870), .S(1'b0), 
        .CLK(CTS_in_a), .Q(n870) );
    inv1a15 U135 ( .A(PushEnbl), .Y(n2) );
endmodule


module DATA_PATH ( Reset, Reset_AluRegs, Rd_Oprnd_A, Rd_Oprnd_B, 
    UseData_Imm_Or_RegB, UseData_Imm_Or_ALU, Latch_Flags, ALU_Zro, ALU_Neg, 
    ALU_Carry, PSW_Zro, PSW_Neg, PSW_Carry, \Crnt_Instrn[31] , 
    \Crnt_Instrn[30] , \Crnt_Instrn[29] , \Crnt_Instrn[28] , \Crnt_Instrn[27] , 
    \Crnt_Instrn[26] , \Crnt_Instrn[25] , \Crnt_Instrn[24] , \Crnt_Instrn[15] , 
    \Crnt_Instrn[14] , \Crnt_Instrn[13] , \Crnt_Instrn[12] , \Crnt_Instrn[11] , 
    \Crnt_Instrn[10] , \Crnt_Instrn[9] , \Crnt_Instrn[8] , \Crnt_Instrn[7] , 
    \Crnt_Instrn[6] , \Crnt_Instrn[5] , \Crnt_Instrn[4] , \Crnt_Instrn[3] , 
    \Crnt_Instrn[2] , \Crnt_Instrn[1] , \Crnt_Instrn[0] , RegPort_A, RegPort_B, 
    Op_Result, Zro_Flag, Neg_Flag, Carry_Flag, \Addr_A[1] , \Addr_A[0] , 
    Oprnd_A, Oprnd_B, RegPort_C, CTS_in_, CTS_in_a, CTS_in_b, CTS_in_c, 
    CTS_in_d, CTS_in_e );
output [15:0] Oprnd_A;
input  [15:0] RegPort_A;
output [15:0] RegPort_C;
input  [15:0] Op_Result;
output [15:0] Oprnd_B;
input  [15:0] RegPort_B;
input  Reset, Reset_AluRegs, Rd_Oprnd_A, Rd_Oprnd_B, UseData_Imm_Or_RegB, 
    UseData_Imm_Or_ALU, Latch_Flags, ALU_Zro, ALU_Neg, ALU_Carry, PSW_Zro, 
    PSW_Neg, PSW_Carry, \Crnt_Instrn[31] , \Crnt_Instrn[30] , 
    \Crnt_Instrn[29] , \Crnt_Instrn[28] , \Crnt_Instrn[27] , \Crnt_Instrn[26] , 
    \Crnt_Instrn[25] , \Crnt_Instrn[24] , \Crnt_Instrn[15] , \Crnt_Instrn[14] , 
    \Crnt_Instrn[13] , \Crnt_Instrn[12] , \Crnt_Instrn[11] , \Crnt_Instrn[10] , 
    \Crnt_Instrn[9] , \Crnt_Instrn[8] , \Crnt_Instrn[7] , \Crnt_Instrn[6] , 
    \Crnt_Instrn[5] , \Crnt_Instrn[4] , \Crnt_Instrn[3] , \Crnt_Instrn[2] , 
    \Crnt_Instrn[1] , \Crnt_Instrn[0] , CTS_in_, CTS_in_a, CTS_in_b, CTS_in_c, 
    CTS_in_d, CTS_in_e;
output Zro_Flag, Neg_Flag, Carry_Flag, \Addr_A[1] , \Addr_A[0] ;
    wire \Oprnd_B72[11] , n1141, \Oprnd_B72[15] , n1138, n1137, n407, 
        \Oprnd_B72[13] , \Oprnd_B72[1] , \Oprnd_B72[8] , \Oprnd_B72[5] , 
        \Oprnd_B72[7] , \Oprnd_B72[3] , \Oprnd_B72[2] , \Oprnd_B72[6] , 
        \Oprnd_B72[4] , \Oprnd_B72[0] , \Oprnd_B72[9] , PSWL_Carry, n1140, 
        \Oprnd_B72[12] , \n73[0] , n408, \Oprnd_B72[14] , n1139, PSWL_Zro, 
        \Oprnd_B72[10] , n409, PSWL_Neg, n1142, n406, n240, n241, n242, n244, 
        n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, 
        n257, n258, n259, n260, n261, n262, n263, n264, n266, n267, n272, n273, 
        n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, 
        n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, 
        n302, n303, n306, n307, n308, n309, n310, n312, n315, n316, n319, n332, 
        n334, n336, n338, n340, n342, n344, n346, n348, n350, n352, n354, n356, 
        n358, n360, n362, n380, n381, n383, n384, n386, n387, n388, n390, n391, 
        n393, n399, n1144, n1145;
    buf1a9 U78 ( .A(n406), .Y(Oprnd_A[14]) );
    buf1a9 U79 ( .A(n407), .Y(Oprnd_A[13]) );
    fdesf1a6 \Oprnd_B_reg[11]  ( .D0(\Oprnd_B72[11] ), .D1(Oprnd_B[11]), .S(
        1'b0), .E(\n73[0] ), .CLK(CTS_in_c), .Q(Oprnd_B[11]) );
    fdmf1c2 \Oprnd_A_reg[0]  ( .D0(n362), .D1(Oprnd_A[0]), .S(1'b0), .CLK(
        CTS_in_c), .QN(n1142) );
    mx2a1 U84 ( .D0(Op_Result[9]), .D1(\Crnt_Instrn[9] ), .S(
        UseData_Imm_Or_ALU), .Y(RegPort_C[9]) );
    mx2a1 U85 ( .D0(Op_Result[4]), .D1(\Crnt_Instrn[4] ), .S(
        UseData_Imm_Or_ALU), .Y(RegPort_C[4]) );
    mx2a1 U86 ( .D0(Op_Result[14]), .D1(\Crnt_Instrn[14] ), .S(
        UseData_Imm_Or_ALU), .Y(RegPort_C[14]) );
    clk1a15 U89 ( .A(n1140), .Y(Oprnd_A[2]) );
    clk1a15 U94 ( .A(n1141), .Y(Oprnd_A[1]) );
    ao4d2 U99 ( .A(n391), .B(RegPort_B[1]), .C(n393), .D(\Crnt_Instrn[1] ), 
        .Y(\Oprnd_B72[1] ) );
    inv1a1 U109 ( .A(Oprnd_A[13]), .Y(n273) );
    inv1a1 U111 ( .A(Oprnd_A[9]), .Y(n281) );
    buf1a9 U113 ( .A(Rd_Oprnd_A), .Y(n319) );
    mx2a1 U114 ( .D0(Op_Result[5]), .D1(\Crnt_Instrn[5] ), .S(
        UseData_Imm_Or_ALU), .Y(RegPort_C[5]) );
    mx2a1 U116 ( .D0(Op_Result[12]), .D1(\Crnt_Instrn[12] ), .S(
        UseData_Imm_Or_ALU), .Y(RegPort_C[12]) );
    mx2a1 U117 ( .D0(Op_Result[2]), .D1(\Crnt_Instrn[2] ), .S(
        UseData_Imm_Or_ALU), .Y(RegPort_C[2]) );
    mx2a1 U118 ( .D0(Op_Result[3]), .D1(\Crnt_Instrn[3] ), .S(
        UseData_Imm_Or_ALU), .Y(RegPort_C[3]) );
    mx2a1 U119 ( .D0(Op_Result[6]), .D1(\Crnt_Instrn[6] ), .S(
        UseData_Imm_Or_ALU), .Y(RegPort_C[6]) );
    mx2a1 U120 ( .D0(Op_Result[7]), .D1(\Crnt_Instrn[7] ), .S(
        UseData_Imm_Or_ALU), .Y(RegPort_C[7]) );
    mx2a1 U121 ( .D0(Op_Result[10]), .D1(\Crnt_Instrn[10] ), .S(
        UseData_Imm_Or_ALU), .Y(RegPort_C[10]) );
    mx2a1 U122 ( .D0(Op_Result[11]), .D1(\Crnt_Instrn[11] ), .S(
        UseData_Imm_Or_ALU), .Y(RegPort_C[11]) );
    mx2a1 U123 ( .D0(Op_Result[15]), .D1(\Crnt_Instrn[15] ), .S(
        UseData_Imm_Or_ALU), .Y(RegPort_C[15]) );
    inv1a1 U125 ( .A(Oprnd_A[10]), .Y(n279) );
    inv1a1 U126 ( .A(Oprnd_A[6]), .Y(n287) );
    inv1a1 U127 ( .A(Oprnd_A[8]), .Y(n283) );
    inv1a3 U138 ( .A(\Crnt_Instrn[29] ), .Y(n316) );
    fdesf1a6 \Oprnd_B_reg[14]  ( .D0(\Oprnd_B72[14] ), .D1(Oprnd_B[14]), .S(
        1'b0), .E(\n73[0] ), .CLK(CTS_in_c), .Q(Oprnd_B[14]) );
    fdesf1a6 \Oprnd_B_reg[13]  ( .D0(\Oprnd_B72[13] ), .D1(Oprnd_B[13]), .S(
        1'b0), .E(\n73[0] ), .CLK(CTS_in_b), .Q(Oprnd_B[13]) );
    fdesf1a9 \Oprnd_B_reg[0]  ( .D0(\Oprnd_B72[0] ), .D1(Oprnd_B[0]), .S(1'b0), 
        .E(\n73[0] ), .CLK(CTS_in_d), .Q(Oprnd_B[0]) );
    inv1a1 U142 ( .A(ALU_Neg), .Y(n302) );
    fdmf1c2 PSWL_Carry_reg ( .D0(n241), .D1(PSWL_Carry), .S(1'b0), .CLK(
        CTS_in_a), .QN(PSWL_Carry) );
    fdmf1c2 \Oprnd_A_reg[7]  ( .D0(n348), .D1(Oprnd_A[7]), .S(1'b0), .CLK(
        CTS_in_e), .QN(n1137) );
    inv1a1 U146 ( .A(ALU_Zro), .Y(n300) );
    fdmf1c2 PSWL_Zro_reg ( .D0(n242), .D1(PSWL_Zro), .S(1'b0), .CLK(CTS_in_a), 
        .QN(PSWL_Zro) );
    inv1a1 U147 ( .A(PSWL_Zro), .Y(n301) );
    fdesf1a9 \Oprnd_B_reg[4]  ( .D0(\Oprnd_B72[4] ), .D1(Oprnd_B[4]), .S(1'b0), 
        .E(\n73[0] ), .CLK(CTS_in_d), .Q(Oprnd_B[4]) );
    fdesf1a9 \Oprnd_B_reg[5]  ( .D0(\Oprnd_B72[5] ), .D1(Oprnd_B[5]), .S(1'b0), 
        .E(\n73[0] ), .CLK(CTS_in_c), .Q(Oprnd_B[5]) );
    fdmf1c2 \Oprnd_A_reg[5]  ( .D0(n352), .D1(Oprnd_A[5]), .S(1'b0), .CLK(
        CTS_in_e), .QN(n1138) );
    buf1a27 U148 ( .A(n1138), .Y(Oprnd_A[5]) );
    fdmf1c2 \Oprnd_A_reg[4]  ( .D0(n354), .D1(Oprnd_A[4]), .S(1'b0), .CLK(
        CTS_in_e), .QN(n1139) );
    fdesf1a9 \Oprnd_B_reg[7]  ( .D0(\Oprnd_B72[7] ), .D1(Oprnd_B[7]), .S(1'b0), 
        .E(\n73[0] ), .CLK(CTS_in_d), .Q(Oprnd_B[7]) );
    fdesf1a9 \Oprnd_B_reg[6]  ( .D0(\Oprnd_B72[6] ), .D1(Oprnd_B[6]), .S(1'b0), 
        .E(\n73[0] ), .CLK(CTS_in_c), .Q(Oprnd_B[6]) );
    fdmf1c6 \Oprnd_A_reg[15]  ( .D0(n332), .D1(Oprnd_A[15]), .S(1'b0), .CLK(
        CTS_in_d), .QN(Oprnd_A[15]) );
    fdmf1c2 \Oprnd_A_reg[14]  ( .D0(n334), .D1(Oprnd_A[14]), .S(1'b0), .CLK(
        CTS_in_d), .QN(n406) );
    fdmf1c2 \Oprnd_A_reg[12]  ( .D0(n338), .D1(Oprnd_A[12]), .S(1'b0), .CLK(
        CTS_in_d), .QN(n408) );
    clk1a15 U151 ( .A(n408), .Y(Oprnd_A[12]) );
    fdmf1c2 \Oprnd_A_reg[13]  ( .D0(n336), .D1(Oprnd_A[13]), .S(1'b0), .CLK(
        CTS_in_e), .QN(n407) );
    fdmf1c2 \Oprnd_A_reg[9]  ( .D0(n344), .D1(Oprnd_A[9]), .S(1'b0), .CLK(
        CTS_in_e), .QN(n409) );
    clk1a15 U152 ( .A(n409), .Y(Oprnd_A[9]) );
    inv1a1 U153 ( .A(Oprnd_A[3]), .Y(n292) );
    mx2a1 U154 ( .D0(n386), .D1(n387), .S(Latch_Flags), .Y(n240) );
    mx2a1 U155 ( .D0(n383), .D1(n384), .S(Latch_Flags), .Y(n241) );
    inv1a3 U156 ( .A(Reset), .Y(n388) );
    mx2a1 U157 ( .D0(n380), .D1(n381), .S(Latch_Flags), .Y(n242) );
    fdmf1c15 \Oprnd_A_reg[11]  ( .D0(n340), .D1(Oprnd_A[11]), .S(1'b0), .CLK(
        CTS_in_d), .QN(Oprnd_A[11]) );
    fdmf1c15 \Oprnd_A_reg[10]  ( .D0(n342), .D1(Oprnd_A[10]), .S(1'b0), .CLK(
        CTS_in_e), .QN(Oprnd_A[10]) );
    fdmf1c15 \Oprnd_A_reg[6]  ( .D0(n350), .D1(Oprnd_A[6]), .S(1'b0), .CLK(
        CTS_in_e), .QN(Oprnd_A[6]) );
    fdmf1c15 \Oprnd_A_reg[8]  ( .D0(n346), .D1(Oprnd_A[8]), .S(1'b0), .CLK(
        CTS_in_e), .QN(Oprnd_A[8]) );
    inv1a1 U161 ( .A(PSWL_Neg), .Y(n303) );
    fdmf1c2 PSWL_Neg_reg ( .D0(n240), .D1(PSWL_Neg), .S(1'b0), .CLK(CTS_in_), 
        .QN(PSWL_Neg) );
    buf1a9 U162 ( .A(n1142), .Y(Oprnd_A[0]) );
    mx2a1 U163 ( .D0(Op_Result[13]), .D1(\Crnt_Instrn[13] ), .S(
        UseData_Imm_Or_ALU), .Y(RegPort_C[13]) );
    or2c3 U164 ( .A(n264), .B(n267), .Y(n310) );
    mx2d6 U165 ( .D0(n266), .D1(n306), .S(n245), .Y(\Addr_A[1] ) );
    or3d6 U166 ( .A(n246), .B(n264), .C(\Crnt_Instrn[24] ), .Y(n245) );
    inv1a3 U167 ( .A(\Crnt_Instrn[1] ), .Y(n266) );
    inv1a3 U168 ( .A(\Crnt_Instrn[9] ), .Y(n306) );
    mx2d6 U169 ( .D0(n399), .D1(n307), .S(n247), .Y(\Addr_A[0] ) );
    inv1a3 U170 ( .A(\Crnt_Instrn[0] ), .Y(n399) );
    inv1a3 U171 ( .A(\Crnt_Instrn[8] ), .Y(n307) );
    or3d6 U174 ( .A(n264), .B(n246), .C(\Crnt_Instrn[24] ), .Y(n247) );
    or2c6 U175 ( .A(n246), .B(n309), .Y(n308) );
    inv1a15 U176 ( .A(\Crnt_Instrn[30] ), .Y(n264) );
    inv1a1 U178 ( .A(RegPort_A[6]), .Y(n286) );
    inv1a1 U179 ( .A(RegPort_A[7]), .Y(n284) );
    inv1a1 U180 ( .A(RegPort_A[9]), .Y(n280) );
    inv1a1 U181 ( .A(RegPort_A[13]), .Y(n272) );
    inv1a1 U183 ( .A(RegPort_A[8]), .Y(n282) );
    inv1a1 U184 ( .A(RegPort_A[2]), .Y(n294) );
    inv1a1 U185 ( .A(RegPort_A[3]), .Y(n293) );
    inv1a1 U186 ( .A(RegPort_A[5]), .Y(n288) );
    inv1a1 U188 ( .A(RegPort_A[0]), .Y(n298) );
    inv1a1 U189 ( .A(RegPort_A[10]), .Y(n278) );
    clk1b6 U192 ( .A(\Crnt_Instrn[24] ), .Y(n267) );
    clk1b6 U198 ( .A(\Crnt_Instrn[25] ), .Y(n309) );
    mx2d2 U201 ( .D0(n273), .D1(n272), .S(n319), .Y(n261) );
    mx2d2 U204 ( .D0(n279), .D1(n278), .S(n319), .Y(n258) );
    mx2d2 U205 ( .D0(n281), .D1(n280), .S(n319), .Y(n257) );
    mx2d2 U206 ( .D0(n283), .D1(n282), .S(n319), .Y(n256) );
    mx2d2 U207 ( .D0(n285), .D1(n284), .S(n319), .Y(n255) );
    mx2d2 U208 ( .D0(n287), .D1(n286), .S(n319), .Y(n254) );
    mx2d2 U209 ( .D0(n289), .D1(n288), .S(n319), .Y(n253) );
    mx2d2 U210 ( .D0(n291), .D1(n290), .S(n319), .Y(n252) );
    mx2d2 U211 ( .D0(n292), .D1(n293), .S(n319), .Y(n251) );
    mx2d2 U212 ( .D0(n295), .D1(n294), .S(n319), .Y(n250) );
    mx2d2 U213 ( .D0(n297), .D1(n296), .S(n319), .Y(n249) );
    mx2d2 U214 ( .D0(n299), .D1(n298), .S(n319), .Y(n248) );
    mx2d6 U215 ( .D0(n302), .D1(n303), .S(n244), .Y(Neg_Flag) );
    mx2d6 U216 ( .D0(n300), .D1(n301), .S(n244), .Y(Zro_Flag) );
    fdesf1a6 \Oprnd_B_reg[15]  ( .D0(\Oprnd_B72[15] ), .D1(Oprnd_B[15]), .S(
        1'b0), .E(\n73[0] ), .CLK(CTS_in_c), .Q(Oprnd_B[15]) );
    fdesf1a15 \Oprnd_B_reg[9]  ( .D0(\Oprnd_B72[9] ), .D1(Oprnd_B[9]), .S(1'b0
        ), .E(\n73[0] ), .CLK(CTS_in_c), .Q(Oprnd_B[9]) );
    fdmf1c3 \Oprnd_A_reg[1]  ( .D0(n360), .D1(Oprnd_A[1]), .S(1'b0), .CLK(
        CTS_in_e), .QN(n1141) );
    fdesf1a15 \Oprnd_B_reg[2]  ( .D0(\Oprnd_B72[2] ), .D1(Oprnd_B[2]), .S(1'b0
        ), .E(\n73[0] ), .CLK(CTS_in_c), .Q(Oprnd_B[2]) );
    fdesf1a15 \Oprnd_B_reg[1]  ( .D0(\Oprnd_B72[1] ), .D1(Oprnd_B[1]), .S(1'b0
        ), .E(\n73[0] ), .CLK(CTS_in_c), .Q(Oprnd_B[1]) );
    fdmf1c15 \Oprnd_A_reg[3]  ( .D0(n356), .D1(Oprnd_A[3]), .S(1'b0), .CLK(
        CTS_in_e), .QN(Oprnd_A[3]) );
    or2c1 U254 ( .A(PSWL_Zro), .B(n388), .Y(n380) );
    or2c1 U255 ( .A(PSW_Zro), .B(n388), .Y(n381) );
    or2c1 U257 ( .A(PSWL_Carry), .B(n388), .Y(n383) );
    or2c1 U258 ( .A(PSW_Carry), .B(n388), .Y(n384) );
    or2c1 U260 ( .A(PSWL_Neg), .B(n388), .Y(n386) );
    or2c1 U261 ( .A(PSW_Neg), .B(n388), .Y(n387) );
    and2b2 U263 ( .A(n391), .B(RegPort_B[15]), .Y(\Oprnd_B72[15] ) );
    and2b2 U265 ( .A(n391), .B(RegPort_B[13]), .Y(\Oprnd_B72[13] ) );
    and2b2 U266 ( .A(n391), .B(RegPort_B[12]), .Y(\Oprnd_B72[12] ) );
    and2b2 U267 ( .A(n391), .B(RegPort_B[11]), .Y(\Oprnd_B72[11] ) );
    and2b2 U268 ( .A(n391), .B(RegPort_B[10]), .Y(\Oprnd_B72[10] ) );
    and2b2 U269 ( .A(n391), .B(RegPort_B[9]), .Y(\Oprnd_B72[9] ) );
    and2b2 U270 ( .A(n391), .B(RegPort_B[8]), .Y(\Oprnd_B72[8] ) );
    mx2a1 U286 ( .D0(Oprnd_A[11]), .D1(RegPort_A[11]), .S(Rd_Oprnd_A), .Y(n259
        ) );
    mx2a1 U287 ( .D0(n408), .D1(RegPort_A[12]), .S(Rd_Oprnd_A), .Y(n260) );
    mx2a1 U288 ( .D0(n406), .D1(RegPort_A[14]), .S(Rd_Oprnd_A), .Y(n262) );
    mx2a1 U289 ( .D0(Oprnd_A[15]), .D1(RegPort_A[15]), .S(Rd_Oprnd_A), .Y(n263
        ) );
    and4e6 U290 ( .A(n312), .B(n315), .C(n308), .D(n310), .Y(n244) );
    inv1a1 U291 ( .A(Oprnd_A[2]), .Y(n295) );
    inv1a1 U292 ( .A(Oprnd_A[1]), .Y(n297) );
    inv1a1 U293 ( .A(Oprnd_A[4]), .Y(n291) );
    inv1a1 U294 ( .A(Oprnd_A[5]), .Y(n289) );
    inv1a1 U295 ( .A(Oprnd_A[7]), .Y(n285) );
    inv1a1 U296 ( .A(Oprnd_A[0]), .Y(n299) );
    clk1b6 U297 ( .A(Reset_AluRegs), .Y(n390) );
    or2c1 U298 ( .A(n250), .B(n390), .Y(n358) );
    or2c1 U299 ( .A(n251), .B(n390), .Y(n356) );
    or2c1 U300 ( .A(n249), .B(n390), .Y(n360) );
    or2c1 U301 ( .A(n256), .B(n390), .Y(n346) );
    or2c1 U302 ( .A(n254), .B(n390), .Y(n350) );
    or2c1 U303 ( .A(n258), .B(n390), .Y(n342) );
    or2c1 U304 ( .A(n259), .B(n390), .Y(n340) );
    or2c1 U305 ( .A(n257), .B(n390), .Y(n344) );
    or2c1 U306 ( .A(n261), .B(n390), .Y(n336) );
    or2c1 U307 ( .A(n260), .B(n390), .Y(n338) );
    or2c1 U308 ( .A(n262), .B(n390), .Y(n334) );
    or2c1 U309 ( .A(n263), .B(n390), .Y(n332) );
    or2c1 U310 ( .A(n252), .B(n390), .Y(n354) );
    or2c1 U311 ( .A(n253), .B(n390), .Y(n352) );
    or2c1 U312 ( .A(n255), .B(n390), .Y(n348) );
    or2c1 U313 ( .A(n248), .B(n390), .Y(n362) );
    buf1a15 U314 ( .A(n1137), .Y(Oprnd_A[7]) );
    clk1a15 U315 ( .A(n1139), .Y(Oprnd_A[4]) );
    or2a3 U316 ( .A(\Crnt_Instrn[26] ), .B(\Crnt_Instrn[28] ), .Y(n312) );
    ao4d2 U317 ( .A(n391), .B(RegPort_B[3]), .C(n393), .D(\Crnt_Instrn[3] ), 
        .Y(\Oprnd_B72[3] ) );
    mx2a6 U318 ( .D0(ALU_Carry), .D1(PSWL_Carry), .S(n244), .Y(Carry_Flag) );
    ao4d2 U319 ( .A(n391), .B(RegPort_B[2]), .C(n393), .D(\Crnt_Instrn[2] ), 
        .Y(\Oprnd_B72[2] ) );
    ao4d2 U320 ( .A(n391), .B(RegPort_B[6]), .C(n393), .D(\Crnt_Instrn[6] ), 
        .Y(\Oprnd_B72[6] ) );
    ao4b3 U321 ( .A(n391), .B(RegPort_B[7]), .C(\Crnt_Instrn[7] ), .D(n1144), 
        .Y(\Oprnd_B72[7] ) );
    ao4d2 U322 ( .A(n391), .B(RegPort_B[5]), .C(n393), .D(\Crnt_Instrn[5] ), 
        .Y(\Oprnd_B72[5] ) );
    ao4b3 U323 ( .A(n393), .B(\Crnt_Instrn[4] ), .C(RegPort_B[4]), .D(n1145), 
        .Y(\Oprnd_B72[4] ) );
    ao4a3 U324 ( .A(RegPort_B[0]), .B(n1145), .C(\Crnt_Instrn[0] ), .D(n1144), 
        .Y(\Oprnd_B72[0] ) );
    inv1a1 U325 ( .A(n393), .Y(n1144) );
    or2c3 U326 ( .A(n390), .B(UseData_Imm_Or_RegB), .Y(n393) );
    and2a3 U327 ( .A(RegPort_B[14]), .B(n1145), .Y(\Oprnd_B72[14] ) );
    clk1b6 U328 ( .A(n1145), .Y(n391) );
    and2c3 U329 ( .A(UseData_Imm_Or_RegB), .B(Reset_AluRegs), .Y(n1145) );
    fdmf1c2 \Oprnd_A_reg[2]  ( .D0(n358), .D1(Oprnd_A[2]), .S(1'b0), .CLK(
        CTS_in_e), .QN(n1140) );
    mx2a1 U330 ( .D0(Op_Result[0]), .D1(\Crnt_Instrn[0] ), .S(
        UseData_Imm_Or_ALU), .Y(RegPort_C[0]) );
    mx2a1 U331 ( .D0(Op_Result[1]), .D1(\Crnt_Instrn[1] ), .S(
        UseData_Imm_Or_ALU), .Y(RegPort_C[1]) );
    mx2a1 U332 ( .D0(Op_Result[8]), .D1(\Crnt_Instrn[8] ), .S(
        UseData_Imm_Or_ALU), .Y(RegPort_C[8]) );
    or2c3 U333 ( .A(\Crnt_Instrn[27] ), .B(n316), .Y(n315) );
    or2b9 U334 ( .A(n390), .B(Rd_Oprnd_B), .Y(\n73[0] ) );
    inv1a1 U335 ( .A(RegPort_A[1]), .Y(n296) );
    inv1a1 U336 ( .A(RegPort_A[4]), .Y(n290) );
    fdesf1a9 \Oprnd_B_reg[8]  ( .D0(\Oprnd_B72[8] ), .D1(Oprnd_B[8]), .S(1'b0), 
        .E(\n73[0] ), .CLK(CTS_in_b), .Q(Oprnd_B[8]) );
    fdesf1a9 \Oprnd_B_reg[3]  ( .D0(\Oprnd_B72[3] ), .D1(Oprnd_B[3]), .S(1'b0), 
        .E(\n73[0] ), .CLK(CTS_in_c), .Q(Oprnd_B[3]) );
    fdesf1a6 \Oprnd_B_reg[10]  ( .D0(\Oprnd_B72[10] ), .D1(Oprnd_B[10]), .S(
        1'b0), .E(\n73[0] ), .CLK(CTS_in_c), .Q(Oprnd_B[10]) );
    fdesf1a6 \Oprnd_B_reg[12]  ( .D0(\Oprnd_B72[12] ), .D1(Oprnd_B[12]), .S(
        1'b0), .E(\n73[0] ), .CLK(CTS_in_c), .Q(Oprnd_B[12]) );
    inv1a15 U337 ( .A(\Crnt_Instrn[31] ), .Y(n246) );
endmodule


module ALU ( Reset, Oprnd_A, Oprnd_B, ALU_OP, Latch_Result, Latch_Flags, 
    Lachd_Result, Zro_Flag, Neg_Flag, Carry_Flag, CTS_in_, CTS_in_a, CTS_in_b, 
    CTS_in_c );
input  [15:0] Oprnd_A;
input  [15:0] Oprnd_B;
input  [5:0] ALU_OP;
output [15:0] Lachd_Result;
input  Reset, Latch_Result, Latch_Flags, CTS_in_, CTS_in_a, CTS_in_b, CTS_in_c;
output Zro_Flag, Neg_Flag, Carry_Flag;
    wire \____return714[3] , \____return769[12] , \____return819[2] , 
        \____return819[10] , \____return819[14] , \____return819[6] , 
        \____return819[4] , \Op_Result[0] , \____return664[11] , 
        \____return819[12] , \____return769[10] , \____return819[0] , 
        \____return819[9] , \n748[14] , \Op_Result[4] , \____return746[7] , 
        \ARG622[5] , \____return664[9] , \____return746[10] , \Op_Result[10] , 
        \ARG622[11] , \____return769[3] , \____return664[4] , 
        \____return746[3] , \ARG622[8] , \ARG622[15] , \____return769[7] , 
        \ARG622[1] , \____return746[8] , \____return769[5] , \n789[14] , 
        \____return664[6] , \____return746[1] , \n821[15] , 
        \____return746[12] , \Op_Result[12] , \____return769[1] , \ARG622[7] , 
        \____return746[5] , \____return664[2] , \____return769[8] , 
        \____return746[13] , \ARG622[12] , \____return769[0] , \ARG622[6] , 
        \____return664[3] , \____return746[4] , \____return769[9] , 
        \____return746[9] , \ARG622[2] , \____return769[4] , 
        \____return664[7] , \____return746[2] , Zro_Flag43, \____return664[5] , 
        \ARG622[9] , \ARG622[14] , \____return769[6] , \____return746[15] , 
        \ARG622[0] , \____return746[6] , \ARG622[4] , \____return746[11] , 
        \ARG622[10] , \____return769[2] , \____return819[13] , 
        \____return769[11] , \____return819[1] , \____return819[8] , 
        \____return819[5] , \____return769[15] , \Op_Result[8] , 
        \____return664[10] , \____return664[12] , \____return819[7] , n62, 
        \n684[14] , \____return769[13] , \____return819[3] , 
        \____return819[11] , n1152, n1153, n1154, n1155, n1156, n1157, n1158, 
        n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168, 
        n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176, n1177, n1178, 
        n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187, n1188, 
        n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197, n1198, 
        n1199, n1200, n1201, n1202, n1203, n1205, n1206, n1207, n1210, n1212, 
        n1215, n1217, n1218, n1223, n1224, n1225, n1226, n1227, n1228, n1229, 
        n1230, n1232, n1233, n1234, n1235, n1237, n1238, n1239, n1243, n1245, 
        n1246, n1248, n1249, n1250, n1251, n1252, n1253, n1254, n1255, n1256, 
        n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264, n1265, n1266, 
        n1267, n1268, n1271, n1273, n1275, n1276, n1277, n1278, n1279, n1280, 
        n1281, n1282, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, 
        n1301, n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343, 
        n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353, 
        n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363, 
        n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373, 
        n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383, 
        n1384, n1385, n1386, n1387, n1388, n1389, n1391, n1392, n1393, n1394, 
        n1395, n1396, n1397, n1398, n1399, n1401, n1402, n1403, n1404, n1405, 
        n1407, n1408, n1409, n1410, n1411, n1412, n1413, n1414, n1415, n1417, 
        n1418, n1419, n1420, n1421, n1422, n1423, n1424, n1425, n1426, n1427, 
        n1428, n1429, n1430, n1431, n1432, n1433, n1434, n1435, n1436, n1437, 
        n1438, n1439, n1440, n1441, n1442, n1443, n1444, n1445, n1446, n1448, 
        n1449, n1450, n1451, n1452, n1453, n1456, n1457, n1458, n1459, n1460, 
        n1461, n1462, n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, 
        n1472, n1473, n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481, 
        n1483, n1484, n1487, n1488, n1489, n1490, n1491, n1492, n1495, n1497, 
        n1498, n1500, n1503, n1506, n1507, n1511, n1515, n1516, n1517, n1518, 
        n1519, n1520, n1521, n1522, n1523, n1524, n1525, n1526, n1527, n1528, 
        n1529, n1550, N7891, N7921, N3233, N3241, N819, N737, N738, N842, 
        N6741, N675, N6761, N521, N4391, N6771, N823, N329, N3301, N680, N5782, 
        N493, N824, N442, N681, N332, N333, N6831, N7931, N4452, N5232, N4471, 
        N335, N3362, N686, N827, N514, N5911, N450, N7951, N829, N3382, N339, 
        N689, N7961, N4521, N5981, N4531, N797, N3411, N342, N776, N831, N5161, 
        N4562, N798, N3881, N693, N694, N344, N3451, N7771, N7991, N500, N800, 
        N848, N696, N832, N801, N779, N780, N7671, N463, N8021, N699, N700, 
        N833, N8031, N3501, N3511, N8041, N467, N834, N845, N7041, N835, N805, 
        N7821, N783, N7691, N470, N836, N846, N709, N4084, N837, N3561, N3571, 
        N784, N507, N7701, N849, N713, N4131, N8061, N716, N717, N7521, N480, 
        N847, N7191, N7851, N4191, N8071, N3621, N3631, N8081, N6621, N8091, 
        N838, N7721, N8101, N811, n67, n69, n70, N436, N391, N271, N4451, 
        N2741, N3952, N362, N277, N3961, N3971, N4511, N2801, N3992, N64, N671, 
        N400, N794, N438, N286, N401, N94, N971, N289, N4021, N4031, N404, 
        N2921, N405, N124, N407, N3101, N439, N4083, N409, N4101, N440, N162, 
        N4121, N378, N379, N4161, N4171, N419, N384, N3521, N4211, N422, N424, 
        N452, N382, N426, N4272, N429, N4321, N451, N6412, N6422, N6432, N6442, 
        N6452, N6462, N6481, N6491, N6502, N764, N785, N6531, N258, N2591, N24, 
        N2601, N26, N261, N28, N262, N30, N656, N32, N2641, N34, N657, N36, 
        N752, N659, N660, N40, N661, N662, N663, N664, N765, N666, N787, N668, 
        N669, N730, N799, N674, N274, N386, N2761, N387, N4871, N388, N767, 
        N389, N4881, N390, N768, N676, N489, N4271, N677, N393, N678, N746, 
        N679, N3951, N769, N428, N747, N398, N788, N3991, N683, N770, N809, 
        N97, N789, N497, N5942, N771, N810, N772, N691, N790, N802, N791, N695, 
        N773, N6311, N803, N4082, N5971, N792, N793, N736, N432, N804, N774, 
        N413, N3232, N775, N704, N705, N706, N707, N806, N3341, N417, N708, 
        N807, N3381, N418, N6021, N710, N795, N6402, N777, N711, N778, N516, 
        N796, N719, N720, N808, N741, N782, N723, N5382, N724, N6101, n621, 
        n64, n66, N235, N2361, N564, N239, N2401, N6261, N395, N609, N610, 
        N243, N244, N396, N485, N397, N569, N6271, N5721, N5731, N574, N5241, 
        N399, N575, N3271, N251, N252, N611, N5761, N490, N403, N577, N255, 
        N256, N612, N5461, N5781, N579, N4081, N580, N259, N260, N5811, N6281, 
        N410, N529, N6291, N623, N263, N264, N613, N5301, N445, N6141, N446, 
        N6151, N6451, N5841, N295, N296, N6301, N416, N5501, N5591, N351, 
        N5861, N587, N298, N299, N6461, N449, N631, N421, N551, N632, N501, 
        N301, N302, N6331, N423, N5381, N6341, N363, N6401, N5941, N3041, N305, 
        N6241, N427, N5961, N6411, N6351, N6421, N509, N307, N308, N4551, 
        N4561, N6431, N647, N5431, N512, N513, N601, N602, N6501, N636, N6371, 
        N605, N6441, N5441, N313, N3141, N462, N5581, N648, N6381, N522, N649, 
        N5231, n11, n12, n13, n44, n45, n46, n47, n48, n57, N588, N4, N523, 
        N528, N536, N537, N538, N210, N23, N539, N25, N212, N27, N213, N29, 
        N540, N311, N215, N331, N620, N35, N541, N37, N542, N39, N543, N544, 
        N645, N546, N547, N614, N549, N550, N615, N646, N2241, N314, N625, 
        N315, N402, N3161, N553, N317, N594, N554, N555, N319, N595, N596, 
        N556, N321, N557, N597, N558, N3231, N559, N324, N560, N598, N561, 
        N475, N650, N637, N654, N626, N651, N408, N627, N568, N638, N257, N639, 
        N571, N652, N616, N572, N573, N628, N265, N629, N617, N3361, N603, 
        N640, N576, N630, N578, N641, N633, N276, N581, N278, N279, N280, N487, 
        N634, N519, N582, N488, N412, N583, N584, N635, N585, N642, N415, N292, 
        N454, N455, N456, N586, N458, N459, N460, N285, N222, N19, N224, N31, 
        N33, N306, N226, N43, N358, N366, N228, N55, N57, N59, N230, N67, N69, 
        N71, N232, N79, N81, N83, N234, N359, N345, N334, N236, N360, N309, 
        N310, N238, N361, N347, N240, N349, N336, N316, N242, N350, N367, N338, 
        N323, N352, N368, N325, N327, N353, N191, N355, N370, N330, n4, n5, n6, 
        n7, n8, n9, n10, n1553, n1554, n1555, n1556, n1557, n1558, n1559, 
        n1560, n1561, n1562, n1563, n1564, n1565, n1566, n1567, n1568, n1569, 
        n1570, n1571, n1572, n1573, n1574, n1575, n1576, n1577, n1578, n1579, 
        n1580, n1581, n1582, n1583, n1584, n1585, n1586, n1587, n1588, n1589, 
        n1590, n1591, n1592, n1593, n1594, n1595, n1596, n1597, n1598, n1599, 
        n1600, n1601, n1602, n1603;
    and2c3 U191 ( .A(ALU_OP[5]), .B(ALU_OP[1]), .Y(n1292) );
    mx2d2 U192 ( .D0(n1353), .D1(n1516), .S(Oprnd_A[10]), .Y(n1263) );
    mx2a1 U195 ( .D0(n1353), .D1(n1351), .S(Oprnd_B[15]), .Y(n1380) );
    mx2d3 U198 ( .D0(n1353), .D1(n1516), .S(Oprnd_A[5]), .Y(n1255) );
    mx2d3 U199 ( .D0(n1353), .D1(n1516), .S(Oprnd_A[4]), .Y(n1259) );
    clk1a15 U200 ( .A(n1354), .Y(n1516) );
    and2c3 U201 ( .A(ALU_OP[4]), .B(ALU_OP[1]), .Y(n1275) );
    or2b2 U203 ( .A(n1153), .B(n1276), .Y(n1286) );
    inv1a1 U204 ( .A(ALU_OP[2]), .Y(n1267) );
    and2a3 U205 ( .A(n1280), .B(n1156), .Y(n1153) );
    or2c3 U211 ( .A(n1290), .B(n1156), .Y(n1289) );
    and2a3 U212 ( .A(ALU_OP[4]), .B(ALU_OP[1]), .Y(n1290) );
    oa1e3 U215 ( .A(n1206), .B(n1154), .C(n1207), .Y(n1205) );
    and2a6 U216 ( .A(ALU_OP[2]), .B(ALU_OP[0]), .Y(n1154) );
    or2c3 U217 ( .A(ALU_OP[2]), .B(n1266), .Y(n1206) );
    or2c3 U218 ( .A(n1291), .B(n1292), .Y(n1207) );
    or2c3 U219 ( .A(ALU_OP[0]), .B(n1267), .Y(n1279) );
    mx2d3 U226 ( .D0(n1262), .D1(n1264), .S(Oprnd_B[10]), .Y(n1398) );
    and2c3 U227 ( .A(n1249), .B(n1263), .Y(n1262) );
    and2c3 U228 ( .A(n1252), .B(n1265), .Y(n1264) );
    mx2d3 U235 ( .D0(n1271), .D1(n1337), .S(Oprnd_A[3]), .Y(n1356) );
    mx2d3 U238 ( .D0(n1341), .D1(n1342), .S(Oprnd_B[1]), .Y(n1340) );
    mx2a1 U240 ( .D0(n1341), .D1(n1342), .S(Oprnd_B[15]), .Y(n1469) );
    ao1e3 U241 ( .A(n1230), .B(\n789[14] ), .C(n1452), .Y(n1451) );
    ao1e3 U244 ( .A(n1230), .B(\____return769[12] ), .C(n1491), .Y(n1490) );
    and2c1 U252 ( .A(n1235), .B(n1591), .Y(n1234) );
    ao1e3 U255 ( .A(n1230), .B(\____return769[8] ), .C(n1475), .Y(n1474) );
    mx2d3 U263 ( .D0(n1271), .D1(n1337), .S(Oprnd_A[5]), .Y(n1362) );
    mx2d3 U264 ( .D0(n1254), .D1(n1256), .S(Oprnd_B[5]), .Y(n1361) );
    and2c3 U265 ( .A(n1249), .B(n1255), .Y(n1254) );
    and2c3 U266 ( .A(n1252), .B(n1257), .Y(n1256) );
    mx2d3 U270 ( .D0(n1271), .D1(n1337), .S(Oprnd_A[4]), .Y(n1388) );
    or2c3 U279 ( .A(n1267), .B(n1266), .Y(n1276) );
    ao1e3 U281 ( .A(n1281), .B(N7891), .C(n1402), .Y(n1483) );
    or2c1 U283 ( .A(n1392), .B(n1271), .Y(n1391) );
    mx2a1 U284 ( .D0(n1353), .D1(n1351), .S(Oprnd_B[0]), .Y(n1392) );
    mx2d3 U286 ( .D0(n1341), .D1(n1342), .S(Oprnd_B[0]), .Y(n1393) );
    ao1e9 U290 ( .A(n1289), .B(n1154), .C(n1301), .Y(n1252) );
    ao1e3 U291 ( .A(n1230), .B(\____return769[0] ), .C(n1488), .Y(n1487) );
    or2c6 U292 ( .A(n1282), .B(n1152), .Y(n1230) );
    inv1a3 U293 ( .A(n1279), .Y(n1282) );
    or3d3 U296 ( .A(n1166), .B(n1167), .C(n1168), .Y(n1521) );
    and2c3 U297 ( .A(n1355), .B(n1356), .Y(n1166) );
    and3d2 U300 ( .A(n1422), .B(n1212), .C(n1421), .Y(n1168) );
    or2c3 U301 ( .A(n1199), .B(n1550), .Y(n1529) );
    inv1a1 U302 ( .A(Reset), .Y(n1550) );
    and2c3 U303 ( .A(\Op_Result[10] ), .B(n1528), .Y(n1188) );
    inv1a1 U304 ( .A(n1518), .Y(n1506) );
    inv1a3 U306 ( .A(n1519), .Y(n1503) );
    and3a2 U308 ( .A(n1448), .B(n1445), .C(n1449), .Y(n1175) );
    or2c3 U309 ( .A(n1157), .B(n1158), .Y(\Op_Result[8] ) );
    and4a3 U310 ( .A(n1476), .B(n1477), .C(n1478), .D(n1479), .Y(n1157) );
    and3d2 U311 ( .A(n1474), .B(n1234), .C(n1473), .Y(n1158) );
    or2c3 U312 ( .A(n1162), .B(n1163), .Y(n1522) );
    and4a3 U313 ( .A(n1428), .B(n1429), .C(n1430), .D(n1431), .Y(n1162) );
    or3d3 U314 ( .A(n1159), .B(n1160), .C(n1161), .Y(n1523) );
    and2c3 U315 ( .A(n1361), .B(n1362), .Y(n1159) );
    and3d3 U319 ( .A(n1433), .B(n1566), .C(n1432), .Y(n1161) );
    or2c3 U320 ( .A(n1164), .B(n1165), .Y(n1520) );
    and4a3 U321 ( .A(n1417), .B(n1418), .C(n1419), .D(n1420), .Y(n1164) );
    and3d2 U322 ( .A(n1415), .B(n1210), .C(n1414), .Y(n1165) );
    inv1a3 U323 ( .A(ALU_OP[0]), .Y(n1266) );
    fdesf1a3 \Lachd_Result_reg[10]  ( .D0(\Op_Result[10] ), .D1(Lachd_Result
        [10]), .S(1'b0), .E(Latch_Result), .CLK(CTS_in_c), .Q(Lachd_Result[10]
        ) );
    fdesf1a3 \Lachd_Result_reg[7]  ( .D0(n1519), .D1(Lachd_Result[7]), .S(1'b0
        ), .E(Latch_Result), .CLK(CTS_in_), .Q(Lachd_Result[7]) );
    fdesf1a3 \Lachd_Result_reg[3]  ( .D0(n1521), .D1(Lachd_Result[3]), .S(1'b0
        ), .E(Latch_Result), .CLK(CTS_in_b), .Q(Lachd_Result[3]) );
    fdesf1a3 \Lachd_Result_reg[1]  ( .D0(n1518), .D1(Lachd_Result[1]), .S(1'b0
        ), .E(Latch_Result), .CLK(CTS_in_c), .Q(Lachd_Result[1]) );
    fdmf1c2 Neg_Flag_reg ( .D0(n1529), .D1(Neg_Flag), .S(1'b0), .CLK(CTS_in_a), 
        .QN(Neg_Flag) );
    fdesf1a3 Carry_Flag_reg ( .D0(1'b0), .D1(Carry_Flag), .S(1'b0), .E(n62), 
        .CLK(CTS_in_a), .Q(Carry_Flag) );
    fdesf1a3 \Lachd_Result_reg[15]  ( .D0(n1528), .D1(Lachd_Result[15]), .S(
        1'b0), .E(Latch_Result), .CLK(CTS_in_), .Q(Lachd_Result[15]) );
    fdesf1a3 \Lachd_Result_reg[12]  ( .D0(\Op_Result[12] ), .D1(Lachd_Result
        [12]), .S(1'b0), .E(Latch_Result), .CLK(CTS_in_c), .Q(Lachd_Result[12]
        ) );
    fdesf1a3 \Lachd_Result_reg[11]  ( .D0(n1525), .D1(Lachd_Result[11]), .S(
        1'b0), .E(Latch_Result), .CLK(CTS_in_), .Q(Lachd_Result[11]) );
    fdesf1a3 \Lachd_Result_reg[9]  ( .D0(n1524), .D1(Lachd_Result[9]), .S(1'b0
        ), .E(Latch_Result), .CLK(CTS_in_), .Q(Lachd_Result[9]) );
    fdesf1a3 \Lachd_Result_reg[8]  ( .D0(\Op_Result[8] ), .D1(Lachd_Result[8]), 
        .S(1'b0), .E(Latch_Result), .CLK(CTS_in_), .Q(Lachd_Result[8]) );
    fdesf1a3 \Lachd_Result_reg[6]  ( .D0(n1522), .D1(Lachd_Result[6]), .S(1'b0
        ), .E(Latch_Result), .CLK(CTS_in_c), .Q(Lachd_Result[6]) );
    fdesf1a3 \Lachd_Result_reg[5]  ( .D0(n1523), .D1(Lachd_Result[5]), .S(1'b0
        ), .E(Latch_Result), .CLK(CTS_in_c), .Q(Lachd_Result[5]) );
    fdesf1a3 \Lachd_Result_reg[4]  ( .D0(\Op_Result[4] ), .D1(Lachd_Result[4]), 
        .S(1'b0), .E(Latch_Result), .CLK(CTS_in_b), .Q(Lachd_Result[4]) );
    fdesf1a3 \Lachd_Result_reg[2]  ( .D0(n1520), .D1(Lachd_Result[2]), .S(1'b0
        ), .E(Latch_Result), .CLK(CTS_in_b), .Q(Lachd_Result[2]) );
    fdesf1a3 \Lachd_Result_reg[0]  ( .D0(\Op_Result[0] ), .D1(Lachd_Result[0]), 
        .S(1'b0), .E(Latch_Result), .CLK(CTS_in_c), .Q(Lachd_Result[0]) );
    and2c2 U329 ( .A(Reset), .B(\Op_Result[12] ), .Y(n1189) );
    fdesf1a3 \Lachd_Result_reg[13]  ( .D0(n1527), .D1(Lachd_Result[13]), .S(
        1'b0), .E(Latch_Result), .CLK(CTS_in_c), .Q(Lachd_Result[13]) );
    or2c6 U331 ( .A(n1171), .B(n1172), .Y(n1519) );
    or3d6 U335 ( .A(n1180), .B(n1181), .C(n1182), .Y(\Op_Result[0] ) );
    or3d6 U336 ( .A(n1183), .B(n1184), .C(n1185), .Y(n1518) );
    or3d6 U339 ( .A(n1196), .B(n1197), .C(n1198), .Y(\Op_Result[10] ) );
    or2c6 U340 ( .A(n1200), .B(n1201), .Y(n1528) );
    mx2d2 U387 ( .D0(n1351), .D1(n1517), .S(Oprnd_A[3]), .Y(n1253) );
    and3d6 U412 ( .A(n1408), .B(n1569), .C(n1407), .Y(n1172) );
    and3d6 U419 ( .A(n1426), .B(n1217), .C(n1425), .Y(n1163) );
    and3d6 U423 ( .A(n1436), .B(n1223), .C(n1435), .Y(n1174) );
    and3d6 U427 ( .A(n1443), .B(n1225), .C(n1442), .Y(n1176) );
    and3d6 U429 ( .A(n1451), .B(n1227), .C(n1450), .Y(n1187) );
    and3d6 U433 ( .A(n1459), .B(n1229), .C(n1458), .Y(n1170) );
    and3a3 U434 ( .A(n1464), .B(n1461), .C(n1465), .Y(n1169) );
    and3d6 U437 ( .A(n1467), .B(n1232), .C(n1466), .Y(n1201) );
    and3d6 U448 ( .A(n1490), .B(n1237), .C(n1489), .Y(n1195) );
    and3d6 U450 ( .A(n1498), .B(n1243), .C(n1497), .Y(n1198) );
    and2c6 U453 ( .A(n1522), .B(n1523), .Y(n1191) );
    and3d6 U454 ( .A(\Op_Result[8] ), .B(n1520), .C(n1521), .Y(n1192) );
    and4a6 U455 ( .A(n1571), .B(n1589), .C(n1503), .D(n1588), .Y(n1193) );
    or2b2 U465 ( .A(n1515), .B(n1576), .Y(n1409) );
    or2b2 U472 ( .A(n1515), .B(n1593), .Y(n1427) );
    or2b2 U475 ( .A(n1515), .B(n1594), .Y(n1434) );
    or2b2 U476 ( .A(n1515), .B(n1574), .Y(n1437) );
    or2b2 U479 ( .A(n1515), .B(n1595), .Y(n1444) );
    or2b2 U483 ( .A(n1515), .B(n1596), .Y(n1457) );
    or2b2 U485 ( .A(n1568), .B(n1597), .Y(n1460) );
    or2b2 U486 ( .A(n1515), .B(n1598), .Y(n1465) );
    or2b2 U488 ( .A(n1568), .B(n1599), .Y(n1468) );
    or2b2 U490 ( .A(n1515), .B(n1600), .Y(n1471) );
    or2b2 U493 ( .A(n1515), .B(n1567), .Y(n1478) );
    or2b2 U499 ( .A(n1500), .B(N436), .Y(n1488) );
    mx2d2 U505 ( .D0(n1345), .D1(n1343), .S(Oprnd_A[7]), .Y(n1411) );
    mx2a6 U506 ( .D0(n1341), .D1(n1342), .S(Oprnd_B[7]), .Y(n1410) );
    mx2d2 U509 ( .D0(n1349), .D1(n1347), .S(Oprnd_A[2]), .Y(n1418) );
    mx2d2 U513 ( .D0(n1359), .D1(n1357), .S(Oprnd_A[6]), .Y(n1429) );
    mx2d2 U517 ( .D0(n1365), .D1(n1363), .S(Oprnd_A[9]), .Y(n1439) );
    mx2d2 U520 ( .D0(n1584), .D1(n1285), .S(Oprnd_A[11]), .Y(n1446) );
    mx2d2 U526 ( .D0(n1584), .D1(n1285), .S(Oprnd_A[13]), .Y(n1462) );
    mx2d2 U528 ( .D0(n1379), .D1(n1381), .S(Oprnd_A[15]), .Y(n1470) );
    mx2a6 U529 ( .D0(Neg_Flag), .D1(n1528), .S(Latch_Flags), .Y(n1199) );
    mx2d2 U532 ( .D0(n1584), .D1(n1285), .S(Oprnd_A[8]), .Y(n1476) );
    and6a6 U537 ( .A(n1188), .B(n1189), .C(n1190), .D(n1191), .E(n1192), .F(
        n1193), .Y(Zro_Flag43) );
    or3d9 U561 ( .A(n1286), .B(n1287), .C(n1288), .Y(n1285) );
    ao1f6 U571 ( .A(n1155), .B(n1153), .C(n1154), .Y(n1287) );
    ao1e6 U572 ( .A(n1511), .B(n1207), .C(n1154), .Y(n1288) );
    mx2d3 U574 ( .D0(n1353), .D1(n1516), .S(Oprnd_A[3]), .Y(n1250) );
    fdesf1a2 Zro_Flag_reg ( .D0(Zro_Flag43), .D1(Zro_Flag), .S(1'b0), .E(n62), 
        .CLK(CTS_in_a), .Q(Zro_Flag) );
    or2b2 U596 ( .A(n1550), .B(Latch_Flags), .Y(n62) );
    facs4a3 I281 ( .A(Oprnd_A[1]), .B(Oprnd_B[1]), .CSIN(n1564), .S(
        \____return819[1] ), .CO0(N3233), .CO1(N3241) );
    facs4a2 I392 ( .A(Oprnd_A[2]), .B(Oprnd_B[2]), .CSIN(N738), .S(
        \____return819[2] ), .CO0(N6741), .CO1(N675) );
    buf1a6 I194 ( .A(N675), .Y(N6761) );
    ao1f6 I401 ( .A(N6761), .B(N3233), .C(N6741), .Y(N521) );
    facs4a3 I501 ( .A(Oprnd_A[3]), .B(Oprnd_B[3]), .CSIN(N6771), .S(
        \____return819[3] ), .CO0(N329), .CO1(N3301) );
    facs4a3 I612 ( .A(Oprnd_A[4]), .B(Oprnd_B[4]), .CSIN(n70), .S(
        \____return819[4] ), .CO0(N332), .CO1(N333) );
    buf1a6 I196 ( .A(N333), .Y(N6831) );
    ao1f6 I621 ( .A(N6831), .B(N329), .C(N332), .Y(N7931) );
    facs4a3 I722 ( .A(Oprnd_A[5]), .B(Oprnd_B[5]), .CSIN(n1572), .S(
        \____return819[5] ), .CO0(N335), .CO1(N3362) );
    facs4a3 I83 ( .A(Oprnd_A[6]), .B(Oprnd_B[6]), .CSIN(N829), .S(
        \____return819[6] ), .CO0(N3382), .CO1(N339) );
    facs4a3 I941 ( .A(Oprnd_A[7]), .B(Oprnd_B[7]), .CSIN(n69), .S(
        \____return819[7] ), .CO0(N3411), .CO1(N342) );
    oa1f6 I971 ( .A(N827), .B(N5161), .C(N831), .Y(N4562) );
    facs4a3 I1052 ( .A(Oprnd_A[8]), .B(Oprnd_B[8]), .CSIN(N694), .S(
        \____return819[8] ), .CO0(N344), .CO1(N3451) );
    facs4a2 I1161 ( .A(Oprnd_A[9]), .B(Oprnd_B[9]), .CSIN(N801), .S(
        \____return819[9] ), .CO0(N779), .CO1(N780) );
    facs4a3 I127 ( .A(Oprnd_A[10]), .B(Oprnd_B[10]), .CSIN(N8031), .S(
        \____return819[10] ), .CO0(N3501), .CO1(N3511) );
    facs4a2 I1381 ( .A(Oprnd_A[11]), .B(Oprnd_B[11]), .CSIN(N805), .S(
        \____return819[11] ), .CO0(N7821), .CO1(N783) );
    facs4a3 I1491 ( .A(Oprnd_A[12]), .B(Oprnd_B[12]), .CSIN(N837), .S(
        \____return819[12] ), .CO0(N3561), .CO1(N3571) );
    facs4a2 I1601 ( .A(Oprnd_A[13]), .B(Oprnd_B[13]), .CSIN(N8061), .S(
        \____return819[13] ), .CO0(N716), .CO1(N717) );
    facs4a3 I1712 ( .A(Oprnd_A[14]), .B(Oprnd_B[14]), .CSIN(N8071), .S(
        \____return819[14] ), .CO0(N3621), .CO1(N3631) );
    facs4a2 I182 ( .A(Oprnd_A[15]), .B(Oprnd_B[15]), .CSIN(N811), .S(
        \n821[15] ) );
    oa1f3 U118 ( .A(N8041), .B(N507), .C(N784), .Y(N7701) );
    ao1f2 U2104 ( .A(N3511), .B(N779), .C(N3501), .Y(N8041) );
    and2c3 U3103 ( .A(N3571), .B(N783), .Y(N507) );
    or2c3 U4102 ( .A(N467), .B(N507), .Y(N849) );
    oa1f3 U614 ( .A(N784), .B(N6621), .C(N8081), .Y(N8091) );
    ao1f2 U714 ( .A(N3571), .B(N7821), .C(N3561), .Y(N784) );
    ao1f2 U813 ( .A(N3631), .B(N716), .C(N3621), .Y(N8081) );
    or2c3 U912 ( .A(N507), .B(N6621), .Y(N838) );
    and2c3 U105 ( .A(N3631), .B(N717), .Y(N6621) );
    oa1f3 U119 ( .A(N7691), .B(N480), .C(N7521), .Y(N847) );
    ao1f2 U125 ( .A(N783), .B(N3501), .C(N7821), .Y(N7691) );
    and2c3 U145 ( .A(N717), .B(N3571), .Y(N480) );
    ao1f2 U165 ( .A(N717), .B(N3561), .C(N716), .Y(N7521) );
    or2c3 U175 ( .A(N4521), .B(n67), .Y(N848) );
    clk1a3 U1914 ( .A(N3362), .Y(N686) );
    and2c3 U2014 ( .A(N7771), .B(N776), .Y(n67) );
    clk1a6 U2114 ( .A(N3301), .Y(N680) );
    and2c3 U2214 ( .A(N3241), .B(N588), .Y(N737) );
    oa1f3 U2314 ( .A(N833), .B(N842), .C(N700), .Y(N8031) );
    and2c3 U2414 ( .A(N699), .B(N450), .Y(N833) );
    ao1f2 U2614 ( .A(N5911), .B(N699), .C(N8021), .Y(N700) );
    or2c3 U2714 ( .A(N4452), .B(N4521), .Y(N4531) );
    oa1f3 U2814 ( .A(N7931), .B(N4521), .C(N7961), .Y(N5981) );
    oa1f3 U3014 ( .A(N797), .B(N8101), .C(N7721), .Y(N811) );
    ao1f2 U3114 ( .A(N6771), .B(N4531), .C(N5981), .Y(N797) );
    and2c3 U3214 ( .A(N838), .B(N845), .Y(N8101) );
    ao1f2 U3314 ( .A(N834), .B(N838), .C(N8091), .Y(N7721) );
    oa1f3 U3414 ( .A(N4084), .B(N681), .C(N709), .Y(N837) );
    and2c3 U3514 ( .A(N846), .B(N798), .Y(N4084) );
    ao1f2 U3614 ( .A(N442), .B(N7891), .C(N824), .Y(N681) );
    ao1f2 U3713 ( .A(N4562), .B(N846), .C(N836), .Y(N709) );
    oa1f3 U3813 ( .A(N835), .B(N823), .C(N7041), .Y(N805) );
    and2c3 U3913 ( .A(N845), .B(N4531), .Y(N835) );
    oa1f9 U4012 ( .A(N7921), .B(N4391), .C(N521), .Y(N6771) );
    ao1f2 U4113 ( .A(N5981), .B(N845), .C(N834), .Y(N7041) );
    oa1f3 U4213 ( .A(N832), .B(N7921), .C(N696), .Y(N801) );
    and2c3 U4312 ( .A(N848), .B(N4471), .Y(N832) );
    ao1f2 U4412 ( .A(N5232), .B(N848), .C(N800), .Y(N696) );
    oa1f3 U4512 ( .A(N693), .B(N436), .C(N3881), .Y(N694) );
    and2c3 U4612 ( .A(N798), .B(N442), .Y(N693) );
    ao1f2 U4712 ( .A(N824), .B(N798), .C(N4562), .Y(N3881) );
    or2c3 U5012 ( .A(N737), .B(N493), .Y(N442) );
    oa1f3 U5213 ( .A(N737), .B(N436), .C(N819), .Y(N738) );
    inv1a3 U5811 ( .A(Oprnd_A[0]), .Y(N7891) );
    inv1a1 U5911 ( .A(N3233), .Y(N819) );
    and2c3 U615 ( .A(N7771), .B(N776), .Y(N500) );
    oa1e6 U623 ( .A(N493), .B(N3233), .C(N5782), .Y(N824) );
    oa1a2 U662 ( .A(N442), .B(N7891), .C(N824), .Y(n70) );
    oa1f3 U692 ( .A(N521), .B(N4452), .C(N7931), .Y(N5232) );
    ao4e1 U702 ( .A(N799), .B(N7891), .C(Oprnd_B[0]), .D(N7891), .Y(
        \____return819[0] ) );
    oa1a3 U715 ( .A(N6771), .B(N4531), .C(N5981), .Y(n69) );
    clk1b6 I5 ( .A(\ARG622[0] ), .Y(N436) );
    or2c1 U116 ( .A(N419), .B(N424), .Y(N452) );
    inv1a2 U2103 ( .A(Oprnd_A[12]), .Y(N419) );
    or2c3 U4101 ( .A(N242), .B(N240), .Y(N378) );
    and2c3 U613 ( .A(N384), .B(N440), .Y(N3521) );
    and2c3 U713 ( .A(N405), .B(N401), .Y(N124) );
    and2c3 U104 ( .A(N452), .B(N378), .Y(N382) );
    and2c3 U117 ( .A(N439), .B(N4021), .Y(N4083) );
    or2c3 U124 ( .A(N289), .B(N286), .Y(N4021) );
    or2c3 U134 ( .A(N2801), .B(N230), .Y(N400) );
    and2c3 U154 ( .A(N671), .B(N4211), .Y(N422) );
    inv1a3 U174 ( .A(Oprnd_A[1]), .Y(N271) );
    or2c3 U1913 ( .A(N94), .B(N362), .Y(N971) );
    inv1a3 U2613 ( .A(Oprnd_A[0]), .Y(\ARG622[0] ) );
    and2c3 U2813 ( .A(N4451), .B(N409), .Y(N4101) );
    inv1a3 U2913 ( .A(Oprnd_A[7]), .Y(N289) );
    inv1a3 U3213 ( .A(N3971), .Y(N4511) );
    inv1a3 U3513 ( .A(Oprnd_A[6]), .Y(N286) );
    inv1a3 U3613 ( .A(Oprnd_A[8]), .Y(N2921) );
    or2c3 U3812 ( .A(\ARG622[0] ), .B(N271), .Y(N4451) );
    ao4e3 U4011 ( .A(Oprnd_A[14]), .B(N4272), .C(N429), .D(N4272), .Y(
        \ARG622[14] ) );
    ao4e3 U4112 ( .A(Oprnd_A[9]), .B(N407), .C(N3101), .D(N407), .Y(
        \ARG622[9] ) );
    inv1a3 U4212 ( .A(Oprnd_A[9]), .Y(N3101) );
    ao4e3 U4311 ( .A(N2741), .B(N4451), .C(Oprnd_A[2]), .D(N4451), .Y(
        \ARG622[2] ) );
    inv1a3 U4411 ( .A(Oprnd_A[2]), .Y(N2741) );
    ao4e3 U4511 ( .A(N2801), .B(N4511), .C(Oprnd_A[4]), .D(N4511), .Y(
        \ARG622[4] ) );
    inv1a3 U4611 ( .A(Oprnd_A[4]), .Y(N2801) );
    inv1a3 U4811 ( .A(Oprnd_A[3]), .Y(N277) );
    ao4e1 U5011 ( .A(N271), .B(N436), .C(Oprnd_A[1]), .D(N436), .Y(\ARG622[1] 
        ) );
    ao4e2 U5112 ( .A(N230), .B(N671), .C(Oprnd_A[5]), .D(N671), .Y(\ARG622[5] 
        ) );
    ao4e3 U5411 ( .A(Oprnd_A[12]), .B(N4171), .C(N419), .D(N4171), .Y(
        \ARG622[12] ) );
    ao4e3 U5511 ( .A(N2921), .B(N404), .C(Oprnd_A[8]), .D(N404), .Y(
        \ARG622[8] ) );
    ao4e3 U5611 ( .A(N289), .B(N971), .C(Oprnd_A[7]), .D(N971), .Y(\ARG622[7] 
        ) );
    ao4e3 U5711 ( .A(N286), .B(N438), .C(Oprnd_A[6]), .D(N438), .Y(\ARG622[6] 
        ) );
    or2c6 I251 ( .A(Oprnd_A[1]), .B(N451), .Y(N2591) );
    and2c6 I682 ( .A(N30), .B(N28), .Y(N389) );
    and2c6 I701 ( .A(N32), .B(N30), .Y(N390) );
    and2c6 I76 ( .A(N659), .B(N36), .Y(N393) );
    and2c6 I801 ( .A(N662), .B(N40), .Y(N3951) );
    oa1f6 I1012 ( .A(N674), .B(N387), .C(N2761), .Y(N789) );
    oa1f6 I117 ( .A(N677), .B(N3951), .C(N679), .Y(N5971) );
    xor3b3 I210 ( .A(Oprnd_A[3]), .B(N6422), .C(N789), .Y(\____return714[3] )
         );
    or2c1 U114 ( .A(Oprnd_A[14]), .B(N6531), .Y(N669) );
    and2c3 U2102 ( .A(Oprnd_A[14]), .B(N6531), .Y(N730) );
    or2c1 U3101 ( .A(Oprnd_A[13]), .B(N785), .Y(N787) );
    and2c3 U4100 ( .A(Oprnd_A[13]), .B(N785), .Y(N668) );
    or2c3 U599 ( .A(Oprnd_A[11]), .B(N6502), .Y(N663) );
    or2c2 U610 ( .A(Oprnd_A[10]), .B(N6491), .Y(N661) );
    and2c6 U710 ( .A(Oprnd_A[10]), .B(N6491), .Y(N662) );
    and2c3 U84 ( .A(Oprnd_A[11]), .B(N6502), .Y(N664) );
    or2c3 U115 ( .A(Oprnd_A[6]), .B(N6452), .Y(N2641) );
    and2c6 U123 ( .A(Oprnd_A[6]), .B(N6452), .Y(N34) );
    and2c6 U133 ( .A(Oprnd_A[7]), .B(N6462), .Y(N36) );
    or2c3 U143 ( .A(Oprnd_A[5]), .B(N6442), .Y(N656) );
    and2c6 U153 ( .A(Oprnd_A[5]), .B(N6442), .Y(N32) );
    or2c3 U163 ( .A(Oprnd_A[4]), .B(N6432), .Y(N262) );
    and2c6 U173 ( .A(Oprnd_A[4]), .B(N6432), .Y(N30) );
    oa1f3 U183 ( .A(N679), .B(N398), .C(N747), .Y(N432) );
    ao1f2 U1912 ( .A(N662), .B(N660), .C(N661), .Y(N679) );
    and2c3 U2012 ( .A(N666), .B(N664), .Y(N398) );
    oa1f3 U2112 ( .A(N747), .B(N770), .C(N683), .Y(N3232) );
    ao1f2 U2212 ( .A(N666), .B(N663), .C(N765), .Y(N747) );
    and2c3 U2312 ( .A(N730), .B(N668), .Y(N770) );
    ao1f2 U2412 ( .A(N730), .B(N787), .C(N669), .Y(N683) );
    oa1f3 U2512 ( .A(N769), .B(N3991), .C(N788), .Y(N774) );
    ao1f2 U2612 ( .A(N668), .B(N765), .C(N787), .Y(N788) );
    or2c3 U2712 ( .A(N428), .B(N3991), .Y(N413) );
    and2c3 U2812 ( .A(N668), .B(N666), .Y(N3991) );
    oa1f3 U2912 ( .A(N678), .B(N428), .C(N769), .Y(N793) );
    ao1f2 U3012 ( .A(N40), .B(N752), .C(N660), .Y(N678) );
    and2c3 U3112 ( .A(N664), .B(N662), .Y(N428) );
    ao1f2 U3212 ( .A(N664), .B(N661), .C(N663), .Y(N769) );
    and2c3 U3312 ( .A(N792), .B(N802), .Y(N6021) );
    or2c3 U3412 ( .A(N3951), .B(N393), .Y(N792) );
    or2c3 U3512 ( .A(N389), .B(N676), .Y(N802) );
    and2c3 U3612 ( .A(N6311), .B(N810), .Y(N807) );
    or2c3 U3711 ( .A(N4271), .B(N390), .Y(N695) );
    or2c3 U3811 ( .A(N387), .B(N389), .Y(N810) );
    oa1f3 U3911 ( .A(n64), .B(N388), .C(N4871), .Y(N497) );
    ao1f2 U4010 ( .A(N24), .B(N258), .C(N2591), .Y(n64) );
    and2c6 U4111 ( .A(N28), .B(N26), .Y(N388) );
    oa1d2 U4211 ( .A(N97), .B(n621), .C(N3381), .Y(N741) );
    or2a2 U4310 ( .A(N4082), .B(N691), .Y(n621) );
    oa1f3 U4610 ( .A(N806), .B(N796), .C(N516), .Y(N6101) );
    ao1f2 U4710 ( .A(N789), .B(N802), .C(N790), .Y(N806) );
    and2c3 U4810 ( .A(N775), .B(N792), .Y(N796) );
    ao1f2 U4910 ( .A(N5971), .B(N775), .C(N3232), .Y(N516) );
    oa1f3 U5010 ( .A(N707), .B(N778), .C(N711), .Y(N724) );
    ao1f2 U5111 ( .A(N97), .B(N691), .C(N772), .Y(N707) );
    and2c3 U5211 ( .A(N413), .B(N4082), .Y(N778) );
    ao1f2 U5310 ( .A(N803), .B(N413), .C(N774), .Y(N711) );
    oa1f3 U5510 ( .A(N705), .B(N795), .C(N710), .Y(N723) );
    ao1f3 U5610 ( .A(N5942), .B(Oprnd_B[0]), .C(N497), .Y(N705) );
    and2c3 U5710 ( .A(N736), .B(N695), .Y(N795) );
    ao1f2 U5810 ( .A(N791), .B(N736), .C(N793), .Y(N710) );
    oa1f3 U601 ( .A(N417), .B(N799), .C(N3341), .Y(N720) );
    and2c3 U612 ( .A(N5942), .B(N695), .Y(N417) );
    ao1f2 U622 ( .A(N497), .B(N695), .C(N791), .Y(N3341) );
    inv1a6 U722 ( .A(Oprnd_B[1]), .Y(N451) );
    or2c3 U741 ( .A(Oprnd_B[0]), .B(N258), .Y(N674) );
    inv1a3 U751 ( .A(N674), .Y(N809) );
    inv1a3 U771 ( .A(N24), .Y(N386) );
    and2c6 U781 ( .A(Oprnd_A[1]), .B(N451), .Y(N24) );
    or2c3 U812 ( .A(Oprnd_A[9]), .B(N6481), .Y(N660) );
    ao1f2 U831 ( .A(N772), .B(N4082), .C(N803), .Y(N3381) );
    oa1f3 U90 ( .A(N2761), .B(N389), .C(N767), .Y(N771) );
    or2c3 U931 ( .A(N386), .B(N388), .Y(N5942) );
    ao1e6 U94 ( .A(N28), .B(n66), .C(N261), .Y(N4871) );
    inv1a3 U95 ( .A(N2601), .Y(n66) );
    or2c3 U96 ( .A(N6422), .B(Oprnd_A[3]), .Y(N261) );
    or2c3 U97 ( .A(Oprnd_A[2]), .B(N6412), .Y(N2601) );
    and2c6 U99 ( .A(Oprnd_A[8]), .B(N528), .Y(N659) );
    or2c6 I16 ( .A(N235), .B(N2361), .Y(N564) );
    facs3a3 I232 ( .A(Oprnd_A[1]), .B(Oprnd_B[1]), .CSIN(N564), .S(
        \____return769[1] ), .CO0(N239), .CO1(N2401) );
    facs3a3 I322 ( .A(Oprnd_A[2]), .B(Oprnd_B[2]), .CSIN(N610), .S(
        \____return769[2] ), .CO0(N243), .CO1(N244) );
    facs3a2 I40 ( .A(Oprnd_A[3]), .B(Oprnd_B[3]), .CSIN(N6271), .S(
        \____return769[3] ), .CO0(N5721), .CO1(N5731) );
    buf1a6 I174 ( .A(N5731), .Y(N574) );
    and2c6 I421 ( .A(N574), .B(N396), .Y(N399) );
    facs3a3 I49 ( .A(Oprnd_A[4]), .B(Oprnd_B[4]), .CSIN(N3271), .S(
        \____return769[4] ), .CO0(N251), .CO1(N252) );
    facs3a3 I571 ( .A(Oprnd_A[5]), .B(Oprnd_B[5]), .CSIN(n13), .S(
        \____return769[5] ), .CO0(N255), .CO1(N256) );
    buf1a6 I1761 ( .A(N256), .Y(N612) );
    and2c6 I592 ( .A(N612), .B(N611), .Y(N5781) );
    facs3a3 I651 ( .A(Oprnd_A[6]), .B(Oprnd_B[6]), .CSIN(n44), .S(
        \____return769[6] ), .CO0(N259), .CO1(N260) );
    facs3a3 I731 ( .A(Oprnd_A[7]), .B(Oprnd_B[7]), .CSIN(n47), .S(
        \____return769[7] ), .CO0(N263), .CO1(N264) );
    and2c6 I751 ( .A(N613), .B(N5811), .Y(N445) );
    facs4a3 I85 ( .A(Oprnd_A[8]), .B(Oprnd_B[8]), .CSIN(N5841), .S(
        \____return769[8] ), .CO0(N295), .CO1(N296) );
    facs4a3 I961 ( .A(Oprnd_A[9]), .B(Oprnd_B[9]), .CSIN(N587), .S(
        \____return769[9] ), .CO0(N298), .CO1(N299) );
    facs4a3 I1071 ( .A(Oprnd_A[10]), .B(Oprnd_B[10]), .CSIN(N501), .S(
        \____return769[10] ), .CO0(N301), .CO1(N302) );
    facs4a3 I1181 ( .A(Oprnd_A[11]), .B(Oprnd_B[11]), .CSIN(N5941), .S(
        \____return769[11] ), .CO0(N3041), .CO1(N305) );
    facs4a3 I129 ( .A(Oprnd_A[12]), .B(Oprnd_B[12]), .CSIN(N509), .S(
        \____return769[12] ), .CO0(N307), .CO1(N308) );
    facs4a2 I1401 ( .A(Oprnd_A[13]), .B(Oprnd_B[13]), .CSIN(N513), .S(
        \____return769[13] ), .CO0(N601), .CO1(N602) );
    facs4a3 I1511 ( .A(Oprnd_A[14]), .B(Oprnd_B[14]), .CSIN(N5441), .S(
        \n789[14] ), .CO0(N313), .CO1(N3141) );
    oa1f3 U112 ( .A(N6331), .B(N4561), .C(N4551), .Y(N6431) );
    ao1f2 U2101 ( .A(N302), .B(N298), .C(N301), .Y(N6331) );
    oa1f3 U3100 ( .A(N6241), .B(N636), .C(N6501), .Y(N6371) );
    and2c3 U42 ( .A(N602), .B(N308), .Y(N636) );
    ao1f2 U52 ( .A(N602), .B(N307), .C(N601), .Y(N6501) );
    or2c3 U62 ( .A(N427), .B(N636), .Y(N605) );
    oa1f3 U72 ( .A(N6461), .B(N427), .C(N6241), .Y(N5961) );
    ao1f2 U82 ( .A(N299), .B(N295), .C(N298), .Y(N6461) );
    ao1f2 U92 ( .A(N305), .B(N301), .C(N3041), .Y(N6241) );
    or2c3 U102 ( .A(N449), .B(N427), .Y(N6411) );
    and2c3 U113 ( .A(N305), .B(N302), .Y(N427) );
    oa1f3 U122 ( .A(n45), .B(N416), .C(N6301), .Y(N5501) );
    oa1f3 U152 ( .A(N5461), .B(N445), .C(N5301), .Y(N6141) );
    clk1a6 U162 ( .A(N260), .Y(N5811) );
    or2c3 U172 ( .A(N5781), .B(N399), .Y(N4081) );
    oa1f3 U182 ( .A(N577), .B(N512), .C(N5431), .Y(N513) );
    ao1d2 U1911 ( .A(n46), .B(N564), .C(N490), .Y(N577) );
    inv1a3 U2011 ( .A(N403), .Y(n46) );
    and2c3 U2111 ( .A(N647), .B(N5591), .Y(N512) );
    ao1f2 U2211 ( .A(N5501), .B(N647), .C(N6431), .Y(N5431) );
    oa1f3 U2311 ( .A(N632), .B(N610), .C(N551), .Y(N501) );
    and2c3 U2411 ( .A(N421), .B(N4081), .Y(N632) );
    ao1f2 U2511 ( .A(N579), .B(N421), .C(N631), .Y(N551) );
    oa1f3 U2611 ( .A(N4551), .B(N5581), .C(N462), .Y(N648) );
    ao1f2 U2711 ( .A(N308), .B(N3041), .C(N307), .Y(N4551) );
    ao1f2 U2811 ( .A(N3141), .B(N601), .C(N313), .Y(N462) );
    oa1f3 U2911 ( .A(N6301), .B(N423), .C(N6331), .Y(N5381) );
    or2c3 U3211 ( .A(N5581), .B(N4561), .Y(N6381) );
    and2c3 U3311 ( .A(N3141), .B(N602), .Y(N5581) );
    and2c3 U3411 ( .A(N308), .B(N305), .Y(N4561) );
    and2c3 U3511 ( .A(N6291), .B(N6341), .Y(N6401) );
    ao1f3 U3910 ( .A(N574), .B(N243), .C(N5721), .Y(N5241) );
    ao1f3 U40 ( .A(N2401), .B(N235), .C(N239), .Y(N6261) );
    and2c3 U4210 ( .A(N2401), .B(N2361), .Y(N395) );
    and2c3 U44 ( .A(Oprnd_A[0]), .B(Oprnd_B[0]), .Y(N2361) );
    inv1a3 U45 ( .A(N609), .Y(N610) );
    and2c3 U46 ( .A(N6261), .B(N395), .Y(N609) );
    inv1a3 U47 ( .A(N569), .Y(N6271) );
    oa1f3 U48 ( .A(N623), .B(N649), .C(N522), .Y(N5231) );
    ao1f2 U49 ( .A(N6291), .B(N569), .C(N529), .Y(N623) );
    and2c3 U50 ( .A(N6381), .B(N6341), .Y(N649) );
    ao1f2 U5110 ( .A(N5381), .B(N6381), .C(N648), .Y(N522) );
    or2c3 U5210 ( .A(N575), .B(n12), .Y(N3271) );
    oa1f3 U54 ( .A(N410), .B(N5761), .C(N6281), .Y(N529) );
    oa1f3 U55 ( .A(N6261), .B(N399), .C(N5241), .Y(n12) );
    oa1f3 U57 ( .A(N6401), .B(N6271), .C(N363), .Y(N5941) );
    ao1f2 U63 ( .A(N5811), .B(N255), .C(N259), .Y(n45) );
    oa1a3 U67 ( .A(N631), .B(N605), .C(N6371), .Y(n48) );
    and2c3 U69 ( .A(N605), .B(N421), .Y(N6441) );
    and2c3 U70 ( .A(N5591), .B(N403), .Y(N5861) );
    xor2b1 U75 ( .A(Oprnd_B[0]), .B(Oprnd_A[0]), .Y(\____return769[0] ) );
    or2c3 U79 ( .A(N395), .B(N399), .Y(N575) );
    or2c6 I21 ( .A(Oprnd_A[0]), .B(N588), .Y(N536) );
    or2c3 I361 ( .A(N528), .B(Oprnd_A[8]), .Y(N620) );
    or2c3 I38 ( .A(Oprnd_A[9]), .B(N6481), .Y(N541) );
    or2c3 I42 ( .A(Oprnd_A[11]), .B(N6502), .Y(N543) );
    ao1f6 I541 ( .A(N538), .B(N536), .C(N537), .Y(N646) );
    and2c6 I611 ( .A(N27), .B(N25), .Y(N3161) );
    and2c6 I631 ( .A(N29), .B(N27), .Y(N317) );
    ao1f3 I64 ( .A(N311), .B(N213), .C(N540), .Y(N594) );
    and2c6 I67 ( .A(N331), .B(N311), .Y(N319) );
    ao1f2 I78 ( .A(N614), .B(N645), .C(N547), .Y(N560) );
    and2c3 I791 ( .A(N546), .B(N614), .Y(N598) );
    ao1f2 I80 ( .A(N550), .B(N547), .C(N549), .Y(N561) );
    clk1b3 I86 ( .A(N646), .Y(N650) );
    or2c3 I931 ( .A(N314), .B(N3161), .Y(N651) );
    or2c3 I95 ( .A(N315), .B(N317), .Y(N627) );
    or2c3 I97 ( .A(N3161), .B(N554), .Y(N638) );
    or2c3 I1011 ( .A(N554), .B(N596), .Y(N652) );
    or2c3 I103 ( .A(N319), .B(N321), .Y(N572) );
    or2c3 I1051 ( .A(N596), .B(N597), .Y(N628) );
    or2c3 I107 ( .A(N321), .B(N3231), .Y(N629) );
    oa1f2 I108 ( .A(N557), .B(N324), .C(N559), .Y(N617) );
    or2c2 I109 ( .A(N597), .B(N324), .Y(N3361) );
    oa1f3 I110 ( .A(N558), .B(N598), .C(N560), .Y(N603) );
    or2c3 I111 ( .A(N3231), .B(N598), .Y(N640) );
    or2c3 I1131 ( .A(N324), .B(N475), .Y(N630) );
    clk1b3 I118 ( .A(N650), .Y(N578) );
    inv1a3 I120 ( .A(N637), .Y(N641) );
    and2c3 I133 ( .A(N652), .B(N651), .Y(N487) );
    and2c3 I135 ( .A(N572), .B(N627), .Y(N519) );
    and2c3 I1371 ( .A(N628), .B(N638), .Y(N488) );
    and2c3 I1391 ( .A(N639), .B(N629), .Y(N583) );
    ao1f3 I140 ( .A(N571), .B(N3361), .C(N617), .Y(N584) );
    and2c3 I141 ( .A(N3361), .B(N652), .Y(N635) );
    and2c3 I143 ( .A(N640), .B(N572), .Y(N642) );
    and2c2 I145 ( .A(N630), .B(N628), .Y(N292) );
    xor3a1 I166 ( .A(N578), .B(Oprnd_A[2]), .C(N6412), .Y(\____return664[2] )
         );
    xor3a1 I167 ( .A(Oprnd_A[3]), .B(N523), .C(N641), .Y(\____return664[3] )
         );
    xor3a1 I170 ( .A(N6452), .B(Oprnd_A[6]), .C(N581), .Y(\____return664[6] )
         );
    xor3a1 I171 ( .A(N6462), .B(Oprnd_A[7]), .C(N278), .Y(\____return664[7] )
         );
    xor3b3 I173 ( .A(Oprnd_A[9]), .B(N6481), .C(N454), .Y(\____return664[9] )
         );
    xor3b3 I176 ( .A(N764), .B(Oprnd_A[12]), .C(N586), .Y(\____return664[12] )
         );
    xor3b3 I178 ( .A(N6531), .B(Oprnd_A[14]), .C(N459), .Y(\n684[14] ) );
    or2c1 U110 ( .A(Oprnd_A[14]), .B(N6531), .Y(N549) );
    ao1f2 U2100 ( .A(N546), .B(N543), .C(N645), .Y(N559) );
    and2c3 U36 ( .A(N550), .B(N614), .Y(N475) );
    and2c3 U41 ( .A(N6531), .B(Oprnd_A[14]), .Y(N550) );
    or2c2 U51 ( .A(Oprnd_A[12]), .B(N764), .Y(N645) );
    and2c6 U61 ( .A(Oprnd_A[12]), .B(N764), .Y(N546) );
    and2c3 U71 ( .A(N785), .B(Oprnd_A[13]), .Y(N614) );
    or2c2 U81 ( .A(Oprnd_A[10]), .B(N6491), .Y(N542) );
    inv1a3 U111 ( .A(Oprnd_B[0]), .Y(N588) );
    oa1f3 U131 ( .A(N555), .B(N321), .C(N556), .Y(N616) );
    oa1f3 U151 ( .A(N553), .B(N319), .C(N555), .Y(N257) );
    oa1f3 U161 ( .A(N556), .B(N3231), .C(N558), .Y(N265) );
    oa1f3 U171 ( .A(N594), .B(N596), .C(N595), .Y(N571) );
    and2c3 U181 ( .A(N35), .B(N331), .Y(N596) );
    and2c6 U1910 ( .A(Oprnd_A[4]), .B(N6432), .Y(N27) );
    xor3b3 U2010 ( .A(Oprnd_A[10]), .B(N6491), .C(N455), .Y(
        \____return664[10] ) );
    oa1f3 U2110 ( .A(N519), .B(N578), .C(N634), .Y(N455) );
    oa1f3 U2310 ( .A(N487), .B(N615), .C(N280), .Y(N454) );
    ao1f2 U2410 ( .A(N626), .B(N652), .C(N571), .Y(N280) );
    ao1f2 U2510 ( .A(N654), .B(N639), .C(N257), .Y(N279) );
    oa1f3 U2610 ( .A(N646), .B(N315), .C(N625), .Y(N654) );
    inv1a3 U37 ( .A(Oprnd_B[1]), .Y(N4) );
    hacs3a3 I14 ( .A(Oprnd_A[1]), .CSIN(N285), .S(\____return746[1] ), .CO(
        N222) );
    hacs3a3 I23 ( .A(Oprnd_A[2]), .CSIN(N19), .S(\____return746[2] ), .CO(N224
        ) );
    hacs3a3 I32 ( .A(Oprnd_A[3]), .CSIN(N306), .S(\____return746[3] ), .CO(
        N226) );
    hacs3a3 I41 ( .A(Oprnd_A[4]), .CSIN(N366), .S(\____return746[4] ), .CO(
        N228) );
    hacs3a3 I50 ( .A(Oprnd_A[5]), .CSIN(N59), .S(\____return746[5] ), .CO(N230
        ) );
    hacs3a3 I59 ( .A(Oprnd_A[6]), .CSIN(N71), .S(\____return746[6] ), .CO(N232
        ) );
    hacs3a3 I68 ( .A(Oprnd_A[7]), .CSIN(N83), .S(\____return746[7] ), .CO(N234
        ) );
    hacs3a3 I77 ( .A(Oprnd_A[8]), .CSIN(N334), .S(\____return746[8] ), .CO(
        N236) );
    hacs3a3 I89 ( .A(Oprnd_A[9]), .CSIN(n4), .S(\____return746[9] ), .CO(N238)
         );
    hacs3a3 I101 ( .A(Oprnd_A[10]), .CSIN(n5), .S(\____return746[10] ), .CO(
        N240) );
    hacs3a3 I113 ( .A(Oprnd_A[11]), .CSIN(n6), .S(\____return746[11] ), .CO(
        N242) );
    hacs3a2 I125 ( .A(Oprnd_A[12]), .CSIN(n7), .S(\____return746[12] ), .CO(
        N323) );
    hacs3a2 I137 ( .A(Oprnd_A[13]), .CSIN(n8), .S(\____return746[13] ), .CO(
        N327) );
    and2c3 I139 ( .A(N327), .B(N323), .Y(N353) );
    hacs3a2 I149 ( .A(Oprnd_A[14]), .CSIN(n9), .S(\n748[14] ), .CO(N191) );
    hacs3a2 I161 ( .A(Oprnd_A[15]), .CSIN(n10), .S(\____return746[15] ) );
    or2c1 U1 ( .A(N349), .B(N352), .Y(N368) );
    and2c3 U2 ( .A(N240), .B(N238), .Y(N349) );
    or2c1 U3 ( .A(N352), .B(N355), .Y(N370) );
    and2c3 U4 ( .A(N323), .B(N242), .Y(N352) );
    or2c1 U6 ( .A(N361), .B(N350), .Y(N367) );
    and2c3 U7 ( .A(N238), .B(N236), .Y(N361) );
    and2c3 U8 ( .A(N242), .B(N240), .Y(N350) );
    and2c3 U13 ( .A(N368), .B(N309), .Y(N325) );
    and2c3 U15 ( .A(N370), .B(N336), .Y(N330) );
    and2c3 U18 ( .A(N69), .B(n1565), .Y(N71) );
    inv1a3 U20 ( .A(N33), .Y(N306) );
    and2c3 U21 ( .A(N336), .B(N81), .Y(N316) );
    inv1a3 U22 ( .A(N258), .Y(N285) );
    and2c3 U23 ( .A(N309), .B(N57), .Y(N310) );
    inv1a3 U25 ( .A(N358), .Y(N366) );
    and2a2 U28 ( .A(N285), .B(N310), .Y(n4) );
    and2a2 U30 ( .A(N306), .B(N316), .Y(n6) );
    and2a2 U31 ( .A(N366), .B(N338), .Y(n7) );
    and2a2 U32 ( .A(N325), .B(N59), .Y(n8) );
    and2a2 U34 ( .A(N330), .B(N83), .Y(n10) );
    mx2a1 U600 ( .D0(n1584), .D1(n1285), .S(Oprnd_A[14]), .Y(n1553) );
    mx2a1 U602 ( .D0(n1584), .D1(n1285), .S(Oprnd_A[12]), .Y(n1554) );
    xor3b3 U603 ( .A(N615), .B(Oprnd_A[1]), .C(N4), .Y(n1555) );
    xor2b2 U604 ( .A(Oprnd_A[0]), .B(N588), .Y(n1556) );
    ao4e3 U605 ( .A(n1590), .B(n1515), .C(n1235), .D(n1556), .Y(n1484) );
    and6a3 U606 ( .A(N362), .B(N162), .C(N94), .D(n1560), .E(N429), .F(N424), 
        .Y(N4321) );
    inv1a1 U607 ( .A(Oprnd_A[13]), .Y(N424) );
    xor3b3 U608 ( .A(Oprnd_A[8]), .B(Oprnd_B[8]), .C(N720), .Y(n1567) );
    and2a3 U609 ( .A(n1586), .B(\____return819[10] ), .Y(n1243) );
    oa4e3 U611 ( .A(\____return769[4] ), .B(n1230), .C(n1500), .D(\ARG622[4] ), 
        .Y(n1178) );
    oa4d1 U616 ( .A(\ARG622[5] ), .B(n1215), .C(\____return769[5] ), .D(n1230), 
        .Y(n1160) );
    oa4b2 U617 ( .A(\____return769[3] ), .B(n1230), .C(n1215), .D(n1583), .Y(
        n1167) );
    oa1e3 U618 ( .A(N4131), .B(n1572), .C(N713), .Y(N8061) );
    xor2b2 U619 ( .A(N422), .B(Oprnd_A[13]), .Y(n1573) );
    xor3a1 U620 ( .A(Oprnd_A[4]), .B(Oprnd_B[4]), .C(N705), .Y(n1602) );
    xor2b2 U621 ( .A(N362), .B(Oprnd_A[3]), .Y(n1583) );
    and3a6 U624 ( .A(ALU_OP[4]), .B(ALU_OP[3]), .C(n1273), .Y(n1584) );
    ao1a9 U625 ( .A(n1276), .B(n1206), .C(n1289), .Y(n1351) );
    ao4e3 U626 ( .A(n1592), .B(n1515), .C(n1235), .D(n1557), .Y(n1415) );
    inv1a1 U627 ( .A(\____return664[2] ), .Y(n1557) );
    ao4f3 U628 ( .A(n1246), .B(n1602), .C(n1558), .D(n1235), .Y(n1481) );
    inv1a1 U629 ( .A(\____return664[4] ), .Y(n1558) );
    ao1f2 U630 ( .A(n1235), .B(n1555), .C(n1402), .Y(n1401) );
    and3a1 U631 ( .A(n1152), .B(\____return819[1] ), .C(n1277), .Y(n1202) );
    ao4e3 U632 ( .A(n1215), .B(\ARG622[1] ), .C(n1246), .D(n1575), .Y(n1405)
         );
    ao1d2 U633 ( .A(n1568), .B(\____return664[7] ), .C(n1409), .Y(n1408) );
    xor3a1 U634 ( .A(Oprnd_A[5]), .B(Oprnd_B[5]), .C(N706), .Y(n1594) );
    and4a3 U635 ( .A(N353), .B(N350), .C(N71), .D(n1559), .Y(n9) );
    inv1a1 U636 ( .A(N347), .Y(n1559) );
    and3d2 U637 ( .A(N347), .B(N69), .C(n1565), .Y(n5) );
    mx2d1 U638 ( .D0(N240), .D1(Oprnd_A[10]), .S(N4101), .Y(\ARG622[10] ) );
    and3a2 U639 ( .A(N124), .B(N64), .C(\ARG622[0] ), .Y(N407) );
    and3a1 U640 ( .A(N362), .B(N162), .C(N94), .Y(N4121) );
    mx2d3 U641 ( .D0(N242), .D1(Oprnd_A[11]), .S(N4121), .Y(\ARG622[11] ) );
    inv1a1 U642 ( .A(N384), .Y(n1560) );
    inv1a1 U643 ( .A(Oprnd_A[14]), .Y(N429) );
    or2c3 U644 ( .A(\____return819[8] ), .B(n1586), .Y(n1479) );
    or2c1 U645 ( .A(n1515), .B(\____return714[3] ), .Y(n1423) );
    and3a2 U646 ( .A(ALU_OP[4]), .B(n1156), .C(n1561), .Y(n1155) );
    inv1a1 U647 ( .A(ALU_OP[1]), .Y(n1561) );
    oa2a3 U648 ( .A(n1246), .B(n1601), .C(n1492), .D(n1495), .Y(n1194) );
    and2a1 U649 ( .A(n1586), .B(\____return819[2] ), .Y(n1210) );
    oa1f3 U650 ( .A(n1500), .B(\ARG622[11] ), .C(n1562), .Y(n1445) );
    inv1a1 U651 ( .A(n1446), .Y(n1562) );
    oa1f3 U652 ( .A(n1500), .B(\ARG622[12] ), .C(n1554), .Y(n1492) );
    oa1f3 U653 ( .A(n1500), .B(\ARG622[14] ), .C(n1553), .Y(n1453) );
    and2a3 U654 ( .A(n1586), .B(\____return819[3] ), .Y(n1212) );
    ao4b3 U655 ( .A(n1230), .B(\____return769[10] ), .C(n1568), .D(
        \____return664[10] ), .Y(n1498) );
    ao1f2 U656 ( .A(n1215), .B(n1573), .C(n1462), .Y(n1563) );
    inv1a1 U657 ( .A(n1563), .Y(n1461) );
    ao1a9 U658 ( .A(n1279), .B(n1276), .C(n1207), .Y(n1353) );
    or2c6 U659 ( .A(N514), .B(N5161), .Y(N798) );
    ao1f3 U660 ( .A(N5721), .B(N611), .C(N251), .Y(N5761) );
    ao1f3 U661 ( .A(N396), .B(N239), .C(N243), .Y(N485) );
    or2c1 U663 ( .A(\ARG622[7] ), .B(n1500), .Y(n1412) );
    and4a3 U664 ( .A(n1587), .B(n1506), .C(n1507), .D(n1570), .Y(n1190) );
    and3d3 U665 ( .A(n1403), .B(n1202), .C(n1401), .Y(n1185) );
    and2c3 U666 ( .A(N5811), .B(N612), .Y(N410) );
    ao1f3 U667 ( .A(N612), .B(N251), .C(N255), .Y(N5461) );
    and2c1 U668 ( .A(N191), .B(N327), .Y(N355) );
    and2c3 U669 ( .A(N6761), .B(N3241), .Y(N4391) );
    buf1a3 U670 ( .A(N342), .Y(N776) );
    or2c1 U671 ( .A(N382), .B(N4083), .Y(N426) );
    oa1a3 U672 ( .A(N4471), .B(n1564), .C(N5232), .Y(n1572) );
    or2c3 U673 ( .A(N4452), .B(N4391), .Y(N4471) );
    ao1f2 U674 ( .A(N611), .B(N5721), .C(N251), .Y(n57) );
    ao1f2 U675 ( .A(N529), .B(N6341), .C(N5381), .Y(N363) );
    oa1f3 U676 ( .A(N6421), .B(N3271), .C(N6351), .Y(N509) );
    or2c3 U677 ( .A(Oprnd_B[0]), .B(Oprnd_A[0]), .Y(n1564) );
    clk1b3 U678 ( .A(n1564), .Y(N7921) );
    or2c1 U679 ( .A(N285), .B(N31), .Y(N33) );
    ao1f2 U680 ( .A(N34), .B(N656), .C(N2641), .Y(N768) );
    or2c1 U681 ( .A(N3101), .B(N2921), .Y(N439) );
    or2a2 U682 ( .A(N258), .B(N222), .Y(n1565) );
    inv1a3 U683 ( .A(n1565), .Y(N19) );
    inv1a6 U684 ( .A(Oprnd_A[0]), .Y(N258) );
    or2c3 U685 ( .A(\n684[14] ), .B(n1568), .Y(n1452) );
    oa1f3 U686 ( .A(N485), .B(n11), .C(n57), .Y(N490) );
    xor3b3 U687 ( .A(Oprnd_A[7]), .B(N6462), .C(n1577), .Y(n1576) );
    clk1b6 U688 ( .A(Oprnd_B[7]), .Y(N6462) );
    and3a2 U689 ( .A(n1456), .B(n1453), .C(n1457), .Y(n1186) );
    or2c1 U690 ( .A(\____return769[2] ), .B(n1424), .Y(n1420) );
    or2c1 U691 ( .A(\ARG622[2] ), .B(n1500), .Y(n1419) );
    xor3b3 U693 ( .A(Oprnd_A[4]), .B(N6432), .C(N654), .Y(\____return664[4] )
         );
    and2a3 U694 ( .A(n1586), .B(\____return819[5] ), .Y(n1566) );
    ao1d2 U695 ( .A(\____return746[6] ), .B(n1585), .C(n1402), .Y(n1425) );
    or2c1 U696 ( .A(\____return769[6] ), .B(n1424), .Y(n1431) );
    inv1a3 U697 ( .A(n1230), .Y(n1424) );
    or2c1 U698 ( .A(\ARG622[6] ), .B(n1500), .Y(n1430) );
    or2c3 U699 ( .A(\____return746[8] ), .B(n1585), .Y(n1475) );
    inv1a6 U700 ( .A(Oprnd_B[8]), .Y(N528) );
    inv1a1 U701 ( .A(\____return819[9] ), .Y(n1224) );
    or2c1 U703 ( .A(\ARG622[9] ), .B(n1500), .Y(n1440) );
    or2c3 U704 ( .A(\____return769[9] ), .B(n1424), .Y(n1441) );
    and2a3 U705 ( .A(n1278), .B(n1152), .Y(n1568) );
    clk1b6 U706 ( .A(n1568), .Y(n1235) );
    inv1a1 U707 ( .A(n1206), .Y(n1278) );
    or2c3 U708 ( .A(\____return769[11] ), .B(n1424), .Y(n1449) );
    or2c3 U709 ( .A(\____return664[12] ), .B(n1568), .Y(n1491) );
    or2c3 U711 ( .A(\____return746[15] ), .B(n1585), .Y(n1472) );
    xor3b3 U712 ( .A(Oprnd_A[15]), .B(Oprnd_B[15]), .C(N6101), .Y(n1600) );
    ao1d2 U716 ( .A(\____return769[1] ), .B(n1424), .C(n1404), .Y(n1403) );
    ao1d2 U717 ( .A(\____return746[3] ), .B(n1585), .C(n1402), .Y(n1421) );
    and2a3 U718 ( .A(n1586), .B(\____return819[7] ), .Y(n1569) );
    ao1d2 U719 ( .A(\____return746[7] ), .B(n1585), .C(n1402), .Y(n1407) );
    or2c3 U720 ( .A(\____return769[7] ), .B(n1424), .Y(n1413) );
    clk1b6 U721 ( .A(n1246), .Y(n1515) );
    clk1b6 U723 ( .A(n1285), .Y(n1337) );
    and3a2 U724 ( .A(n1177), .B(n1178), .C(n1179), .Y(n1570) );
    clk1b3 U725 ( .A(n1570), .Y(\Op_Result[4] ) );
    and3d3 U726 ( .A(n1481), .B(n1239), .C(n1480), .Y(n1179) );
    and2a3 U727 ( .A(n1175), .B(n1176), .Y(n1571) );
    inv1a3 U728 ( .A(n1571), .Y(n1525) );
    or2c3 U729 ( .A(N423), .B(N4561), .Y(N647) );
    and2c3 U730 ( .A(N3511), .B(N780), .Y(N467) );
    or2c1 U731 ( .A(Oprnd_A[13]), .B(N785), .Y(N547) );
    or2c3 U732 ( .A(Oprnd_A[12]), .B(N764), .Y(N765) );
    and2c3 U733 ( .A(N224), .B(N222), .Y(N31) );
    ao1f3 U734 ( .A(N689), .B(N335), .C(N3382), .Y(N7961) );
    and2c6 U735 ( .A(N6831), .B(N680), .Y(N4452) );
    ao1f2 U736 ( .A(N5811), .B(N255), .C(N259), .Y(N6281) );
    ao1f2 U737 ( .A(N780), .B(N344), .C(N779), .Y(N7671) );
    ao1f3 U738 ( .A(N680), .B(N6741), .C(N329), .Y(N5782) );
    and2c3 U739 ( .A(N780), .B(N7771), .Y(N463) );
    ao1f2 U740 ( .A(N37), .B(N620), .C(N541), .Y(N556) );
    and2c3 U742 ( .A(N37), .B(N35), .Y(N321) );
    and2c3 U743 ( .A(Oprnd_A[9]), .B(N6481), .Y(N37) );
    clk1a3 U744 ( .A(N264), .Y(N613) );
    ao1f2 U745 ( .A(N616), .B(N640), .C(N603), .Y(N585) );
    ao1f2 U746 ( .A(N800), .B(N849), .C(N7701), .Y(N713) );
    and2c3 U747 ( .A(N849), .B(N848), .Y(N4131) );
    and2c6 U748 ( .A(N611), .B(N574), .Y(n11) );
    buf1a6 U749 ( .A(N252), .Y(N611) );
    ao1f3 U750 ( .A(N450), .B(N738), .C(N5911), .Y(N7951) );
    or2c3 U752 ( .A(Oprnd_A[7]), .B(N6462), .Y(N215) );
    ao1f2 U753 ( .A(N331), .B(N540), .C(N215), .Y(N555) );
    ao1f2 U754 ( .A(N29), .B(N212), .C(N213), .Y(N553) );
    and2c6 U755 ( .A(Oprnd_A[7]), .B(N6462), .Y(N331) );
    and2c3 U756 ( .A(N345), .B(N358), .Y(N334) );
    or2c1 U757 ( .A(N359), .B(N67), .Y(N345) );
    ao1f2 U758 ( .A(n12), .B(N446), .C(N6141), .Y(N6151) );
    ao1f2 U759 ( .A(N771), .B(N6311), .C(N773), .Y(N708) );
    oa1f3 U760 ( .A(N768), .B(N393), .C(N677), .Y(N773) );
    oa1f3 U761 ( .A(N5861), .B(N564), .C(N351), .Y(N587) );
    ao1f2 U762 ( .A(N490), .B(N5591), .C(N5501), .Y(N351) );
    ao1f3 U763 ( .A(N790), .B(N792), .C(N5971), .Y(N418) );
    oa1f3 U764 ( .A(N676), .B(N767), .C(N768), .Y(N790) );
    and2c3 U765 ( .A(N36), .B(N34), .Y(N4271) );
    ao1f2 U766 ( .A(N573), .B(N630), .C(N576), .Y(N415) );
    oa1f3 U767 ( .A(N595), .B(N597), .C(N557), .Y(N573) );
    ao1f2 U768 ( .A(N296), .B(N263), .C(N295), .Y(N6301) );
    and2c3 U769 ( .A(N302), .B(N299), .Y(N423) );
    and2c3 U770 ( .A(N296), .B(N613), .Y(N416) );
    and2c3 U772 ( .A(N396), .B(N2401), .Y(N397) );
    clk1a3 U773 ( .A(N244), .Y(N396) );
    and2c3 U774 ( .A(N81), .B(N33), .Y(N83) );
    or2c1 U775 ( .A(N55), .B(N79), .Y(N81) );
    and2c3 U776 ( .A(N34), .B(N32), .Y(N676) );
    and2c6 U777 ( .A(Oprnd_A[5]), .B(N6442), .Y(N29) );
    or2c3 U778 ( .A(Oprnd_A[1]), .B(N4), .Y(N537) );
    and2c3 U779 ( .A(N23), .B(N538), .Y(N314) );
    ao1f2 U780 ( .A(N6291), .B(N569), .C(N529), .Y(n47) );
    or2c3 U782 ( .A(n11), .B(N410), .Y(N6291) );
    or2c3 U783 ( .A(N271), .B(N2741), .Y(N3952) );
    or2c3 U784 ( .A(N277), .B(N2801), .Y(N3992) );
    ao1f2 U785 ( .A(N408), .B(N572), .C(N616), .Y(N634) );
    oa1f3 U786 ( .A(N581), .B(N642), .C(N585), .Y(N459) );
    and2c3 U787 ( .A(N438), .B(N426), .Y(N4272) );
    oa1f3 U788 ( .A(N276), .B(N635), .C(N584), .Y(N458) );
    mx2a1 U789 ( .D0(n1516), .D1(n1517), .S(Oprnd_B[2]), .Y(n1348) );
    oa1f3 U790 ( .A(N2241), .B(N3161), .C(N402), .Y(N626) );
    ao1f3 U791 ( .A(N651), .B(N536), .C(N626), .Y(N276) );
    or2c3 U792 ( .A(N397), .B(n11), .Y(N403) );
    and2c3 U793 ( .A(N3992), .B(N3952), .Y(N64) );
    ao1f2 U794 ( .A(N627), .B(N650), .C(N408), .Y(N581) );
    or2b2 U795 ( .A(N794), .B(N4451), .Y(N438) );
    or2c1 U796 ( .A(N317), .B(N319), .Y(N639) );
    mx2a1 U797 ( .D0(n1353), .D1(n1516), .S(Oprnd_A[8]), .Y(n1384) );
    xor3b3 U798 ( .A(Oprnd_A[9]), .B(Oprnd_B[9]), .C(N808), .Y(n1574) );
    oa1f3 U799 ( .A(N807), .B(N674), .C(N708), .Y(N808) );
    inv1a6 U800 ( .A(Oprnd_B[9]), .Y(N6481) );
    inv1a1 U801 ( .A(N789), .Y(N704) );
    oa1f3 U802 ( .A(N6021), .B(N704), .C(N418), .Y(N782) );
    oa1f3 U803 ( .A(N615), .B(N314), .C(N2241), .Y(N637) );
    mx2a1 U804 ( .D0(n1353), .D1(n1516), .S(Oprnd_A[11]), .Y(n1370) );
    and2c3 U805 ( .A(N4511), .B(N4161), .Y(N4171) );
    xor3b3 U806 ( .A(Oprnd_B[15]), .B(Oprnd_A[15]), .C(N460), .Y(n1599) );
    oa1f3 U807 ( .A(N278), .B(N292), .C(N415), .Y(N460) );
    xor3b3 U808 ( .A(Oprnd_A[1]), .B(Oprnd_B[1]), .C(N809), .Y(n1575) );
    oa1f3 U809 ( .A(N397), .B(N564), .C(N485), .Y(N569) );
    ao1f2 U810 ( .A(N789), .B(N802), .C(N790), .Y(n1577) );
    and2c3 U811 ( .A(N436), .B(N3952), .Y(N362) );
    mx2a1 U814 ( .D0(n1516), .D1(n1517), .S(Oprnd_B[7]), .Y(n1344) );
    mx2a1 U815 ( .D0(n1353), .D1(n1351), .S(Oprnd_B[7]), .Y(n1346) );
    ao1f2 U816 ( .A(n1511), .B(n1584), .C(n1282), .Y(n1301) );
    inv1a3 U817 ( .A(n1289), .Y(n1511) );
    and2c6 U818 ( .A(ALU_OP[5]), .B(ALU_OP[3]), .Y(n1156) );
    and2a3 U819 ( .A(n1275), .B(n1156), .Y(n1152) );
    inv1a3 U820 ( .A(ALU_OP[1]), .Y(n1268) );
    and2a6 U821 ( .A(n1424), .B(\____return769[13] ), .Y(n1229) );
    ao1e3 U822 ( .A(n1203), .B(\____return819[13] ), .C(n1460), .Y(n1459) );
    or2b1 U823 ( .A(n1337), .B(n1578), .Y(n1389) );
    mx2d3 U824 ( .D0(n1516), .D1(n1517), .S(Oprnd_B[0]), .Y(n1578) );
    ao1f2 U825 ( .A(n1579), .B(n1281), .C(n1402), .Y(n1414) );
    inv1a1 U826 ( .A(\____return746[2] ), .Y(n1579) );
    ao1f2 U827 ( .A(n1580), .B(n1281), .C(n1402), .Y(n1480) );
    inv1a1 U828 ( .A(\____return746[4] ), .Y(n1580) );
    or2b2 U829 ( .A(\____return819[4] ), .B(n1203), .Y(n1581) );
    inv1a1 U830 ( .A(n1581), .Y(n1239) );
    inv1a1 U832 ( .A(N654), .Y(N633) );
    or2c3 U833 ( .A(n1153), .B(n1278), .Y(n1215) );
    inv1a6 U834 ( .A(n1215), .Y(n1500) );
    ao1f2 U835 ( .A(n1582), .B(n1281), .C(n1402), .Y(n1432) );
    inv1a1 U836 ( .A(\____return746[5] ), .Y(n1582) );
    inv1a6 U837 ( .A(n1586), .Y(n1203) );
    or2c3 U838 ( .A(n1358), .B(n1337), .Y(n1357) );
    and2c3 U839 ( .A(n1203), .B(n1224), .Y(n1223) );
    mx2a1 U840 ( .D0(n1341), .D1(n1342), .S(Oprnd_B[9]), .Y(n1438) );
    or2c3 U841 ( .A(n1368), .B(n1342), .Y(n1367) );
    clk1b6 U842 ( .A(Oprnd_B[12]), .Y(N764) );
    or2c3 U843 ( .A(n1382), .B(n1337), .Y(n1381) );
    or2c1 U844 ( .A(\____return746[1] ), .B(n1585), .Y(n1404) );
    mx2a1 U845 ( .D0(n1353), .D1(n1351), .S(Oprnd_B[1]), .Y(n1339) );
    ao1b3 U846 ( .A(n1206), .B(n1584), .C(n1205), .Y(n1249) );
    inv1a9 U847 ( .A(n1252), .Y(n1342) );
    clk1b6 U848 ( .A(n1584), .Y(n1271) );
    and2c3 U849 ( .A(n1249), .B(n1250), .Y(n1248) );
    or2c1 U850 ( .A(n1346), .B(n1271), .Y(n1345) );
    and2a3 U851 ( .A(n1153), .B(n1282), .Y(n1585) );
    clk1b6 U852 ( .A(n1585), .Y(n1281) );
    and2a3 U853 ( .A(n1277), .B(n1152), .Y(n1586) );
    and2a3 U854 ( .A(n1186), .B(n1187), .Y(n1587) );
    inv1a3 U855 ( .A(n1587), .Y(n1526) );
    and2a3 U856 ( .A(n1169), .B(n1170), .Y(n1588) );
    inv1a3 U857 ( .A(n1588), .Y(n1527) );
    and2a3 U858 ( .A(n1173), .B(n1174), .Y(n1589) );
    clk1b3 U859 ( .A(n1589), .Y(n1524) );
    and4a3 U860 ( .A(n1438), .B(n1439), .C(n1440), .D(n1441), .Y(n1173) );
    and4a3 U861 ( .A(n1469), .B(n1470), .C(n1471), .D(n1472), .Y(n1200) );
    and2c3 U862 ( .A(n1405), .B(n1340), .Y(n1183) );
    and4a3 U863 ( .A(n1410), .B(n1411), .C(n1412), .D(n1413), .Y(n1171) );
    oa1f3 U864 ( .A(\ARG622[10] ), .B(n1500), .C(n1245), .Y(n1197) );
    inv1a3 U865 ( .A(Oprnd_B[14]), .Y(N6531) );
    and2c3 U866 ( .A(N783), .B(N3511), .Y(N470) );
    oa1f3 U867 ( .A(N7671), .B(N470), .C(N7691), .Y(N836) );
    oa1f3 U868 ( .A(N7991), .B(N467), .C(N8041), .Y(N834) );
    clk1a6 U869 ( .A(N3451), .Y(N7771) );
    and2c3 U870 ( .A(N236), .B(N234), .Y(N360) );
    clk1a3 U871 ( .A(N339), .Y(N689) );
    and2c6 U872 ( .A(N776), .B(N689), .Y(N5161) );
    or2c3 U873 ( .A(Oprnd_A[8]), .B(N528), .Y(N752) );
    or2c3 U874 ( .A(Oprnd_A[7]), .B(N6462), .Y(N657) );
    ao1f2 U875 ( .A(N7771), .B(N3411), .C(N344), .Y(N7991) );
    oa1f3 U876 ( .A(N7961), .B(n67), .C(N7991), .Y(N800) );
    and2c3 U877 ( .A(Oprnd_A[9]), .B(N6481), .Y(N40) );
    and2c6 U878 ( .A(N680), .B(N6761), .Y(N493) );
    and2c3 U879 ( .A(N226), .B(N224), .Y(N43) );
    and2c3 U880 ( .A(N230), .B(N228), .Y(N67) );
    and2c3 U881 ( .A(N234), .B(N232), .Y(N359) );
    or2c1 U882 ( .A(N79), .B(N360), .Y(N309) );
    or2c3 U883 ( .A(N410), .B(N416), .Y(N5591) );
    and2c3 U884 ( .A(N367), .B(N345), .Y(N338) );
    or2c3 U885 ( .A(N470), .B(N463), .Y(N846) );
    or2c3 U886 ( .A(N5781), .B(N445), .Y(N446) );
    ao1f3 U887 ( .A(N36), .B(N2641), .C(N657), .Y(N489) );
    ao1f3 U888 ( .A(N32), .B(N262), .C(N656), .Y(N4881) );
    oa1f3 U889 ( .A(N4881), .B(N4271), .C(N489), .Y(N791) );
    ao1f3 U890 ( .A(N776), .B(N3382), .C(N3411), .Y(N831) );
    oa1f3 U891 ( .A(N831), .B(N463), .C(N7671), .Y(N8021) );
    or2c3 U892 ( .A(N470), .B(N480), .Y(N7191) );
    ao1f3 U893 ( .A(N686), .B(N332), .C(N335), .Y(N827) );
    and2c6 U894 ( .A(N686), .B(N6831), .Y(N514) );
    oa1f3 U895 ( .A(N514), .B(N5782), .C(N827), .Y(N5911) );
    ao1f2 U896 ( .A(N544), .B(N542), .C(N543), .Y(N558) );
    and2c3 U897 ( .A(N544), .B(N39), .Y(N3231) );
    and2c6 U898 ( .A(Oprnd_A[11]), .B(N6502), .Y(N544) );
    and2c6 U899 ( .A(Oprnd_A[10]), .B(N6491), .Y(N39) );
    oa1f3 U900 ( .A(N5301), .B(N449), .C(N6461), .Y(N631) );
    ao1f3 U901 ( .A(N613), .B(N259), .C(N263), .Y(N5301) );
    and2c3 U902 ( .A(N299), .B(N296), .Y(N449) );
    oa1f3 U903 ( .A(N5241), .B(N5781), .C(N5461), .Y(N579) );
    and2c3 U904 ( .A(Oprnd_A[12]), .B(N764), .Y(N666) );
    or2c3 U905 ( .A(N500), .B(N467), .Y(N845) );
    oa1f3 U906 ( .A(N559), .B(N475), .C(N561), .Y(N576) );
    and2c3 U907 ( .A(N546), .B(N544), .Y(N324) );
    or2c3 U908 ( .A(N349), .B(N360), .Y(N336) );
    ao1f3 U909 ( .A(N659), .B(N657), .C(N752), .Y(N677) );
    and2c3 U910 ( .A(N232), .B(N230), .Y(N79) );
    and2c6 U911 ( .A(N228), .B(N226), .Y(N55) );
    and2c6 U913 ( .A(N689), .B(N686), .Y(N4521) );
    and2c6 U914 ( .A(Oprnd_A[3]), .B(N6422), .Y(N28) );
    or2c3 U915 ( .A(N5161), .B(N463), .Y(N699) );
    or2c3 U916 ( .A(N493), .B(N514), .Y(N450) );
    and2c6 U917 ( .A(Oprnd_A[8]), .B(N528), .Y(N35) );
    or2c3 U918 ( .A(N445), .B(N449), .Y(N421) );
    or2c1 U919 ( .A(N359), .B(N361), .Y(N347) );
    oa1f3 U920 ( .A(N489), .B(N746), .C(N678), .Y(N803) );
    and2c3 U921 ( .A(N40), .B(N659), .Y(N746) );
    oa1f3 U922 ( .A(N4871), .B(N390), .C(N4881), .Y(N772) );
    or2c3 U923 ( .A(N388), .B(N390), .Y(N691) );
    or2c3 U924 ( .A(N398), .B(N3951), .Y(N804) );
    or2c1 U925 ( .A(N3521), .B(N124), .Y(N4211) );
    inv1a3 U926 ( .A(N436), .Y(N391) );
    or2c3 U927 ( .A(N31), .B(N55), .Y(N57) );
    and2c3 U928 ( .A(N57), .B(N391), .Y(N59) );
    or2c3 U929 ( .A(Oprnd_A[0]), .B(Oprnd_B[0]), .Y(N235) );
    or2c3 U930 ( .A(N43), .B(N67), .Y(N69) );
    inv1a1 U932 ( .A(N707), .Y(N719) );
    ao1f3 U933 ( .A(N25), .B(N210), .C(N539), .Y(N625) );
    and2c3 U934 ( .A(N25), .B(N23), .Y(N315) );
    or2c3 U935 ( .A(N2741), .B(N277), .Y(N3961) );
    or2c3 U936 ( .A(N43), .B(N19), .Y(N358) );
    and2c3 U937 ( .A(N6151), .B(N6451), .Y(N5841) );
    and2c3 U938 ( .A(N446), .B(N575), .Y(N6451) );
    or2c3 U939 ( .A(N676), .B(N393), .Y(N6311) );
    ao1f2 U940 ( .A(N39), .B(N541), .C(N542), .Y(N557) );
    ao1f2 U941 ( .A(N35), .B(N215), .C(N620), .Y(N595) );
    and2c3 U942 ( .A(N39), .B(N37), .Y(N597) );
    and2c3 U943 ( .A(N401), .B(N3992), .Y(N94) );
    ao1f2 U944 ( .A(N257), .B(N629), .C(N265), .Y(N412) );
    and2c3 U945 ( .A(N6411), .B(N446), .Y(N6421) );
    ao1f2 U946 ( .A(N6141), .B(N6411), .C(N5961), .Y(N6351) );
    or2c3 U947 ( .A(N746), .B(N428), .Y(N736) );
    or2c1 U948 ( .A(N379), .B(N4031), .Y(N4161) );
    and2c3 U949 ( .A(N439), .B(N378), .Y(N379) );
    and2c3 U950 ( .A(N4021), .B(N400), .Y(N4031) );
    oa1f3 U951 ( .A(N7951), .B(N4191), .C(N7851), .Y(N8071) );
    and2c3 U952 ( .A(N7191), .B(N699), .Y(N4191) );
    ao1f2 U953 ( .A(N8021), .B(N7191), .C(N847), .Y(N7851) );
    inv1a3 U954 ( .A(N7951), .Y(N829) );
    oa1c3 U955 ( .A(N6441), .B(N580), .C(n48), .Y(N5441) );
    ao1f3 U956 ( .A(N4081), .B(N609), .C(N579), .Y(N580) );
    clk1a3 U957 ( .A(N580), .Y(n44) );
    or2c3 U958 ( .A(N4271), .B(N746), .Y(N4082) );
    and2c3 U959 ( .A(N440), .B(N405), .Y(N162) );
    or2c3 U960 ( .A(N240), .B(N3101), .Y(N440) );
    or2c3 U961 ( .A(N2921), .B(N289), .Y(N405) );
    or2c3 U962 ( .A(N419), .B(N242), .Y(N384) );
    or2c3 U963 ( .A(N416), .B(N423), .Y(N6341) );
    or2c3 U964 ( .A(N398), .B(N770), .Y(N775) );
    clk1b6 U965 ( .A(Oprnd_B[2]), .Y(N6412) );
    ao1f3 U966 ( .A(N26), .B(N2591), .C(N2601), .Y(N2761) );
    and2c6 U967 ( .A(Oprnd_A[2]), .B(N6412), .Y(N26) );
    and2c3 U968 ( .A(N26), .B(N24), .Y(N387) );
    ao1f3 U969 ( .A(N30), .B(N261), .C(N262), .Y(N767) );
    or2c3 U970 ( .A(Oprnd_A[6]), .B(N6452), .Y(N540) );
    or2c3 U971 ( .A(Oprnd_A[5]), .B(N6442), .Y(N213) );
    ao1f3 U972 ( .A(N27), .B(N539), .C(N212), .Y(N402) );
    or2c3 U973 ( .A(Oprnd_A[3]), .B(N523), .Y(N539) );
    or2c3 U974 ( .A(Oprnd_A[4]), .B(N6432), .Y(N212) );
    and2c3 U975 ( .A(N311), .B(N29), .Y(N554) );
    and2c6 U976 ( .A(Oprnd_A[6]), .B(N6452), .Y(N311) );
    inv1a9 U977 ( .A(Oprnd_B[6]), .Y(N6452) );
    and2c6 U978 ( .A(Oprnd_A[3]), .B(N523), .Y(N25) );
    inv1a3 U979 ( .A(Oprnd_B[3]), .Y(N523) );
    or2c3 U980 ( .A(Oprnd_A[2]), .B(N6412), .Y(N210) );
    ao1f3 U981 ( .A(N23), .B(N537), .C(N210), .Y(N2241) );
    and2c3 U982 ( .A(Oprnd_A[1]), .B(N4), .Y(N538) );
    and2c6 U983 ( .A(Oprnd_A[2]), .B(N6412), .Y(N23) );
    or2c3 U984 ( .A(N286), .B(N230), .Y(N401) );
    oa1f3 U985 ( .A(N386), .B(N799), .C(N274), .Y(N97) );
    ao1f2 U986 ( .A(N24), .B(N258), .C(N2591), .Y(N274) );
    and2a3 U987 ( .A(ALU_OP[4]), .B(ALU_OP[3]), .Y(n1291) );
    oa1f3 U988 ( .A(N706), .B(N777), .C(N6402), .Y(N5382) );
    ao1f3 U989 ( .A(N810), .B(N809), .C(N771), .Y(N706) );
    and2c3 U990 ( .A(N804), .B(N6311), .Y(N777) );
    ao1f2 U991 ( .A(N773), .B(N804), .C(N432), .Y(N6402) );
    mx2a1 U992 ( .D0(n1351), .D1(n1517), .S(Oprnd_A[13]), .Y(n1376) );
    mx2a1 U993 ( .D0(n1353), .D1(n1516), .S(Oprnd_A[13]), .Y(n1378) );
    mx2a1 U994 ( .D0(n1353), .D1(n1351), .S(Oprnd_B[2]), .Y(n1350) );
    mx2d3 U995 ( .D0(n1351), .D1(n1517), .S(Oprnd_A[4]), .Y(n1261) );
    ao1e3 U996 ( .A(n1155), .B(n1207), .C(n1282), .Y(n1352) );
    ao1d2 U997 ( .A(n46), .B(N564), .C(N490), .Y(n13) );
    or2c3 U998 ( .A(N64), .B(N391), .Y(N671) );
    mx2d3 U999 ( .D0(n1351), .D1(n1517), .S(Oprnd_A[5]), .Y(n1257) );
    oa1f3 U1000 ( .A(N625), .B(N317), .C(N553), .Y(N408) );
    and2c3 U1001 ( .A(N400), .B(N3961), .Y(N794) );
    mx2a1 U1002 ( .D0(n1516), .D1(n1517), .S(Oprnd_B[6]), .Y(n1358) );
    mx2a1 U1003 ( .D0(n1353), .D1(n1351), .S(Oprnd_B[6]), .Y(n1360) );
    and2c3 U1004 ( .A(N4451), .B(N3961), .Y(N3971) );
    or2c1 U1005 ( .A(N4031), .B(N3971), .Y(N404) );
    mx2a1 U1006 ( .D0(n1351), .D1(n1517), .S(Oprnd_A[8]), .Y(n1386) );
    mx2a1 U1007 ( .D0(n1516), .D1(n1517), .S(Oprnd_B[9]), .Y(n1364) );
    ao1c3 U1008 ( .A(n1155), .B(n1511), .C(n1206), .Y(n1354) );
    mx2a1 U1009 ( .D0(n1353), .D1(n1351), .S(Oprnd_B[9]), .Y(n1366) );
    oa1f3 U1010 ( .A(N488), .B(N641), .C(N582), .Y(N456) );
    ao1f2 U1011 ( .A(N568), .B(N628), .C(N573), .Y(N582) );
    mx2a1 U1012 ( .D0(n1351), .D1(n1517), .S(Oprnd_A[11]), .Y(n1368) );
    oa1f3 U1013 ( .A(N583), .B(N633), .C(N412), .Y(N586) );
    mx2a1 U1014 ( .D0(n1351), .D1(n1517), .S(Oprnd_A[12]), .Y(n1395) );
    mx2a1 U1015 ( .D0(n1353), .D1(n1516), .S(Oprnd_A[12]), .Y(n1397) );
    mx2a1 U1016 ( .D0(n1351), .D1(n1517), .S(Oprnd_A[14]), .Y(n1372) );
    mx2a1 U1017 ( .D0(n1353), .D1(n1516), .S(Oprnd_A[14]), .Y(n1374) );
    mx2a1 U1018 ( .D0(n1516), .D1(n1517), .S(Oprnd_B[15]), .Y(n1382) );
    clk1a15 U1019 ( .A(n1352), .Y(n1517) );
    oa1f3 U1020 ( .A(N402), .B(N554), .C(N594), .Y(N568) );
    ao1f3 U1021 ( .A(N637), .B(N638), .C(N568), .Y(N278) );
    and2c1 U1022 ( .A(ALU_OP[4]), .B(n1268), .Y(n1280) );
    or2c1 U1023 ( .A(N4083), .B(N794), .Y(N409) );
    and2c3 U1024 ( .A(ALU_OP[5]), .B(n1268), .Y(n1273) );
    mx2d3 U1025 ( .D0(n1351), .D1(n1517), .S(Oprnd_A[10]), .Y(n1265) );
    ao1e3 U1026 ( .A(n1281), .B(\____return746[13] ), .C(n1402), .Y(n1458) );
    or2c3 U1027 ( .A(n1376), .B(n1342), .Y(n1375) );
    or2c3 U1028 ( .A(n1378), .B(n1341), .Y(n1377) );
    mx2d3 U1029 ( .D0(n1377), .D1(n1375), .S(Oprnd_B[13]), .Y(n1464) );
    clk1b6 U1030 ( .A(n1249), .Y(n1341) );
    or2c3 U1031 ( .A(n1348), .B(n1337), .Y(n1347) );
    or2c1 U1032 ( .A(n1350), .B(n1271), .Y(n1349) );
    mx2a1 U1033 ( .D0(n1341), .D1(n1342), .S(Oprnd_B[2]), .Y(n1417) );
    mx2d3 U1034 ( .D0(n1258), .D1(n1260), .S(Oprnd_B[4]), .Y(n1387) );
    and2c3 U1035 ( .A(n1249), .B(n1259), .Y(n1258) );
    and2c3 U1036 ( .A(n1252), .B(n1261), .Y(n1260) );
    inv1a1 U1037 ( .A(n1276), .Y(n1277) );
    xor3a1 U1038 ( .A(Oprnd_A[5]), .B(N6442), .C(N276), .Y(\____return664[5] )
         );
    ao1e3 U1039 ( .A(n1235), .B(\____return664[5] ), .C(n1434), .Y(n1433) );
    inv1a1 U1040 ( .A(\____return819[6] ), .Y(n1218) );
    and2c3 U1041 ( .A(n1203), .B(n1218), .Y(n1217) );
    ao1e3 U1042 ( .A(n1235), .B(\____return664[6] ), .C(n1427), .Y(n1426) );
    or2c1 U1043 ( .A(n1360), .B(n1271), .Y(n1359) );
    mx2a1 U1044 ( .D0(n1341), .D1(n1342), .S(Oprnd_B[6]), .Y(n1428) );
    ao1e3 U1045 ( .A(n1215), .B(\ARG622[8] ), .C(n1402), .Y(n1473) );
    or2c3 U1046 ( .A(n1386), .B(n1342), .Y(n1385) );
    or2c3 U1047 ( .A(n1384), .B(n1341), .Y(n1383) );
    mx2d3 U1048 ( .D0(n1383), .D1(n1385), .S(Oprnd_B[8]), .Y(n1477) );
    ao1e3 U1049 ( .A(n1281), .B(\____return746[9] ), .C(n1402), .Y(n1435) );
    ao1e3 U1050 ( .A(n1235), .B(\____return664[9] ), .C(n1437), .Y(n1436) );
    or2c3 U1051 ( .A(n1364), .B(n1337), .Y(n1363) );
    or2c1 U1052 ( .A(n1366), .B(n1271), .Y(n1365) );
    ao1e3 U1053 ( .A(n1281), .B(\____return746[11] ), .C(n1402), .Y(n1442) );
    inv1a3 U1054 ( .A(\____return819[11] ), .Y(n1226) );
    and2c3 U1055 ( .A(n1203), .B(n1226), .Y(n1225) );
    xor3b3 U1056 ( .A(Oprnd_A[11]), .B(N6502), .C(N456), .Y(
        \____return664[11] ) );
    ao1e3 U1057 ( .A(n1235), .B(\____return664[11] ), .C(n1444), .Y(n1443) );
    or2c3 U1058 ( .A(n1370), .B(n1341), .Y(n1369) );
    mx2d3 U1059 ( .D0(n1369), .D1(n1367), .S(Oprnd_B[11]), .Y(n1448) );
    ao1e3 U1060 ( .A(n1281), .B(\____return746[12] ), .C(n1402), .Y(n1489) );
    and2c3 U1061 ( .A(n1203), .B(n1238), .Y(n1237) );
    inv1a3 U1062 ( .A(\____return819[12] ), .Y(n1238) );
    or2c3 U1063 ( .A(n1395), .B(n1342), .Y(n1394) );
    or2c3 U1064 ( .A(n1397), .B(n1341), .Y(n1396) );
    mx2d3 U1065 ( .D0(n1396), .D1(n1394), .S(Oprnd_B[12]), .Y(n1495) );
    ao1e3 U1066 ( .A(n1281), .B(\n748[14] ), .C(n1402), .Y(n1450) );
    and2c3 U1067 ( .A(n1203), .B(n1228), .Y(n1227) );
    inv1a3 U1068 ( .A(\____return819[14] ), .Y(n1228) );
    or2c3 U1069 ( .A(n1372), .B(n1342), .Y(n1371) );
    or2c3 U1070 ( .A(n1374), .B(n1341), .Y(n1373) );
    mx2d3 U1071 ( .D0(n1373), .D1(n1371), .S(Oprnd_B[14]), .Y(n1456) );
    ao1e3 U1072 ( .A(n1215), .B(\ARG622[15] ), .C(n1402), .Y(n1466) );
    xor2a2 U1073 ( .A(Oprnd_A[15]), .B(N4321), .Y(\ARG622[15] ) );
    and2c3 U1074 ( .A(n1203), .B(n1233), .Y(n1232) );
    inv1a3 U1075 ( .A(\n821[15] ), .Y(n1233) );
    ao1e3 U1076 ( .A(n1230), .B(\____return769[15] ), .C(n1468), .Y(n1467) );
    xor3b3 U1077 ( .A(Oprnd_A[15]), .B(Oprnd_B[15]), .C(N5231), .Y(
        \____return769[15] ) );
    or2c1 U1078 ( .A(n1380), .B(n1271), .Y(n1379) );
    mx2a1 U1079 ( .D0(n1516), .D1(n1517), .S(Oprnd_B[1]), .Y(n1336) );
    or2c3 U1080 ( .A(n1336), .B(n1337), .Y(n1335) );
    or2c1 U1081 ( .A(n1339), .B(n1271), .Y(n1338) );
    ao1e3 U1082 ( .A(n1235), .B(\____return664[3] ), .C(n1423), .Y(n1422) );
    and2c3 U1083 ( .A(n1252), .B(n1253), .Y(n1251) );
    mx2d3 U1084 ( .D0(n1248), .D1(n1251), .S(Oprnd_B[3]), .Y(n1355) );
    or2c3 U1085 ( .A(n1344), .B(n1337), .Y(n1343) );
    ao1e3 U1086 ( .A(n1281), .B(\____return746[10] ), .C(n1402), .Y(n1497) );
    or2c9 U1087 ( .A(n1154), .B(n1584), .Y(n1402) );
    or2c3 U1088 ( .A(n1152), .B(n1154), .Y(n1246) );
    and2c3 U1089 ( .A(n1246), .B(n1603), .Y(n1245) );
    mx2d3 U1090 ( .D0(n1271), .D1(n1337), .S(Oprnd_A[10]), .Y(n1399) );
    and2c3 U1091 ( .A(n1487), .B(n1393), .Y(n1180) );
    mx2d3 U1092 ( .D0(n1391), .D1(n1389), .S(Oprnd_A[0]), .Y(n1181) );
    oa2i2 U1093 ( .A(\____return819[0] ), .B(n1586), .C(n1483), .D(n1484), .Y(
        n1182) );
    inv1a3 U1094 ( .A(\Op_Result[0] ), .Y(n1507) );
    and2c3 U1095 ( .A(n1387), .B(n1388), .Y(n1177) );
    or2c3 U1096 ( .A(n1194), .B(n1195), .Y(\Op_Result[12] ) );
    mx2d3 U1097 ( .D0(n1338), .D1(n1335), .S(Oprnd_A[1]), .Y(n1184) );
    and2c3 U1098 ( .A(n1398), .B(n1399), .Y(n1196) );
    inv1a3 U1099 ( .A(Oprnd_B[3]), .Y(N6422) );
    inv1a6 U1100 ( .A(Oprnd_B[10]), .Y(N6491) );
    inv1a3 U1101 ( .A(Oprnd_B[0]), .Y(N799) );
    fdesf1a3 \Lachd_Result_reg[14]  ( .D0(n1526), .D1(Lachd_Result[14]), .S(
        1'b0), .E(Latch_Result), .CLK(CTS_in_c), .Q(Lachd_Result[14]) );
    xor2b2 U1102 ( .A(Oprnd_A[0]), .B(Oprnd_B[0]), .Y(n1590) );
    xor3b1 U1103 ( .A(Oprnd_A[8]), .B(N528), .C(N279), .Y(n1591) );
    xor3a1 U1104 ( .A(Oprnd_A[2]), .B(N6412), .C(N97), .Y(n1592) );
    xor3a1 U1105 ( .A(Oprnd_A[6]), .B(N6452), .C(N719), .Y(n1593) );
    xor3a1 U1106 ( .A(Oprnd_A[11]), .B(N6502), .C(N782), .Y(n1595) );
    xor3a1 U1107 ( .A(N6531), .B(Oprnd_A[14]), .C(N724), .Y(n1596) );
    xor3a1 U1108 ( .A(Oprnd_A[13]), .B(N785), .C(N458), .Y(n1597) );
    xor3a1 U1109 ( .A(Oprnd_A[13]), .B(N785), .C(N5382), .Y(n1598) );
    xor3a1 U1110 ( .A(Oprnd_A[12]), .B(N764), .C(N723), .Y(n1601) );
    xor3a1 U1111 ( .A(Oprnd_A[10]), .B(N6491), .C(N741), .Y(n1603) );
    inv1a1 U1112 ( .A(N6771), .Y(N823) );
    inv1a1 U1113 ( .A(N738), .Y(N842) );
    inv1a6 U1114 ( .A(Oprnd_B[11]), .Y(N6502) );
    inv1a6 U1115 ( .A(Oprnd_B[13]), .Y(N785) );
    inv1a9 U1116 ( .A(Oprnd_B[4]), .Y(N6432) );
    inv1a9 U1117 ( .A(Oprnd_B[5]), .Y(N6442) );
    inv1a3 U1118 ( .A(N536), .Y(N615) );
endmodule


module INSTRN_LAT ( Instrn, Latch_Instr, Crnt_Instrn_1, Crnt_Instrn_2, CTS_in_, 
    CTS_in_a, CTS_in_b, CTS_in_c, CTS_in_d, CTS_in_e, CTS_in_f, CTS_in_g );
input  [31:0] Instrn;
output [31:0] Crnt_Instrn_1;
output [31:0] Crnt_Instrn_2;
input  Latch_Instr, CTS_in_, CTS_in_a, CTS_in_b, CTS_in_c, CTS_in_d, CTS_in_e, 
    CTS_in_f, CTS_in_g;
    wire n119;
    fdesf1a3 \Crnt_Instrn_2_reg[16]  ( .D0(Instrn[16]), .D1(Crnt_Instrn_2[16]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_d), .Q(Crnt_Instrn_2[16]) );
    fdesf1a6 \Crnt_Instrn_1_reg[28]  ( .D0(Instrn[28]), .D1(Crnt_Instrn_1[28]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_c), .Q(Crnt_Instrn_1[28]) );
    fdesf1a3 \Crnt_Instrn_2_reg[11]  ( .D0(Instrn[11]), .D1(Crnt_Instrn_2[11]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_a), .Q(Crnt_Instrn_2[11]) );
    fdesf1a3 \Crnt_Instrn_2_reg[23]  ( .D0(Instrn[23]), .D1(Crnt_Instrn_2[23]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_c), .Q(Crnt_Instrn_2[23]) );
    fdesf1a3 \Crnt_Instrn_2_reg[22]  ( .D0(Instrn[22]), .D1(Crnt_Instrn_2[22]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_b), .Q(Crnt_Instrn_2[22]) );
    fdesf1a3 \Crnt_Instrn_2_reg[8]  ( .D0(Instrn[8]), .D1(Crnt_Instrn_2[8]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_), .Q(Crnt_Instrn_2[8]) );
    fdesf1a6 \Crnt_Instrn_2_reg[0]  ( .D0(Instrn[0]), .D1(Crnt_Instrn_2[0]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_g), .Q(Crnt_Instrn_2[0]) );
    fdesf1a3 \Crnt_Instrn_2_reg[10]  ( .D0(Instrn[10]), .D1(Crnt_Instrn_2[10]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_a), .Q(Crnt_Instrn_2[10]) );
    fdesf1a3 \Crnt_Instrn_2_reg[14]  ( .D0(Instrn[14]), .D1(Crnt_Instrn_2[14]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_a), .Q(Crnt_Instrn_2[14]) );
    fdesf1a3 \Crnt_Instrn_2_reg[15]  ( .D0(Instrn[15]), .D1(Crnt_Instrn_2[15]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_b), .Q(Crnt_Instrn_2[15]) );
    fdesf1a3 \Crnt_Instrn_2_reg[12]  ( .D0(Instrn[12]), .D1(Crnt_Instrn_2[12]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_a), .Q(Crnt_Instrn_2[12]) );
    fdesf1a3 \Crnt_Instrn_2_reg[13]  ( .D0(Instrn[13]), .D1(Crnt_Instrn_2[13]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_b), .Q(Crnt_Instrn_2[13]) );
    fdesf1a3 \Crnt_Instrn_2_reg[19]  ( .D0(Instrn[19]), .D1(Crnt_Instrn_2[19]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_d), .Q(Crnt_Instrn_2[19]) );
    fdesf1a3 \Crnt_Instrn_1_reg[19]  ( .D0(Instrn[19]), .D1(Crnt_Instrn_1[19]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_c), .Q(Crnt_Instrn_1[19]) );
    fdesf1a3 \Crnt_Instrn_2_reg[9]  ( .D0(Instrn[9]), .D1(Crnt_Instrn_2[9]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_a), .Q(Crnt_Instrn_2[9]) );
    fdesf1a3 \Crnt_Instrn_1_reg[9]  ( .D0(Instrn[9]), .D1(Crnt_Instrn_1[9]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_a), .Q(Crnt_Instrn_1[9]) );
    fdesf1a6 \Crnt_Instrn_2_reg[1]  ( .D0(Instrn[1]), .D1(Crnt_Instrn_2[1]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_e), .Q(Crnt_Instrn_2[1]) );
    fdesf1a6 \Crnt_Instrn_1_reg[1]  ( .D0(Instrn[1]), .D1(Crnt_Instrn_1[1]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_e), .Q(Crnt_Instrn_1[1]) );
    fdesf1a3 \Crnt_Instrn_1_reg[11]  ( .D0(Instrn[11]), .D1(Crnt_Instrn_1[11]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_g), .Q(Crnt_Instrn_1[11]) );
    fdesf1a3 \Crnt_Instrn_1_reg[23]  ( .D0(Instrn[23]), .D1(Crnt_Instrn_1[23]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_b), .Q(Crnt_Instrn_1[23]) );
    fdesf1a3 \Crnt_Instrn_1_reg[22]  ( .D0(Instrn[22]), .D1(Crnt_Instrn_1[22]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_c), .Q(Crnt_Instrn_1[22]) );
    fdesf1a3 \Crnt_Instrn_1_reg[8]  ( .D0(Instrn[8]), .D1(Crnt_Instrn_1[8]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_g), .Q(Crnt_Instrn_1[8]) );
    fdesf1a6 \Crnt_Instrn_1_reg[0]  ( .D0(Instrn[0]), .D1(Crnt_Instrn_1[0]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_g), .Q(Crnt_Instrn_1[0]) );
    fdesf1a3 \Crnt_Instrn_1_reg[10]  ( .D0(Instrn[10]), .D1(Crnt_Instrn_1[10]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_a), .Q(Crnt_Instrn_1[10]) );
    fdesf1a3 \Crnt_Instrn_2_reg[18]  ( .D0(Instrn[18]), .D1(Crnt_Instrn_2[18]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_d), .Q(Crnt_Instrn_2[18]) );
    fdesf1a3 \Crnt_Instrn_1_reg[18]  ( .D0(Instrn[18]), .D1(Crnt_Instrn_1[18]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_c), .Q(Crnt_Instrn_1[18]) );
    fdesf1a3 \Crnt_Instrn_2_reg[5]  ( .D0(Instrn[5]), .D1(Crnt_Instrn_2[5]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_g), .Q(Crnt_Instrn_2[5]) );
    fdesf1a3 \Crnt_Instrn_1_reg[5]  ( .D0(Instrn[5]), .D1(Crnt_Instrn_1[5]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_f), .Q(Crnt_Instrn_1[5]) );
    fdesf1a3 \Crnt_Instrn_2_reg[26]  ( .D0(Instrn[26]), .D1(Crnt_Instrn_2[26]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_d), .Q(Crnt_Instrn_2[26]) );
    fdesf1a6 \Crnt_Instrn_1_reg[26]  ( .D0(Instrn[26]), .D1(Crnt_Instrn_1[26]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_d), .Q(Crnt_Instrn_1[26]) );
    fdesf1a3 \Crnt_Instrn_1_reg[14]  ( .D0(Instrn[14]), .D1(Crnt_Instrn_1[14]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_a), .Q(Crnt_Instrn_1[14]) );
    fdesf1a3 \Crnt_Instrn_1_reg[15]  ( .D0(Instrn[15]), .D1(Crnt_Instrn_1[15]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_c), .Q(Crnt_Instrn_1[15]) );
    fdesf1a6 \Crnt_Instrn_1_reg[27]  ( .D0(Instrn[27]), .D1(Crnt_Instrn_1[27]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_d), .Q(Crnt_Instrn_1[27]) );
    fdesf1a6 \Crnt_Instrn_2_reg[27]  ( .D0(Instrn[27]), .D1(Crnt_Instrn_2[27]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_c), .Q(Crnt_Instrn_2[27]) );
    fdesf1a3 \Crnt_Instrn_2_reg[4]  ( .D0(Instrn[4]), .D1(Crnt_Instrn_2[4]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_g), .Q(Crnt_Instrn_2[4]) );
    fdesf1a3 \Crnt_Instrn_1_reg[4]  ( .D0(Instrn[4]), .D1(Crnt_Instrn_1[4]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_g), .Q(Crnt_Instrn_1[4]) );
    fdesf1a3 \Crnt_Instrn_2_reg[6]  ( .D0(Instrn[6]), .D1(Crnt_Instrn_2[6]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_g), .Q(Crnt_Instrn_2[6]) );
    fdesf1a3 \Crnt_Instrn_1_reg[6]  ( .D0(Instrn[6]), .D1(Crnt_Instrn_1[6]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_g), .Q(Crnt_Instrn_1[6]) );
    fdesf1a6 \Crnt_Instrn_1_reg[16]  ( .D0(Instrn[16]), .D1(Crnt_Instrn_1[16]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_c), .Q(Crnt_Instrn_1[16]) );
    fdesf1a3 \Crnt_Instrn_2_reg[17]  ( .D0(Instrn[17]), .D1(Crnt_Instrn_2[17]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_d), .Q(Crnt_Instrn_2[17]) );
    fdesf1a6 \Crnt_Instrn_1_reg[17]  ( .D0(Instrn[17]), .D1(Crnt_Instrn_1[17]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_b), .Q(Crnt_Instrn_1[17]) );
    fdesf1a3 \Crnt_Instrn_2_reg[7]  ( .D0(Instrn[7]), .D1(Crnt_Instrn_2[7]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_a), .Q(Crnt_Instrn_2[7]) );
    fdesf1a3 \Crnt_Instrn_1_reg[7]  ( .D0(Instrn[7]), .D1(Crnt_Instrn_1[7]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_f), .Q(Crnt_Instrn_1[7]) );
    fdesf1a6 \Crnt_Instrn_1_reg[24]  ( .D0(Instrn[24]), .D1(Crnt_Instrn_1[24]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_d), .Q(Crnt_Instrn_1[24]) );
    fdesf1a3 \Crnt_Instrn_2_reg[21]  ( .D0(Instrn[21]), .D1(Crnt_Instrn_2[21]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_d), .Q(Crnt_Instrn_2[21]) );
    fdesf1a3 \Crnt_Instrn_1_reg[21]  ( .D0(Instrn[21]), .D1(Crnt_Instrn_1[21]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_c), .Q(Crnt_Instrn_1[21]) );
    fdesf1a3 \Crnt_Instrn_2_reg[2]  ( .D0(Instrn[2]), .D1(Crnt_Instrn_2[2]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_g), .Q(Crnt_Instrn_2[2]) );
    fdesf1a3 \Crnt_Instrn_1_reg[2]  ( .D0(Instrn[2]), .D1(Crnt_Instrn_1[2]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_g), .Q(Crnt_Instrn_1[2]) );
    fdesf1a3 \Crnt_Instrn_1_reg[12]  ( .D0(Instrn[12]), .D1(Crnt_Instrn_1[12]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_a), .Q(Crnt_Instrn_1[12]) );
    fdesf1a6 \Crnt_Instrn_2_reg[29]  ( .D0(Instrn[29]), .D1(Crnt_Instrn_2[29]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_c), .Q(Crnt_Instrn_2[29]) );
    fdesf1a6 \Crnt_Instrn_1_reg[29]  ( .D0(Instrn[29]), .D1(Crnt_Instrn_1[29]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_c), .Q(Crnt_Instrn_1[29]) );
    fdesf1a3 \Crnt_Instrn_1_reg[31]  ( .D0(Instrn[31]), .D1(Crnt_Instrn_1[31]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_a), .Q(Crnt_Instrn_1[31]) );
    fdesf1a3 \Crnt_Instrn_1_reg[30]  ( .D0(Instrn[30]), .D1(Crnt_Instrn_1[30]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_g), .Q(Crnt_Instrn_1[30]) );
    fdesf1a6 \Crnt_Instrn_2_reg[28]  ( .D0(Instrn[28]), .D1(Crnt_Instrn_2[28]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_c), .Q(Crnt_Instrn_2[28]) );
    fdesf1a3 \Crnt_Instrn_2_reg[20]  ( .D0(Instrn[20]), .D1(Crnt_Instrn_2[20]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_d), .Q(Crnt_Instrn_2[20]) );
    fdesf1a3 \Crnt_Instrn_1_reg[20]  ( .D0(Instrn[20]), .D1(Crnt_Instrn_1[20]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_d), .Q(Crnt_Instrn_1[20]) );
    fdesf1a3 \Crnt_Instrn_2_reg[3]  ( .D0(Instrn[3]), .D1(Crnt_Instrn_2[3]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_g), .Q(Crnt_Instrn_2[3]) );
    fdesf1a3 \Crnt_Instrn_1_reg[3]  ( .D0(Instrn[3]), .D1(Crnt_Instrn_1[3]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_g), .Q(Crnt_Instrn_1[3]) );
    fdesf1a3 \Crnt_Instrn_1_reg[13]  ( .D0(Instrn[13]), .D1(Crnt_Instrn_1[13]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_a), .Q(Crnt_Instrn_1[13]) );
    buf1a1 U25 ( .A(Crnt_Instrn_2[31]), .Y(n119) );
    fdesf1a15 \Crnt_Instrn_2_reg[24]  ( .D0(Instrn[24]), .D1(Crnt_Instrn_2[24]
        ), .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_b), .Q(Crnt_Instrn_2[24]) );
    fdesf1a15 \Crnt_Instrn_2_reg[31]  ( .D0(Instrn[31]), .D1(n119), .S(1'b0), 
        .E(Latch_Instr), .CLK(CTS_in_b), .Q(Crnt_Instrn_2[31]) );
    fdesf1a15 \Crnt_Instrn_2_reg[30]  ( .D0(Instrn[30]), .D1(Crnt_Instrn_2[30]
        ), .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_b), .Q(Crnt_Instrn_2[30]) );
    fdesf1a15 \Crnt_Instrn_2_reg[25]  ( .D0(Instrn[25]), .D1(Crnt_Instrn_2[25]
        ), .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_d), .Q(Crnt_Instrn_2[25]) );
    fdesf1a6 \Crnt_Instrn_1_reg[25]  ( .D0(Instrn[25]), .D1(Crnt_Instrn_1[25]), 
        .S(1'b0), .E(Latch_Instr), .CLK(CTS_in_d), .Q(Crnt_Instrn_1[25]) );
endmodule


module PRGRM_CNT_TOP ( Reset, \Crnt_Instrn[31] , \Crnt_Instrn[30] , 
    \Crnt_Instrn[29] , \Crnt_Instrn[28] , \Crnt_Instrn[27] , \Crnt_Instrn[25] , 
    \Crnt_Instrn[23] , \Crnt_Instrn[22] , \Crnt_Instrn[21] , \Crnt_Instrn[20] , 
    \Crnt_Instrn[19] , \Crnt_Instrn[18] , \Crnt_Instrn[17] , \Crnt_Instrn[16] , 
    \Crnt_Instrn[7] , \Crnt_Instrn[6] , \Crnt_Instrn[5] , \Crnt_Instrn[4] , 
    \Crnt_Instrn[3] , \Crnt_Instrn[2] , \Crnt_Instrn[1] , \Crnt_Instrn[0] , 
    Zro_Flag, Carry_Flag, Neg_Flag, Return_Addr, Current_State, PC, CTS_in_, 
    CTS_in_a, CTS_in_b, CTS_in_c, CTS_in_d, CTS_in_e );
input  [7:0] Return_Addr;
output [2:0] Current_State;
output [7:0] PC;
input  Reset, \Crnt_Instrn[31] , \Crnt_Instrn[30] , \Crnt_Instrn[29] , 
    \Crnt_Instrn[28] , \Crnt_Instrn[27] , \Crnt_Instrn[25] , \Crnt_Instrn[23] , 
    \Crnt_Instrn[22] , \Crnt_Instrn[21] , \Crnt_Instrn[20] , \Crnt_Instrn[19] , 
    \Crnt_Instrn[18] , \Crnt_Instrn[17] , \Crnt_Instrn[16] , \Crnt_Instrn[7] , 
    \Crnt_Instrn[6] , \Crnt_Instrn[5] , \Crnt_Instrn[4] , \Crnt_Instrn[3] , 
    \Crnt_Instrn[2] , \Crnt_Instrn[1] , \Crnt_Instrn[0] , Zro_Flag, Carry_Flag, 
    Neg_Flag, CTS_in_, CTS_in_a, CTS_in_b, CTS_in_c, CTS_in_d, CTS_in_e;
    wire Ld_Rtn_Addr, \carry[4] , \carry[2] , \carry[6] , \carry[7] , 
        \carry[3] , \carry[5] , \n43[0] , \____return97[2] , \____return97[6] , 
        \____return97[4] , \____return97[0] , \PCint42[2] , \PCint42[6] , 
        \PCint42[4] , \PCint42[0] , \PCint42[1] , \PCint42[5] , \PCint42[7] , 
        \PCint42[3] , \____return97[1] , \____return97[5] , \____return97[7] , 
        \____return97[3] , n131, n132, n133, n134, n137, n146, n147, n148, 
        n149, n150, n151, n152, n153, n154, n155, n157, n158, n14, n15, n16, 
        n17, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, 
        n34, n35, n36, n37, n38, n39, n42, n43, \Current_State24[2] , 
        \Current_State24[1] , n55, n56, n1, n2, n3;
    inv1a1 U5 ( .A(PC[0]), .Y(\____return97[0] ) );
    xor2a2 U610 ( .A(\carry[7] ), .B(PC[7]), .Y(\____return97[7] ) );
    ha1a2 U1_1_3 ( .A(PC[3]), .B(\carry[3] ), .S(\____return97[3] ), .CO(
        \carry[4] ) );
    ha1a2 U1_1_4 ( .A(PC[4]), .B(\carry[4] ), .S(\____return97[4] ), .CO(
        \carry[5] ) );
    ha1a2 U1_1_1 ( .A(PC[1]), .B(PC[0]), .S(\____return97[1] ), .CO(\carry[2] 
        ) );
    ha1a2 U1_1_2 ( .A(PC[2]), .B(\carry[2] ), .S(\____return97[2] ), .CO(
        \carry[3] ) );
    ha1a2 U1_1_5 ( .A(PC[5]), .B(\carry[5] ), .S(\____return97[5] ), .CO(
        \carry[6] ) );
    ha1a2 U1_1_6 ( .A(PC[6]), .B(\carry[6] ), .S(\____return97[6] ), .CO(
        \carry[7] ) );
    ao1d3 U381 ( .A(\____return97[3] ), .B(n146), .C(n151), .Y(\PCint42[3] )
         );
    ao1d3 U39 ( .A(\____return97[2] ), .B(n146), .C(n152), .Y(\PCint42[2] ) );
    ao1d3 U40 ( .A(\____return97[6] ), .B(n146), .C(n148), .Y(\PCint42[6] ) );
    ao1d3 U41 ( .A(\____return97[5] ), .B(n146), .C(n149), .Y(\PCint42[5] ) );
    ao1d3 U42 ( .A(\____return97[4] ), .B(n146), .C(n150), .Y(\PCint42[4] ) );
    ao1d3 U43 ( .A(n146), .B(\____return97[7] ), .C(n147), .Y(\PCint42[7] ) );
    ao1d3 U45 ( .A(\____return97[1] ), .B(n146), .C(n153), .Y(\PCint42[1] ) );
    or2c3 U46 ( .A(n3), .B(n131), .Y(n137) );
    ao1d3 U47 ( .A(\____return97[0] ), .B(n146), .C(n154), .Y(\PCint42[0] ) );
    fdesf1a3 \PCint_reg[7]  ( .D0(\PCint42[7] ), .D1(PC[7]), .S(1'b0), .E(
        \n43[0] ), .CLK(CTS_in_a), .Q(PC[7]) );
    fdesf1a6 \PCint_reg[1]  ( .D0(\PCint42[1] ), .D1(PC[1]), .S(1'b0), .E(n137
        ), .CLK(CTS_in_d), .Q(PC[1]) );
    fdesf1a6 \PCint_reg[0]  ( .D0(\PCint42[0] ), .D1(PC[0]), .S(1'b0), .E(n137
        ), .CLK(CTS_in_c), .Q(PC[0]) );
    fdesf1a3 \PCint_reg[3]  ( .D0(\PCint42[3] ), .D1(PC[3]), .S(1'b0), .E(
        \n43[0] ), .CLK(CTS_in_e), .Q(PC[3]) );
    fdesf1a3 \PCint_reg[2]  ( .D0(\PCint42[2] ), .D1(PC[2]), .S(1'b0), .E(
        \n43[0] ), .CLK(CTS_in_d), .Q(PC[2]) );
    fdesf1a3 \PCint_reg[6]  ( .D0(\PCint42[6] ), .D1(PC[6]), .S(1'b0), .E(n137
        ), .CLK(CTS_in_), .Q(PC[6]) );
    fdesf1a3 \PCint_reg[5]  ( .D0(\PCint42[5] ), .D1(PC[5]), .S(1'b0), .E(
        \n43[0] ), .CLK(CTS_in_a), .Q(PC[5]) );
    fdesf1a3 \PCint_reg[4]  ( .D0(\PCint42[4] ), .D1(PC[4]), .S(1'b0), .E(n137
        ), .CLK(CTS_in_), .Q(PC[4]) );
    or3c9 U49 ( .A(Ld_Rtn_Addr), .B(n1), .C(Reset), .Y(n155) );
    oa4c3 U52 ( .A(\Crnt_Instrn[1] ), .B(n131), .C(n132), .D(n155), .Y(n153)
         );
    inv1a1 U53 ( .A(Return_Addr[1]), .Y(n132) );
    oa4c3 U54 ( .A(\Crnt_Instrn[0] ), .B(n131), .C(n133), .D(n155), .Y(n154)
         );
    inv1a1 U55 ( .A(Return_Addr[0]), .Y(n133) );
    inv1a1 U56 ( .A(Ld_Rtn_Addr), .Y(n134) );
    oa4f3 U69 ( .A(\Crnt_Instrn[7] ), .B(n131), .C(Return_Addr[7]), .D(n158), 
        .Y(n147) );
    oa4f3 U70 ( .A(\Crnt_Instrn[6] ), .B(n131), .C(Return_Addr[6]), .D(n158), 
        .Y(n148) );
    oa4f3 U71 ( .A(\Crnt_Instrn[5] ), .B(n131), .C(Return_Addr[5]), .D(n158), 
        .Y(n149) );
    oa4f3 U72 ( .A(\Crnt_Instrn[4] ), .B(n131), .C(Return_Addr[4]), .D(n158), 
        .Y(n150) );
    oa4f3 U73 ( .A(\Crnt_Instrn[3] ), .B(n131), .C(Return_Addr[3]), .D(n158), 
        .Y(n151) );
    oa4f3 U74 ( .A(\Crnt_Instrn[2] ), .B(n131), .C(Return_Addr[2]), .D(n158), 
        .Y(n152) );
    clk1b6 U75 ( .A(n157), .Y(n146) );
    and3a2 U6 ( .A(\Crnt_Instrn[18] ), .B(\Crnt_Instrn[20] ), .C(
        \Crnt_Instrn[19] ), .Y(n33) );
    mx2d3 U8 ( .D0(n37), .D1(n30), .S(\Crnt_Instrn[17] ), .Y(n36) );
    xor2b2 U9 ( .A(\Crnt_Instrn[25] ), .B(n27), .Y(n37) );
    and3d2 U10 ( .A(\Crnt_Instrn[20] ), .B(\Crnt_Instrn[19] ), .C(
        \Crnt_Instrn[18] ), .Y(n35) );
    and2c3 U12 ( .A(\Crnt_Instrn[23] ), .B(\Crnt_Instrn[22] ), .Y(n38) );
    inv1a1 U13 ( .A(\Crnt_Instrn[30] ), .Y(n17) );
    or3d1 U14 ( .A(n24), .B(n25), .C(Current_State[2]), .Y(n15) );
    inv1a1 U15 ( .A(n15), .Y(n42) );
    clk1b6 U16 ( .A(Zro_Flag), .Y(n29) );
    clk1b6 U18 ( .A(Neg_Flag), .Y(n28) );
    inv1a1 U20 ( .A(\Crnt_Instrn[17] ), .Y(n21) );
    inv1a1 U231 ( .A(Current_State[1]), .Y(n25) );
    and4a3 U261 ( .A(n39), .B(n16), .C(n38), .D(n17), .Y(n22) );
    or3d1 U271 ( .A(n16), .B(\Crnt_Instrn[27] ), .C(n17), .Y(n43) );
    inv1a1 U281 ( .A(\Crnt_Instrn[31] ), .Y(n16) );
    xor2a2 U30 ( .A(\Crnt_Instrn[25] ), .B(Carry_Flag), .Y(n26) );
    or2c3 U33 ( .A(n35), .B(n36), .Y(n34) );
    and2b2 U38 ( .A(n43), .B(n42), .Y(Ld_Rtn_Addr) );
    fdmf1c6 \Current_State_reg[0]  ( .D0(n56), .D1(Current_State[0]), .S(1'b0), 
        .CLK(CTS_in_a), .QN(Current_State[0]) );
    fdmf1a6 \Current_State_reg[1]  ( .D0(\Current_State24[1] ), .D1(
        Current_State[1]), .S(1'b0), .CLK(CTS_in_b), .Q(Current_State[1]) );
    fdmf1a3 \Current_State_reg[2]  ( .D0(\Current_State24[2] ), .D1(
        Current_State[2]), .S(1'b0), .CLK(CTS_in_), .Q(Current_State[2]) );
    mx2d2 U27 ( .D0(n55), .D1(n56), .S(Current_State[1]), .Y(
        \Current_State24[1] ) );
    or2b2 U28 ( .A(n24), .B(Reset), .Y(n56) );
    or2b2 U29 ( .A(Current_State[0]), .B(Reset), .Y(n55) );
    and3b6 U4 ( .A(Reset), .B(n1), .C(n134), .Y(n131) );
    or2b2 U7 ( .A(n26), .B(\Crnt_Instrn[16] ), .Y(n30) );
    or2a2 U11 ( .A(Reset), .B(n1), .Y(n157) );
    and2c1 U17 ( .A(\Crnt_Instrn[25] ), .B(n21), .Y(n32) );
    or3d1 U19 ( .A(n32), .B(\Crnt_Instrn[16] ), .C(n33), .Y(n31) );
    clk1b6 U21 ( .A(n155), .Y(n158) );
    or2a2 U22 ( .A(\Crnt_Instrn[29] ), .B(\Crnt_Instrn[28] ), .Y(n39) );
    or2c3 U23 ( .A(n14), .B(n2), .Y(n1) );
    and2a3 U31 ( .A(n43), .B(n42), .Y(n2) );
    or2c3 U32 ( .A(n22), .B(n23), .Y(n14) );
    and3c1 U34 ( .A(n25), .B(Reset), .C(Current_State[0]), .Y(
        \Current_State24[2] ) );
    mx2d3 U35 ( .D0(n28), .D1(n29), .S(\Crnt_Instrn[16] ), .Y(n27) );
    mx2d3 U36 ( .D0(n34), .D1(n31), .S(\Crnt_Instrn[21] ), .Y(n23) );
    or2c3 U37 ( .A(n3), .B(n131), .Y(\n43[0] ) );
    or2a2 U44 ( .A(n14), .B(n15), .Y(n3) );
    inv1a3 U48 ( .A(Current_State[0]), .Y(n24) );
endmodule


module CONTROL ( Reset, \Crnt_Instrn[31] , \Crnt_Instrn[30] , 
    \Crnt_Instrn[28] , \Crnt_Instrn[27] , \Crnt_Instrn[25] , \Crnt_Instrn[24] , 
    \Crnt_Instrn[23] , \Crnt_Instrn[22] , \Crnt_Instrn[21] , \Crnt_Instrn[20] , 
    \Crnt_Instrn[19] , \Crnt_Instrn[18] , \Crnt_Instrn[17] , \Crnt_Instrn[16] , 
    Current_State, Neg_Flag, Zro_Flag, Latch_Instr, Rd_Oprnd_A, Rd_Oprnd_B, 
    Latch_Flags, Latch_Result, Write_RegC, UseData_Imm_Or_RegB, 
    UseData_Imm_Or_ALU, Reset_AluRegs, EndOfInstrn, PushEnbl, PopEnbl, 
    OUT_VALID, CTS_in_, CTS_in_a );
input  [2:0] Current_State;
input  Reset, \Crnt_Instrn[31] , \Crnt_Instrn[30] , \Crnt_Instrn[28] , 
    \Crnt_Instrn[27] , \Crnt_Instrn[25] , \Crnt_Instrn[24] , \Crnt_Instrn[23] , 
    \Crnt_Instrn[22] , \Crnt_Instrn[21] , \Crnt_Instrn[20] , \Crnt_Instrn[19] , 
    \Crnt_Instrn[18] , \Crnt_Instrn[17] , \Crnt_Instrn[16] , Neg_Flag, 
    Zro_Flag, CTS_in_, CTS_in_a;
output Latch_Instr, Rd_Oprnd_A, Rd_Oprnd_B, Latch_Flags, Latch_Result, 
    Write_RegC, UseData_Imm_Or_RegB, UseData_Imm_Or_ALU, Reset_AluRegs, 
    EndOfInstrn, PushEnbl, PopEnbl, OUT_VALID;
    wire EndOfInstrn104, n162, n163, n165, n166, n168, n170, n171, n174, n180, 
        n181, n182, n183, n184, n185, n186, n187, n190, n191, n192, n194, n197, 
        n198, n199, n200, n202, n204, n206, n207, n209, n210;
    assign Latch_Instr = Reset_AluRegs;
    and3a2 U100 ( .A(\Crnt_Instrn[19] ), .B(\Crnt_Instrn[18] ), .C(
        \Crnt_Instrn[20] ), .Y(n187) );
    mx2d3 U102 ( .D0(n181), .D1(n180), .S(\Crnt_Instrn[16] ), .Y(n184) );
    xor2b2 U103 ( .A(Neg_Flag), .B(\Crnt_Instrn[25] ), .Y(n181) );
    xor2b2 U104 ( .A(Zro_Flag), .B(\Crnt_Instrn[25] ), .Y(n180) );
    and2c3 U112 ( .A(n168), .B(n190), .Y(n165) );
    or3d1 U115 ( .A(n191), .B(n192), .C(\Crnt_Instrn[28] ), .Y(n190) );
    and2a3 U117 ( .A(n163), .B(Current_State[2]), .Y(Write_RegC) );
    and3a2 U120 ( .A(n197), .B(n198), .C(Current_State[2]), .Y(EndOfInstrn104)
         );
    inv1a1 U122 ( .A(\Crnt_Instrn[23] ), .Y(n192) );
    inv1a1 U123 ( .A(\Crnt_Instrn[22] ), .Y(n191) );
    inv1a1 U126 ( .A(\Crnt_Instrn[16] ), .Y(n174) );
    inv1a1 U129 ( .A(Current_State[0]), .Y(n197) );
    or2a2 U131 ( .A(n199), .B(\Crnt_Instrn[30] ), .Y(n162) );
    fdmf1c2 UseData_Imm_Or_RegB_reg ( .D0(n162), .D1(UseData_Imm_Or_RegB), .S(
        1'b0), .CLK(CTS_in_), .QN(UseData_Imm_Or_RegB) );
    inv1a1 U132 ( .A(\Crnt_Instrn[24] ), .Y(n170) );
    ao1d1 U133 ( .A(\Crnt_Instrn[24] ), .B(n171), .C(n204), .Y(n200) );
    or2c3 U139 ( .A(n183), .B(n184), .Y(n182) );
    and2a15 U143 ( .A(n165), .B(n166), .Y(PushEnbl) );
    or2b1 U147 ( .A(Current_State[0]), .B(Current_State[1]), .Y(n206) );
    and3a2 U148 ( .A(Current_State[1]), .B(n197), .C(n200), .Y(Rd_Oprnd_A) );
    and2b1 U151 ( .A(n199), .B(\Crnt_Instrn[30] ), .Y(n194) );
    fdmf1a9 UseData_Imm_Or_ALU_reg ( .D0(n194), .D1(UseData_Imm_Or_ALU), .S(
        1'b0), .CLK(CTS_in_), .Q(UseData_Imm_Or_ALU) );
    fdmf1a3 EndOfInstrn_reg ( .D0(EndOfInstrn104), .D1(EndOfInstrn), .S(1'b0), 
        .CLK(CTS_in_a), .Q(EndOfInstrn) );
    clk1b54 U154 ( .A(n206), .Y(Reset_AluRegs) );
    and2c3 U155 ( .A(n204), .B(n202), .Y(Latch_Flags) );
    and3d2 U156 ( .A(n171), .B(n198), .C(Current_State[0]), .Y(Rd_Oprnd_B) );
    and2a9 U157 ( .A(\Crnt_Instrn[27] ), .B(n207), .Y(PopEnbl) );
    inv1a1 U158 ( .A(n168), .Y(n207) );
    ao1d2 U159 ( .A(\Crnt_Instrn[30] ), .B(\Crnt_Instrn[31] ), .C(n163), .Y(
        n204) );
    and4e3 U160 ( .A(\Crnt_Instrn[19] ), .B(\Crnt_Instrn[20] ), .C(
        \Crnt_Instrn[21] ), .D(\Crnt_Instrn[18] ), .Y(n183) );
    and2c1 U161 ( .A(\Crnt_Instrn[25] ), .B(n174), .Y(n186) );
    or3d1 U162 ( .A(n186), .B(\Crnt_Instrn[21] ), .C(n187), .Y(n185) );
    or2b2 U163 ( .A(n163), .B(n202), .Y(n209) );
    inv1a9 U164 ( .A(n209), .Y(Latch_Result) );
    inv1a1 U165 ( .A(n163), .Y(n171) );
    and2c6 U166 ( .A(n168), .B(n170), .Y(OUT_VALID) );
    mx2d3 U167 ( .D0(n182), .D1(n185), .S(\Crnt_Instrn[17] ), .Y(n166) );
    or2a3 U168 ( .A(n163), .B(n202), .Y(n168) );
    ao2i3 U169 ( .A(Current_State[2]), .B(Current_State[1]), .C(
        \Crnt_Instrn[31] ), .D(n210), .Y(n199) );
    inv1a1 U170 ( .A(Reset), .Y(n210) );
    inv1a1 U171 ( .A(Current_State[1]), .Y(n198) );
    or2a3 U172 ( .A(\Crnt_Instrn[31] ), .B(\Crnt_Instrn[30] ), .Y(n163) );
    or2c3 U173 ( .A(Current_State[1]), .B(Current_State[0]), .Y(n202) );
endmodule


module RISC_CORE ( Clk, Reset, Instrn, scan_en, Xecutng_Instrn, EndOfInstrn, 
    PSW, Rd_Instr, RESULT_DATA, OUT_VALID, STACK_FULL );
output [31:0] Xecutng_Instrn;
output [10:0] PSW;
input  [31:0] Instrn;
output [15:0] RESULT_DATA;
input  Clk, Reset, scan_en;
output EndOfInstrn, Rd_Instr, OUT_VALID, STACK_FULL;
    wire \Op_Result[1] , \Oprnd_A[11] , \PopDataOut[8] , \PopDataOut[1] , 
        \Crnt_Instrn_2[14] , \Op_Result[6] , \Crnt_Instrn_2[27] , 
        Reset_AluRegs, \Oprnd_A[8] , \RegPort_B[2] , \Crnt_Instrn_2[5] , 
        \PopDataOut[5] , \Oprnd_B[2] , \Oprnd_A[1] , \Oprnd_A[15] , 
        \RegPort_B[6] , \Op_Result[2] , \Crnt_Instrn_2[1] , Write_RegC, 
        \Crnt_Instrn_2[10] , \Crnt_Instrn_2[23] , PushEnbl, \RegPort_C[4] , 
        \Crnt_Instrn_2[19] , \Oprnd_B[6] , \Crnt_Instrn_2[8] , \Oprnd_A[5] , 
        PopEnbl, \Op_Result[9] , \Oprnd_A[7] , \Oprnd_B[4] , \Oprnd_A[13] , 
        \Addr_A[1] , \PopDataOut[10] , \PopDataOut[7] , \Crnt_Instrn_2[12] , 
        \Crnt_Instrn_2[31] , \Crnt_Instrn_2[28] , \Op_Result[0] , 
        \Crnt_Instrn_2[21] , \Crnt_Instrn_2[3] , \RegPort_B[4] , 
        \PopDataOut[3] , \RegPort_B[0] , \Oprnd_B[9] , \Oprnd_B[0] , 
        Rd_Oprnd_A, \Oprnd_A[3] , \RegPort_B[9] , \Crnt_Instrn_2[7] , 
        \RegPort_B[10] , \Op_Result[4] , \Crnt_Instrn_2[16] , 
        \Crnt_Instrn_2[25] , \Oprnd_B[12] , Latch_Result, \RegPort_C[13] , 
        ALU_Zro, \Op_Result[10] , \RegPort_B[14] , \RegPort_C[9] , 
        \Op_Result[14] , \Current_State[1] , \RegPort_C[0] , ALU_Neg, 
        Latch_Flags, \RegPort_C[6] , \RegPort_C[11] , \RegPort_C[2] , 
        \RegPort_C[15] , \Oprnd_B[14] , \Op_Result[12] , ALU_Carry, 
        \RegPort_B[12] , \Oprnd_B[10] , \Op_Result[13] , \RegPort_C[10] , 
        \RegPort_C[7] , \Oprnd_B[11] , \RegPort_B[13] , UseData_Imm_Or_RegB, 
        UseData_Imm_Or_ALU, \RegPort_C[14] , \RegPort_C[3] , 
        \Current_State[2] , \Oprnd_B[15] , \RegPort_C[8] , \RegPort_B[15] , 
        \Current_State[0] , \Op_Result[15] , \RegPort_C[5] , \RegPort_B[11] , 
        \RegPort_C[1] , \Oprnd_B[13] , Rd_Oprnd_B, \Op_Result[11] , 
        \RegPort_C[12] , \PopDataOut[2] , \Oprnd_B[1] , \Oprnd_A[2] , 
        \RegPort_B[8] , \Crnt_Instrn_2[17] , \Crnt_Instrn_2[6] , \Oprnd_B[8] , 
        \RegPort_B[1] , \Op_Result[5] , \Crnt_Instrn_2[24] , \Addr_A[0] , 
        \Oprnd_B[5] , \Oprnd_A[6] , \Op_Result[8] , \Oprnd_A[12] , 
        \Crnt_Instrn_2[30] , \Crnt_Instrn_2[29] , \Op_Result[3] , 
        \PopDataOut[6] , \RegPort_B[5] , \Crnt_Instrn_2[13] , 
        \Crnt_Instrn_2[20] , \Crnt_Instrn_2[2] , \PopDataOut[4] , 
        \RegPort_B[7] , \Crnt_Instrn_2[0] , \PopDataOut[9] , \PopDataOut[0] , 
        \Crnt_Instrn_2[11] , \Crnt_Instrn_2[22] , \Crnt_Instrn_2[18] , 
        \Oprnd_A[10] , \Crnt_Instrn_2[9] , \Oprnd_B[7] , \Oprnd_A[4] , 
        \Op_Result[7] , \Crnt_Instrn_2[26] , \Crnt_Instrn_2[15] , 
        \RegPort_B[3] , \Oprnd_A[9] , \Oprnd_B[3] , \Crnt_Instrn_2[4] , 
        \Oprnd_A[0] , \Oprnd_A[14] , n71, n72, n73, n74, n75, n76, n77, n78, 
        n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, 
        n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, 
        n106, CTS_L2I11085_Y, CTS_L2I11084_Y, CTS_L2I11081_Y, CTS_L2I11080_Y, 
        CTS_L2I11094_Y, CTS_L2I11093_Y, CTS_L2I11092_Y, CTS_L2I11090_Y, 
        CTS_L2I11087_Y, CTS_L2I11089_Y, CTS_L2I11088_Y, CTS_L2I11086_Y, 
        CTS_L2I11083_Y, CTS_L2I11082_Y, CTS_L2I11098_Y, CTS_L2I11097_Y, 
        CTS_L2I11096_Y, CTS_L2I11095_Y, CTS_L2I11091_Y, CTS_L1I11079_Y, 
        CTS_L1I11078_Y, CTS_L1I11077_Y, CTS_L1I11076_Y, CTS_L0I11075_Y, 
        CTS_L0I11074_Y;
    inv1a3 U4 ( .A(n105), .Y(n106) );
    clk1a3 U5 ( .A(Instrn[19]), .Y(n71) );
    clk1a3 U6 ( .A(Instrn[9]), .Y(n72) );
    clk1a3 U7 ( .A(Instrn[1]), .Y(n73) );
    clk1a3 U8 ( .A(Instrn[11]), .Y(n74) );
    clk1a3 U9 ( .A(Instrn[23]), .Y(n75) );
    clk1a3 U10 ( .A(Instrn[22]), .Y(n76) );
    clk1a3 U11 ( .A(Instrn[8]), .Y(n77) );
    clk1a3 U12 ( .A(Instrn[0]), .Y(n78) );
    clk1a3 U13 ( .A(Instrn[10]), .Y(n79) );
    clk1a3 U14 ( .A(Instrn[18]), .Y(n80) );
    clk1a3 U15 ( .A(Instrn[5]), .Y(n81) );
    clk1a3 U16 ( .A(Instrn[26]), .Y(n82) );
    clk1a3 U17 ( .A(Instrn[14]), .Y(n83) );
    clk1a3 U18 ( .A(Instrn[15]), .Y(n84) );
    clk1a3 U19 ( .A(Instrn[27]), .Y(n85) );
    clk1a3 U20 ( .A(Instrn[4]), .Y(n86) );
    clk1a3 U21 ( .A(Instrn[25]), .Y(n87) );
    clk1a3 U22 ( .A(Instrn[6]), .Y(n88) );
    clk1a3 U23 ( .A(Instrn[16]), .Y(n89) );
    clk1a3 U24 ( .A(Instrn[17]), .Y(n90) );
    clk1a3 U25 ( .A(Instrn[7]), .Y(n91) );
    clk1a3 U26 ( .A(Instrn[24]), .Y(n92) );
    clk1a3 U27 ( .A(Instrn[21]), .Y(n93) );
    clk1a3 U28 ( .A(Instrn[2]), .Y(n94) );
    clk1a3 U29 ( .A(Instrn[12]), .Y(n95) );
    clk1a3 U30 ( .A(Instrn[29]), .Y(n96) );
    clk1a3 U31 ( .A(Instrn[31]), .Y(n97) );
    clk1a3 U32 ( .A(Instrn[30]), .Y(n98) );
    clk1a3 U33 ( .A(Instrn[28]), .Y(n99) );
    clk1a3 U34 ( .A(Instrn[20]), .Y(n100) );
    clk1a3 U35 ( .A(Instrn[3]), .Y(n101) );
    clk1a3 U36 ( .A(Instrn[13]), .Y(n102) );
    clk1a6 U37 ( .A(Reset), .Y(n103) );
    inv1a1 U38 ( .A(\Crnt_Instrn_2[30] ), .Y(n105) );
    clk1a3 U39 ( .A(\Crnt_Instrn_2[31] ), .Y(n104) );
    REG_FILE I_REG_FILE ( .Reset(n103), .\Addr_A[1] (\Addr_A[1] ), 
        .\Addr_A[0] (\Addr_A[0] ), .\Addr_B[1] (Xecutng_Instrn[1]), 
        .\Addr_B[0] (Xecutng_Instrn[0]), .\Addr_C[1] (Xecutng_Instrn[17]), 
        .\Addr_C[0] (Xecutng_Instrn[16]), .RegPort_C({\RegPort_C[15] , 
        \RegPort_C[14] , \RegPort_C[13] , \RegPort_C[12] , \RegPort_C[11] , 
        \RegPort_C[10] , \RegPort_C[9] , \RegPort_C[8] , \RegPort_C[7] , 
        \RegPort_C[6] , \RegPort_C[5] , \RegPort_C[4] , \RegPort_C[3] , 
        \RegPort_C[2] , \RegPort_C[1] , \RegPort_C[0] }), .Write_RegC(
        Write_RegC), .RegPort_A(RESULT_DATA), .RegPort_B({\RegPort_B[15] , 
        \RegPort_B[14] , \RegPort_B[13] , \RegPort_B[12] , \RegPort_B[11] , 
        \RegPort_B[10] , \RegPort_B[9] , \RegPort_B[8] , \RegPort_B[7] , 
        \RegPort_B[6] , \RegPort_B[5] , \RegPort_B[4] , \RegPort_B[3] , 
        \RegPort_B[2] , \RegPort_B[1] , \RegPort_B[0] }), .CTS_in_(
        CTS_L2I11087_Y), .CTS_in_a(CTS_L2I11090_Y), .CTS_in_b(CTS_L2I11092_Y), 
        .CTS_in_c(CTS_L2I11080_Y), .CTS_in_d(CTS_L2I11081_Y), .CTS_in_e(
        CTS_L2I11084_Y), .CTS_in_f(CTS_L2I11085_Y) );
    STACK_TOP I_STACK_TOP ( .Reset(n103), .PushEnbl(PushEnbl), .PopEnbl(
        PopEnbl), .\PushDataIn[10] (PSW[2]), .\PushDataIn[9] (PSW[1]), 
        .\PushDataIn[8] (PSW[0]), .\PushDataIn[7] (PSW[10]), .\PushDataIn[6] (
        PSW[9]), .\PushDataIn[5] (PSW[8]), .\PushDataIn[4] (PSW[7]), 
        .\PushDataIn[3] (PSW[6]), .\PushDataIn[2] (PSW[5]), .\PushDataIn[1] (
        PSW[4]), .\PushDataIn[0] (PSW[3]), .\PopDataOut[10] (\PopDataOut[10] ), 
        .\PopDataOut[9] (\PopDataOut[9] ), .\PopDataOut[8] (\PopDataOut[8] ), 
        .\PopDataOut[7] (\PopDataOut[7] ), .\PopDataOut[6] (\PopDataOut[6] ), 
        .\PopDataOut[5] (\PopDataOut[5] ), .\PopDataOut[4] (\PopDataOut[4] ), 
        .\PopDataOut[3] (\PopDataOut[3] ), .\PopDataOut[2] (\PopDataOut[2] ), 
        .\PopDataOut[1] (\PopDataOut[1] ), .\PopDataOut[0] (\PopDataOut[0] ), 
        .STACK_FULL(STACK_FULL), .CTS_in_(CTS_L2I11091_Y), .CTS_in_a(
        CTS_L2I11082_Y), .CTS_in_b(CTS_L2I11083_Y), .CTS_in_c(CTS_L2I11086_Y), 
        .CTS_in_d(CTS_L2I11088_Y), .CTS_in_e(CTS_L2I11090_Y), .CTS_in_f(
        CTS_L2I11081_Y), .CTS_in_g(CTS_L2I11084_Y) );
    DATA_PATH I_DATA_PATH ( .Reset(n103), .Reset_AluRegs(Reset_AluRegs), 
        .Rd_Oprnd_A(Rd_Oprnd_A), .Rd_Oprnd_B(Rd_Oprnd_B), 
        .UseData_Imm_Or_RegB(UseData_Imm_Or_RegB), .UseData_Imm_Or_ALU(
        UseData_Imm_Or_ALU), .Latch_Flags(Latch_Flags), .ALU_Zro(ALU_Zro), 
        .ALU_Neg(ALU_Neg), .ALU_Carry(ALU_Carry), .PSW_Zro(\PopDataOut[10] ), 
        .PSW_Neg(\PopDataOut[9] ), .PSW_Carry(\PopDataOut[8] ), 
        .\Crnt_Instrn[31] (\Crnt_Instrn_2[31] ), .\Crnt_Instrn[30] (
        \Crnt_Instrn_2[30] ), .\Crnt_Instrn[29] (\Crnt_Instrn_2[29] ), 
        .\Crnt_Instrn[28] (\Crnt_Instrn_2[28] ), .\Crnt_Instrn[27] (
        \Crnt_Instrn_2[27] ), .\Crnt_Instrn[26] (\Crnt_Instrn_2[26] ), 
        .\Crnt_Instrn[25] (\Crnt_Instrn_2[25] ), .\Crnt_Instrn[24] (
        \Crnt_Instrn_2[24] ), .\Crnt_Instrn[15] (\Crnt_Instrn_2[15] ), 
        .\Crnt_Instrn[14] (\Crnt_Instrn_2[14] ), .\Crnt_Instrn[13] (
        \Crnt_Instrn_2[13] ), .\Crnt_Instrn[12] (\Crnt_Instrn_2[12] ), 
        .\Crnt_Instrn[11] (\Crnt_Instrn_2[11] ), .\Crnt_Instrn[10] (
        \Crnt_Instrn_2[10] ), .\Crnt_Instrn[9] (\Crnt_Instrn_2[9] ), 
        .\Crnt_Instrn[8] (\Crnt_Instrn_2[8] ), .\Crnt_Instrn[7] (
        \Crnt_Instrn_2[7] ), .\Crnt_Instrn[6] (\Crnt_Instrn_2[6] ), 
        .\Crnt_Instrn[5] (\Crnt_Instrn_2[5] ), .\Crnt_Instrn[4] (
        \Crnt_Instrn_2[4] ), .\Crnt_Instrn[3] (\Crnt_Instrn_2[3] ), 
        .\Crnt_Instrn[2] (\Crnt_Instrn_2[2] ), .\Crnt_Instrn[1] (
        \Crnt_Instrn_2[1] ), .\Crnt_Instrn[0] (\Crnt_Instrn_2[0] ), 
        .RegPort_A(RESULT_DATA), .RegPort_B({\RegPort_B[15] , \RegPort_B[14] , 
        \RegPort_B[13] , \RegPort_B[12] , \RegPort_B[11] , \RegPort_B[10] , 
        \RegPort_B[9] , \RegPort_B[8] , \RegPort_B[7] , \RegPort_B[6] , 
        \RegPort_B[5] , \RegPort_B[4] , \RegPort_B[3] , \RegPort_B[2] , 
        \RegPort_B[1] , \RegPort_B[0] }), .Op_Result({\Op_Result[15] , 
        \Op_Result[14] , \Op_Result[13] , \Op_Result[12] , \Op_Result[11] , 
        \Op_Result[10] , \Op_Result[9] , \Op_Result[8] , \Op_Result[7] , 
        \Op_Result[6] , \Op_Result[5] , \Op_Result[4] , \Op_Result[3] , 
        \Op_Result[2] , \Op_Result[1] , \Op_Result[0] }), .Zro_Flag(PSW[2]), 
        .Neg_Flag(PSW[1]), .Carry_Flag(PSW[0]), .\Addr_A[1] (\Addr_A[1] ), 
        .\Addr_A[0] (\Addr_A[0] ), .Oprnd_A({\Oprnd_A[15] , \Oprnd_A[14] , 
        \Oprnd_A[13] , \Oprnd_A[12] , \Oprnd_A[11] , \Oprnd_A[10] , 
        \Oprnd_A[9] , \Oprnd_A[8] , \Oprnd_A[7] , \Oprnd_A[6] , \Oprnd_A[5] , 
        \Oprnd_A[4] , \Oprnd_A[3] , \Oprnd_A[2] , \Oprnd_A[1] , \Oprnd_A[0] }), 
        .Oprnd_B({\Oprnd_B[15] , \Oprnd_B[14] , \Oprnd_B[13] , \Oprnd_B[12] , 
        \Oprnd_B[11] , \Oprnd_B[10] , \Oprnd_B[9] , \Oprnd_B[8] , \Oprnd_B[7] , 
        \Oprnd_B[6] , \Oprnd_B[5] , \Oprnd_B[4] , \Oprnd_B[3] , \Oprnd_B[2] , 
        \Oprnd_B[1] , \Oprnd_B[0] }), .RegPort_C({\RegPort_C[15] , 
        \RegPort_C[14] , \RegPort_C[13] , \RegPort_C[12] , \RegPort_C[11] , 
        \RegPort_C[10] , \RegPort_C[9] , \RegPort_C[8] , \RegPort_C[7] , 
        \RegPort_C[6] , \RegPort_C[5] , \RegPort_C[4] , \RegPort_C[3] , 
        \RegPort_C[2] , \RegPort_C[1] , \RegPort_C[0] }), .CTS_in_(
        CTS_L2I11091_Y), .CTS_in_a(CTS_L2I11096_Y), .CTS_in_b(CTS_L2I11087_Y), 
        .CTS_in_c(CTS_L2I11092_Y), .CTS_in_d(CTS_L2I11093_Y), .CTS_in_e(
        CTS_L2I11094_Y) );
    ALU I_ALU ( .Reset(n103), .Oprnd_A({\Oprnd_A[15] , \Oprnd_A[14] , 
        \Oprnd_A[13] , \Oprnd_A[12] , \Oprnd_A[11] , \Oprnd_A[10] , 
        \Oprnd_A[9] , \Oprnd_A[8] , \Oprnd_A[7] , \Oprnd_A[6] , \Oprnd_A[5] , 
        \Oprnd_A[4] , \Oprnd_A[3] , \Oprnd_A[2] , \Oprnd_A[1] , \Oprnd_A[0] }), 
        .Oprnd_B({\Oprnd_B[15] , \Oprnd_B[14] , \Oprnd_B[13] , \Oprnd_B[12] , 
        \Oprnd_B[11] , \Oprnd_B[10] , \Oprnd_B[9] , \Oprnd_B[8] , \Oprnd_B[7] , 
        \Oprnd_B[6] , \Oprnd_B[5] , \Oprnd_B[4] , \Oprnd_B[3] , \Oprnd_B[2] , 
        \Oprnd_B[1] , \Oprnd_B[0] }), .ALU_OP(Xecutng_Instrn[29:24]), 
        .Latch_Result(Latch_Result), .Latch_Flags(Latch_Flags), .Lachd_Result(
        {\Op_Result[15] , \Op_Result[14] , \Op_Result[13] , \Op_Result[12] , 
        \Op_Result[11] , \Op_Result[10] , \Op_Result[9] , \Op_Result[8] , 
        \Op_Result[7] , \Op_Result[6] , \Op_Result[5] , \Op_Result[4] , 
        \Op_Result[3] , \Op_Result[2] , \Op_Result[1] , \Op_Result[0] }), 
        .Zro_Flag(ALU_Zro), .Neg_Flag(ALU_Neg), .Carry_Flag(ALU_Carry), 
        .CTS_in_(CTS_L2I11091_Y), .CTS_in_a(CTS_L2I11096_Y), .CTS_in_b(
        CTS_L2I11090_Y), .CTS_in_c(CTS_L2I11093_Y) );
    INSTRN_LAT I_INSTRN_LAT ( .Instrn({n97, n98, n96, n99, n85, n82, n87, n92, 
        n75, n76, n93, n100, n71, n80, n90, n89, n84, n83, n102, n95, n74, n79, 
        n72, n77, n91, n88, n81, n86, n101, n94, n73, n78}), .Latch_Instr(
        Rd_Instr), .Crnt_Instrn_1(Xecutng_Instrn), .Crnt_Instrn_2({
        \Crnt_Instrn_2[31] , \Crnt_Instrn_2[30] , \Crnt_Instrn_2[29] , 
        \Crnt_Instrn_2[28] , \Crnt_Instrn_2[27] , \Crnt_Instrn_2[26] , 
        \Crnt_Instrn_2[25] , \Crnt_Instrn_2[24] , \Crnt_Instrn_2[23] , 
        \Crnt_Instrn_2[22] , \Crnt_Instrn_2[21] , \Crnt_Instrn_2[20] , 
        \Crnt_Instrn_2[19] , \Crnt_Instrn_2[18] , \Crnt_Instrn_2[17] , 
        \Crnt_Instrn_2[16] , \Crnt_Instrn_2[15] , \Crnt_Instrn_2[14] , 
        \Crnt_Instrn_2[13] , \Crnt_Instrn_2[12] , \Crnt_Instrn_2[11] , 
        \Crnt_Instrn_2[10] , \Crnt_Instrn_2[9] , \Crnt_Instrn_2[8] , 
        \Crnt_Instrn_2[7] , \Crnt_Instrn_2[6] , \Crnt_Instrn_2[5] , 
        \Crnt_Instrn_2[4] , \Crnt_Instrn_2[3] , \Crnt_Instrn_2[2] , 
        \Crnt_Instrn_2[1] , \Crnt_Instrn_2[0] }), .CTS_in_(CTS_L2I11091_Y), 
        .CTS_in_a(CTS_L2I11095_Y), .CTS_in_b(CTS_L2I11096_Y), .CTS_in_c(
        CTS_L2I11097_Y), .CTS_in_d(CTS_L2I11098_Y), .CTS_in_e(CTS_L2I11086_Y), 
        .CTS_in_f(CTS_L2I11088_Y), .CTS_in_g(CTS_L2I11089_Y) );
    PRGRM_CNT_TOP I_PRGRM_CNT_TOP ( .Reset(n103), .\Crnt_Instrn[31] (n104), 
        .\Crnt_Instrn[30] (n106), .\Crnt_Instrn[29] (\Crnt_Instrn_2[29] ), 
        .\Crnt_Instrn[28] (\Crnt_Instrn_2[28] ), .\Crnt_Instrn[27] (
        \Crnt_Instrn_2[27] ), .\Crnt_Instrn[25] (\Crnt_Instrn_2[25] ), 
        .\Crnt_Instrn[23] (\Crnt_Instrn_2[23] ), .\Crnt_Instrn[22] (
        \Crnt_Instrn_2[22] ), .\Crnt_Instrn[21] (\Crnt_Instrn_2[21] ), 
        .\Crnt_Instrn[20] (\Crnt_Instrn_2[20] ), .\Crnt_Instrn[19] (
        \Crnt_Instrn_2[19] ), .\Crnt_Instrn[18] (\Crnt_Instrn_2[18] ), 
        .\Crnt_Instrn[17] (\Crnt_Instrn_2[17] ), .\Crnt_Instrn[16] (
        \Crnt_Instrn_2[16] ), .\Crnt_Instrn[7] (\Crnt_Instrn_2[7] ), 
        .\Crnt_Instrn[6] (\Crnt_Instrn_2[6] ), .\Crnt_Instrn[5] (
        \Crnt_Instrn_2[5] ), .\Crnt_Instrn[4] (\Crnt_Instrn_2[4] ), 
        .\Crnt_Instrn[3] (\Crnt_Instrn_2[3] ), .\Crnt_Instrn[2] (
        \Crnt_Instrn_2[2] ), .\Crnt_Instrn[1] (\Crnt_Instrn_2[1] ), 
        .\Crnt_Instrn[0] (\Crnt_Instrn_2[0] ), .Zro_Flag(PSW[2]), .Carry_Flag(
        PSW[0]), .Neg_Flag(PSW[1]), .Return_Addr({\PopDataOut[7] , 
        \PopDataOut[6] , \PopDataOut[5] , \PopDataOut[4] , \PopDataOut[3] , 
        \PopDataOut[2] , \PopDataOut[1] , \PopDataOut[0] }), .Current_State({
        \Current_State[2] , \Current_State[1] , \Current_State[0] }), .PC(PSW
        [10:3]), .CTS_in_(CTS_L2I11091_Y), .CTS_in_a(CTS_L2I11095_Y), 
        .CTS_in_b(CTS_L2I11096_Y), .CTS_in_c(CTS_L2I11086_Y), .CTS_in_d(
        CTS_L2I11088_Y), .CTS_in_e(CTS_L2I11089_Y) );
    CONTROL I_CONTROL ( .Reset(n103), .\Crnt_Instrn[31] (n104), 
        .\Crnt_Instrn[30] (n106), .\Crnt_Instrn[28] (\Crnt_Instrn_2[28] ), 
        .\Crnt_Instrn[27] (\Crnt_Instrn_2[27] ), .\Crnt_Instrn[25] (
        \Crnt_Instrn_2[25] ), .\Crnt_Instrn[24] (\Crnt_Instrn_2[24] ), 
        .\Crnt_Instrn[23] (\Crnt_Instrn_2[23] ), .\Crnt_Instrn[22] (
        \Crnt_Instrn_2[22] ), .\Crnt_Instrn[21] (\Crnt_Instrn_2[21] ), 
        .\Crnt_Instrn[20] (\Crnt_Instrn_2[20] ), .\Crnt_Instrn[19] (
        \Crnt_Instrn_2[19] ), .\Crnt_Instrn[18] (\Crnt_Instrn_2[18] ), 
        .\Crnt_Instrn[17] (\Crnt_Instrn_2[17] ), .\Crnt_Instrn[16] (
        \Crnt_Instrn_2[16] ), .Current_State({\Current_State[2] , 
        \Current_State[1] , \Current_State[0] }), .Neg_Flag(PSW[1]), 
        .Zro_Flag(PSW[2]), .Latch_Instr(Rd_Instr), .Rd_Oprnd_A(Rd_Oprnd_A), 
        .Rd_Oprnd_B(Rd_Oprnd_B), .Latch_Flags(Latch_Flags), .Latch_Result(
        Latch_Result), .Write_RegC(Write_RegC), .UseData_Imm_Or_RegB(
        UseData_Imm_Or_RegB), .UseData_Imm_Or_ALU(UseData_Imm_Or_ALU), 
        .Reset_AluRegs(Reset_AluRegs), .EndOfInstrn(EndOfInstrn), .PushEnbl(
        PushEnbl), .PopEnbl(PopEnbl), .OUT_VALID(OUT_VALID), .CTS_in_(
        CTS_L2I11091_Y), .CTS_in_a(CTS_L2I11095_Y) );
    buf1a15 CTS_L2I11085 ( .A(CTS_L1I11079_Y), .Y(CTS_L2I11085_Y) );
    buf1a15 CTS_L2I11084 ( .A(CTS_L1I11079_Y), .Y(CTS_L2I11084_Y) );
    buf1a15 CTS_L2I11081 ( .A(CTS_L1I11079_Y), .Y(CTS_L2I11081_Y) );
    buf1a15 CTS_L2I11080 ( .A(CTS_L1I11079_Y), .Y(CTS_L2I11080_Y) );
    buf1a15 CTS_L2I11094 ( .A(CTS_L1I11078_Y), .Y(CTS_L2I11094_Y) );
    buf1a15 CTS_L2I11093 ( .A(CTS_L1I11078_Y), .Y(CTS_L2I11093_Y) );
    buf1a15 CTS_L2I11092 ( .A(CTS_L1I11078_Y), .Y(CTS_L2I11092_Y) );
    buf1a15 CTS_L2I11090 ( .A(CTS_L1I11078_Y), .Y(CTS_L2I11090_Y) );
    buf1a15 CTS_L2I11087 ( .A(CTS_L1I11078_Y), .Y(CTS_L2I11087_Y) );
    buf1a15 CTS_L2I11089 ( .A(CTS_L1I11077_Y), .Y(CTS_L2I11089_Y) );
    buf1a15 CTS_L2I11088 ( .A(CTS_L1I11077_Y), .Y(CTS_L2I11088_Y) );
    buf1a15 CTS_L2I11086 ( .A(CTS_L1I11077_Y), .Y(CTS_L2I11086_Y) );
    buf1a15 CTS_L2I11083 ( .A(CTS_L1I11077_Y), .Y(CTS_L2I11083_Y) );
    buf1a15 CTS_L2I11082 ( .A(CTS_L1I11077_Y), .Y(CTS_L2I11082_Y) );
    buf1a15 CTS_L2I11098 ( .A(CTS_L1I11076_Y), .Y(CTS_L2I11098_Y) );
    buf1a15 CTS_L2I11097 ( .A(CTS_L1I11076_Y), .Y(CTS_L2I11097_Y) );
    buf1a15 CTS_L2I11096 ( .A(CTS_L1I11076_Y), .Y(CTS_L2I11096_Y) );
    buf1a15 CTS_L2I11095 ( .A(CTS_L1I11076_Y), .Y(CTS_L2I11095_Y) );
    buf1a15 CTS_L2I11091 ( .A(CTS_L1I11076_Y), .Y(CTS_L2I11091_Y) );
    buf1a27 CTS_L1I11079 ( .A(CTS_L0I11075_Y), .Y(CTS_L1I11079_Y) );
    buf1a27 CTS_L1I11078 ( .A(CTS_L0I11075_Y), .Y(CTS_L1I11078_Y) );
    buf1a27 CTS_L1I11077 ( .A(CTS_L0I11074_Y), .Y(CTS_L1I11077_Y) );
    buf1a27 CTS_L1I11076 ( .A(CTS_L0I11074_Y), .Y(CTS_L1I11076_Y) );
    buf1a15 CTS_L0I11075 ( .A(Clk), .Y(CTS_L0I11075_Y) );
    buf1a15 CTS_L0I11074 ( .A(Clk), .Y(CTS_L0I11074_Y) );
endmodule

