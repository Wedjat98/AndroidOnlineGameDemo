.class public Lmobi/androidcloud/lib/audio/EchoCancel;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native close()V
.end method

.method public native echoCancelOutgoingAudio([S[SSI)I
.end method

.method public native open(III)I
.end method

.method public native setIncomingAudio([S)I
.end method

.method public native setMobileConfig(SS)I
.end method

.method public setSpeakerMode(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 47
    if-eqz p1, :cond_8

    .line 49
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lmobi/androidcloud/lib/audio/EchoCancel;->setMobileConfig(SS)I

    .line 57
    :goto_7
    return-void

    .line 54
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lmobi/androidcloud/lib/audio/EchoCancel;->setMobileConfig(SS)I

    goto :goto_7
.end method
