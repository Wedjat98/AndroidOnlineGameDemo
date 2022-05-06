.class public Lcom/games37/riversdk/core/resupply/model/ResupplyTask;
.super Ljava/lang/Object;
.source "ResupplyTask.java"


# static fields
.field public static final MAX_RESUPPLY_TIME:I = 0x3

.field public static final PURCHASE:I = 0x2

.field public static final REINGAME:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ResupplyTask"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/games37/riversdk/core/resupply/callback/ResupplyCallback;

.field private mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPurchaseInfo:Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

.field private mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

.field private mRunPos:I

.field private mSupplyTimes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mTask:Ljava/lang/Runnable;

.field private mThreadPoolManager:Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;


# direct methods
.method public constructor <init>(ILcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;)V
    .registers 6
    .param p1, "runPos"    # I
    .param p2, "purchaseInfo"    # Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mSupplyTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mRunPos:I

    .line 64
    iput-object v2, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mTask:Ljava/lang/Runnable;

    .line 72
    iput-object v2, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mThreadPoolManager:Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;

    .line 76
    iput-object v2, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    .line 79
    iput p1, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mRunPos:I

    .line 80
    iput-object p2, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mPurchaseInfo:Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mSupplyTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mPurchaseInfo:Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V
    .registers 1
    .param p0, "x0"    # Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->doRequest()V

    return-void
.end method

.method static synthetic access$400(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V
    .registers 1
    .param p0, "x0"    # Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->afterExecute()V

    return-void
.end method

.method private afterExecute()V
    .registers 5

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_b

    .line 237
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->add(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V

    .line 240
    :cond_b
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mThreadPoolManager:Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;

    iget-object v2, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    iget-object v3, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mCallback:Lcom/games37/riversdk/core/resupply/callback/ResupplyCallback;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->execute(Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;Lcom/games37/riversdk/core/resupply/manager/QueueManager;Lcom/games37/riversdk/core/resupply/callback/ResupplyCallback;)V

    .line 241
    return-void
.end method

.method private doRequest()V
    .registers 7

    .prologue
    .line 174
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mPurchaseInfo:Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mPurchaseInfo:Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    .line 175
    invoke-virtual {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mPurchaseInfo:Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    .line 176
    invoke-virtual {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->getPurchaseRequestEntity()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 179
    invoke-virtual {p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->getRunPosition()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_50

    const/4 v4, 0x1

    .line 180
    .local v4, "isShowProgress":Z
    :goto_20
    new-instance v5, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$2;

    invoke-direct {v5, p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$2;-><init>(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V

    .line 210
    .local v5, "netCallback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mPurchaseInfo:Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->getPurchaseRequestEntity()Ljava/util/Map;

    move-result-object v0

    const-string v1, "retry"

    iget-object v2, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mPurchaseInfo:Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    invoke-virtual {v2}, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->getRetryTime()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mPurchaseInfo:Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    invoke-virtual {v2}, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mPurchaseInfo:Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    .line 212
    invoke-virtual {v3}, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->getPurchaseRequestEntity()Ljava/util/Map;

    move-result-object v3

    .line 211
    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 214
    .end local v4    # "isShowProgress":Z
    .end local v5    # "netCallback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    :cond_4f
    return-void

    .line 179
    :cond_50
    const/4 v4, 0x0

    goto :goto_20
.end method

.method private loop()V
    .registers 4

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->getRunPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    .line 223
    invoke-virtual {v0}, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->getQueueSize()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mThreadPoolManager:Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;

    if-eqz v0, :cond_21

    .line 225
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mThreadPoolManager:Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;

    iget-object v2, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    invoke-virtual {p0, v0, v1, v2}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->execute(Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;Lcom/games37/riversdk/core/resupply/manager/QueueManager;)V

    .line 229
    :goto_20
    return-void

    .line 227
    :cond_21
    invoke-virtual {p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->destory()V

    goto :goto_20
.end method

.method private runTask()V
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mTask:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 150
    new-instance v0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$1;

    invoke-direct {v0, p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$1;-><init>(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mTask:Ljava/lang/Runnable;

    .line 166
    :cond_b
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mThreadPoolManager:Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;->runTask(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V

    .line 167
    return-void
.end method


# virtual methods
.method public destory()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mTask:Ljava/lang/Runnable;

    .line 296
    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mPurchaseInfo:Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    .line 297
    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mSupplyTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 298
    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 299
    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 300
    return-void
.end method

.method public execute(Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;Lcom/games37/riversdk/core/resupply/manager/QueueManager;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "threadPoolManager"    # Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;
    .param p3, "queueManager"    # Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->execute(Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;Lcom/games37/riversdk/core/resupply/manager/QueueManager;Lcom/games37/riversdk/core/resupply/callback/ResupplyCallback;)V

    .line 94
    return-void
.end method

.method public execute(Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;Lcom/games37/riversdk/core/resupply/manager/QueueManager;Lcom/games37/riversdk/core/resupply/callback/ResupplyCallback;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "threadPoolManager"    # Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;
    .param p3, "queueManager"    # Lcom/games37/riversdk/core/resupply/manager/QueueManager;
    .param p4, "callback"    # Lcom/games37/riversdk/core/resupply/callback/ResupplyCallback;

    .prologue
    .line 108
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5e

    if-eqz p2, :cond_5e

    if-eqz p3, :cond_5e

    .line 111
    const-string v0, "ResupplyTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute task isSuccess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->isSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->getSupplyTimes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mActivity:Landroid/app/Activity;

    .line 113
    iput-object p4, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mCallback:Lcom/games37/riversdk/core/resupply/callback/ResupplyCallback;

    .line 114
    iput-object p2, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mThreadPoolManager:Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;

    .line 115
    iput-object p3, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    .line 116
    invoke-virtual {p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->getPurchaseInfo()Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->destory()V

    .line 120
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->remove(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V

    .line 122
    if-eqz p4, :cond_5e

    .line 123
    invoke-interface {p4}, Lcom/games37/riversdk/core/resupply/callback/ResupplyCallback;->onResupplySuccess()V

    .line 142
    :cond_5e
    :goto_5e
    return-void

    .line 127
    :cond_5f
    invoke-virtual {p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->getSupplyTimes()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7f

    .line 129
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->getPurchaseInfo()Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils;->saveDataInFile(Landroid/content/Context;Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;)V

    .line 131
    invoke-virtual {p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->destory()V

    .line 132
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mQueueManager:Lcom/games37/riversdk/core/resupply/manager/QueueManager;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->remove(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V

    .line 134
    if-eqz p4, :cond_5e

    .line 135
    invoke-interface {p4}, Lcom/games37/riversdk/core/resupply/callback/ResupplyCallback;->onResupplyFailure()V

    goto :goto_5e

    .line 140
    :cond_7f
    invoke-direct {p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->runTask()V

    goto :goto_5e
.end method

.method public getPurchaseInfo()Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mPurchaseInfo:Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    return-object v0
.end method

.method public getRunPosition()I
    .registers 2

    .prologue
    .line 284
    iget v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mRunPos:I

    return v0
.end method

.method public getSupplyTimes()I
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mSupplyTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_6

    .line 254
    const/4 v0, 0x0

    .line 256
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mSupplyTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_5
.end method

.method public getTask()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_6

    .line 266
    const/4 v0, 0x0

    .line 268
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_5
.end method

.method public isSuccess()Z
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_6

    .line 278
    const/4 v0, 0x0

    .line 280
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_5
.end method
