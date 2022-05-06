.class public final Lmobi/androidcloud/lib/audio/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private gt:[S

.field private value:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/h;->value:[B

    .line 12
    const/16 v0, 0x140

    new-array v0, v0, [S

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/h;->gt:[S

    return-void
.end method

.method private a([S)V
    .registers 10

    .prologue
    .line 31
    array-length v0, p1

    int-to-float v0, v0

    const/high16 v1, 0x45fa0000    # 8000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x467a0000    # 16000.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 35
    int-to-float v0, v2

    array-length v1, p1

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 36
    iget-object v4, p0, Lmobi/androidcloud/lib/audio/h;->gt:[S

    .line 39
    const/4 v0, 0x0

    move v1, v0

    :goto_15
    if-ge v1, v2, :cond_38

    .line 42
    int-to-float v0, v1

    div-float v5, v0, v3

    .line 43
    float-to-int v6, v5

    .line 44
    add-int/lit8 v0, v6, 0x1

    .line 45
    array-length v7, p1

    if-lt v0, v7, :cond_23

    .line 46
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 49
    :cond_23
    aget-short v0, p1, v0

    aget-short v7, p1, v6

    sub-int/2addr v0, v7

    int-to-float v0, v0

    .line 50
    int-to-float v7, v6

    sub-float/2addr v5, v7

    .line 52
    mul-float/2addr v0, v5

    aget-short v5, p1, v6

    int-to-float v5, v5

    add-float/2addr v0, v5

    float-to-int v0, v0

    int-to-short v0, v0

    aput-short v0, v4, v1

    .line 39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 56
    :cond_38
    return-void
.end method


# virtual methods
.method public a([SLjava/io/BufferedOutputStream;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, p1}, Lmobi/androidcloud/lib/audio/h;->a([S)V

    move v0, v1

    .line 20
    :goto_5
    const/16 v2, 0x140

    if-ge v0, v2, :cond_22

    .line 22
    iget-object v2, p0, Lmobi/androidcloud/lib/audio/h;->gt:[S

    aget-short v2, v2, v0

    .line 23
    iget-object v3, p0, Lmobi/androidcloud/lib/audio/h;->value:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v1

    .line 24
    iget-object v3, p0, Lmobi/androidcloud/lib/audio/h;->value:[B

    const/4 v4, 0x1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    .line 25
    iget-object v2, p0, Lmobi/androidcloud/lib/audio/h;->value:[B

    invoke-virtual {p2, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 27
    :cond_22
    return-void
.end method
