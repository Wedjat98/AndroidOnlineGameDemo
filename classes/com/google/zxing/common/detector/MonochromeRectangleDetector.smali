.class public final Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
.super Ljava/lang/Object;
.source "MonochromeRectangleDetector.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_MODULES:I = 0x20


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 2
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 40
    return-void
.end method

.method private blackWhiteRange(IIIIZ)[I
    .registers 13
    .param p1, "fixedDimension"    # I
    .param p2, "maxWhiteRun"    # I
    .param p3, "minDim"    # I
    .param p4, "maxDim"    # I
    .param p5, "horizontal"    # Z

    .prologue
    .line 172
    add-int v5, p3, p4

    div-int/lit8 v0, v5, 0x2

    .line 175
    .local v0, "center":I
    move v2, v0

    .line 176
    .local v2, "start":I
    :cond_5
    :goto_5
    if-lt v2, p3, :cond_32

    .line 177
    if-eqz p5, :cond_14

    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, v2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 178
    :cond_11
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 177
    :cond_14
    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, p1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_11

    .line 180
    :cond_1c
    move v4, v2

    .line 182
    .local v4, "whiteRunStart":I
    :cond_1d
    add-int/lit8 v2, v2, -0x1

    .line 183
    if-lt v2, p3, :cond_2b

    if-eqz p5, :cond_44

    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, v2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 185
    :cond_2b
    :goto_2b
    sub-int v3, v4, v2

    .line 186
    .local v3, "whiteRunSize":I
    if-lt v2, p3, :cond_31

    if-le v3, p2, :cond_5

    .line 187
    :cond_31
    move v2, v4

    .line 192
    .end local v3    # "whiteRunSize":I
    .end local v4    # "whiteRunStart":I
    :cond_32
    add-int/lit8 v2, v2, 0x1

    .line 195
    move v1, v0

    .line 196
    .local v1, "end":I
    :cond_35
    :goto_35
    if-ge v1, p4, :cond_6b

    .line 197
    if-eqz p5, :cond_4d

    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, v1, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 198
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 183
    .end local v1    # "end":I
    .restart local v4    # "whiteRunStart":I
    :cond_44
    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 184
    invoke-virtual {v5, p1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_2b

    .line 197
    .end local v4    # "whiteRunStart":I
    .restart local v1    # "end":I
    :cond_4d
    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, p1, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_41

    .line 200
    :cond_55
    move v4, v1

    .line 202
    .restart local v4    # "whiteRunStart":I
    :cond_56
    add-int/lit8 v1, v1, 0x1

    .line 203
    if-ge v1, p4, :cond_64

    if-eqz p5, :cond_79

    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, v1, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 205
    :cond_64
    :goto_64
    sub-int v3, v1, v4

    .line 206
    .restart local v3    # "whiteRunSize":I
    if-ge v1, p4, :cond_6a

    if-le v3, p2, :cond_35

    .line 207
    :cond_6a
    move v1, v4

    .line 212
    .end local v3    # "whiteRunSize":I
    .end local v4    # "whiteRunStart":I
    :cond_6b
    add-int/lit8 v1, v1, -0x1

    .line 214
    if-le v1, v2, :cond_82

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    :goto_78
    return-object v5

    .line 203
    .restart local v4    # "whiteRunStart":I
    :cond_79
    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 204
    invoke-virtual {v5, p1, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_56

    goto :goto_64

    .line 214
    .end local v4    # "whiteRunStart":I
    :cond_82
    const/4 v5, 0x0

    goto :goto_78
.end method

.method private findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;
    .registers 24
    .param p1, "centerX"    # I
    .param p2, "deltaX"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "centerY"    # I
    .param p6, "deltaY"    # I
    .param p7, "top"    # I
    .param p8, "bottom"    # I
    .param p9, "maxWhiteRun"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v9, 0x0

    .line 112
    .local v9, "lastRange":[I
    move/from16 v2, p5

    .local v2, "y":I
    move v13, p1

    .line 113
    .local v13, "x":I
    :goto_4
    move/from16 v0, p8

    if-ge v2, v0, :cond_aa

    move/from16 v0, p7

    if-lt v2, v0, :cond_aa

    move/from16 v0, p4

    if-ge v13, v0, :cond_aa

    move/from16 v0, p3

    if-lt v13, v0, :cond_aa

    .line 116
    if-nez p2, :cond_2b

    .line 118
    const/4 v6, 0x1

    move-object v1, p0

    move/from16 v3, p9

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v12

    .line 123
    .local v12, "range":[I
    :goto_22
    if-nez v12, :cond_a3

    .line 124
    if-nez v9, :cond_39

    .line 125
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 121
    .end local v12    # "range":[I
    :cond_2b
    const/4 v8, 0x0

    move-object v3, p0

    move v4, v13

    move/from16 v5, p9

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v12

    .restart local v12    # "range":[I
    goto :goto_22

    .line 128
    :cond_39
    if-nez p2, :cond_6d

    .line 129
    sub-int v11, v2, p6

    .line 130
    .local v11, "lastY":I
    const/4 v1, 0x0

    aget v1, v9, v1

    if-ge v1, p1, :cond_62

    .line 131
    const/4 v1, 0x1

    aget v1, v9, v1

    if-le v1, p1, :cond_57

    .line 133
    new-instance v3, Lcom/google/zxing/ResultPoint;

    if-lez p6, :cond_55

    const/4 v1, 0x0

    :goto_4c
    aget v1, v9, v1

    int-to-float v1, v1

    int-to-float v4, v11

    invoke-direct {v3, v1, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object v1, v3

    .line 147
    .end local v11    # "lastY":I
    :goto_54
    return-object v1

    .line 133
    .restart local v11    # "lastY":I
    :cond_55
    const/4 v1, 0x1

    goto :goto_4c

    .line 135
    :cond_57
    new-instance v1, Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x0

    aget v3, v9, v3

    int-to-float v3, v3

    int-to-float v4, v11

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    goto :goto_54

    .line 137
    :cond_62
    new-instance v1, Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x1

    aget v3, v9, v3

    int-to-float v3, v3

    int-to-float v4, v11

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    goto :goto_54

    .line 140
    .end local v11    # "lastY":I
    :cond_6d
    sub-int v10, v13, p2

    .line 141
    .local v10, "lastX":I
    const/4 v1, 0x0

    aget v1, v9, v1

    move/from16 v0, p5

    if-ge v1, v0, :cond_98

    .line 142
    const/4 v1, 0x1

    aget v1, v9, v1

    move/from16 v0, p5

    if-le v1, v0, :cond_8d

    .line 143
    new-instance v3, Lcom/google/zxing/ResultPoint;

    int-to-float v4, v10

    if-gez p2, :cond_8b

    const/4 v1, 0x0

    :goto_83
    aget v1, v9, v1

    int-to-float v1, v1

    invoke-direct {v3, v4, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object v1, v3

    goto :goto_54

    :cond_8b
    const/4 v1, 0x1

    goto :goto_83

    .line 145
    :cond_8d
    new-instance v1, Lcom/google/zxing/ResultPoint;

    int-to-float v3, v10

    const/4 v4, 0x0

    aget v4, v9, v4

    int-to-float v4, v4

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    goto :goto_54

    .line 147
    :cond_98
    new-instance v1, Lcom/google/zxing/ResultPoint;

    int-to-float v3, v10

    const/4 v4, 0x1

    aget v4, v9, v4

    int-to-float v4, v4

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    goto :goto_54

    .line 151
    .end local v10    # "lastX":I
    :cond_a3
    move-object v9, v12

    .line 114
    add-int v2, v2, p6

    add-int v13, v13, p2

    goto/16 :goto_4

    .line 153
    .end local v12    # "range":[I
    :cond_aa
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 53
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    .line 54
    .local v9, "height":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v5

    .line 55
    .local v5, "width":I
    div-int/lit8 v6, v9, 0x2

    .line 56
    .local v6, "halfHeight":I
    div-int/lit8 v2, v5, 0x2

    .line 57
    .local v2, "halfWidth":I
    const/4 v1, 0x1

    div-int/lit16 v3, v9, 0x100

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 58
    .local v16, "deltaY":I
    const/4 v1, 0x1

    div-int/lit16 v3, v5, 0x100

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 64
    .local v27, "deltaX":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v16

    neg-int v7, v0

    const/4 v8, 0x0

    div-int/lit8 v10, v2, 0x2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v8, v1, -0x1

    .line 67
    .local v8, "top":I
    move/from16 v0, v27

    neg-int v3, v0

    const/4 v4, 0x0

    const/4 v7, 0x0

    div-int/lit8 v10, v6, 0x2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v29

    .line 69
    .local v29, "pointB":Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v29 .. v29}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v4, v1, -0x1

    .line 70
    .local v4, "left":I
    const/4 v7, 0x0

    div-int/lit8 v10, v6, 0x2

    move-object/from16 v1, p0

    move/from16 v3, v27

    invoke-direct/range {v1 .. v10}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v30

    .line 72
    .local v30, "pointC":Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v30 .. v30}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v14, v1, 0x1

    .line 73
    .local v14, "right":I
    const/4 v12, 0x0

    div-int/lit8 v19, v2, 0x2

    move-object/from16 v10, p0

    move v11, v2

    move v13, v4

    move v15, v6

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-direct/range {v10 .. v19}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v31

    .line 75
    .local v31, "pointD":Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v31 .. v31}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v25, v1, 0x1

    .line 78
    .local v25, "bottom":I
    const/16 v19, 0x0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v26, v2, 0x4

    move-object/from16 v17, p0

    move/from16 v18, v2

    move/from16 v20, v4

    move/from16 v21, v14

    move/from16 v22, v6

    move/from16 v24, v8

    invoke-direct/range {v17 .. v26}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v28

    .line 81
    .local v28, "pointA":Lcom/google/zxing/ResultPoint;
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x0

    aput-object v28, v1, v3

    const/4 v3, 0x1

    aput-object v29, v1, v3

    const/4 v3, 0x2

    aput-object v30, v1, v3

    const/4 v3, 0x3

    aput-object v31, v1, v3

    return-object v1
.end method
