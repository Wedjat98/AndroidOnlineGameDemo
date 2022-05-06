.class public Lcom/ydnetwork/net/CacheDispatcher;
.super Ljava/lang/Thread;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCache:Lcom/ydnetwork/net/Cache;

.field private final mCacheQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/ydnetwork/net/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/ydnetwork/net/ResponseDelivery;

.field private final mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
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
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/ydnetwork/net/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/ydnetwork/net/CacheDispatcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/ydnetwork/net/Cache;Lcom/ydnetwork/net/ResponseDelivery;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/ydnetwork/net/Request",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/ydnetwork/net/Request",
            "<*>;>;",
            "Lcom/ydnetwork/net/Cache;",
            "Lcom/ydnetwork/net/ResponseDelivery;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ydnetwork/net/CacheDispatcher;->mQuit:Z

    iput-object p1, p0, Lcom/ydnetwork/net/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/ydnetwork/net/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/ydnetwork/net/CacheDispatcher;->mCache:Lcom/ydnetwork/net/Cache;

    iput-object p4, p0, Lcom/ydnetwork/net/CacheDispatcher;->mDelivery:Lcom/ydnetwork/net/ResponseDelivery;

    return-void
.end method

.method static synthetic access$000(Lcom/ydnetwork/net/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public quit()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ydnetwork/net/CacheDispatcher;->mQuit:Z

    invoke-virtual {p0}, Lcom/ydnetwork/net/CacheDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Lcom/ydnetwork/net/CacheDispatcher;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "start new dispatcher"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ydnetwork/net/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/ydnetwork/net/CacheDispatcher;->mCache:Lcom/ydnetwork/net/Cache;

    invoke-interface {v0}, Lcom/ydnetwork/net/Cache;->initialize()V

    :cond_17
    :goto_17
    :try_start_17
    iget-object v0, p0, Lcom/ydnetwork/net/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ydnetwork/net/Request;
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1f} :catch_3f

    :try_start_1f
    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ydnetwork/net/Request;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "cache-discard-canceled"

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/Request;->finish(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2f} :catch_30

    goto :goto_17

    :catch_30
    move-exception v0

    const-string v1, "Unhandled exception %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/ydnetwork/net/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    :catch_3f
    move-exception v0

    iget-boolean v0, p0, Lcom/ydnetwork/net/CacheDispatcher;->mQuit:Z

    if-eqz v0, :cond_17

    return-void

    :cond_45
    :try_start_45
    iget-object v1, p0, Lcom/ydnetwork/net/CacheDispatcher;->mCache:Lcom/ydnetwork/net/Cache;

    invoke-virtual {v0}, Lcom/ydnetwork/net/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ydnetwork/net/Cache;->get(Ljava/lang/String;)Lcom/ydnetwork/net/Cache$Entry;

    move-result-object v1

    if-nez v1, :cond_5c

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/Request;->addMarker(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ydnetwork/net/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_17

    :cond_5c
    invoke-virtual {v1}, Lcom/ydnetwork/net/Cache$Entry;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_70

    const-string v2, "cache-hit-expired"

    invoke-virtual {v0, v2}, Lcom/ydnetwork/net/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/Request;->setCacheEntry(Lcom/ydnetwork/net/Cache$Entry;)Lcom/ydnetwork/net/Request;

    iget-object v1, p0, Lcom/ydnetwork/net/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_17

    :cond_70
    const-string v2, "cache-hit"

    invoke-virtual {v0, v2}, Lcom/ydnetwork/net/Request;->addMarker(Ljava/lang/String;)V

    new-instance v2, Lcom/ydnetwork/net/NetworkResponse;

    iget-object v3, v1, Lcom/ydnetwork/net/Cache$Entry;->data:[B

    iget-object v4, v1, Lcom/ydnetwork/net/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lcom/ydnetwork/net/NetworkResponse;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/ydnetwork/net/Request;->parseNetworkResponse(Lcom/ydnetwork/net/NetworkResponse;)Lcom/ydnetwork/net/Response;

    move-result-object v2

    const-string v3, "cache-hit-parsed"

    invoke-virtual {v0, v3}, Lcom/ydnetwork/net/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ydnetwork/net/Cache$Entry;->refreshNeeded()Z

    move-result v3

    if-nez v3, :cond_93

    iget-object v1, p0, Lcom/ydnetwork/net/CacheDispatcher;->mDelivery:Lcom/ydnetwork/net/ResponseDelivery;

    invoke-interface {v1, v0, v2}, Lcom/ydnetwork/net/ResponseDelivery;->postResponse(Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/Response;)V

    goto :goto_17

    :cond_93
    const-string v3, "cache-hit-refresh-needed"

    invoke-virtual {v0, v3}, Lcom/ydnetwork/net/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/Request;->setCacheEntry(Lcom/ydnetwork/net/Cache$Entry;)Lcom/ydnetwork/net/Request;

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/ydnetwork/net/Response;->intermediate:Z

    iget-object v1, p0, Lcom/ydnetwork/net/CacheDispatcher;->mDelivery:Lcom/ydnetwork/net/ResponseDelivery;

    new-instance v3, Lcom/ydnetwork/net/CacheDispatcher$1;

    invoke-direct {v3, p0, v0}, Lcom/ydnetwork/net/CacheDispatcher$1;-><init>(Lcom/ydnetwork/net/CacheDispatcher;Lcom/ydnetwork/net/Request;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/ydnetwork/net/ResponseDelivery;->postResponse(Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/Response;Ljava/lang/Runnable;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_a8} :catch_30

    goto/16 :goto_17
.end method
