.class public Lcom/ydnetwork/net/ExecutorDelivery;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ydnetwork/net/ResponseDelivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;
    }
.end annotation


# instance fields
.field private final mResponsePoster:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ydnetwork/net/ExecutorDelivery$1;

    invoke-direct {v0, p0, p1}, Lcom/ydnetwork/net/ExecutorDelivery$1;-><init>(Lcom/ydnetwork/net/ExecutorDelivery;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ydnetwork/net/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ydnetwork/net/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public postError(Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/VolleyError;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/Request",
            "<*>;",
            "Lcom/ydnetwork/net/VolleyError;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/ydnetwork/net/Request;->addMarker(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/ydnetwork/net/Response;->error(Lcom/ydnetwork/net/VolleyError;)Lcom/ydnetwork/net/Response;

    move-result-object v0

    iget-object v1, p0, Lcom/ydnetwork/net/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/ydnetwork/net/ExecutorDelivery;Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/Response;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postResponse(Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/Request",
            "<*>;",
            "Lcom/ydnetwork/net/Response",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ydnetwork/net/ExecutorDelivery;->postResponse(Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/Response;Ljava/lang/Runnable;)V

    return-void
.end method

.method public postResponse(Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/Response;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/Request",
            "<*>;",
            "Lcom/ydnetwork/net/Response",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/ydnetwork/net/Request;->markDelivered()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/ydnetwork/net/Request;->addMarker(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ydnetwork/net/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/ydnetwork/net/ExecutorDelivery;Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
