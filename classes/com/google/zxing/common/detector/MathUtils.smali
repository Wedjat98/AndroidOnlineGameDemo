.class public final Lcom/google/zxing/common/detector/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static distance(FFFF)F
    .registers 8
    .param p0, "aX"    # F
    .param p1, "aY"    # F
    .param p2, "bX"    # F
    .param p3, "bY"    # F

    .prologue
    .line 48
    sub-float v0, p0, p2

    .line 49
    .local v0, "xDiff":F
    sub-float v1, p1, p3

    .line 50
    .local v1, "yDiff":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static distance(IIII)F
    .registers 8
    .param p0, "aX"    # I
    .param p1, "aY"    # I
    .param p2, "bX"    # I
    .param p3, "bY"    # I

    .prologue
    .line 61
    sub-int v0, p0, p2

    .line 62
    .local v0, "xDiff":I
    sub-int v1, p1, p3

    .line 63
    .local v1, "yDiff":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static round(F)I
    .registers 2
    .param p0, "d"    # F

    .prologue
    .line 37
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_a

    const/high16 v0, -0x41000000    # -0.5f

    :goto_7
    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0

    :cond_a
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_7
.end method

.method public static sum([I)I
    .registers 5
    .param p0, "array"    # [I

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "count":I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_b

    aget v0, p0, v2

    .line 73
    .local v0, "a":I
    add-int/2addr v1, v0

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 75
    .end local v0    # "a":I
    :cond_b
    return v1
.end method
