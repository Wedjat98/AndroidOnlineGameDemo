.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Lcom/google/zxing/common/GlobalHistogramBinarizer;
.source "HybridBinarizer.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x8

.field private static final BLOCK_SIZE_MASK:I = 0x7

.field private static final BLOCK_SIZE_POWER:I = 0x3

.field private static final MINIMUM_DIMENSION:I = 0x28

.field private static final MIN_DYNAMIC_RANGE:I = 0x18


# instance fields
.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .registers 2
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 54
    return-void
.end method

.method private static calculateBlackPoints([BIIII)[[I
    .registers 26
    .param p0, "luminances"    # [B
    .param p1, "subWidth"    # I
    .param p2, "subHeight"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 166
    move/from16 v0, p2

    move/from16 v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v18

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 167
    .local v4, "blackPoints":[[I
    const/4 v15, 0x0

    .local v15, "y":I
    :goto_15
    move/from16 v0, p2

    if-ge v15, v0, :cond_cd

    .line 168
    shl-int/lit8 v16, v15, 0x3

    .line 169
    .local v16, "yoffset":I
    add-int/lit8 v7, p4, -0x8

    .line 170
    .local v7, "maxYOffset":I
    move/from16 v0, v16

    if-le v0, v7, :cond_23

    .line 171
    move/from16 v16, v7

    .line 173
    :cond_23
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_24
    move/from16 v0, p1

    if-ge v12, v0, :cond_c9

    .line 174
    shl-int/lit8 v13, v12, 0x3

    .line 175
    .local v13, "xoffset":I
    add-int/lit8 v6, p3, -0x8

    .line 176
    .local v6, "maxXOffset":I
    if-le v13, v6, :cond_2f

    .line 177
    move v13, v6

    .line 179
    :cond_2f
    const/4 v11, 0x0

    .line 180
    .local v11, "sum":I
    const/16 v8, 0xff

    .line 181
    .local v8, "min":I
    const/4 v5, 0x0

    .line 182
    .local v5, "max":I
    const/16 v17, 0x0

    .local v17, "yy":I
    mul-int v18, v16, p3

    add-int v9, v18, v13

    .local v9, "offset":I
    :goto_39
    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_90

    .line 183
    const/4 v14, 0x0

    .local v14, "xx":I
    :goto_42
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ge v14, v0, :cond_5a

    .line 184
    add-int v18, v9, v14

    aget-byte v18, p0, v18

    move/from16 v0, v18

    and-int/lit16 v10, v0, 0xff

    .line 185
    .local v10, "pixel":I
    add-int/2addr v11, v10

    .line 187
    if-ge v10, v8, :cond_54

    .line 188
    move v8, v10

    .line 190
    :cond_54
    if-le v10, v5, :cond_57

    .line 191
    move v5, v10

    .line 183
    :cond_57
    add-int/lit8 v14, v14, 0x1

    goto :goto_42

    .line 195
    .end local v10    # "pixel":I
    :cond_5a
    sub-int v18, v5, v8

    const/16 v19, 0x18

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8b

    .line 197
    add-int/lit8 v17, v17, 0x1

    add-int v9, v9, p3

    :goto_68
    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8b

    .line 198
    const/4 v14, 0x0

    :goto_71
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ge v14, v0, :cond_86

    .line 199
    add-int v18, v9, v14

    aget-byte v18, p0, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    add-int v11, v11, v18

    .line 198
    add-int/lit8 v14, v14, 0x1

    goto :goto_71

    .line 197
    :cond_86
    add-int/lit8 v17, v17, 0x1

    add-int v9, v9, p3

    goto :goto_68

    .line 182
    :cond_8b
    add-int/lit8 v17, v17, 0x1

    add-int v9, v9, p3

    goto :goto_39

    .line 206
    .end local v14    # "xx":I
    :cond_90
    shr-int/lit8 v2, v11, 0x6

    .line 207
    .local v2, "average":I
    sub-int v18, v5, v8

    const/16 v19, 0x18

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_c1

    .line 214
    div-int/lit8 v2, v8, 0x2

    .line 216
    if-lez v15, :cond_c1

    if-lez v12, :cond_c1

    .line 224
    add-int/lit8 v18, v15, -0x1

    aget-object v18, v4, v18

    aget v18, v18, v12

    aget-object v19, v4, v15

    add-int/lit8 v20, v12, -0x1

    aget v19, v19, v20

    mul-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    add-int/lit8 v19, v15, -0x1

    aget-object v19, v4, v19

    add-int/lit8 v20, v12, -0x1

    aget v19, v19, v20

    add-int v18, v18, v19

    div-int/lit8 v3, v18, 0x4

    .line 226
    .local v3, "averageNeighborBlackPoint":I
    if-ge v8, v3, :cond_c1

    .line 227
    move v2, v3

    .line 231
    .end local v3    # "averageNeighborBlackPoint":I
    :cond_c1
    aget-object v18, v4, v15

    aput v2, v18, v12

    .line 173
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_24

    .line 167
    .end local v2    # "average":I
    .end local v5    # "max":I
    .end local v6    # "maxXOffset":I
    .end local v8    # "min":I
    .end local v9    # "offset":I
    .end local v11    # "sum":I
    .end local v13    # "xoffset":I
    .end local v17    # "yy":I
    :cond_c9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_15

    .line 234
    .end local v7    # "maxYOffset":I
    .end local v12    # "x":I
    .end local v16    # "yoffset":I
    :cond_cd
    return-object v4
.end method

.method private static calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V
    .registers 23
    .param p0, "luminances"    # [B
    .param p1, "subWidth"    # I
    .param p2, "subHeight"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "blackPoints"    # [[I
    .param p6, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 108
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_1
    move/from16 v0, p2

    if-ge v14, v0, :cond_5a

    .line 109
    shl-int/lit8 v3, v14, 0x3

    .line 110
    .local v3, "yoffset":I
    add-int/lit8 v10, p4, -0x8

    .line 111
    .local v10, "maxYOffset":I
    if-le v3, v10, :cond_c

    .line 112
    move v3, v10

    .line 114
    :cond_c
    const/4 v13, 0x0

    .local v13, "x":I
    :goto_d
    move/from16 v0, p1

    if-ge v13, v0, :cond_57

    .line 115
    shl-int/lit8 v2, v13, 0x3

    .line 116
    .local v2, "xoffset":I
    add-int/lit8 v9, p3, -0x8

    .line 117
    .local v9, "maxXOffset":I
    if-le v2, v9, :cond_18

    .line 118
    move v2, v9

    .line 120
    :cond_18
    const/4 v1, 0x2

    add-int/lit8 v5, p1, -0x3

    invoke-static {v13, v1, v5}, Lcom/google/zxing/common/HybridBinarizer;->cap(III)I

    move-result v8

    .line 121
    .local v8, "left":I
    const/4 v1, 0x2

    add-int/lit8 v5, p2, -0x3

    invoke-static {v14, v1, v5}, Lcom/google/zxing/common/HybridBinarizer;->cap(III)I

    move-result v12

    .line 122
    .local v12, "top":I
    const/4 v11, 0x0

    .line 123
    .local v11, "sum":I
    const/4 v15, -0x2

    .local v15, "z":I
    :goto_28
    const/4 v1, 0x2

    if-gt v15, v1, :cond_49

    .line 124
    add-int v1, v12, v15

    aget-object v7, p5, v1

    .line 125
    .local v7, "blackRow":[I
    add-int/lit8 v1, v8, -0x2

    aget v1, v7, v1

    add-int/lit8 v5, v8, -0x1

    aget v5, v7, v5

    add-int/2addr v1, v5

    aget v5, v7, v8

    add-int/2addr v1, v5

    add-int/lit8 v5, v8, 0x1

    aget v5, v7, v5

    add-int/2addr v1, v5

    add-int/lit8 v5, v8, 0x2

    aget v5, v7, v5

    add-int/2addr v1, v5

    add-int/2addr v11, v1

    .line 123
    add-int/lit8 v15, v15, 0x1

    goto :goto_28

    .line 127
    .end local v7    # "blackRow":[I
    :cond_49
    div-int/lit8 v4, v11, 0x19

    .local v4, "average":I
    move-object/from16 v1, p0

    move/from16 v5, p3

    move-object/from16 v6, p6

    .line 128
    invoke-static/range {v1 .. v6}, Lcom/google/zxing/common/HybridBinarizer;->thresholdBlock([BIIIILcom/google/zxing/common/BitMatrix;)V

    .line 114
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 108
    .end local v2    # "xoffset":I
    .end local v4    # "average":I
    .end local v8    # "left":I
    .end local v9    # "maxXOffset":I
    .end local v11    # "sum":I
    .end local v12    # "top":I
    .end local v15    # "z":I
    :cond_57
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 131
    .end local v3    # "yoffset":I
    .end local v10    # "maxYOffset":I
    .end local v13    # "x":I
    :cond_5a
    return-void
.end method

.method private static cap(III)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 134
    if-ge p0, p1, :cond_3

    .end local p1    # "min":I
    :goto_2
    return p1

    .restart local p1    # "min":I
    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method private static thresholdBlock([BIIIILcom/google/zxing/common/BitMatrix;)V
    .registers 12
    .param p0, "luminances"    # [B
    .param p1, "xoffset"    # I
    .param p2, "yoffset"    # I
    .param p3, "threshold"    # I
    .param p4, "stride"    # I
    .param p5, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    const/16 v5, 0x8

    .line 146
    const/4 v2, 0x0

    .local v2, "y":I
    mul-int v3, p2, p4

    add-int v0, v3, p1

    .local v0, "offset":I
    :goto_7
    if-ge v2, v5, :cond_22

    .line 147
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_a
    if-ge v1, v5, :cond_1e

    .line 149
    add-int v3, v0, v1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-gt v3, p3, :cond_1b

    .line 150
    add-int v3, p1, v1

    add-int v4, p2, v2

    invoke-virtual {p5, v3, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 147
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 146
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, p4

    goto :goto_7

    .line 154
    .end local v1    # "x":I
    :cond_22
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .registers 3
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;

    .prologue
    .line 93
    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x28

    .line 63
    iget-object v8, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-eqz v8, :cond_9

    .line 64
    iget-object v8, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 88
    :goto_8
    return-object v8

    .line 66
    :cond_9
    invoke-virtual {p0}, Lcom/google/zxing/common/HybridBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v7

    .line 67
    .local v7, "source":Lcom/google/zxing/LuminanceSource;
    invoke-virtual {v7}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v3

    .line 68
    .local v3, "width":I
    invoke-virtual {v7}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v4

    .line 69
    .local v4, "height":I
    if-lt v3, v9, :cond_3e

    if-lt v4, v9, :cond_3e

    .line 70
    invoke-virtual {v7}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v0

    .line 71
    .local v0, "luminances":[B
    shr-int/lit8 v1, v3, 0x3

    .line 72
    .local v1, "subWidth":I
    and-int/lit8 v8, v3, 0x7

    if-eqz v8, :cond_25

    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 75
    :cond_25
    shr-int/lit8 v2, v4, 0x3

    .line 76
    .local v2, "subHeight":I
    and-int/lit8 v8, v4, 0x7

    if-eqz v8, :cond_2d

    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 79
    :cond_2d
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/HybridBinarizer;->calculateBlackPoints([BIIII)[[I

    move-result-object v5

    .line 81
    .local v5, "blackPoints":[[I
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, v3, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 82
    .local v6, "newMatrix":Lcom/google/zxing/common/BitMatrix;
    invoke-static/range {v0 .. v6}, Lcom/google/zxing/common/HybridBinarizer;->calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V

    .line 83
    iput-object v6, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 88
    .end local v0    # "luminances":[B
    .end local v1    # "subWidth":I
    .end local v2    # "subHeight":I
    .end local v5    # "blackPoints":[[I
    .end local v6    # "newMatrix":Lcom/google/zxing/common/BitMatrix;
    :goto_3b
    iget-object v8, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    goto :goto_8

    .line 86
    :cond_3e
    invoke-super {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    iput-object v8, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    goto :goto_3b
.end method
