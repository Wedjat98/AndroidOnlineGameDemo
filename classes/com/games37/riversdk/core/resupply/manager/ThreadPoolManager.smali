.class public Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# static fields
.field public static final MAX_THREAD_NUM:I = 0x3

.field public static final TAG:Ljava/lang/String; = "ThreadPoolManager"


# instance fields
.field private mIsShutDown:Z

.field private mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;->mIsShutDown:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 27
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 28
    return-void
.end method


# virtual methods
.method public destory()V
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;->mIsShutDown:Z

    .line 56
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_c

    .line 57
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 59
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 60
    return-void
.end method

.method public runTask(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V
    .registers 4
    .param p1, "resupplyTask"    # Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    .prologue
    .line 37
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->getTask()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_9

    .line 49
    :cond_8
    :goto_8
    return-void

    .line 41
    :cond_9
    iget-boolean v0, p0, Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;->mIsShutDown:Z

    if-eqz v0, :cond_14

    .line 42
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 44
    :cond_14
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 45
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 46
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_8

    .line 47
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->getTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_8
.end method
