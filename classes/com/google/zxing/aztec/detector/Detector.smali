.class public final Lcom/google/zxing/aztec/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/detector/Detector$Point;
    }
.end annotation


# static fields
.field private static final EXPECTED_CORNER_BITS:[I


# instance fields
.field private compact:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private nbCenterLayers:I

.field private nbDataBlocks:I

.field private nbLayers:I

.field private shift:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    return-void

    nop

    :array_a
    .array-data 4
        0xee0
        0x1dc
        0x83b
        0x707
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 2
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 49
    return-void
.end method

.method private static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .registers 6
    .param p0, "a"    # Lcom/google/zxing/ResultPoint;
    .param p1, "b"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    return v0
.end method

.method private static distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F
    .registers 6
    .param p0, "a"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p1, "b"    # Lcom/google/zxing/aztec/detector/Detector$Point;

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v0

    return v0
.end method

.method private static expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;
    .registers 14
    .param p0, "cornerPoints"    # [Lcom/google/zxing/ResultPoint;
    .param p1, "oldSide"    # F
    .param p2, "newSide"    # F

    .prologue
    .line 528
    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, p1

    div-float v4, p2, v9

    .line 529
    .local v4, "ratio":F
    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    sub-float v2, v9, v10

    .line 530
    .local v2, "dx":F
    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float v3, v9, v10

    .line 531
    .local v3, "dy":F
    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v0, v9, v10

    .line 532
    .local v0, "centerx":F
    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v1, v9, v10

    .line 534
    .local v1, "centery":F
    new-instance v5, Lcom/google/zxing/ResultPoint;

    mul-float v9, v4, v2

    add-float/2addr v9, v0

    mul-float v10, v4, v3

    add-float/2addr v10, v1

    invoke-direct {v5, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 535
    .local v5, "result0":Lcom/google/zxing/ResultPoint;
    new-instance v7, Lcom/google/zxing/ResultPoint;

    mul-float v9, v4, v2

    sub-float v9, v0, v9

    mul-float v10, v4, v3

    sub-float v10, v1, v10

    invoke-direct {v7, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 537
    .local v7, "result2":Lcom/google/zxing/ResultPoint;
    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    const/4 v10, 0x3

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    sub-float v2, v9, v10

    .line 538
    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    const/4 v10, 0x3

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float v3, v9, v10

    .line 539
    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    const/4 v10, 0x3

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v0, v9, v10

    .line 540
    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    const/4 v10, 0x3

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v1, v9, v10

    .line 541
    new-instance v6, Lcom/google/zxing/ResultPoint;

    mul-float v9, v4, v2

    add-float/2addr v9, v0

    mul-float v10, v4, v3

    add-float/2addr v10, v1

    invoke-direct {v6, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 542
    .local v6, "result1":Lcom/google/zxing/ResultPoint;
    new-instance v8, Lcom/google/zxing/ResultPoint;

    mul-float v9, v4, v2

    sub-float v9, v0, v9

    mul-float v10, v4, v3

    sub-float v10, v1, v10

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 544
    .local v8, "result3":Lcom/google/zxing/ResultPoint;
    const/4 v9, 0x4

    new-array v9, v9, [Lcom/google/zxing/ResultPoint;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v7, v9, v10

    const/4 v10, 0x3

    aput-object v8, v9, v10

    return-object v9
.end method

.method private extractParameters([Lcom/google/zxing/ResultPoint;)V
    .registers 16
    .param p1, "bullsEyeCorners"    # [Lcom/google/zxing/ResultPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 100
    aget-object v7, p1, v9

    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v7

    if-eqz v7, :cond_25

    aget-object v7, p1, v10

    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v7

    if-eqz v7, :cond_25

    aget-object v7, p1, v11

    .line 101
    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v7

    if-eqz v7, :cond_25

    aget-object v7, p1, v12

    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v7

    if-nez v7, :cond_2a

    .line 102
    :cond_25
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7

    .line 104
    :cond_2a
    iget v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v2, v7, 0x2

    .line 106
    .local v2, "length":I
    new-array v6, v13, [I

    aget-object v7, p1, v9

    aget-object v8, p1, v10

    .line 107
    invoke-direct {p0, v7, v8, v2}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v9

    aget-object v7, p1, v10

    aget-object v8, p1, v11

    .line 108
    invoke-direct {p0, v7, v8, v2}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v10

    aget-object v7, p1, v11

    aget-object v8, p1, v12

    .line 109
    invoke-direct {p0, v7, v8, v2}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v11

    aget-object v7, p1, v12

    aget-object v8, p1, v9

    .line 110
    invoke-direct {p0, v7, v8, v2}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v12

    .line 117
    .local v6, "sides":[I
    invoke-static {v6, v2}, Lcom/google/zxing/aztec/detector/Detector;->getRotation([II)I

    move-result v7

    iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    .line 120
    const-wide/16 v4, 0x0

    .line 121
    .local v4, "parameterData":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_61
    if-ge v1, v13, :cond_8c

    .line 122
    iget v7, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/2addr v7, v1

    rem-int/lit8 v7, v7, 0x4

    aget v3, v6, v7

    .line 123
    .local v3, "side":I
    iget-boolean v7, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v7, :cond_7b

    .line 125
    const/4 v7, 0x7

    shl-long v8, v4, v7

    .line 126
    shr-int/lit8 v7, v3, 0x1

    and-int/lit8 v7, v7, 0x7f

    int-to-long v10, v7

    add-long v4, v8, v10

    .line 121
    :goto_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 129
    :cond_7b
    const/16 v7, 0xa

    shl-long v8, v4, v7

    .line 130
    shr-int/lit8 v7, v3, 0x2

    and-int/lit16 v7, v7, 0x3e0

    shr-int/lit8 v10, v3, 0x1

    and-int/lit8 v10, v10, 0x1f

    add-int/2addr v7, v10

    int-to-long v10, v7

    add-long v4, v8, v10

    goto :goto_78

    .line 136
    .end local v3    # "side":I
    :cond_8c
    iget-boolean v7, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    invoke-static {v4, v5, v7}, Lcom/google/zxing/aztec/detector/Detector;->getCorrectedParameterData(JZ)I

    move-result v0

    .line 138
    .local v0, "correctedData":I
    iget-boolean v7, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v7, :cond_a3

    .line 140
    shr-int/lit8 v7, v0, 0x6

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 141
    and-int/lit8 v7, v0, 0x3f

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    .line 147
    :goto_a2
    return-void

    .line 144
    :cond_a3
    shr-int/lit8 v7, v0, 0xb

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 145
    and-int/lit16 v7, v0, 0x7ff

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    goto :goto_a2
.end method

.method private getBullsEyeCorners(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;
    .registers 24
    .param p1, "pCenter"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 237
    move-object/from16 v5, p1

    .line 238
    .local v5, "pina":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v7, p1

    .line 239
    .local v7, "pinb":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v9, p1

    .line 240
    .local v9, "pinc":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v11, p1

    .line 242
    .local v11, "pind":Lcom/google/zxing/aztec/detector/Detector$Point;
    const/4 v4, 0x1

    .line 244
    .local v4, "color":Z
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_c7

    .line 245
    const/16 v18, 0x1

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v13

    .line 246
    .local v13, "pouta":Lcom/google/zxing/aztec/detector/Detector$Point;
    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v7, v4, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v14

    .line 247
    .local v14, "poutb":Lcom/google/zxing/aztec/detector/Detector$Point;
    const/16 v18, -0x1

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v9, v4, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v15

    .line 248
    .local v15, "poutc":Lcom/google/zxing/aztec/detector/Detector$Point;
    const/16 v18, -0x1

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v11, v4, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v16

    .line 254
    .local v16, "poutd":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_ad

    .line 255
    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    invoke-static {v11, v5}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    div-float v17, v18, v19

    .line 256
    .local v17, "q":F
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe8000000000000L    # 0.75

    cmpg-double v18, v18, v20

    if-ltz v18, :cond_c7

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff4000000000000L    # 1.25

    cmpl-double v18, v18, v20

    if-gtz v18, :cond_c7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/zxing/aztec/detector/Detector;->isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z

    move-result v18

    if-eqz v18, :cond_c7

    .line 261
    .end local v17    # "q":F
    :cond_ad
    move-object v5, v13

    .line 262
    move-object v7, v14

    .line 263
    move-object v9, v15

    .line 264
    move-object/from16 v11, v16

    .line 266
    if-nez v4, :cond_c5

    const/4 v4, 0x1

    .line 244
    :goto_b5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    goto/16 :goto_11

    .line 266
    :cond_c5
    const/4 v4, 0x0

    goto :goto_b5

    .line 269
    .end local v13    # "pouta":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v14    # "poutb":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v15    # "poutc":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v16    # "poutd":Lcom/google/zxing/aztec/detector/Detector$Point;
    :cond_c7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e8

    .line 270
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v18

    throw v18

    .line 273
    :cond_e8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c3

    const/16 v18, 0x1

    :goto_f8
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    .line 277
    new-instance v6, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v5}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    invoke-virtual {v5}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    sub-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v6, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 278
    .local v6, "pinax":Lcom/google/zxing/ResultPoint;
    new-instance v8, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v8, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 279
    .local v8, "pinbx":Lcom/google/zxing/ResultPoint;
    new-instance v10, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v9}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    invoke-virtual {v9}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 280
    .local v10, "pincx":Lcom/google/zxing/ResultPoint;
    new-instance v12, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v11}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    invoke-virtual {v11}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    sub-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v12, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 284
    .local v12, "pindx":Lcom/google/zxing/ResultPoint;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v6, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    const/16 v19, 0x2

    aput-object v10, v18, v19

    const/16 v19, 0x3

    aput-object v12, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int/lit8 v19, v19, -0x3

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;

    move-result-object v18

    return-object v18

    .line 273
    .end local v6    # "pinax":Lcom/google/zxing/ResultPoint;
    .end local v8    # "pinbx":Lcom/google/zxing/ResultPoint;
    .end local v10    # "pincx":Lcom/google/zxing/ResultPoint;
    .end local v12    # "pindx":Lcom/google/zxing/ResultPoint;
    :cond_1c3
    const/16 v18, 0x0

    goto/16 :goto_f8
.end method

.method private getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
    .registers 16
    .param p1, "p1"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p2, "p2"    # Lcom/google/zxing/aztec/detector/Detector$Point;

    .prologue
    .line 463
    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v1

    .line 464
    .local v1, "d":F
    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v10

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float v2, v10, v1

    .line 465
    .local v2, "dx":F
    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v10

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float v3, v10, v1

    .line 466
    .local v3, "dy":F
    const/4 v5, 0x0

    .line 468
    .local v5, "error":I
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v10

    int-to-float v8, v10

    .line 469
    .local v8, "px":F
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v10

    int-to-float v9, v10

    .line 471
    .local v9, "py":F
    iget-object v10, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v11

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    .line 473
    .local v0, "colorModel":Z
    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 474
    .local v7, "iMax":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3c
    if-ge v6, v7, :cond_55

    .line 475
    add-float/2addr v8, v2

    .line 476
    add-float/2addr v9, v3

    .line 477
    iget-object v10, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v11

    invoke-static {v9}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eq v10, v0, :cond_52

    .line 478
    add-int/lit8 v5, v5, 0x1

    .line 474
    :cond_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 482
    :cond_55
    int-to-float v10, v5

    div-float v4, v10, v1

    .line 484
    .local v4, "errRatio":F
    const v10, 0x3dcccccd    # 0.1f

    cmpl-float v10, v4, v10

    if-lez v10, :cond_68

    const v10, 0x3f666666    # 0.9f

    cmpg-float v10, v4, v10

    if-gez v10, :cond_68

    .line 485
    const/4 v10, 0x0

    .line 488
    :goto_67
    return v10

    :cond_68
    const v10, 0x3dcccccd    # 0.1f

    cmpg-float v10, v4, v10

    if-gtz v10, :cond_74

    const/4 v10, 0x1

    :goto_70
    if-ne v10, v0, :cond_76

    const/4 v10, 0x1

    goto :goto_67

    :cond_74
    const/4 v10, 0x0

    goto :goto_70

    :cond_76
    const/4 v10, -0x1

    goto :goto_67
.end method

.method private static getCorrectedParameterData(JZ)I
    .registers 11
    .param p0, "parameterData"    # J
    .param p2, "compact"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 198
    if-eqz p2, :cond_16

    .line 199
    const/4 v1, 0x7

    .line 200
    .local v1, "numCodewords":I
    const/4 v2, 0x2

    .line 206
    .local v2, "numDataCodewords":I
    :goto_4
    sub-int v3, v1, v2

    .line 207
    .local v3, "numECCodewords":I
    new-array v4, v1, [I

    .line 208
    .local v4, "parameterWords":[I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_1a

    .line 209
    long-to-int v6, p0

    and-int/lit8 v6, v6, 0xf

    aput v6, v4, v0

    .line 210
    const/4 v6, 0x4

    shr-long/2addr p0, v6

    .line 208
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 202
    .end local v0    # "i":I
    .end local v1    # "numCodewords":I
    .end local v2    # "numDataCodewords":I
    .end local v3    # "numECCodewords":I
    .end local v4    # "parameterWords":[I
    :cond_16
    const/16 v1, 0xa

    .line 203
    .restart local v1    # "numCodewords":I
    const/4 v2, 0x4

    .restart local v2    # "numDataCodewords":I
    goto :goto_4

    .line 213
    .restart local v0    # "i":I
    .restart local v3    # "numECCodewords":I
    .restart local v4    # "parameterWords":[I
    :cond_1a
    :try_start_1a
    new-instance v6, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v6, v7}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 214
    invoke-virtual {v6, v4, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_24
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_1a .. :try_end_24} :catch_31

    .line 219
    const/4 v5, 0x0

    .line 220
    .local v5, "result":I
    const/4 v0, 0x0

    :goto_26
    if-ge v0, v2, :cond_37

    .line 221
    shl-int/lit8 v6, v5, 0x4

    aget v7, v4, v0

    add-int v5, v6, v7

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 216
    .end local v5    # "result":I
    :catch_31
    move-exception v6

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 223
    .restart local v5    # "result":I
    :cond_37
    return v5
.end method

.method private getDimension()I
    .registers 3

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v0, :cond_b

    .line 567
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xb

    .line 572
    :goto_a
    return v0

    .line 569
    :cond_b
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_17

    .line 570
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xf

    goto :goto_a

    .line 572
    :cond_17
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    add-int/lit8 v1, v1, -0x4

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xf

    goto :goto_a
.end method

.method private getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
    .registers 8
    .param p1, "init"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p2, "color"    # Z
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 495
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    add-int v0, v2, p3

    .line 496
    .local v0, "x":I
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v2

    add-int v1, v2, p4

    .line 498
    .local v1, "y":I
    :goto_c
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_1d

    .line 499
    add-int/2addr v0, p3

    .line 500
    add-int/2addr v1, p4

    goto :goto_c

    .line 503
    :cond_1d
    sub-int/2addr v0, p3

    .line 504
    sub-int/2addr v1, p4

    .line 506
    :goto_1f
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_2f

    .line 507
    add-int/2addr v0, p3

    goto :goto_1f

    .line 509
    :cond_2f
    sub-int/2addr v0, p3

    .line 511
    :goto_30
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_40

    .line 512
    add-int/2addr v1, p4

    goto :goto_30

    .line 514
    :cond_40
    sub-int/2addr v1, p4

    .line 516
    new-instance v2, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v2
.end method

.method private getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;
    .registers 15

    .prologue
    const/high16 v13, 0x40800000    # 4.0f

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 304
    :try_start_5
    new-instance v7, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v7, v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v7}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 305
    .local v0, "cornerPoints":[Lcom/google/zxing/ResultPoint;
    const/4 v7, 0x0

    aget-object v3, v0, v7

    .line 306
    .local v3, "pointA":Lcom/google/zxing/ResultPoint;
    const/4 v7, 0x1

    aget-object v4, v0, v7

    .line 307
    .local v4, "pointB":Lcom/google/zxing/ResultPoint;
    const/4 v7, 0x2

    aget-object v5, v0, v7

    .line 308
    .local v5, "pointC":Lcom/google/zxing/ResultPoint;
    const/4 v7, 0x3

    aget-object v6, v0, v7
    :try_end_1c
    .catch Lcom/google/zxing/NotFoundException; {:try_start_5 .. :try_end_1c} :catch_9b

    .line 324
    .end local v0    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    .local v6, "pointD":Lcom/google/zxing/ResultPoint;
    :goto_1c
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    add-float/2addr v7, v8

    div-float/2addr v7, v13

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 325
    .local v1, "cx":I
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    add-float/2addr v7, v8

    div-float/2addr v7, v13

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 331
    .local v2, "cy":I
    :try_start_4c
    new-instance v7, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    const/16 v9, 0xf

    invoke-direct {v7, v8, v9, v1, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    invoke-virtual {v7}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 332
    .restart local v0    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    const/4 v7, 0x0

    aget-object v3, v0, v7

    .line 333
    const/4 v7, 0x1

    aget-object v4, v0, v7

    .line 334
    const/4 v7, 0x2

    aget-object v5, v0, v7

    .line 335
    const/4 v7, 0x3

    aget-object v6, v0, v7
    :try_end_65
    .catch Lcom/google/zxing/NotFoundException; {:try_start_4c .. :try_end_65} :catch_f2

    .line 346
    .end local v0    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    :goto_65
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    add-float/2addr v7, v8

    div-float/2addr v7, v13

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 347
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    add-float/2addr v7, v8

    div-float/2addr v7, v13

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 349
    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v7, v1, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v7

    .line 314
    .end local v1    # "cx":I
    .end local v2    # "cy":I
    .end local v3    # "pointA":Lcom/google/zxing/ResultPoint;
    .end local v4    # "pointB":Lcom/google/zxing/ResultPoint;
    .end local v5    # "pointC":Lcom/google/zxing/ResultPoint;
    .end local v6    # "pointD":Lcom/google/zxing/ResultPoint;
    :catch_9b
    move-exception v7

    iget-object v7, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    div-int/lit8 v1, v7, 0x2

    .line 315
    .restart local v1    # "cx":I
    iget-object v7, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    div-int/lit8 v2, v7, 0x2

    .line 316
    .restart local v2    # "cy":I
    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v8, v1, 0x7

    add-int/lit8 v9, v2, -0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v7, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 317
    .restart local v3    # "pointA":Lcom/google/zxing/ResultPoint;
    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v8, v1, 0x7

    add-int/lit8 v9, v2, 0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v7, v10, v11, v11}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 318
    .restart local v4    # "pointB":Lcom/google/zxing/ResultPoint;
    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v8, v1, -0x7

    add-int/lit8 v9, v2, 0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v7, v10, v12, v11}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 319
    .restart local v5    # "pointC":Lcom/google/zxing/ResultPoint;
    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v8, v1, -0x7

    add-int/lit8 v9, v2, -0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v7, v10, v12, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .restart local v6    # "pointD":Lcom/google/zxing/ResultPoint;
    goto/16 :goto_1c

    .line 339
    :catch_f2
    move-exception v7

    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v8, v1, 0x7

    add-int/lit8 v9, v2, -0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v7, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 340
    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v8, v1, 0x7

    add-int/lit8 v9, v2, 0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v7, v10, v11, v11}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 341
    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v8, v1, -0x7

    add-int/lit8 v9, v2, 0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v7, v10, v12, v11}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 342
    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v8, v1, -0x7

    add-int/lit8 v9, v2, -0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v7, v10, v12, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v6

    goto/16 :goto_65
.end method

.method private getMatrixCornerPoints([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .registers 4
    .param p1, "bullsEyeCorners"    # [Lcom/google/zxing/ResultPoint;

    .prologue
    .line 359
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0
.end method

.method private static getRotation([II)I
    .registers 10
    .param p0, "sides"    # [I
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "cornerBits":I
    array-length v5, p0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_18

    aget v2, p0, v4

    .line 169
    .local v2, "side":I
    add-int/lit8 v6, p1, -0x2

    shr-int v6, v2, v6

    shl-int/lit8 v6, v6, 0x1

    and-int/lit8 v7, v2, 0x1

    add-int v3, v6, v7

    .line 170
    .local v3, "t":I
    shl-int/lit8 v6, v0, 0x3

    add-int v0, v6, v3

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 175
    .end local v2    # "side":I
    .end local v3    # "t":I
    :cond_18
    and-int/lit8 v4, v0, 0x1

    shl-int/lit8 v4, v4, 0xb

    shr-int/lit8 v5, v0, 0x1

    add-int v0, v4, v5

    .line 179
    const/4 v1, 0x0

    .local v1, "shift":I
    :goto_21
    const/4 v4, 0x4

    if-ge v1, v4, :cond_34

    .line 180
    sget-object v4, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    aget v4, v4, v1

    xor-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_31

    .line 181
    return v1

    .line 179
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 184
    :cond_34
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4
.end method

.method private isValid(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 548
    if-ltz p1, :cond_16

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_16

    if-lez p2, :cond_16

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private isValid(Lcom/google/zxing/ResultPoint;)Z
    .registers 5
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 552
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    .line 553
    .local v0, "x":I
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 554
    .local v1, "y":I
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    return v2
.end method

.method private isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z
    .registers 13
    .param p1, "p1"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p2, "p2"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p3, "p3"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p4, "p4"    # Lcom/google/zxing/aztec/detector/Detector$Point;

    .prologue
    const/4 v5, 0x0

    .line 428
    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    invoke-direct {v1, v6, v7}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 429
    .end local p1    # "p1":Lcom/google/zxing/aztec/detector/Detector$Point;
    .local v1, "p1":Lcom/google/zxing/aztec/detector/Detector$Point;
    new-instance v2, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-direct {v2, v6, v7}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 430
    .end local p2    # "p2":Lcom/google/zxing/aztec/detector/Detector$Point;
    .local v2, "p2":Lcom/google/zxing/aztec/detector/Detector$Point;
    new-instance v3, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-direct {v3, v6, v7}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 431
    .end local p3    # "p3":Lcom/google/zxing/aztec/detector/Detector$Point;
    .local v3, "p3":Lcom/google/zxing/aztec/detector/Detector$Point;
    new-instance v4, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    invoke-direct {v4, v6, v7}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 433
    .end local p4    # "p4":Lcom/google/zxing/aztec/detector/Detector$Point;
    .local v4, "p4":Lcom/google/zxing/aztec/detector/Detector$Point;
    invoke-direct {p0, v4, v1}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v0

    .line 435
    .local v0, "cInit":I
    if-nez v0, :cond_4c

    .line 453
    :cond_4b
    :goto_4b
    return v5

    .line 439
    :cond_4c
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v6

    .line 441
    if-ne v6, v0, :cond_4b

    .line 445
    invoke-direct {p0, v2, v3}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v6

    .line 447
    if-ne v6, v0, :cond_4b

    .line 451
    invoke-direct {p0, v3, v4}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v6

    .line 453
    if-ne v6, v0, :cond_4b

    const/4 v5, 0x1

    goto :goto_4b
.end method

.method private sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;
    .registers 27
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "bottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v1

    .line 374
    .local v1, "sampler":Lcom/google/zxing/common/GridSampler;
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v3

    .line 376
    .local v3, "dimension":I
    int-to-float v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v4, v4

    sub-float v5, v2, v4

    .line 377
    .local v5, "low":F
    int-to-float v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v4, v4

    add-float v7, v2, v4

    .line 386
    .local v7, "high":F
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    .line 387
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    .line 388
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    .line 389
    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v19

    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    move-object/from16 v2, p1

    move v4, v3

    move v6, v5

    move v8, v5

    move v9, v7

    move v10, v7

    move v11, v5

    move v12, v7

    .line 379
    invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    return-object v2
.end method

.method private sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I
    .registers 15
    .param p1, "p1"    # Lcom/google/zxing/ResultPoint;
    .param p2, "p2"    # Lcom/google/zxing/ResultPoint;
    .param p3, "size"    # I

    .prologue
    .line 401
    const/4 v7, 0x0

    .line 403
    .local v7, "result":I
    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    .line 404
    .local v0, "d":F
    int-to-float v8, p3

    div-float v4, v0, v8

    .line 405
    .local v4, "moduleSize":F
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    .line 406
    .local v5, "px":F
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    .line 407
    .local v6, "py":F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v4

    div-float v1, v8, v0

    .line 408
    .local v1, "dx":F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v4

    div-float v2, v8, v0

    .line 409
    .local v2, "dy":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    if-ge v3, p3, :cond_4b

    .line 410
    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    int-to-float v9, v3

    mul-float/2addr v9, v1

    add-float/2addr v9, v5

    invoke-static {v9}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v9

    int-to-float v10, v3

    mul-float/2addr v10, v2

    add-float/2addr v10, v6

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 411
    const/4 v8, 0x1

    sub-int v9, p3, v3

    add-int/lit8 v9, v9, -0x1

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    .line 409
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 414
    :cond_4b
    return v7
.end method


# virtual methods
.method public detect()Lcom/google/zxing/aztec/AztecDetectorResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;
    .registers 11
    .param p1, "isMirror"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    .line 69
    .local v7, "pCenter":Lcom/google/zxing/aztec/detector/Detector$Point;
    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->getBullsEyeCorners(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 71
    .local v6, "bullsEyeCorners":[Lcom/google/zxing/ResultPoint;
    if-eqz p1, :cond_14

    .line 72
    aget-object v8, v6, v3

    .line 73
    .local v8, "temp":Lcom/google/zxing/ResultPoint;
    aget-object v0, v6, v4

    aput-object v0, v6, v3

    .line 74
    aput-object v8, v6, v4

    .line 78
    .end local v8    # "temp":Lcom/google/zxing/ResultPoint;
    :cond_14
    invoke-direct {p0, v6}, Lcom/google/zxing/aztec/detector/Detector;->extractParameters([Lcom/google/zxing/ResultPoint;)V

    .line 81
    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    rem-int/lit8 v0, v0, 0x4

    aget-object v2, v6, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    aget-object v3, v6, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x4

    aget-object v4, v6, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit8 v0, v0, 0x4

    aget-object v5, v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/aztec/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 88
    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    invoke-direct {p0, v6}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCornerPoints([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 90
    .local v2, "corners":[Lcom/google/zxing/ResultPoint;
    new-instance v0, Lcom/google/zxing/aztec/AztecDetectorResult;

    iget-boolean v3, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    iget v4, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    iget v5, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/aztec/AztecDetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZII)V

    return-object v0
.end method
