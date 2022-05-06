.class final Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;
.super Ljava/lang/Object;
.source "HardwareConfigState.java"


# static fields
.field private static final FD_SIZE_LIST:Ljava/io/File;

.field private static final MAXIMUM_FDS_FOR_HARDWARE_CONFIGS:I = 0x2bc

.field private static final MINIMUM_DECODES_BETWEEN_FD_CHECKS:I = 0x32

.field private static final MIN_HARDWARE_DIMENSION:I = 0x80

.field private static volatile instance:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;


# instance fields
.field private volatile decodesSinceLastFdCheck:I

.field private volatile isHardwareConfigAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->FD_SIZE_LIST:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowed:Z

    .line 72
    return-void
.end method

.method static getInstance()Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;
    .registers 2

    .prologue
    .line 60
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->instance:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    if-nez v0, :cond_13

    .line 61
    const-class v1, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    monitor-enter v1

    .line 62
    :try_start_7
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->instance:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    if-nez v0, :cond_12

    .line 63
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->instance:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 65
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 67
    :cond_13
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->instance:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    return-object v0

    .line 65
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private declared-synchronized isFdSizeBelowHardwareLimit()Z
    .registers 6

    .prologue
    const/16 v4, 0x2bc

    const/4 v1, 0x0

    .line 104
    monitor-enter p0

    :try_start_4
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->decodesSinceLastFdCheck:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->decodesSinceLastFdCheck:I

    const/16 v3, 0x32

    if-lt v2, v3, :cond_4e

    .line 105
    const/4 v2, 0x0

    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->decodesSinceLastFdCheck:I

    .line 106
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->FD_SIZE_LIST:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    .line 107
    .local v0, "currentFds":I
    if-ge v0, v4, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowed:Z

    .line 109
    iget-boolean v1, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowed:Z

    if-nez v1, :cond_4e

    const-string v1, "Downsampler"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 110
    const-string v1, "Downsampler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Excluding HARDWARE bitmap config because we\'re over the file descriptor limit, file descriptors "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2bc

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v0    # "currentFds":I
    :cond_4e
    iget-boolean v1, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowed:Z
    :try_end_50
    .catchall {:try_start_4 .. :try_end_50} :catchall_52

    monitor-exit p0

    return v1

    .line 104
    :catchall_52
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method setHardwareConfigIfAllowed(IILandroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/DecodeFormat;ZZ)Z
    .registers 12
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I
    .param p3, "optionsWithScaling"    # Landroid/graphics/BitmapFactory$Options;
    .param p4, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;
    .param p5, "isHardwareConfigAllowed"    # Z
    .param p6, "isExifOrientationRequired"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    const/16 v4, 0x80

    const/4 v1, 0x0

    .line 83
    if-eqz p5, :cond_11

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_11

    sget-object v2, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888_DISALLOW_HARDWARE:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p4, v2, :cond_11

    if-eqz p6, :cond_13

    :cond_11
    move v0, v1

    .line 100
    :cond_12
    :goto_12
    return v0

    .line 90
    :cond_13
    if-lt p1, v4, :cond_27

    if-lt p2, v4, :cond_27

    .line 94
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isFdSizeBelowHardwareLimit()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v0, 0x1

    .line 96
    .local v0, "result":Z
    :goto_1e
    if-eqz v0, :cond_12

    .line 97
    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 98
    iput-boolean v1, p3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_12

    .end local v0    # "result":Z
    :cond_27
    move v0, v1

    .line 94
    goto :goto_1e
.end method
