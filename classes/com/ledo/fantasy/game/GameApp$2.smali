.class Lcom/ledo/fantasy/game/GameApp$2;
.super Landroid/content/BroadcastReceiver;
.source "GameApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/GameApp;->monitorBatteryState()V
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
    iput-object p1, p0, Lcom/ledo/fantasy/game/GameApp$2;->this$0:Lcom/ledo/fantasy/game/GameApp;

    .line 327
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v7, -0x1

    .line 330
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 332
    const-string v6, "level"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 333
    .local v3, "rawlevel":I
    const-string v6, "scale"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 334
    .local v4, "scale":I
    const/4 v2, -0x1

    .line 335
    .local v2, "level":I
    const-string v6, "plugged"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 336
    .local v5, "status":I
    if-eq v5, v1, :cond_27

    .line 337
    const/4 v6, 0x2

    if-eq v5, v6, :cond_27

    .line 336
    const/4 v1, 0x0

    .line 338
    .local v1, "isPlugged":Z
    :cond_27
    if-ltz v3, :cond_36

    if-lez v4, :cond_36

    .line 339
    mul-int/lit8 v6, v3, 0x64

    div-int v2, v6, v4

    .line 340
    if-eqz v1, :cond_33

    add-int/lit16 v2, v2, 0x3e8

    .line 341
    :cond_33
    invoke-static {v2}, Lcom/ledo/fantasy/game/AndroidSystemInfo;->setBatteryAvaliable(I)V

    .line 344
    .end local v1    # "isPlugged":Z
    .end local v2    # "level":I
    .end local v3    # "rawlevel":I
    .end local v4    # "scale":I
    .end local v5    # "status":I
    :cond_36
    sget-boolean v6, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mHasCopiedSo:Z

    if-eqz v6, :cond_4c

    sget-object v6, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    if-eqz v6, :cond_4c

    sget-boolean v6, Lcom/ledo/fantasy/game/GameApp;->s_GameJniInited:Z

    if-eqz v6, :cond_4c

    .line 345
    sget-object v6, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v7, Lcom/ledo/fantasy/game/GameApp$2$1;

    invoke-direct {v7, p0}, Lcom/ledo/fantasy/game/GameApp$2$1;-><init>(Lcom/ledo/fantasy/game/GameApp$2;)V

    invoke-virtual {v6, v7}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 352
    :cond_4c
    return-void
.end method
