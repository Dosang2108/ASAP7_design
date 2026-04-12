setPinAssignMode -pinEditInBatch true

# BOTTOM pins
editPin -pinWidth 0.128 -pinDepth 0.28 -fixOverlap 1 -spreadType side \
  -spreadDirection counterclockwise -side BOTTOM -layer 7 -honorConstraint 1 \
  -pin {iClk iA[31] iA[30] iA[29] iA[28] iA[27] iA[26] iA[25] iA[24] iA[23] iA[22] iA[21] iA[20] iA[19] iA[18] iA[17] iA[16] iA[15] iA[14] iA[13] iA[12] iA[11] iA[10] iA[9] iA[8] }
  
# TOP pins 
editPin -pinWidth 0.128 -pinDepth 0.28 -fixOverlap 1 -spreadType side \
  -spreadDirection counterclockwise -side TOP -layer 7 -honorConstraint 1 \
  -pin { iB[15] iB[14] iB[13] iB[12] iB[11] iB[10] iB[9] iB[8] iB[7] iB[6] iB[5] iB[4] iB[3] iB[2] iB[1] iB[0] oS[31] oS[30] oS[29] oS[28] oS[27] oS[26] oS[25] oS[24] }
  
# RIGHT pins
editPin -pinWidth 0.128 -pinDepth 0.28 -fixOverlap 1 -spreadType side \
  -spreadDirection counterclockwise -side RIGHT -layer 6 -honorConstraint 1 \
  -pin { iA[7] iA[6] iA[5] iA[4] iA[3] iA[2] iA[1] iA[0] iB[31] iB[30] iB[29] iB[28] iB[27] iB[26] iB[25] iB[24] iB[23] iB[22] iB[21] iB[20] iB[19] iB[18] iB[17] iB[16] }

# LEFT pins
editPin -pinWidth 0.128 -pinDepth 0.28 -fixOverlap 1 -spreadType side \
  -spreadDirection counterclockwise -side LEFT -layer 6 -honorConstraint 1 \
  -pin { oS[23] oS[22] oS[21] oS[20] oS[19] oS[18] oS[17] oS[16] oS[15] oS[14] oS[13] oS[12] oS[11] oS[10] oS[9] oS[8] oS[7] oS[6] oS[5] oS[4] oS[3] oS[2] oS[1] oS[0] }

setPinAssignMode -pinEditInBatch false