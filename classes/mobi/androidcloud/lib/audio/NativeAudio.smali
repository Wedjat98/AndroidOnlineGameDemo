.class public Lmobi/androidcloud/lib/audio/NativeAudio;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-string v0, "talkraytwo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native close(I)I
.end method

.method public native getEchoMetric(I)I
.end method

.method public native getEchoStatus(I)I
.end method

.method public native open(IIII)I
.end method

.method public native read([SI)I
.end method

.method public native readIlbcFrame([B)I
.end method

.method public native readOpusFrame([B)I
.end method

.method public native setLatencyOffset(S)I
.end method

.method public native setMobileConfig(SSI)I
.end method

.method public native setOpusBitrate(I)I
.end method

.method public setSpeakerMode(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 66
    if-eqz p1, :cond_8

    .line 68
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1, v1}, Lmobi/androidcloud/lib/audio/NativeAudio;->setMobileConfig(SSI)I

    .line 76
    :goto_7
    return-void

    .line 73
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lmobi/androidcloud/lib/audio/NativeAudio;->setMobileConfig(SSI)I

    goto :goto_7
.end method

.method public native write([SI)I
.end method

.method public native writeIlbcFrameWithSeq([BSI)I
.end method

.method public native writeOpusFrameWithSeq([BSI)I
.end method
