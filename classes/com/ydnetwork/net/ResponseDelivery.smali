.class public interface abstract Lcom/ydnetwork/net/ResponseDelivery;
.super Ljava/lang/Object;


# virtual methods
.method public abstract postError(Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/VolleyError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/Request",
            "<*>;",
            "Lcom/ydnetwork/net/VolleyError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract postResponse(Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/Request",
            "<*>;",
            "Lcom/ydnetwork/net/Response",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract postResponse(Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/Response;Ljava/lang/Runnable;)V
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
.end method
