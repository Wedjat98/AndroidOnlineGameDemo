.class Lcom/ledo/fantasy/game/ArcVoiceManager$4;
.super Ljava/lang/Object;
.source "ArcVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/ArcVoiceManager;->StopPlayingAudioRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 255
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ledo/fantasy/game/GameJNILib;->onStopPlayVoiceResult(Z)V

    .line 256
    return-void
.end method
