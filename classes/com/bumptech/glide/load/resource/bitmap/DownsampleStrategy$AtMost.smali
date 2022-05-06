.class Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$AtMost;
.super Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AtMost"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getSampleSizeRounding(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .registers 6
    .param p1, "sourceWidth"    # I
    .param p2, "sourceHeight"    # I
    .param p3, "requestedWidth"    # I
    .param p4, "requestedHeight"    # I

    .prologue
    .line 210
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    return-object v0
.end method

.method public getScaleFactor(IIII)F
    .registers 12
    .param p1, "sourceWidth"    # I
    .param p2, "sourceHeight"    # I
    .param p3, "requestedWidth"    # I
    .param p4, "requestedHeight"    # I

    .prologue
    const/4 v3, 0x1

    .line 199
    int-to-float v4, p2

    int-to-float v5, p4

    div-float/2addr v4, v5

    int-to-float v5, p1

    int-to-float v6, p3

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 201
    .local v2, "maxIntegerFactor":I
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 203
    .local v1, "lesserOrEqualSampleSize":I
    if-ge v1, v2, :cond_22

    :goto_1b
    shl-int v0, v1, v3

    .line 204
    .local v0, "greaterOrEqualSampleSize":I
    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v4, v0

    div-float/2addr v3, v4

    return v3

    .line 203
    .end local v0    # "greaterOrEqualSampleSize":I
    :cond_22
    const/4 v3, 0x0

    goto :goto_1b
.end method
