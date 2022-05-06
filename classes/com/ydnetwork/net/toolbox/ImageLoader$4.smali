.class Lcom/ydnetwork/net/toolbox/ImageLoader$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ydnetwork/net/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;


# direct methods
.method constructor <init>(Lcom/ydnetwork/net/toolbox/ImageLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$4;->this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$4;->this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;

    # getter for: Lcom/ydnetwork/net/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/ydnetwork/net/toolbox/ImageLoader;->access$200(Lcom/ydnetwork/net/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;

    # getter for: Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->access$300(Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

    # getter for: Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;
    invoke-static {v1}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->access$400(Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;)Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    if-eqz v4, :cond_22

    invoke-virtual {v0}, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->getError()Lcom/ydnetwork/net/VolleyError;

    move-result-object v4

    if-nez v4, :cond_4a

    # getter for: Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->access$000(Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;

    move-result-object v4

    # setter for: Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v4}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->access$502(Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    # getter for: Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;
    invoke-static {v1}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->access$400(Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;)Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;Z)V

    goto :goto_22

    :cond_4a
    # getter for: Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;
    invoke-static {v1}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->access$400(Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;)Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->getError()Lcom/ydnetwork/net/VolleyError;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;->onErrorResponse(Lcom/ydnetwork/net/VolleyError;)V

    goto :goto_22

    :cond_56
    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$4;->this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;

    # getter for: Lcom/ydnetwork/net/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/ydnetwork/net/toolbox/ImageLoader;->access$200(Lcom/ydnetwork/net/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$4;->this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;

    const/4 v1, 0x0

    # setter for: Lcom/ydnetwork/net/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/ydnetwork/net/toolbox/ImageLoader;->access$602(Lcom/ydnetwork/net/toolbox/ImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
