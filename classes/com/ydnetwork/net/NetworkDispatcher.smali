.class public Lcom/ydnetwork/net/NetworkDispatcher;
.super Ljava/lang/Thread;


# instance fields
.field private final mCache:Lcom/ydnetwork/net/Cache;

.field private final mDelivery:Lcom/ydnetwork/net/ResponseDelivery;

.field private final mNetwork:Lcom/ydnetwork/net/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/ydnetwork/net/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/ydnetwork/net/Network;Lcom/ydnetwork/net/Cache;Lcom/ydnetwork/net/ResponseDelivery;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/ydnetwork/net/Request",
            "<*>;>;",
            "Lcom/ydnetwork/net/Network;",
            "Lcom/ydnetwork/net/Cache;",
            "Lcom/ydnetwork/net/ResponseDelivery;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ydnetwork/net/NetworkDispatcher;->mQuit:Z

    iput-object p1, p0, Lcom/ydnetwork/net/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/ydnetwork/net/NetworkDispatcher;->mNetwork:Lcom/ydnetwork/net/Network;

    iput-object p3, p0, Lcom/ydnetwork/net/NetworkDispatcher;->mCache:Lcom/ydnetwork/net/Cache;

    iput-object p4, p0, Lcom/ydnetwork/net/NetworkDispatcher;->mDelivery:Lcom/ydnetwork/net/ResponseDelivery;

    return-void
.end method

.method private addTrafficStatsTag(Lcom/ydnetwork/net/Request;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/Request",
            "<*>;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/ydnetwork/net/Request;->getTrafficStatsTag()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_d
    return-void
.end method

.method private parseAndDeliverNetworkError(Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/VolleyError;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/Request",
            "<*>;",
            "Lcom/ydnetwork/net/VolleyError;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/ydnetwork/net/Request;->parseNetworkError(Lcom/ydnetwork/net/VolleyError;)Lcom/ydnetwork/net/VolleyError;

    move-result-object v0

    iget-object v1, p0, Lcom/ydnetwork/net/NetworkDispatcher;->mDelivery:Lcom/ydnetwork/net/ResponseDelivery;

    invoke-interface {v1, p1, v0}, Lcom/ydnetwork/net/ResponseDelivery;->postError(Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/VolleyError;)V

    return-void
.end method


# virtual methods
.method public quit()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ydnetwork/net/NetworkDispatcher;->mQuit:Z

    invoke-virtual {p0}, Lcom/ydnetwork/net/NetworkDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .registers 9

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_5
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :try_start_9
    iget-object v0, p0, Lcom/ydnetwork/net/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ydnetwork/net/Request;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_11} :catch_30

    :try_start_11
    const-string v1, "network-queue-take"

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ydnetwork/net/Request;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, "network-discard-cancelled"

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/Request;->finish(Ljava/lang/String;)V
    :try_end_21
    .catch Lcom/ydnetwork/net/VolleyError; {:try_start_11 .. :try_end_21} :catch_22
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_21} :catch_54

    goto :goto_5

    :catch_22
    move-exception v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Lcom/ydnetwork/net/VolleyError;->setNetworkTimeMs(J)V

    invoke-direct {p0, v0, v1}, Lcom/ydnetwork/net/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/VolleyError;)V

    goto :goto_5

    :catch_30
    move-exception v0

    iget-boolean v0, p0, Lcom/ydnetwork/net/NetworkDispatcher;->mQuit:Z

    if-eqz v0, :cond_5

    return-void

    :cond_36
    :try_start_36
    invoke-direct {p0, v0}, Lcom/ydnetwork/net/NetworkDispatcher;->addTrafficStatsTag(Lcom/ydnetwork/net/Request;)V

    iget-object v1, p0, Lcom/ydnetwork/net/NetworkDispatcher;->mNetwork:Lcom/ydnetwork/net/Network;

    invoke-interface {v1, v0}, Lcom/ydnetwork/net/Network;->performRequest(Lcom/ydnetwork/net/Request;)Lcom/ydnetwork/net/NetworkResponse;

    move-result-object v1

    const-string v4, "network-http-complete"

    invoke-virtual {v0, v4}, Lcom/ydnetwork/net/Request;->addMarker(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/ydnetwork/net/NetworkResponse;->notModified:Z

    if-eqz v4, :cond_78

    invoke-virtual {v0}, Lcom/ydnetwork/net/Request;->hasHadResponseDelivered()Z

    move-result v4

    if-eqz v4, :cond_78

    const-string v1, "not-modified"

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/Request;->finish(Ljava/lang/String;)V
    :try_end_53
    .catch Lcom/ydnetwork/net/VolleyError; {:try_start_36 .. :try_end_53} :catch_22
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_53} :catch_54

    goto :goto_5

    :catch_54
    move-exception v1

    const-string v4, "Unhandled exception %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/ydnetwork/net/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/ydnetwork/net/VolleyError;

    invoke-direct {v4, v1}, Lcom/ydnetwork/net/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Lcom/ydnetwork/net/VolleyError;->setNetworkTimeMs(J)V

    iget-object v1, p0, Lcom/ydnetwork/net/NetworkDispatcher;->mDelivery:Lcom/ydnetwork/net/ResponseDelivery;

    invoke-interface {v1, v0, v4}, Lcom/ydnetwork/net/ResponseDelivery;->postError(Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/VolleyError;)V

    goto :goto_5

    :cond_78
    :try_start_78
    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/Request;->parseNetworkResponse(Lcom/ydnetwork/net/NetworkResponse;)Lcom/ydnetwork/net/Response;

    move-result-object v1

    const-string v4, "network-parse-complete"

    invoke-virtual {v0, v4}, Lcom/ydnetwork/net/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ydnetwork/net/Request;->shouldCache()Z

    move-result v4

    if-eqz v4, :cond_9b

    iget-object v4, v1, Lcom/ydnetwork/net/Response;->cacheEntry:Lcom/ydnetwork/net/Cache$Entry;

    if-eqz v4, :cond_9b

    iget-object v4, p0, Lcom/ydnetwork/net/NetworkDispatcher;->mCache:Lcom/ydnetwork/net/Cache;

    invoke-virtual {v0}, Lcom/ydnetwork/net/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/ydnetwork/net/Response;->cacheEntry:Lcom/ydnetwork/net/Cache$Entry;

    invoke-interface {v4, v5, v6}, Lcom/ydnetwork/net/Cache;->put(Ljava/lang/String;Lcom/ydnetwork/net/Cache$Entry;)V

    const-string v4, "network-cache-written"

    invoke-virtual {v0, v4}, Lcom/ydnetwork/net/Request;->addMarker(Ljava/lang/String;)V

    :cond_9b
    invoke-virtual {v0}, Lcom/ydnetwork/net/Request;->markDelivered()V

    iget-object v4, p0, Lcom/ydnetwork/net/NetworkDispatcher;->mDelivery:Lcom/ydnetwork/net/ResponseDelivery;

    invoke-interface {v4, v0, v1}, Lcom/ydnetwork/net/ResponseDelivery;->postResponse(Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/Response;)V
    :try_end_a3
    .catch Lcom/ydnetwork/net/VolleyError; {:try_start_78 .. :try_end_a3} :catch_22
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_a3} :catch_54

    goto/16 :goto_5
.end method
