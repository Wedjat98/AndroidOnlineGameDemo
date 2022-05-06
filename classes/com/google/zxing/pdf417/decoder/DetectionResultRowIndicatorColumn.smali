.class final Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
.super Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
.source "DetectionResultRowIndicatorColumn.java"


# instance fields
.field private final isLeft:Z


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V
    .registers 3
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .param p2, "isLeft"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .line 31
    iput-boolean p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    .line 32
    return-void
.end method

.method private adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .registers 16
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    .line 138
    .local v2, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    iget-boolean v12, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v12, :cond_46

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v11

    .line 139
    .local v11, "top":Lcom/google/zxing/ResultPoint;
    :goto_c
    iget-boolean v12, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v12, :cond_4b

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    .line 140
    .local v1, "bottom":Lcom/google/zxing/ResultPoint;
    :goto_14
    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {p0, v12}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v7

    .line 141
    .local v7, "firstRow":I
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {p0, v12}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v8

    .line 143
    .local v8, "lastRow":I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v4

    .line 144
    .local v4, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v0, -0x1

    .line 145
    .local v0, "barcodeRow":I
    const/4 v9, 0x1

    .line 146
    .local v9, "maxRowHeight":I
    const/4 v6, 0x0

    .line 147
    .local v6, "currentRowHeight":I
    move v5, v7

    .local v5, "codewordsRow":I
    :goto_2e
    if-ge v5, v8, :cond_71

    .line 148
    aget-object v12, v4, v5

    if-eqz v12, :cond_43

    .line 151
    aget-object v3, v4, v5

    .line 153
    .local v3, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 155
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v12

    sub-int v10, v12, v0

    .line 159
    .local v10, "rowDifference":I
    if-nez v10, :cond_50

    .line 160
    add-int/lit8 v6, v6, 0x1

    .line 147
    .end local v3    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v10    # "rowDifference":I
    :cond_43
    :goto_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 138
    .end local v0    # "barcodeRow":I
    .end local v1    # "bottom":Lcom/google/zxing/ResultPoint;
    .end local v4    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v5    # "codewordsRow":I
    .end local v6    # "currentRowHeight":I
    .end local v7    # "firstRow":I
    .end local v8    # "lastRow":I
    .end local v9    # "maxRowHeight":I
    .end local v11    # "top":Lcom/google/zxing/ResultPoint;
    :cond_46
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v11

    goto :goto_c

    .line 139
    .restart local v11    # "top":Lcom/google/zxing/ResultPoint;
    :cond_4b
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    goto :goto_14

    .line 161
    .restart local v0    # "barcodeRow":I
    .restart local v1    # "bottom":Lcom/google/zxing/ResultPoint;
    .restart local v3    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v4    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v5    # "codewordsRow":I
    .restart local v6    # "currentRowHeight":I
    .restart local v7    # "firstRow":I
    .restart local v8    # "lastRow":I
    .restart local v9    # "maxRowHeight":I
    .restart local v10    # "rowDifference":I
    :cond_50
    const/4 v12, 0x1

    if-ne v10, v12, :cond_5d

    .line 162
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 163
    const/4 v6, 0x1

    .line 164
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v0

    goto :goto_43

    .line 165
    :cond_5d
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v12

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v13

    if-lt v12, v13, :cond_6b

    .line 166
    const/4 v12, 0x0

    aput-object v12, v4, v5

    goto :goto_43

    .line 168
    :cond_6b
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v0

    .line 169
    const/4 v6, 0x1

    goto :goto_43

    .line 173
    .end local v3    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v10    # "rowDifference":I
    :cond_71
    return-void
.end method

.method private removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .registers 10
    .param p1, "codewords"    # [Lcom/google/zxing/pdf417/decoder/Codeword;
    .param p2, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .prologue
    const/4 v6, 0x0

    .line 223
    const/4 v1, 0x0

    .local v1, "codewordRow":I
    :goto_2
    array-length v4, p1

    if-ge v1, v4, :cond_57

    .line 224
    aget-object v0, p1, v1

    .line 225
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    aget-object v4, p1, v1

    if-eqz v4, :cond_1d

    .line 228
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v4

    rem-int/lit8 v3, v4, 0x1e

    .line 229
    .local v3, "rowIndicatorValue":I
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v2

    .line 230
    .local v2, "codewordRowNumber":I
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    if-le v2, v4, :cond_20

    .line 231
    aput-object v6, p1, v1

    .line 223
    .end local v2    # "codewordRowNumber":I
    .end local v3    # "rowIndicatorValue":I
    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 234
    .restart local v2    # "codewordRowNumber":I
    .restart local v3    # "rowIndicatorValue":I
    :cond_20
    iget-boolean v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v4, :cond_26

    .line 235
    add-int/lit8 v2, v2, 0x2

    .line 237
    :cond_26
    rem-int/lit8 v4, v2, 0x3

    packed-switch v4, :pswitch_data_58

    goto :goto_1d

    .line 239
    :pswitch_2c
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountUpperPart()I

    move-result v5

    if-eq v4, v5, :cond_1d

    .line 240
    aput-object v6, p1, v1

    goto :goto_1d

    .line 244
    :pswitch_39
    div-int/lit8 v4, v3, 0x3

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v5

    if-ne v4, v5, :cond_49

    rem-int/lit8 v4, v3, 0x3

    .line 245
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountLowerPart()I

    move-result v5

    if-eq v4, v5, :cond_1d

    .line 246
    :cond_49
    aput-object v6, p1, v1

    goto :goto_1d

    .line 250
    :pswitch_4c
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v5

    if-eq v4, v5, :cond_1d

    .line 251
    aput-object v6, p1, v1

    goto :goto_1d

    .line 256
    .end local v0    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v2    # "codewordRowNumber":I
    .end local v3    # "rowIndicatorValue":I
    :cond_57
    return-void

    .line 237
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_39
        :pswitch_4c
    .end packed-switch
.end method

.method private setRowNumbers()V
    .registers 5

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_12

    aget-object v0, v2, v1

    .line 36
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v0, :cond_f

    .line 37
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 35
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 40
    .end local v0    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_12
    return-void
.end method


# virtual methods
.method adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .registers 21
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .prologue
    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v8

    .line 48
    .local v8, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setRowNumbers()V

    .line 49
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    .line 51
    .local v4, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    move/from16 v17, v0

    if-eqz v17, :cond_65

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v16

    .line 52
    .local v16, "top":Lcom/google/zxing/ResultPoint;
    :goto_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6a

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 53
    .local v3, "bottom":Lcom/google/zxing/ResultPoint;
    :goto_2a
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v11

    .line 54
    .local v11, "firstRow":I
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v13

    .line 58
    .local v13, "lastRow":I
    const/4 v2, -0x1

    .line 59
    .local v2, "barcodeRow":I
    const/4 v14, 0x1

    .line 60
    .local v14, "maxRowHeight":I
    const/4 v10, 0x0

    .line 61
    .local v10, "currentRowHeight":I
    move v9, v11

    .local v9, "codewordsRow":I
    :goto_50
    if-ge v9, v13, :cond_c5

    .line 62
    aget-object v17, v8, v9

    if-eqz v17, :cond_62

    .line 65
    aget-object v7, v8, v9

    .line 75
    .local v7, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v17

    sub-int v15, v17, v2

    .line 79
    .local v15, "rowDifference":I
    if-nez v15, :cond_6f

    .line 80
    add-int/lit8 v10, v10, 0x1

    .line 61
    .end local v7    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v15    # "rowDifference":I
    :cond_62
    :goto_62
    add-int/lit8 v9, v9, 0x1

    goto :goto_50

    .line 51
    .end local v2    # "barcodeRow":I
    .end local v3    # "bottom":Lcom/google/zxing/ResultPoint;
    .end local v9    # "codewordsRow":I
    .end local v10    # "currentRowHeight":I
    .end local v11    # "firstRow":I
    .end local v13    # "lastRow":I
    .end local v14    # "maxRowHeight":I
    .end local v16    # "top":Lcom/google/zxing/ResultPoint;
    :cond_65
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v16

    goto :goto_1e

    .line 52
    .restart local v16    # "top":Lcom/google/zxing/ResultPoint;
    :cond_6a
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    goto :goto_2a

    .line 81
    .restart local v2    # "barcodeRow":I
    .restart local v3    # "bottom":Lcom/google/zxing/ResultPoint;
    .restart local v7    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v9    # "codewordsRow":I
    .restart local v10    # "currentRowHeight":I
    .restart local v11    # "firstRow":I
    .restart local v13    # "lastRow":I
    .restart local v14    # "maxRowHeight":I
    .restart local v15    # "rowDifference":I
    :cond_6f
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_7f

    .line 82
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 83
    const/4 v10, 0x1

    .line 84
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v2

    goto :goto_62

    .line 85
    :cond_7f
    if-ltz v15, :cond_91

    .line 86
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_91

    if-le v15, v9, :cond_96

    .line 88
    :cond_91
    const/16 v17, 0x0

    aput-object v17, v8, v9

    goto :goto_62

    .line 91
    :cond_96
    const/16 v17, 0x2

    move/from16 v0, v17

    if-le v14, v0, :cond_b2

    .line 92
    add-int/lit8 v17, v14, -0x2

    mul-int v5, v17, v15

    .line 96
    .local v5, "checkedRows":I
    :goto_a0
    if-lt v5, v9, :cond_b4

    const/4 v6, 0x1

    .line 97
    .local v6, "closePreviousCodewordFound":Z
    :goto_a3
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_a4
    if-gt v12, v5, :cond_b8

    if-nez v6, :cond_b8

    .line 100
    sub-int v17, v9, v12

    aget-object v17, v8, v17

    if-eqz v17, :cond_b6

    const/4 v6, 0x1

    .line 97
    :goto_af
    add-int/lit8 v12, v12, 0x1

    goto :goto_a4

    .line 94
    .end local v5    # "checkedRows":I
    .end local v6    # "closePreviousCodewordFound":Z
    .end local v12    # "i":I
    :cond_b2
    move v5, v15

    .restart local v5    # "checkedRows":I
    goto :goto_a0

    .line 96
    :cond_b4
    const/4 v6, 0x0

    goto :goto_a3

    .line 100
    .restart local v6    # "closePreviousCodewordFound":Z
    .restart local v12    # "i":I
    :cond_b6
    const/4 v6, 0x0

    goto :goto_af

    .line 102
    :cond_b8
    if-eqz v6, :cond_bf

    .line 103
    const/16 v17, 0x0

    aput-object v17, v8, v9

    goto :goto_62

    .line 105
    :cond_bf
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v2

    .line 106
    const/4 v10, 0x1

    goto :goto_62

    .line 111
    .end local v5    # "checkedRows":I
    .end local v6    # "closePreviousCodewordFound":Z
    .end local v7    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v12    # "i":I
    .end local v15    # "rowDifference":I
    :cond_c5
    return-void
.end method

.method getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .registers 15

    .prologue
    const/4 v10, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    .line 177
    .local v7, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    new-instance v0, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 178
    .local v0, "barcodeColumnCount":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v4, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 179
    .local v4, "barcodeRowCountUpperPart":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v3, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 180
    .local v3, "barcodeRowCountLowerPart":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v1, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 181
    .local v1, "barcodeECLevel":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    array-length v11, v7

    move v9, v10

    :goto_1b
    if-ge v9, v11, :cond_55

    aget-object v5, v7, v9

    .line 182
    .local v5, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v5, :cond_39

    .line 185
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 186
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v12

    rem-int/lit8 v8, v12, 0x1e

    .line 187
    .local v8, "rowIndicatorValue":I
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    .line 188
    .local v6, "codewordRowNumber":I
    iget-boolean v12, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v12, :cond_34

    .line 189
    add-int/lit8 v6, v6, 0x2

    .line 191
    :cond_34
    rem-int/lit8 v12, v6, 0x3

    packed-switch v12, :pswitch_data_be

    .line 181
    .end local v6    # "codewordRowNumber":I
    .end local v8    # "rowIndicatorValue":I
    :cond_39
    :goto_39
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    .line 193
    .restart local v6    # "codewordRowNumber":I
    .restart local v8    # "rowIndicatorValue":I
    :pswitch_3c
    mul-int/lit8 v12, v8, 0x3

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v4, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_39

    .line 196
    :pswitch_44
    div-int/lit8 v12, v8, 0x3

    invoke-virtual {v1, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 197
    rem-int/lit8 v12, v8, 0x3

    invoke-virtual {v3, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_39

    .line 200
    :pswitch_4f
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v0, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_39

    .line 205
    .end local v5    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v6    # "codewordRowNumber":I
    .end local v8    # "rowIndicatorValue":I
    :cond_55
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    array-length v9, v9

    if-eqz v9, :cond_9a

    .line 206
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    array-length v9, v9

    if-eqz v9, :cond_9a

    .line 207
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    array-length v9, v9

    if-eqz v9, :cond_9a

    .line 208
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    array-length v9, v9

    if-eqz v9, :cond_9a

    .line 209
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v10

    if-lez v9, :cond_9a

    .line 210
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v10

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v11

    aget v11, v11, v10

    add-int/2addr v9, v11

    const/4 v11, 0x3

    if-lt v9, v11, :cond_9a

    .line 211
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v10

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v11

    aget v11, v11, v10

    add-int/2addr v9, v11

    const/16 v11, 0x5a

    if-le v9, v11, :cond_9c

    .line 212
    :cond_9a
    const/4 v2, 0x0

    .line 217
    :goto_9b
    return-object v2

    .line 214
    :cond_9c
    new-instance v2, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v10

    .line 215
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v11

    aget v11, v11, v10

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v12

    aget v12, v12, v10

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    aget v10, v13, v10

    invoke-direct {v2, v9, v11, v12, v10}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;-><init>(IIII)V

    .line 216
    .local v2, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    invoke-direct {p0, v7, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    goto :goto_9b

    .line 191
    nop

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_44
        :pswitch_4f
    .end packed-switch
.end method

.method getRowHeights()[I
    .registers 9

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    .line 115
    .local v0, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v0, :cond_8

    .line 116
    const/4 v2, 0x0

    .line 130
    :cond_7
    return-object v2

    .line 118
    :cond_8
    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    .line 119
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    new-array v2, v4, [I

    .line 120
    .local v2, "result":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v6, :cond_7

    aget-object v1, v5, v4

    .line 121
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v1, :cond_2a

    .line 122
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    .line 123
    .local v3, "rowNumber":I
    array-length v7, v2

    if-ge v3, v7, :cond_2a

    .line 127
    aget v7, v2, v3

    add-int/lit8 v7, v7, 0x1

    aput v7, v2, v3

    .line 120
    .end local v3    # "rowNumber":I
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_17
.end method

.method isLeft()Z
    .registers 2

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsLeft: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
