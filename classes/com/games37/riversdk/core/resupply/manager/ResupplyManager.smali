.class public Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;
.super Ljava/lang/Object;
.source "ResupplyManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ResupplyManager"

.field private static volatile instance:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;


# instance fields
.field private mAction:Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

.field private mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

.field private mThreadPoolManager:Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    invoke-direct {v0}, Lcom/games37/riversdk/core/resupply/manager/QueueManager;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    .line 49
    new-instance v0, Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;

    invoke-direct {v0}, Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mThreadPoolManager:Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->showReInGameDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->doReInGameResupply(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$200(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->showPurchaseDialog(Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;)Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mAction:Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->doPurchaseResupply(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->showRemind(Landroid/app/Activity;)V

    return-void
.end method

.method private doPurchaseResupply(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 230
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mThreadPoolManager:Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    if-eqz v1, :cond_41

    .line 231
    :goto_8
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    invoke-virtual {v1}, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->getQueueSize()I

    move-result v1

    if-lez v1, :cond_41

    .line 232
    const-string v1, "ResupplyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPurchaseResupply queue size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    invoke-virtual {v3}, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->getQueueSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    invoke-virtual {v1}, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->pop()Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    move-result-object v0

    .line 234
    .local v0, "task":Lcom/games37/riversdk/core/resupply/model/ResupplyTask;
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mThreadPoolManager:Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;

    iget-object v2, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    new-instance v3, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$5;

    invoke-direct {v3, p0, p1}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$5;-><init>(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->execute(Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;Lcom/games37/riversdk/core/resupply/manager/QueueManager;Lcom/games37/riversdk/core/resupply/callback/ResupplyCallback;)V

    goto :goto_8

    .line 264
    .end local v0    # "task":Lcom/games37/riversdk/core/resupply/model/ResupplyTask;
    :cond_41
    return-void
.end method

.method private doReInGameResupply(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mThreadPoolManager:Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    if-eqz v1, :cond_3c

    .line 152
    :goto_8
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    invoke-virtual {v1}, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->getQueueSize()I

    move-result v1

    if-lez v1, :cond_3c

    .line 153
    const-string v1, "ResupplyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doReInGameResupply queue size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    invoke-virtual {v3}, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->getQueueSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    invoke-virtual {v1}, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->pop()Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    move-result-object v0

    .line 155
    .local v0, "task":Lcom/games37/riversdk/core/resupply/model/ResupplyTask;
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mThreadPoolManager:Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;

    iget-object v2, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    invoke-virtual {v0, p1, v1, v2}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->execute(Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;Lcom/games37/riversdk/core/resupply/manager/QueueManager;)V

    goto :goto_8

    .line 158
    .end local v0    # "task":Lcom/games37/riversdk/core/resupply/model/ResupplyTask;
    :cond_3c
    return-void
.end method

.method public static getInstance()Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;
    .registers 2

    .prologue
    .line 53
    sget-object v0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->instance:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    if-nez v0, :cond_13

    .line 54
    const-class v1, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    monitor-enter v1

    .line 55
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->instance:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    if-nez v0, :cond_12

    .line 56
    new-instance v0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    invoke-direct {v0}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->instance:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    .line 58
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 60
    :cond_13
    sget-object v0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->instance:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    return-object v0

    .line 58
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private declared-synchronized insertResupplyInfo(Landroid/content/Context;Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "purchaseInfo"    # Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    .prologue
    .line 87
    monitor-enter p0

    if-eqz p2, :cond_1a

    :try_start_3
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    if-eqz v1, :cond_1a

    .line 89
    new-instance v0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p2}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;-><init>(ILcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;)V

    .line 91
    .local v0, "task":Lcom/games37/riversdk/core/resupply/model/ResupplyTask;
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->insert(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;I)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils;->saveDataInFile(Landroid/content/Context;Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    .line 95
    .end local v0    # "task":Lcom/games37/riversdk/core/resupply/model/ResupplyTask;
    :cond_1a
    monitor-exit p0

    return-void

    .line 87
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private showPurchaseDialog(Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "purchaseInfo"    # Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    invoke-virtual {v1}, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->clear()V

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->insertResupplyInfo(Landroid/content/Context;Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;)V

    .line 202
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 203
    new-instance v0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;

    invoke-direct {v0, p1}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;-><init>(Landroid/app/Activity;)V

    .line 204
    .local v0, "dialog":Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->setCanceled(Z)Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;

    move-result-object v1

    const-string v2, "r1_sdk_purchase_resupply_tips"

    .line 205
    invoke-static {p1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->setContent(I)Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;

    move-result-object v1

    const-string v2, "r1_sdk_confirm"

    .line 206
    invoke-static {p1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    new-instance v4, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$4;

    invoke-direct {v4, p0, p1}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$4;-><init>(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->setClickListener(IILcom/games37/riversdk/core/callback/OnBtnClickListener;)Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->show()V

    .line 222
    .end local v0    # "dialog":Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;
    :cond_35
    return-void
.end method

.method private showReInGameDialog(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    .line 124
    invoke-virtual {v1}, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->getQueueSize()I

    move-result v1

    if-lez v1, :cond_40

    .line 125
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 126
    const-string v1, "ResupplyManager"

    const-string v2, "show dialog"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;

    invoke-direct {v0, p1}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;-><init>(Landroid/app/Activity;)V

    .line 128
    .local v0, "dialog":Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->setCanceled(Z)Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;

    move-result-object v1

    const-string v2, "r1_sdk_ingame_resupply_tips"

    .line 129
    invoke-static {p1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->setContent(I)Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;

    move-result-object v1

    const-string v2, "r1_sdk_confirm"

    .line 130
    invoke-static {p1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    new-instance v4, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$2;

    invoke-direct {v4, p0, p1}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$2;-><init>(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->setClickListener(IILcom/games37/riversdk/core/callback/OnBtnClickListener;)Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->show()V

    .line 143
    .end local v0    # "dialog":Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;
    :cond_40
    return-void
.end method

.method private showRemind(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 296
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 297
    new-instance v0, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;

    invoke-direct {v0, p1}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;-><init>(Landroid/app/Activity;)V

    .line 298
    .local v0, "dialog":Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->setCanceled(Z)Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;

    move-result-object v1

    const-string v2, "r1_sdk_contact_service_tips"

    .line 300
    invoke-static {p1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->setContent(I)Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;

    move-result-object v1

    const-string v2, "r1_sdk_contact_service"

    .line 302
    invoke-static {p1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "r1_sdk_retry_later"

    .line 304
    invoke-static {p1, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$7;

    invoke-direct {v4, p0, p1}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$7;-><init>(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;)V

    .line 302
    invoke-virtual {v1, v2, v3, v4}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->setClickListener(IILcom/games37/riversdk/core/callback/OnBtnClickListener;)Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;->show()V

    .line 329
    .end local v0    # "dialog":Lcom/games37/riversdk/core/resupply/view/ResupplyDialog;
    :cond_32
    return-void
.end method


# virtual methods
.method public declared-synchronized init(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils;->getAllPurchaseInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, "purchaseInfos":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;>;"
    if-eqz v1, :cond_2c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2c

    .line 73
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    .line 74
    .local v0, "purchaseInfo":Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;
    new-instance v2, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;-><init>(ILcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;)V

    .line 75
    .local v2, "task":Lcom/games37/riversdk/core/resupply/model/ResupplyTask;
    iget-object v4, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    invoke-virtual {v4, v2}, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->add(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_29

    goto :goto_11

    .line 70
    .end local v0    # "purchaseInfo":Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;
    .end local v1    # "purchaseInfos":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;>;"
    .end local v2    # "task":Lcom/games37/riversdk/core/resupply/model/ResupplyTask;
    :catchall_29
    move-exception v3

    monitor-exit p0

    throw v3

    .line 78
    .restart local v1    # "purchaseInfos":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;>;"
    :cond_2c
    monitor-exit p0

    return-void
.end method

.method public showPurchaseResupplyDialog(Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "purchaseInfo"    # Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;
    .param p3, "action"    # Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

    .prologue
    .line 171
    iput-object p3, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mAction:Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

    .line 172
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 173
    new-instance v0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$3;-><init>(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 187
    :cond_10
    return-void
.end method

.method public showReInGameResupplyDialog(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 103
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 104
    new-instance v0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$1;

    invoke-direct {v0, p0, p1}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$1;-><init>(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 115
    :cond_e
    return-void
.end method

.method public showRemindDialog(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 273
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 274
    new-instance v0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$6;

    invoke-direct {v0, p0, p1}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$6;-><init>(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 288
    :cond_e
    return-void
.end method
