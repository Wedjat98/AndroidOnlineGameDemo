.class public Lorg/fmod/AudioDevice;
.super Ljava/lang/Object;
.source "AudioDevice.java"


# instance fields
.field private mTrack:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fmod/AudioDevice;->mTrack:Landroid/media/AudioTrack;

    return-void
.end method

.method private fetchChannelConfigFromCount(I)I
    .registers 4

    .prologue
    const/4 v0, 0x2

    .line 86
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 90
    :goto_4
    return v0

    .line 87
    :cond_5
    if-ne p1, v0, :cond_9

    const/4 v0, 0x3

    goto :goto_4

    .line 88
    :cond_9
    const/4 v0, 0x6

    if-ne p1, v0, :cond_f

    const/16 v0, 0xfc

    goto :goto_4

    .line 89
    :cond_f
    const/16 v0, 0x8

    if-ne p1, v0, :cond_16

    const/16 v0, 0x18fc

    goto :goto_4

    .line 90
    :cond_16
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lorg/fmod/AudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_e

    .line 74
    :goto_5
    iget-object v0, p0, Lorg/fmod/AudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fmod/AudioDevice;->mTrack:Landroid/media/AudioTrack;

    .line 76
    return-void

    .line 69
    :catch_e
    move-exception v0

    .line 71
    const-string v0, "fmod"

    const-string v1, "AudioDevice::init : AudioTrack stop caused IllegalStateException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public init(IIII)Z
    .registers 14

    .prologue
    const/4 v0, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 17
    invoke-direct {p0, p1}, Lorg/fmod/AudioDevice;->fetchChannelConfigFromCount(I)I

    move-result v3

    .line 18
    invoke-static {p2, v3, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 19
    if-gez v0, :cond_4b

    .line 21
    const-string v1, "fmod"

    const-string v2, "AudioDevice::init : Couldn\'t query minimum buffer size, possibly unsupported sample rate or channel count"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :goto_14
    mul-int v1, p3, p4

    mul-int/2addr v1, p1

    mul-int/lit8 v5, v1, 0x2

    .line 29
    if-le v5, v0, :cond_86

    .line 34
    :goto_1b
    const-string v0, "fmod"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioDevice::init : Actual buffer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :try_start_39
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/fmod/AudioDevice;->mTrack:Landroid/media/AudioTrack;
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_44} :catch_6a

    .line 48
    :try_start_44
    iget-object v0, p0, Lorg/fmod/AudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_49
    .catch Ljava/lang/IllegalStateException; {:try_start_44 .. :try_end_49} :catch_74

    move v0, v7

    .line 60
    :goto_4a
    return v0

    .line 25
    :cond_4b
    const-string v1, "fmod"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioDevice::init : Min buffer size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " bytes"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 40
    :catch_6a
    move-exception v0

    .line 42
    const-string v0, "fmod"

    const-string v1, "AudioDevice::init : AudioTrack creation caused IllegalArgumentException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 43
    goto :goto_4a

    .line 50
    :catch_74
    move-exception v0

    .line 52
    const-string v0, "fmod"

    const-string v1, "AudioDevice::init : AudioTrack play caused IllegalStateException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lorg/fmod/AudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fmod/AudioDevice;->mTrack:Landroid/media/AudioTrack;

    move v0, v8

    .line 57
    goto :goto_4a

    :cond_86
    move v5, v0

    goto :goto_1b
.end method

.method public write([BI)V
    .registers 5

    .prologue
    .line 80
    iget-object v0, p0, Lorg/fmod/AudioDevice;->mTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/media/AudioTrack;->write([BII)I

    .line 81
    return-void
.end method
