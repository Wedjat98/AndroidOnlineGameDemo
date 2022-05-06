.class final Lcom/games37/riversdk/core/ad/SDKTrackerManager$2;
.super Ljava/lang/Object;
.source "SDKTrackerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/ad/SDKTrackerManager;->startGMTracker(Landroid/app/Activity;Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$requestBundle:Landroid/os/Bundle;

.field final synthetic val$requestCount:I


# direct methods
.method constructor <init>(Landroid/app/Activity;ILandroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 86
    iput-object p1, p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$2;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$2;->val$requestCount:I

    iput-object p3, p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$2;->val$requestBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 90
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/model/SDKInformation;->getGpid()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "gpid":Ljava/lang/String;
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 93
    iget-object v2, p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$2;->val$activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/games37/riversdk/common/utils/CommonUtils;->getGoogleAdvertisingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v2

    iget-object v3, p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Lcom/games37/riversdk/core/model/SDKInformation;->setGpid(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    :cond_1d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 97
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x2710

    iput v2, v1, Landroid/os/Message;->what:I

    .line 98
    iget v2, p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$2;->val$requestCount:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 99
    iget-object v2, p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$2;->val$requestBundle:Landroid/os/Bundle;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    # getter for: Lcom/games37/riversdk/core/ad/SDKTrackerManager;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/games37/riversdk/core/ad/SDKTrackerManager;->access$200()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    return-void
.end method
