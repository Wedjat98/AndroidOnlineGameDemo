.class public Lcom/games37/riversdk/core/resupply/manager/QueueManager;
.super Ljava/lang/Object;
.source "QueueManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "QueueManager"


# instance fields
.field private mResupplyQueue:Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;

    invoke-direct {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->mResupplyQueue:Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V
    .registers 4
    .param p1, "task"    # Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    .prologue
    .line 29
    monitor-enter p0

    :try_start_1
    const-string v0, "QueueManager"

    const-string v1, "add"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->mResupplyQueue:Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;

    if-eqz v0, :cond_13

    .line 31
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->mResupplyQueue:Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->add(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 33
    :cond_13
    monitor-exit p0

    return-void

    .line 29
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .registers 3

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    const-string v0, "QueueManager"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->mResupplyQueue:Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;

    if-eqz v0, :cond_11

    .line 85
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->mResupplyQueue:Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->clear()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 87
    :cond_11
    monitor-exit p0

    return-void

    .line 83
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getQueueSize()I
    .registers 2

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->mResupplyQueue:Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;

    if-eqz v0, :cond_d

    .line 96
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->mResupplyQueue:Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->size()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result v0

    .line 98
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 95
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;I)V
    .registers 6
    .param p1, "task"    # Lcom/games37/riversdk/core/resupply/model/ResupplyTask;
    .param p2, "pos"    # I

    .prologue
    .line 42
    monitor-enter p0

    :try_start_1
    const-string v0, "QueueManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    if-eqz p1, :cond_24

    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->mResupplyQueue:Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;

    if-eqz v0, :cond_24

    .line 44
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->mResupplyQueue:Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;

    invoke-virtual {v0, p1, p2}, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->insert(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;I)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 46
    :cond_24
    monitor-exit p0

    return-void

    .line 42
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pop()Lcom/games37/riversdk/core/resupply/model/ResupplyTask;
    .registers 4

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    const-string v1, "QueueManager"

    const-string v2, "pop"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->mResupplyQueue:Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;

    if-eqz v1, :cond_14

    .line 57
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->mResupplyQueue:Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;

    invoke-virtual {v1}, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->pop()Lcom/games37/riversdk/core/resupply/model/ResupplyTask;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    move-result-object v0

    .line 62
    :goto_12
    monitor-exit p0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    .line 54
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V
    .registers 4
    .param p1, "task"    # Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    .prologue
    .line 72
    monitor-enter p0

    :try_start_1
    const-string v0, "QueueManager"

    const-string v1, "remove"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->mResupplyQueue:Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;

    if-eqz v0, :cond_14

    .line 74
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/QueueManager;->mResupplyQueue:Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->remove(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Lcom/games37/riversdk/core/resupply/model/ResupplyTask;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_16

    .line 75
    const/4 p1, 0x0

    .line 77
    :cond_14
    monitor-exit p0

    return-void

    .line 72
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
