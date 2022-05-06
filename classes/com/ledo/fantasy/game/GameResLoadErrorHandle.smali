.class public Lcom/ledo/fantasy/game/GameResLoadErrorHandle;
.super Ljava/lang/Object;
.source "GameResLoadErrorHandle.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()V
    .registers 0

    .prologue
    .line 20
    invoke-static {}, Lcom/ledo/fantasy/game/GameResLoadErrorHandle;->terminateProcess()V

    return-void
.end method

.method public static resLoadErrorHandle()V
    .registers 2

    .prologue
    .line 32
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    new-instance v1, Lcom/ledo/fantasy/game/GameResLoadErrorHandle$2;

    invoke-direct {v1}, Lcom/ledo/fantasy/game/GameResLoadErrorHandle$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameApp;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method public static showMessageBox()V
    .registers 2

    .prologue
    .line 12
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    new-instance v1, Lcom/ledo/fantasy/game/GameResLoadErrorHandle$1;

    invoke-direct {v1}, Lcom/ledo/fantasy/game/GameResLoadErrorHandle$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameApp;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 18
    return-void
.end method

.method private static terminateProcess()V
    .registers 2

    .prologue
    .line 22
    const-string v1, "EVENT_GAMERESLOADERROR_TERMINATE_PROCESS"

    invoke-static {v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "assetsOutDir":Ljava/lang/String;
    invoke-static {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->RemoveDir(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->release()V

    .line 26
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ledo/fantasy/game/GameApp;->finish()V

    .line 27
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 29
    return-void
.end method
