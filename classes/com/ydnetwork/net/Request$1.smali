.class Lcom/ydnetwork/net/Request$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ydnetwork/net/Request;->finish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ydnetwork/net/Request;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/ydnetwork/net/Request;Ljava/lang/String;J)V
    .registers 6

    iput-object p1, p0, Lcom/ydnetwork/net/Request$1;->this$0:Lcom/ydnetwork/net/Request;

    iput-object p2, p0, Lcom/ydnetwork/net/Request$1;->val$tag:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ydnetwork/net/Request$1;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/ydnetwork/net/Request$1;->this$0:Lcom/ydnetwork/net/Request;

    # getter for: Lcom/ydnetwork/net/Request;->mEventLog:Lcom/ydnetwork/net/VolleyLog$MarkerLog;
    invoke-static {v0}, Lcom/ydnetwork/net/Request;->access$000(Lcom/ydnetwork/net/Request;)Lcom/ydnetwork/net/VolleyLog$MarkerLog;

    move-result-object v0

    iget-object v1, p0, Lcom/ydnetwork/net/Request$1;->val$tag:Ljava/lang/String;

    iget-wide v2, p0, Lcom/ydnetwork/net/Request$1;->val$threadId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/ydnetwork/net/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/ydnetwork/net/Request$1;->this$0:Lcom/ydnetwork/net/Request;

    # getter for: Lcom/ydnetwork/net/Request;->mEventLog:Lcom/ydnetwork/net/VolleyLog$MarkerLog;
    invoke-static {v0}, Lcom/ydnetwork/net/Request;->access$000(Lcom/ydnetwork/net/Request;)Lcom/ydnetwork/net/VolleyLog$MarkerLog;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    return-void
.end method
