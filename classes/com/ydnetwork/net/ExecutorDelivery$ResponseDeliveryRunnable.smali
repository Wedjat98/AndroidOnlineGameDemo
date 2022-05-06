.class Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ydnetwork/net/ExecutorDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseDeliveryRunnable"
.end annotation


# instance fields
.field private final mRequest:Lcom/ydnetwork/net/Request;

.field private final mResponse:Lcom/ydnetwork/net/Response;

.field private final mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/ydnetwork/net/ExecutorDelivery;


# direct methods
.method public constructor <init>(Lcom/ydnetwork/net/ExecutorDelivery;Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/Response;Ljava/lang/Runnable;)V
    .registers 5

    iput-object p1, p0, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;->this$0:Lcom/ydnetwork/net/ExecutorDelivery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/ydnetwork/net/Request;

    iput-object p3, p0, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/ydnetwork/net/Response;

    iput-object p4, p0, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/ydnetwork/net/Request;

    invoke-virtual {v0}, Lcom/ydnetwork/net/Request;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/ydnetwork/net/Request;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/Request;->finish(Ljava/lang/String;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/ydnetwork/net/Response;

    invoke-virtual {v0}, Lcom/ydnetwork/net/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/ydnetwork/net/Request;

    iget-object v1, p0, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/ydnetwork/net/Response;

    iget-object v1, v1, Lcom/ydnetwork/net/Response;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/Request;->deliverResponse(Ljava/lang/Object;)V

    :goto_21
    iget-object v0, p0, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/ydnetwork/net/Response;

    iget-boolean v0, v0, Lcom/ydnetwork/net/Response;->intermediate:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/ydnetwork/net/Request;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/Request;->addMarker(Ljava/lang/String;)V

    :goto_2e
    iget-object v0, p0, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_f

    :cond_38
    iget-object v0, p0, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/ydnetwork/net/Request;

    iget-object v1, p0, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/ydnetwork/net/Response;

    iget-object v1, v1, Lcom/ydnetwork/net/Response;->error:Lcom/ydnetwork/net/VolleyError;

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/Request;->deliverError(Lcom/ydnetwork/net/VolleyError;)V

    goto :goto_21

    :cond_42
    iget-object v0, p0, Lcom/ydnetwork/net/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/ydnetwork/net/Request;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/Request;->finish(Ljava/lang/String;)V

    goto :goto_2e
.end method
