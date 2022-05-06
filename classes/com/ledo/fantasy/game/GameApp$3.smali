.class Lcom/ledo/fantasy/game/GameApp$3;
.super Ljava/lang/Object;
.source "GameApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/GameApp;->initializeApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/game/GameApp;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/GameApp;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/GameApp$3;->this$0:Lcom/ledo/fantasy/game/GameApp;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 369
    :try_start_0
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    sget v4, Lcom/ledo/fantasy/game/R$string;->ledo_fantasy_splash_time1:I

    invoke-virtual {v3, v4}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 378
    .local v2, "time1":I
    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 381
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 382
    .local v1, "msg1":Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v1, Landroid/os/Message;->what:I

    .line 383
    sget-object v3, Lcom/ledo/fantasy/game/GameApp;->mHandler:Lcom/ledo/fantasy/game/IcefireHandler;

    invoke-virtual {v3, v1}, Lcom/ledo/fantasy/game/IcefireHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 396
    .end local v1    # "msg1":Landroid/os/Message;
    .end local v2    # "time1":I
    :goto_1f
    return-void

    .line 392
    :catch_20
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1f
.end method
