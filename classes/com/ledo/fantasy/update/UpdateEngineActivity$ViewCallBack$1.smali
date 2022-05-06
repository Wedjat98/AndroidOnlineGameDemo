.class Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1;
.super Ljava/lang/Thread;
.source "UpdateEngineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;->onVideoEvent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1;->this$1:Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;

    .line 1212
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1;)Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;
    .registers 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1;->this$1:Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1215
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_14

    .line 1219
    :goto_7
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    new-instance v2, Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1$1;

    invoke-direct {v2, p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1$1;-><init>(Lcom/ledo/fantasy/update/UpdateEngineActivity$ViewCallBack$1;)V

    invoke-virtual {v1, v2}, Lcom/ledo/fantasy/game/GameApp;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1225
    return-void

    .line 1216
    :catch_14
    move-exception v0

    .line 1217
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7
.end method
