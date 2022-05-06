.class Lcom/ydnetwork/net/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ydnetwork/net/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ydnetwork/net/toolbox/NetworkImageView;

.field final synthetic val$isInLayoutPass:Z


# direct methods
.method constructor <init>(Lcom/ydnetwork/net/toolbox/NetworkImageView;Z)V
    .registers 3

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView$1;->this$0:Lcom/ydnetwork/net/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView$1;->val$isInLayoutPass:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/ydnetwork/net/VolleyError;)V
    .registers 4

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView$1;->this$0:Lcom/ydnetwork/net/toolbox/NetworkImageView;

    # getter for: Lcom/ydnetwork/net/toolbox/NetworkImageView;->mErrorImageId:I
    invoke-static {v0}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->access$000(Lcom/ydnetwork/net/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView$1;->this$0:Lcom/ydnetwork/net/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView$1;->this$0:Lcom/ydnetwork/net/toolbox/NetworkImageView;

    # getter for: Lcom/ydnetwork/net/toolbox/NetworkImageView;->mErrorImageId:I
    invoke-static {v1}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->access$000(Lcom/ydnetwork/net/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->setImageResource(I)V

    :cond_13
    return-void
.end method

.method public onResponse(Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 5

    if-eqz p2, :cond_11

    iget-boolean v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView$1;->val$isInLayoutPass:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView$1;->this$0:Lcom/ydnetwork/net/toolbox/NetworkImageView;

    new-instance v1, Lcom/ydnetwork/net/toolbox/NetworkImageView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/ydnetwork/net/toolbox/NetworkImageView$1$1;-><init>(Lcom/ydnetwork/net/toolbox/NetworkImageView$1;Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->post(Ljava/lang/Runnable;)Z

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-virtual {p1}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView$1;->this$0:Lcom/ydnetwork/net/toolbox/NetworkImageView;

    invoke-virtual {p1}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_10

    :cond_21
    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView$1;->this$0:Lcom/ydnetwork/net/toolbox/NetworkImageView;

    # getter for: Lcom/ydnetwork/net/toolbox/NetworkImageView;->mDefaultImageId:I
    invoke-static {v0}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->access$100(Lcom/ydnetwork/net/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView$1;->this$0:Lcom/ydnetwork/net/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView$1;->this$0:Lcom/ydnetwork/net/toolbox/NetworkImageView;

    # getter for: Lcom/ydnetwork/net/toolbox/NetworkImageView;->mDefaultImageId:I
    invoke-static {v1}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->access$100(Lcom/ydnetwork/net/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->setImageResource(I)V

    goto :goto_10
.end method
