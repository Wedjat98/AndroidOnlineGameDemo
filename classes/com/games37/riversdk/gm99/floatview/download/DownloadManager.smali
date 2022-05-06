.class public Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$FinishCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;


# instance fields
.field private mCallback:Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$FinishCallback;

.field private mFinishFlag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mQueueManager:Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

.field private mSuccessFlag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mThreadPoolManager:Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mSuccessFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mFinishFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    new-instance v0, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

    invoke-direct {v0}, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mQueueManager:Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

    .line 45
    new-instance v0, Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;

    invoke-direct {v0}, Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mThreadPoolManager:Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;

    .line 46
    return-void
.end method

.method private getIconUrlList(Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)Ljava/util/List;
    .registers 8
    .param p1, "functionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "iconUrlMap":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;>;"
    if-nez p1, :cond_8

    .line 170
    :cond_7
    return-object v1

    .line 157
    :cond_8
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getSdk_icon()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 158
    new-instance v3, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    const-string v4, "sdk_icon"

    .line 159
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getSdk_icon()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_20
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 163
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_31
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 165
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    .line 166
    .local v2, "menuFunctionInfo":Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;
    new-instance v3, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFUNCTION_NAME()Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-virtual {v2}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFUNCTION_ICON()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_31
.end method

.method public static getInstance()Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;
    .registers 2

    .prologue
    .line 49
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->instance:Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;

    if-nez v0, :cond_13

    .line 50
    const-class v1, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;

    monitor-enter v1

    .line 51
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->instance:Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;

    if-nez v0, :cond_12

    .line 52
    new-instance v0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;

    invoke-direct {v0}, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;-><init>()V

    sput-object v0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->instance:Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;

    .line 54
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 56
    :cond_13
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->instance:Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;

    return-object v0

    .line 54
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public download(Landroid/content/Context;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$FinishCallback;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "functionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;
    .param p3, "callback"    # Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$FinishCallback;

    .prologue
    .line 66
    if-eqz p2, :cond_12

    .line 67
    invoke-virtual {p2}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 68
    invoke-virtual {p2}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1a

    .line 69
    :cond_12
    sget-object v4, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->TAG:Ljava/lang/String;

    const-string v5, "download functionInfo is null"

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_19
    return-void

    .line 72
    :cond_1a
    sget-object v4, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download functionInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mThreadPoolManager:Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mQueueManager:Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

    if-eqz v4, :cond_19

    .line 74
    iput-object p3, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mCallback:Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$FinishCallback;

    .line 76
    invoke-direct {p0, p2}, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->getIconUrlList(Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, "downloadInfos":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    .line 78
    .local v0, "downloadInfo":Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;
    new-instance v2, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;

    invoke-direct {v2, v0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;-><init>(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;)V

    .line 79
    .local v2, "downloadTask":Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;
    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mQueueManager:Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

    invoke-virtual {v5, v2}, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->add(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)V

    goto :goto_48

    .line 81
    .end local v0    # "downloadInfo":Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;
    .end local v2    # "downloadTask":Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;
    :cond_5f
    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mQueueManager:Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

    invoke-virtual {v4}, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->getQueueSize()I

    move-result v4

    if-lez v4, :cond_7d

    .line 82
    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mSuccessFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mQueueManager:Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

    invoke-virtual {v5}, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->getQueueSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 83
    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mFinishFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mQueueManager:Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

    invoke-virtual {v5}, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->getQueueSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 85
    :cond_7d
    :goto_7d
    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mQueueManager:Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

    invoke-virtual {v4}, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->getQueueSize()I

    move-result v4

    if-lez v4, :cond_19

    .line 86
    sget-object v4, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download queue size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mQueueManager:Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

    invoke-virtual {v6}, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->getQueueSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mQueueManager:Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

    invoke-virtual {v4}, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->pop()Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;

    move-result-object v3

    .line 88
    .local v3, "task":Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;
    sget-object v4, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download task hasCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mThreadPoolManager:Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mQueueManager:Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

    new-instance v6, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$1;

    invoke-direct {v6, p0}, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$1;-><init>(Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;)V

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->execute(Landroid/content/Context;Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;Lcom/games37/riversdk/gm99/floatview/download/QueueManager;Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;)V

    goto :goto_7d
.end method

.method public declared-synchronized isDownloadSuccess()Z
    .registers 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mSuccessFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mSuccessFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result v0

    if-nez v0, :cond_10

    .line 141
    :cond_d
    const/4 v0, 0x1

    .line 143
    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    .line 140
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateSuccessFlag()V
    .registers 4

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mSuccessFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_28

    .line 114
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSuccessFlag mSuccessFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mSuccessFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mSuccessFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 118
    :cond_28
    monitor-exit p0

    return-void

    .line 113
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateTaskFlag()V
    .registers 4

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mFinishFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_39

    .line 125
    sget-object v0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTaskFlag mFinishFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mFinishFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mFinishFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 128
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mFinishFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mCallback:Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$FinishCallback;

    if-eqz v0, :cond_39

    .line 129
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->mCallback:Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$FinishCallback;

    invoke-interface {v0}, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$FinishCallback;->onFinished()V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 132
    :cond_39
    monitor-exit p0

    return-void

    .line 124
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
