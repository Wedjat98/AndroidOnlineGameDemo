.class public Lcom/games37/riversdk/gm99/floatview/download/QueueManager;
.super Ljava/lang/Object;
.source "QueueManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "QueueManager"


# instance fields
.field private mDownloadQueue:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;

    invoke-direct {v0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->mDownloadQueue:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)V
    .registers 3
    .param p1, "task"    # Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;

    .prologue
    .line 28
    monitor-enter p0

    if-eqz p1, :cond_c

    :try_start_3
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->mDownloadQueue:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;

    if-eqz v0, :cond_c

    .line 29
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->mDownloadQueue:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;->add(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 31
    :cond_c
    monitor-exit p0

    return-void

    .line 28
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .registers 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->mDownloadQueue:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;

    if-eqz v0, :cond_a

    .line 77
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->mDownloadQueue:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;->clear()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 79
    :cond_a
    monitor-exit p0

    return-void

    .line 76
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getQueueSize()I
    .registers 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->mDownloadQueue:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;

    if-eqz v0, :cond_d

    .line 83
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->mDownloadQueue:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;->size()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result v0

    .line 85
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 82
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;I)V
    .registers 4
    .param p1, "task"    # Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;
    .param p2, "pos"    # I

    .prologue
    .line 40
    monitor-enter p0

    if-eqz p1, :cond_c

    :try_start_3
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->mDownloadQueue:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;

    if-eqz v0, :cond_c

    .line 41
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->mDownloadQueue:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;

    invoke-virtual {v0, p1, p2}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;->insert(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;I)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 43
    :cond_c
    monitor-exit p0

    return-void

    .line 40
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pop()Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;
    .registers 3

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->mDownloadQueue:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;

    if-eqz v1, :cond_d

    .line 53
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->mDownloadQueue:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;

    invoke-virtual {v1}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;->pop()Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result-object v0

    .line 56
    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 51
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)V
    .registers 3
    .param p1, "task"    # Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;

    .prologue
    .line 66
    monitor-enter p0

    if-eqz p1, :cond_d

    :try_start_3
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->mDownloadQueue:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;

    if-eqz v0, :cond_d

    .line 67
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->mDownloadQueue:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadQueue;->remove(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    .line 68
    const/4 p1, 0x0

    .line 70
    :cond_d
    monitor-exit p0

    return-void

    .line 66
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
