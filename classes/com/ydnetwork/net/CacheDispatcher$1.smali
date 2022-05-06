.class Lcom/ydnetwork/net/CacheDispatcher$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ydnetwork/net/CacheDispatcher;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ydnetwork/net/CacheDispatcher;

.field final synthetic val$finalRequest:Lcom/ydnetwork/net/Request;


# direct methods
.method constructor <init>(Lcom/ydnetwork/net/CacheDispatcher;Lcom/ydnetwork/net/Request;)V
    .registers 3

    iput-object p1, p0, Lcom/ydnetwork/net/CacheDispatcher$1;->this$0:Lcom/ydnetwork/net/CacheDispatcher;

    iput-object p2, p0, Lcom/ydnetwork/net/CacheDispatcher$1;->val$finalRequest:Lcom/ydnetwork/net/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/ydnetwork/net/CacheDispatcher$1;->this$0:Lcom/ydnetwork/net/CacheDispatcher;

    # getter for: Lcom/ydnetwork/net/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v0}, Lcom/ydnetwork/net/CacheDispatcher;->access$000(Lcom/ydnetwork/net/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/ydnetwork/net/CacheDispatcher$1;->val$finalRequest:Lcom/ydnetwork/net/Request;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method
