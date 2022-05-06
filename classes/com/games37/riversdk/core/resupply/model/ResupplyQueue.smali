.class public Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;
.super Ljava/lang/Object;
.source "ResupplyQueue.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ResupplyQueue"


# instance fields
.field private mResupplyQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/resupply/model/ResupplyTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->mResupplyQueue:Ljava/util/List;

    .line 21
    invoke-virtual {p0}, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->clear()V

    .line 22
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V
    .registers 3
    .param p1, "task"    # Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    .prologue
    .line 30
    monitor-enter p0

    if-eqz p1, :cond_c

    :try_start_3
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->mResupplyQueue:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 31
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->mResupplyQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 33
    :cond_c
    monitor-exit p0

    return-void

    .line 30
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .registers 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->mResupplyQueue:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 82
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->mResupplyQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 84
    :cond_a
    monitor-exit p0

    return-void

    .line 81
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;I)V
    .registers 4
    .param p1, "task"    # Lcom/games37/riversdk/core/resupply/model/ResupplyTask;
    .param p2, "pos"    # I

    .prologue
    .line 42
    monitor-enter p0

    if-eqz p1, :cond_14

    :try_start_3
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->mResupplyQueue:Ljava/util/List;

    if-eqz v0, :cond_14

    .line 43
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->mResupplyQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 44
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->mResupplyQueue:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1c

    .line 50
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    .line 47
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->mResupplyQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_14

    .line 42
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pop()Lcom/games37/riversdk/core/resupply/model/ResupplyTask;
    .registers 3

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->mResupplyQueue:Ljava/util/List;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->mResupplyQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 71
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->mResupplyQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    .line 73
    :goto_16
    monitor-exit p0

    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_16

    .line 70
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Lcom/games37/riversdk/core/resupply/model/ResupplyTask;
    .registers 3
    .param p1, "task"    # Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    .prologue
    .line 58
    monitor-enter p0

    if-eqz p1, :cond_14

    :try_start_3
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->mResupplyQueue:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->mResupplyQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 59
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->mResupplyQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 61
    :cond_14
    monitor-exit p0

    return-object p1

    .line 58
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 2

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->mResupplyQueue:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 93
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyQueue;->mResupplyQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result v0

    .line 95
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 92
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
