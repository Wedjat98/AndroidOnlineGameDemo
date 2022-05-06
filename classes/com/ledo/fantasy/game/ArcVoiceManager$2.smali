.class Lcom/ledo/fantasy/game/ArcVoiceManager$2;
.super Ljava/lang/Object;
.source "ArcVoiceManager.java"

# interfaces
.implements Lcom/talkray/arcvoice/ArcMessagingEventHandler;


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
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAudioFileDownloadFailure(Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;Ljava/lang/Exception;)V
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "arcError"    # Lcom/talkray/arcvoice/ArcError;
    .param p4, "e"    # Ljava/lang/Exception;

    .prologue
    .line 140
    const-string v0, "ArcVoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioMessageReceiveFailure  with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/talkray/arcvoice/ArcError;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/ArcVoiceManager$2$4;

    invoke-direct {v1, p0, p2}, Lcom/ledo/fantasy/game/ArcVoiceManager$2$4;-><init>(Lcom/ledo/fantasy/game/ArcVoiceManager$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method public onAudioFileDownloadSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v0, "ArcVoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioFileDownloadSuccess: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/ArcVoiceManager$2$3;

    invoke-direct {v1, p0, p2}, Lcom/ledo/fantasy/game/ArcVoiceManager$2$3;-><init>(Lcom/ledo/fantasy/game/ArcVoiceManager$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public onAudioFileUploadFailure(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "arcError"    # Lcom/talkray/arcvoice/ArcError;

    .prologue
    .line 115
    const-string v0, "ArcVoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioFileUploadFailure with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/talkray/arcvoice/ArcError;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/ArcVoiceManager$2$2;

    invoke-direct {v1, p0, p1}, Lcom/ledo/fantasy/game/ArcVoiceManager$2$2;-><init>(Lcom/ledo/fantasy/game/ArcVoiceManager$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public onAudioFileUploadSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v0, "ArcVoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioFileUploadSuccess: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {p1}, Lcom/ledo/fantasy/game/ArcVoiceManager;->access$0(Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/ArcVoiceManager$2$1;

    invoke-direct {v1, p0, p2}, Lcom/ledo/fantasy/game/ArcVoiceManager$2$1;-><init>(Lcom/ledo/fantasy/game/ArcVoiceManager$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method
