.class public abstract Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.super Ljava/lang/Object;
.source "OneDimensionalCodeWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static appendPattern([ZI[IZ)I
    .registers 12
    .param p0, "target"    # [Z
    .param p1, "pos"    # I
    .param p2, "pattern"    # [I
    .param p3, "startColor"    # Z

    .prologue
    const/4 v5, 0x0

    .line 102
    move v0, p3

    .line 103
    .local v0, "color":Z
    const/4 v3, 0x0

    .line 104
    .local v3, "numAdded":I
    array-length v7, p2

    move v6, v5

    :goto_5
    if-ge v6, v7, :cond_1f

    aget v2, p2, v6

    .line 105
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v4, p1

    .end local p1    # "pos":I
    .local v4, "pos":I
    :goto_b
    if-ge v1, v2, :cond_15

    .line 106
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "pos":I
    .restart local p1    # "pos":I
    aput-boolean v0, p0, v4

    .line 105
    add-int/lit8 v1, v1, 0x1

    move v4, p1

    .end local p1    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_b

    .line 108
    :cond_15
    add-int/2addr v3, v2

    .line 109
    if-nez v0, :cond_1d

    const/4 v0, 0x1

    .line 104
    :goto_19
    add-int/lit8 v6, v6, 0x1

    move p1, v4

    .end local v4    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_5

    .end local p1    # "pos":I
    .restart local v4    # "pos":I
    :cond_1d
    move v0, v5

    .line 109
    goto :goto_19

    .line 111
    .end local v1    # "j":I
    .end local v2    # "len":I
    .end local v4    # "pos":I
    .restart local p1    # "pos":I
    :cond_1f
    return v3
.end method

.method private static renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;
    .registers 14
    .param p0, "code"    # [Z
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "sidesMargin"    # I

    .prologue
    .line 75
    array-length v1, p0

    .line 77
    .local v1, "inputWidth":I
    add-int v0, v1, p3

    .line 78
    .local v0, "fullWidth":I
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 79
    .local v7, "outputWidth":I
    const/4 v9, 0x1

    invoke-static {v9, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 81
    .local v6, "outputHeight":I
    div-int v4, v7, v0

    .line 82
    .local v4, "multiple":I
    mul-int v9, v1, v4

    sub-int v9, v7, v9

    div-int/lit8 v3, v9, 0x2

    .line 84
    .local v3, "leftPadding":I
    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v5, v7, v6}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 85
    .local v5, "output":Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    .local v2, "inputX":I
    move v8, v3

    .local v8, "outputX":I
    :goto_1b
    if-ge v2, v1, :cond_29

    .line 86
    aget-boolean v9, p0, v2

    if-eqz v9, :cond_25

    .line 87
    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9, v4, v6}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 85
    :cond_25
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v8, v4

    goto :goto_1b

    .line 90
    :cond_29
    return-object v5
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .registers 11
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 10
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 53
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Found empty contents"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_e
    if-ltz p3, :cond_12

    if-gez p4, :cond_31

    .line 58
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Negative size is not allowed. Input: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_31
    invoke-virtual {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->getDefaultMargin()I

    move-result v0

    .line 63
    .local v0, "sidesMargin":I
    if-eqz p5, :cond_4d

    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 64
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 67
    :cond_4d
    invoke-virtual {p0, p1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;)[Z

    move-result-object v1

    .line 68
    invoke-static {v1, p3, p4, v0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method public abstract encode(Ljava/lang/String;)[Z
.end method

.method public getDefaultMargin()I
    .registers 2

    .prologue
    .line 117
    const/16 v0, 0xa

    return v0
.end method
