.class final Lcom/google/zxing/qrcode/encoder/MaskUtil;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# static fields
.field private static final N1:I = 0x3

.field private static final N2:I = 0x3

.field private static final N3:I = 0x28

.field private static final N4:I = 0xa


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 3
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I
    .registers 13
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .param p1, "isHorizontal"    # Z

    .prologue
    const/4 v10, 0x5

    .line 195
    const/4 v7, 0x0

    .line 196
    .local v7, "penalty":I
    if-eqz p1, :cond_27

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    .line 197
    .local v3, "iLimit":I
    :goto_8
    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    .line 198
    .local v5, "jLimit":I
    :goto_e
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 199
    .local v0, "array":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v3, :cond_4a

    .line 200
    const/4 v6, 0x0

    .line 201
    .local v6, "numSameBitCells":I
    const/4 v8, -0x1

    .line 202
    .local v8, "prevBit":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_18
    if-ge v4, v5, :cond_40

    .line 203
    if-eqz p1, :cond_31

    aget-object v9, v0, v2

    aget-byte v1, v9, v4

    .line 204
    .local v1, "bit":I
    :goto_20
    if-ne v1, v8, :cond_36

    .line 205
    add-int/lit8 v6, v6, 0x1

    .line 202
    :goto_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 196
    .end local v0    # "array":[[B
    .end local v1    # "bit":I
    .end local v2    # "i":I
    .end local v3    # "iLimit":I
    .end local v4    # "j":I
    .end local v5    # "jLimit":I
    .end local v6    # "numSameBitCells":I
    .end local v8    # "prevBit":I
    :cond_27
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    goto :goto_8

    .line 197
    .restart local v3    # "iLimit":I
    :cond_2c
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    goto :goto_e

    .line 203
    .restart local v0    # "array":[[B
    .restart local v2    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "jLimit":I
    .restart local v6    # "numSameBitCells":I
    .restart local v8    # "prevBit":I
    :cond_31
    aget-object v9, v0, v4

    aget-byte v1, v9, v2

    goto :goto_20

    .line 207
    .restart local v1    # "bit":I
    :cond_36
    if-lt v6, v10, :cond_3d

    .line 208
    add-int/lit8 v9, v6, -0x5

    add-int/lit8 v9, v9, 0x3

    add-int/2addr v7, v9

    .line 210
    :cond_3d
    const/4 v6, 0x1

    .line 211
    move v8, v1

    goto :goto_24

    .line 214
    .end local v1    # "bit":I
    :cond_40
    if-lt v6, v10, :cond_47

    .line 215
    add-int/lit8 v9, v6, -0x5

    add-int/lit8 v9, v9, 0x3

    add-int/2addr v7, v9

    .line 199
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 218
    .end local v4    # "j":I
    .end local v6    # "numSameBitCells":I
    .end local v8    # "prevBit":I
    :cond_4a
    return v7
.end method

.method static applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 10
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, "penalty":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 52
    .local v0, "array":[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    .line 53
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    .line 54
    .local v1, "height":I
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_e
    add-int/lit8 v7, v1, -0x1

    if-ge v6, v7, :cond_3d

    .line 55
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_13
    add-int/lit8 v7, v4, -0x1

    if-ge v5, v7, :cond_3a

    .line 56
    aget-object v7, v0, v6

    aget-byte v3, v7, v5

    .line 57
    .local v3, "value":I
    aget-object v7, v0, v6

    add-int/lit8 v8, v5, 0x1

    aget-byte v7, v7, v8

    if-ne v3, v7, :cond_37

    add-int/lit8 v7, v6, 0x1

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v3, v7, :cond_37

    add-int/lit8 v7, v6, 0x1

    aget-object v7, v0, v7

    add-int/lit8 v8, v5, 0x1

    aget-byte v7, v7, v8

    if-ne v3, v7, :cond_37

    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 55
    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 54
    .end local v3    # "value":I
    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 62
    .end local v5    # "x":I
    :cond_3d
    mul-int/lit8 v7, v2, 0x3

    return v7
.end method

.method static applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 11
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    const/4 v9, 0x1

    .line 71
    const/4 v3, 0x0

    .line 72
    .local v3, "numPenalties":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 73
    .local v0, "array":[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    .line 74
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    .line 75
    .local v2, "height":I
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_f
    if-ge v6, v2, :cond_ac

    .line 76
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_12
    if-ge v5, v4, :cond_a8

    .line 77
    aget-object v1, v0, v6

    .line 78
    .local v1, "arrayY":[B
    add-int/lit8 v7, v5, 0x6

    if-ge v7, v4, :cond_56

    aget-byte v7, v1, v5

    if-ne v7, v9, :cond_56

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v1, v7

    if-nez v7, :cond_56

    add-int/lit8 v7, v5, 0x2

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_56

    add-int/lit8 v7, v5, 0x3

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_56

    add-int/lit8 v7, v5, 0x4

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_56

    add-int/lit8 v7, v5, 0x5

    aget-byte v7, v1, v7

    if-nez v7, :cond_56

    add-int/lit8 v7, v5, 0x6

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_56

    add-int/lit8 v7, v5, -0x4

    .line 86
    invoke-static {v1, v7, v5}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteHorizontal([BII)Z

    move-result v7

    if-nez v7, :cond_54

    add-int/lit8 v7, v5, 0x7

    add-int/lit8 v8, v5, 0xb

    invoke-static {v1, v7, v8}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteHorizontal([BII)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 87
    :cond_54
    add-int/lit8 v3, v3, 0x1

    .line 89
    :cond_56
    add-int/lit8 v7, v6, 0x6

    if-ge v7, v2, :cond_a4

    aget-object v7, v0, v6

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_a4

    add-int/lit8 v7, v6, 0x1

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-nez v7, :cond_a4

    add-int/lit8 v7, v6, 0x2

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_a4

    add-int/lit8 v7, v6, 0x3

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_a4

    add-int/lit8 v7, v6, 0x4

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_a4

    add-int/lit8 v7, v6, 0x5

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-nez v7, :cond_a4

    add-int/lit8 v7, v6, 0x6

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_a4

    add-int/lit8 v7, v6, -0x4

    .line 97
    invoke-static {v0, v5, v7, v6}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteVertical([[BIII)Z

    move-result v7

    if-nez v7, :cond_a2

    add-int/lit8 v7, v6, 0x7

    add-int/lit8 v8, v6, 0xb

    invoke-static {v0, v5, v7, v8}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteVertical([[BIII)Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 98
    :cond_a2
    add-int/lit8 v3, v3, 0x1

    .line 76
    :cond_a4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_12

    .line 75
    .end local v1    # "arrayY":[B
    :cond_a8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_f

    .line 102
    .end local v5    # "x":I
    :cond_ac
    mul-int/lit8 v7, v3, 0x28

    return v7
.end method

.method static applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 11
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    .line 132
    const/4 v3, 0x0

    .line 133
    .local v3, "numDarkCells":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 134
    .local v0, "array":[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    .line 135
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    .line 136
    .local v2, "height":I
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_e
    if-ge v7, v2, :cond_22

    .line 137
    aget-object v1, v0, v7

    .line 138
    .local v1, "arrayY":[B
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_13
    if-ge v6, v5, :cond_1f

    .line 139
    aget-byte v8, v1, v6

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1c

    .line 140
    add-int/lit8 v3, v3, 0x1

    .line 138
    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 136
    :cond_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 144
    .end local v1    # "arrayY":[B
    .end local v6    # "x":I
    :cond_22
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v9

    mul-int v4, v8, v9

    .line 145
    .local v4, "numTotalCells":I
    shl-int/lit8 v8, v3, 0x1

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0xa

    div-int/2addr v8, v4

    .line 146
    mul-int/lit8 v8, v8, 0xa

    return v8
.end method

.method static getDataMaskBit(III)Z
    .registers 8
    .param p0, "maskPattern"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 156
    packed-switch p0, :pswitch_data_54

    .line 185
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid mask pattern: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :pswitch_18
    add-int v2, p2, p1

    and-int/lit8 v0, v2, 0x1

    .line 187
    .local v0, "intermediate":I
    :goto_1c
    if-nez v0, :cond_52

    const/4 v2, 0x1

    :goto_1f
    return v2

    .line 161
    .end local v0    # "intermediate":I
    :pswitch_20
    and-int/lit8 v0, p2, 0x1

    .line 162
    .restart local v0    # "intermediate":I
    goto :goto_1c

    .line 164
    .end local v0    # "intermediate":I
    :pswitch_23
    rem-int/lit8 v0, p1, 0x3

    .line 165
    .restart local v0    # "intermediate":I
    goto :goto_1c

    .line 167
    .end local v0    # "intermediate":I
    :pswitch_26
    add-int v2, p2, p1

    rem-int/lit8 v0, v2, 0x3

    .line 168
    .restart local v0    # "intermediate":I
    goto :goto_1c

    .line 170
    .end local v0    # "intermediate":I
    :pswitch_2b
    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, p1, 0x3

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    .line 171
    .restart local v0    # "intermediate":I
    goto :goto_1c

    .line 173
    .end local v0    # "intermediate":I
    :pswitch_33
    mul-int v1, p2, p1

    .line 174
    .local v1, "temp":I
    and-int/lit8 v2, v1, 0x1

    rem-int/lit8 v3, v1, 0x3

    add-int v0, v2, v3

    .line 175
    .restart local v0    # "intermediate":I
    goto :goto_1c

    .line 177
    .end local v0    # "intermediate":I
    .end local v1    # "temp":I
    :pswitch_3c
    mul-int v1, p2, p1

    .line 178
    .restart local v1    # "temp":I
    and-int/lit8 v2, v1, 0x1

    rem-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    .line 179
    .restart local v0    # "intermediate":I
    goto :goto_1c

    .line 181
    .end local v0    # "intermediate":I
    .end local v1    # "temp":I
    :pswitch_46
    mul-int v2, p2, p1

    .line 182
    rem-int/lit8 v2, v2, 0x3

    add-int v3, p2, p1

    and-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    .line 183
    .restart local v0    # "intermediate":I
    goto :goto_1c

    .line 187
    :cond_52
    const/4 v2, 0x0

    goto :goto_1f

    .line 156
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_18
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_2b
        :pswitch_33
        :pswitch_3c
        :pswitch_46
    .end packed-switch
.end method

.method private static isWhiteHorizontal([BII)Z
    .registers 7
    .param p0, "rowArray"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 107
    array-length v3, p0

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 108
    move v0, p1

    .local v0, "i":I
    :goto_c
    if-ge v0, p2, :cond_16

    .line 109
    aget-byte v3, p0, v0

    if-ne v3, v2, :cond_13

    .line 113
    :goto_12
    return v1

    .line 108
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_16
    move v1, v2

    .line 113
    goto :goto_12
.end method

.method private static isWhiteVertical([[BIII)Z
    .registers 8
    .param p0, "array"    # [[B
    .param p1, "col"    # I
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 117
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 118
    array-length v3, p0

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 119
    move v0, p2

    .local v0, "i":I
    :goto_c
    if-ge v0, p3, :cond_18

    .line 120
    aget-object v3, p0, v0

    aget-byte v3, v3, p1

    if-ne v3, v2, :cond_15

    .line 124
    :goto_14
    return v1

    .line 119
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    move v1, v2

    .line 124
    goto :goto_14
.end method
