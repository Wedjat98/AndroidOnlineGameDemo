.class Lcom/ydnetwork/net/RequestQueue$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ydnetwork/net/RequestQueue$RequestFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ydnetwork/net/RequestQueue;->cancelAll(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ydnetwork/net/RequestQueue;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/ydnetwork/net/RequestQueue;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/ydnetwork/net/RequestQueue$1;->this$0:Lcom/ydnetwork/net/RequestQueue;

    iput-object p2, p0, Lcom/ydnetwork/net/RequestQueue$1;->val$tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/ydnetwork/net/Request;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/Request",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/ydnetwork/net/Request;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/ydnetwork/net/RequestQueue$1;->val$tag:Ljava/lang/Object;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
