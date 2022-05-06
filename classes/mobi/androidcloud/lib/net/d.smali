.class final Lmobi/androidcloud/lib/net/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ie:I

.field private final if:I

.field private final ig:I

.field private final ih:D


# direct methods
.method constructor <init>(IID)V
    .registers 6

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lmobi/androidcloud/lib/net/d;->if:I

    .line 27
    iput p1, p0, Lmobi/androidcloud/lib/net/d;->ie:I

    .line 28
    iput p2, p0, Lmobi/androidcloud/lib/net/d;->ig:I

    .line 29
    iput-wide p3, p0, Lmobi/androidcloud/lib/net/d;->ih:D

    .line 30
    return-void
.end method


# virtual methods
.method ja()I
    .registers 7

    .prologue
    .line 33
    iget v0, p0, Lmobi/androidcloud/lib/net/d;->ie:I

    .line 35
    iget v1, p0, Lmobi/androidcloud/lib/net/d;->ie:I

    .line 36
    iget v1, p0, Lmobi/androidcloud/lib/net/d;->ie:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmobi/androidcloud/lib/net/d;->ie:I

    .line 37
    iget v1, p0, Lmobi/androidcloud/lib/net/d;->ie:I

    iget v2, p0, Lmobi/androidcloud/lib/net/d;->ig:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lmobi/androidcloud/lib/net/d;->ie:I

    .line 39
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lmobi/androidcloud/lib/net/d;->ih:D

    mul-double/2addr v2, v4

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 41
    add-int/2addr v0, v1

    return v0
.end method

.method reset()V
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lmobi/androidcloud/lib/net/d;->if:I

    iput v0, p0, Lmobi/androidcloud/lib/net/d;->ie:I

    .line 55
    return-void
.end method
