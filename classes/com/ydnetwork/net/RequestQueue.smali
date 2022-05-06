.class public Lcom/ydnetwork/net/RequestQueue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ydnetwork/net/RequestQueue$RequestFilter;,
        Lcom/ydnetwork/net/RequestQueue$RequestFinishedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_NETWORK_THREAD_POOL_SIZE:I = 0x4


# instance fields
.field private final mCache:Lcom/ydnetwork/net/Cache;

.field private mCacheDispatcher:Lcom/ydnetwork/net/CacheDispatcher;

.field private final mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/ydnetwork/net/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mCurrentRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ydnetwork/net/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/ydnetwork/net/ResponseDelivery;

.field private mDispatchers:[Lcom/ydnetwork/net/NetworkDispatcher;

.field private mFinishedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ydnetwork/net/RequestQueue$RequestFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetwork:Lcom/ydnetwork/net/Network;

.field private final mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/ydnetwork/net/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mWaitingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcom/ydnetwork/net/Request",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ydnetwork/net/Cache;Lcom/ydnetwork/net/Network;)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/ydnetwork/net/RequestQueue;-><init>(Lcom/ydnetwork/net/Cache;Lcom/ydnetwork/net/Network;I)V

    return-void
.end method

.method public constructor <init>(Lcom/ydnetwork/net/Cache;Lcom/ydnetwork/net/Network;I)V
    .registers 7

    new-instance v0, Lcom/ydnetwork/net/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/ydnetwork/net/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ydnetwork/net/RequestQueue;-><init>(Lcom/ydnetwork/net/Cache;Lcom/ydnetwork/net/Network;ILcom/ydnetwork/net/ResponseDelivery;)V

    return-void
.end method

.method public constructor <init>(Lcom/ydnetwork/net/Cache;Lcom/ydnetwork/net/Network;ILcom/ydnetwork/net/ResponseDelivery;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mFinishedListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/ydnetwork/net/RequestQueue;->mCache:Lcom/ydnetwork/net/Cache;

    iput-object p2, p0, Lcom/ydnetwork/net/RequestQueue;->mNetwork:Lcom/ydnetwork/net/Network;

    new-array v0, p3, [Lcom/ydnetwork/net/NetworkDispatcher;

    iput-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mDispatchers:[Lcom/ydnetwork/net/NetworkDispatcher;

    iput-object p4, p0, Lcom/ydnetwork/net/RequestQueue;->mDelivery:Lcom/ydnetwork/net/ResponseDelivery;

    return-void
.end method


# virtual methods
.method public add(Lcom/ydnetwork/net/Request;)Lcom/ydnetwork/net/Request;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ydnetwork/net/Request",
            "<TT;>;)",
            "Lcom/ydnetwork/net/Request",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/ydnetwork/net/Request;->setRequestQueue(Lcom/ydnetwork/net/RequestQueue;)Lcom/ydnetwork/net/Request;

    iget-object v1, p0, Lcom/ydnetwork/net/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    invoke-virtual {p0}, Lcom/ydnetwork/net/RequestQueue;->getSequenceNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ydnetwork/net/Request;->setSequence(I)Lcom/ydnetwork/net/Request;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/ydnetwork/net/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ydnetwork/net/Request;->shouldCache()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_23
    return-object p1

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    iget-object v1, p0, Lcom/ydnetwork/net/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    monitor-enter v1

    :try_start_2a
    invoke-virtual {p1}, Lcom/ydnetwork/net/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-nez v0, :cond_45

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :cond_45
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/ydnetwork/net/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/ydnetwork/net/VolleyLog;->DEBUG:Z

    if-eqz v0, :cond_5c

    const-string v0, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/ydnetwork/net/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5c
    :goto_5c
    monitor-exit v1

    goto :goto_23

    :catchall_5e
    move-exception v0

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_2a .. :try_end_60} :catchall_5e

    throw v0

    :cond_61
    :try_start_61
    iget-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catchall {:try_start_61 .. :try_end_6c} :catchall_5e

    goto :goto_5c
.end method

.method public addRequestFinishedListener(Lcom/ydnetwork/net/RequestQueue$RequestFinishedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ydnetwork/net/RequestQueue$RequestFinishedListener",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/ydnetwork/net/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public cancelAll(Lcom/ydnetwork/net/RequestQueue$RequestFilter;)V
    .registers 6

    iget-object v1, p0, Lcom/ydnetwork/net/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ydnetwork/net/Request;

    invoke-interface {p1, v0}, Lcom/ydnetwork/net/RequestQueue$RequestFilter;->apply(Lcom/ydnetwork/net/Request;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/ydnetwork/net/Request;->cancel()V

    goto :goto_9

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1f

    return-void
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot cancelAll with a null tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/ydnetwork/net/RequestQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/ydnetwork/net/RequestQueue$1;-><init>(Lcom/ydnetwork/net/RequestQueue;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ydnetwork/net/RequestQueue;->cancelAll(Lcom/ydnetwork/net/RequestQueue$RequestFilter;)V

    return-void
.end method

.method finish(Lcom/ydnetwork/net/Request;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ydnetwork/net/Request",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/ydnetwork/net/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_25

    iget-object v1, p0, Lcom/ydnetwork/net/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ydnetwork/net/RequestQueue$RequestFinishedListener;

    invoke-interface {v0, p1}, Lcom/ydnetwork/net/RequestQueue$RequestFinishedListener;->onRequestFinished(Lcom/ydnetwork/net/Request;)V

    goto :goto_12

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v0

    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0

    :cond_28
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_22

    invoke-virtual {p1}, Lcom/ydnetwork/net/Request;->shouldCache()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v1, p0, Lcom/ydnetwork/net/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    monitor-enter v1

    :try_start_32
    invoke-virtual {p1}, Lcom/ydnetwork/net/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-eqz v0, :cond_5f

    sget-boolean v3, Lcom/ydnetwork/net/VolleyLog;->DEBUG:Z

    if-eqz v3, :cond_5a

    const-string v3, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/ydnetwork/net/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5a
    iget-object v2, p0, Lcom/ydnetwork/net/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    :cond_5f
    monitor-exit v1

    :cond_60
    return-void

    :catchall_61
    move-exception v0

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_32 .. :try_end_63} :catchall_61

    throw v0
.end method

.method public getCache()Lcom/ydnetwork/net/Cache;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mCache:Lcom/ydnetwork/net/Cache;

    return-object v0
.end method

.method public getSequenceNumber()I
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public removeRequestFinishedListener(Lcom/ydnetwork/net/RequestQueue$RequestFinishedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ydnetwork/net/RequestQueue$RequestFinishedListener",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/ydnetwork/net/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public start()V
    .registers 7

    invoke-virtual {p0}, Lcom/ydnetwork/net/RequestQueue;->stop()V

    new-instance v0, Lcom/ydnetwork/net/CacheDispatcher;

    iget-object v1, p0, Lcom/ydnetwork/net/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/ydnetwork/net/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/ydnetwork/net/RequestQueue;->mCache:Lcom/ydnetwork/net/Cache;

    iget-object v4, p0, Lcom/ydnetwork/net/RequestQueue;->mDelivery:Lcom/ydnetwork/net/ResponseDelivery;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ydnetwork/net/CacheDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/ydnetwork/net/Cache;Lcom/ydnetwork/net/ResponseDelivery;)V

    iput-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mCacheDispatcher:Lcom/ydnetwork/net/CacheDispatcher;

    iget-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mCacheDispatcher:Lcom/ydnetwork/net/CacheDispatcher;

    invoke-virtual {v0}, Lcom/ydnetwork/net/CacheDispatcher;->start()V

    const/4 v0, 0x0

    :goto_18
    iget-object v1, p0, Lcom/ydnetwork/net/RequestQueue;->mDispatchers:[Lcom/ydnetwork/net/NetworkDispatcher;

    array-length v1, v1

    if-ge v0, v1, :cond_34

    new-instance v1, Lcom/ydnetwork/net/NetworkDispatcher;

    iget-object v2, p0, Lcom/ydnetwork/net/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/ydnetwork/net/RequestQueue;->mNetwork:Lcom/ydnetwork/net/Network;

    iget-object v4, p0, Lcom/ydnetwork/net/RequestQueue;->mCache:Lcom/ydnetwork/net/Cache;

    iget-object v5, p0, Lcom/ydnetwork/net/RequestQueue;->mDelivery:Lcom/ydnetwork/net/ResponseDelivery;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ydnetwork/net/NetworkDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/ydnetwork/net/Network;Lcom/ydnetwork/net/Cache;Lcom/ydnetwork/net/ResponseDelivery;)V

    iget-object v2, p0, Lcom/ydnetwork/net/RequestQueue;->mDispatchers:[Lcom/ydnetwork/net/NetworkDispatcher;

    aput-object v1, v2, v0

    invoke-virtual {v1}, Lcom/ydnetwork/net/NetworkDispatcher;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_34
    return-void
.end method

.method public stop()V
    .registers 3

    iget-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mCacheDispatcher:Lcom/ydnetwork/net/CacheDispatcher;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ydnetwork/net/RequestQueue;->mCacheDispatcher:Lcom/ydnetwork/net/CacheDispatcher;

    invoke-virtual {v0}, Lcom/ydnetwork/net/CacheDispatcher;->quit()V

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/ydnetwork/net/RequestQueue;->mDispatchers:[Lcom/ydnetwork/net/NetworkDispatcher;

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Lcom/ydnetwork/net/RequestQueue;->mDispatchers:[Lcom/ydnetwork/net/NetworkDispatcher;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/ydnetwork/net/RequestQueue;->mDispatchers:[Lcom/ydnetwork/net/NetworkDispatcher;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/ydnetwork/net/NetworkDispatcher;->quit()V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    return-void
.end method
