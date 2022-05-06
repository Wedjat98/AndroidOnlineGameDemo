.class Lcom/ledo/fantasy/game/ArcVoiceManager$3;
.super Ljava/lang/Object;
.source "ArcVoiceManager.java"

# interfaces
.implements Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/ArcVoiceManager;->InitSdkAndUserInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAudioPlaybackFailed(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "arcError"    # Lcom/talkray/arcvoice/ArcError;

    .prologue
    .line 170
    const-string v0, "ArcVoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioPlaybackFailed palying:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/ArcVoiceManager$3$2;

    invoke-direct {v1, p0}, Lcom/ledo/fantasy/game/ArcVoiceManager$3$2;-><init>(Lcom/ledo/fantasy/game/ArcVoiceManager$3;)V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method public onAudioPlaybackFinished(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "didFinishPlaying"    # Z

    .prologue
    .line 159
    const-string v0, "ArcVoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "audioPlaybackFinished"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/ArcVoiceManager$3$1;

    invoke-direct {v1, p0, p2}, Lcom/ledo/fantasy/game/ArcVoiceManager$3$1;-><init>(Lcom/ledo/fantasy/game/ArcVoiceManager$3;Z)V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method public onAudioRecordingFailed(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "arcError"    # Lcom/talkray/arcvoice/ArcError;

    .prologue
    .line 193
    const-string v0, "ArcVoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioRecordingFailed recording to:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/ArcVoiceManager$3$4;

    invoke-direct {v1, p0}, Lcom/ledo/fantasy/game/ArcVoiceManager$3$4;-><init>(Lcom/ledo/fantasy/game/ArcVoiceManager$3;)V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method public onAudioRecordingStartSuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string v0, "ArcVoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioRecordingStartSuccess recording:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/ArcVoiceManager$3$3;

    invoke-direct {v1, p0}, Lcom/ledo/fantasy/game/ArcVoiceManager$3$3;-><init>(Lcom/ledo/fantasy/game/ArcVoiceManager$3;)V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method
