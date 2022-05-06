.class Lcom/ledo/fantasy/game/IFlyTekManager$3;
.super Ljava/lang/Object;
.source "IFlyTekManager.java"

# interfaces
.implements Lcom/iflytek/cloud/RecognizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/IFlyTekManager;->initRecognizerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onBeginOfSpeech()V
    .registers 1

    .prologue
    .line 159
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 1

    .prologue
    .line 153
    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .registers 4
    .param p1, "error"    # Lcom/iflytek/cloud/SpeechError;

    .prologue
    .line 139
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/IFlyTekManager$3$2;

    invoke-direct {v1, p0}, Lcom/ledo/fantasy/game/IFlyTekManager$3$2;-><init>(Lcom/ledo/fantasy/game/IFlyTekManager$3;)V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .registers 5
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Landroid/os/Bundle;

    .prologue
    .line 134
    return-void
.end method

.method public onResult(Lcom/iflytek/cloud/RecognizerResult;Z)V
    .registers 6
    .param p1, "result"    # Lcom/iflytek/cloud/RecognizerResult;
    .param p2, "isLast"    # Z

    .prologue
    .line 117
    # getter for: Lcom/ledo/fantasy/game/IFlyTekManager;->mResult:Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/IFlyTekManager;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iflytek/cloud/RecognizerResult;->getResultString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ledo/fantasy/game/IFlyTekManager;->access$2(Ljava/lang/String;)V

    .line 118
    const-string v0, "IFlyTek"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recognize result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/ledo/fantasy/game/IFlyTekManager;->mResult:Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/IFlyTekManager;->access$1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eqz p2, :cond_40

    .line 120
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/IFlyTekManager$3$1;

    invoke-direct {v1, p0}, Lcom/ledo/fantasy/game/IFlyTekManager$3$1;-><init>(Lcom/ledo/fantasy/game/IFlyTekManager$3;)V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 128
    :cond_40
    return-void
.end method

.method public onVolumeChanged(I[B)V
    .registers 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [B

    .prologue
    .line 112
    return-void
.end method
