.class public Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ydnetwork/net/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageContainer"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCacheKey:Ljava/lang/String;

.field private final mListener:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;

.field private final mRequestUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/ydnetwork/net/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;)V
    .registers 6

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;

    return-void
.end method

.method static synthetic access$400(Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;)Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public cancelRequest()V
    .registers 3

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;

    # getter for: Lcom/ydnetwork/net/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/ydnetwork/net/toolbox/ImageLoader;->access$100(Lcom/ydnetwork/net/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_27

    invoke-virtual {v0, p0}, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;

    # getter for: Lcom/ydnetwork/net/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/ydnetwork/net/toolbox/ImageLoader;->access$100(Lcom/ydnetwork/net/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_27
    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;

    # getter for: Lcom/ydnetwork/net/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/ydnetwork/net/toolbox/ImageLoader;->access$200(Lcom/ydnetwork/net/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;)Z

    # getter for: Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->access$300(Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;

    # getter for: Lcom/ydnetwork/net/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/ydnetwork/net/toolbox/ImageLoader;->access$200(Lcom/ydnetwork/net/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method
