.class public Lcom/ydnetwork/net/toolbox/RequestFuture;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ydnetwork/net/Response$ErrorListener;
.implements Lcom/ydnetwork/net/Response$Listener;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ydnetwork/net/Response$ErrorListener;",
        "Lcom/ydnetwork/net/Response$Listener",
        "<TT;>;",
        "Ljava/util/concurrent/Future",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mException:Lcom/ydnetwork/net/VolleyError;

.field private mRequest:Lcom/ydnetwork/net/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ydnetwork/net/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mResultReceived:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mResultReceived:Z

    return-void
.end method

.method private declared-synchronized doGet(Ljava/lang/Long;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mException:Lcom/ydnetwork/net/VolleyError;

    if-eqz v0, :cond_12

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mException:Lcom/ydnetwork/net/VolleyError;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_12
    :try_start_12
    iget-boolean v0, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mResultReceived:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mResult:Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    :goto_18
    monitor-exit p0

    return-object v0

    :cond_1a
    if-nez p1, :cond_2d

    const-wide/16 v0, 0x0

    :try_start_1e
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mException:Lcom/ydnetwork/net/VolleyError;

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mException:Lcom/ydnetwork/net/VolleyError;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2d
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_21

    :cond_3d
    iget-boolean v0, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mResultReceived:Z

    if-nez v0, :cond_47

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    :cond_47
    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mResult:Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_1e .. :try_end_49} :catchall_f

    goto :goto_18
.end method

.method public static newFuture()Lcom/ydnetwork/net/toolbox/RequestFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/ydnetwork/net/toolbox/RequestFuture",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/ydnetwork/net/toolbox/RequestFuture;

    invoke-direct {v0}, Lcom/ydnetwork/net/toolbox/RequestFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mRequest:Lcom/ydnetwork/net/Request;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_15

    if-nez v1, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/ydnetwork/net/toolbox/RequestFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mRequest:Lcom/ydnetwork/net/Request;

    invoke-virtual {v0}, Lcom/ydnetwork/net/Request;->cancel()V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_15

    const/4 v0, 0x1

    goto :goto_6

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/ydnetwork/net/toolbox/RequestFuture;->doGet(Ljava/lang/Long;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    return-object v0

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ydnetwork/net/toolbox/RequestFuture;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mRequest:Lcom/ydnetwork/net/Request;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mRequest:Lcom/ydnetwork/net/Request;

    invoke-virtual {v0}, Lcom/ydnetwork/net/Request;->isCanceled()Z

    move-result v0

    goto :goto_5
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mResultReceived:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mException:Lcom/ydnetwork/net/VolleyError;

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/ydnetwork/net/toolbox/RequestFuture;->isCancelled()Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    move-result v0

    if-eqz v0, :cond_12

    :cond_f
    const/4 v0, 0x1

    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onErrorResponse(Lcom/ydnetwork/net/VolleyError;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mException:Lcom/ydnetwork/net/VolleyError;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResponse(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mResultReceived:Z

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mResult:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRequest(Lcom/ydnetwork/net/Request;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/Request",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/RequestFuture;->mRequest:Lcom/ydnetwork/net/Request;

    return-void
.end method
