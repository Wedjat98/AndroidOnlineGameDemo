.class public Lcom/ydnetwork/net/toolbox/ClearCacheRequest;
.super Lcom/ydnetwork/net/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ydnetwork/net/Request",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCache:Lcom/ydnetwork/net/Cache;

.field private final mCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/ydnetwork/net/Cache;Ljava/lang/Runnable;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/ydnetwork/net/Request;-><init>(ILjava/lang/String;Lcom/ydnetwork/net/Response$ErrorListener;)V

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/ClearCacheRequest;->mCache:Lcom/ydnetwork/net/Cache;

    iput-object p2, p0, Lcom/ydnetwork/net/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public getPriority()Lcom/ydnetwork/net/Request$Priority;
    .registers 2

    sget-object v0, Lcom/ydnetwork/net/Request$Priority;->IMMEDIATE:Lcom/ydnetwork/net/Request$Priority;

    return-object v0
.end method

.method public isCanceled()Z
    .registers 3

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ClearCacheRequest;->mCache:Lcom/ydnetwork/net/Cache;

    invoke-interface {v0}, Lcom/ydnetwork/net/Cache;->clear()V

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_17

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method protected parseNetworkResponse(Lcom/ydnetwork/net/NetworkResponse;)Lcom/ydnetwork/net/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/NetworkResponse;",
            ")",
            "Lcom/ydnetwork/net/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
