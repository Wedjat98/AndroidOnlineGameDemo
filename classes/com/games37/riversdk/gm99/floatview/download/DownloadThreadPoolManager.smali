.class public Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;
.super Ljava/lang/Object;
.source "DownloadThreadPoolManager.java"


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
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;->mIsShutDown:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 30
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 31
    return-void
.end method


# virtual methods
.method public destory()V
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;->mIsShutDown:Z

    .line 62
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_c

    .line 63
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 65
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 66
    return-void
.end method

.method public runTask(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)V
    .registers 4
    .param p1, "downloadTask"    # Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;

    .prologue
    .line 40
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->getTask()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_9

    .line 54
    :cond_8
    :goto_8
    return-void

    .line 45
    :cond_9
    iget-boolean v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;->mIsShutDown:Z

    if-eqz v0, :cond_14

    .line 46
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 49
    :cond_14
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 50
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 51
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_8

    .line 52
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;->mNewFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->getTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_8
.end method
