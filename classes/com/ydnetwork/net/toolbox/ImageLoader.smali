.class public Lcom/ydnetwork/net/toolbox/ImageLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;,
        Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;,
        Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;,
        Lcom/ydnetwork/net/toolbox/ImageLoader$ImageCache;
    }
.end annotation


# instance fields
.field private mBatchResponseDelayMs:I

.field private final mBatchedResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mInFlightRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Lcom/ydnetwork/net/RequestQueue;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/ydnetwork/net/RequestQueue;Lcom/ydnetwork/net/toolbox/ImageLoader$ImageCache;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mRequestQueue:Lcom/ydnetwork/net/RequestQueue;

    iput-object p2, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mCache:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageCache;

    return-void
.end method

.method static synthetic access$100(Lcom/ydnetwork/net/toolbox/ImageLoader;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ydnetwork/net/toolbox/ImageLoader;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/ydnetwork/net/toolbox/ImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private batchResponse(Ljava/lang/String;Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;)V
    .registers 7

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/ydnetwork/net/toolbox/ImageLoader$4;

    invoke-direct {v0, p0}, Lcom/ydnetwork/net/toolbox/ImageLoader$4;-><init>(Lcom/ydnetwork/net/toolbox/ImageLoader;)V

    iput-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    return-void
.end method

.method private static getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImageListener(Landroid/widget/ImageView;II)Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;
    .registers 4

    new-instance v0, Lcom/ydnetwork/net/toolbox/ImageLoader$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/ydnetwork/net/toolbox/ImageLoader$1;-><init>(ILandroid/widget/ImageView;I)V

    return-object v0
.end method

.method private throwIfNotOnMainThread()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;)Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/ydnetwork/net/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;II)Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;II)Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;
    .registers 11

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ydnetwork/net/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;
    .registers 20

    invoke-direct {p0}, Lcom/ydnetwork/net/toolbox/ImageLoader;->throwIfNotOnMainThread()V

    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {p1, v0, v1, v2}, Lcom/ydnetwork/net/toolbox/ImageLoader;->getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mCache:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageCache;

    invoke-interface {v3, v7}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_25

    new-instance v3, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/ydnetwork/net/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;)V

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;Z)V

    :goto_24
    return-object v3

    :cond_25
    new-instance v3, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

    const/4 v5, 0x0

    move-object v4, p0

    move-object v6, p1

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/ydnetwork/net/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;)V

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;Z)V

    iget-object v4, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v4, :cond_43

    invoke-virtual {v4, v3}, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->addContainer(Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;)V

    goto :goto_24

    :cond_43
    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/ydnetwork/net/toolbox/ImageLoader;->makeImageRequest(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/ydnetwork/net/Request;

    move-result-object v4

    iget-object v5, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mRequestQueue:Lcom/ydnetwork/net/RequestQueue;

    invoke-virtual {v5, v4}, Lcom/ydnetwork/net/RequestQueue;->add(Lcom/ydnetwork/net/Request;)Lcom/ydnetwork/net/Request;

    iget-object v5, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v6, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;

    invoke-direct {v6, p0, v4, v3}, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;-><init>(Lcom/ydnetwork/net/toolbox/ImageLoader;Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24
.end method

.method public isCached(Ljava/lang/String;II)Z
    .registers 5

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ydnetwork/net/toolbox/ImageLoader;->isCached(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z

    move-result v0

    return v0
.end method

.method public isCached(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z
    .registers 7

    invoke-direct {p0}, Lcom/ydnetwork/net/toolbox/ImageLoader;->throwIfNotOnMainThread()V

    invoke-static {p1, p2, p3, p4}, Lcom/ydnetwork/net/toolbox/ImageLoader;->getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mCache:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageCache;

    invoke-interface {v1, v0}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected makeImageRequest(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/ydnetwork/net/Request;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/widget/ImageView$ScaleType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ydnetwork/net/Request",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ydnetwork/net/toolbox/ImageRequest;

    new-instance v2, Lcom/ydnetwork/net/toolbox/ImageLoader$2;

    invoke-direct {v2, p0, p5}, Lcom/ydnetwork/net/toolbox/ImageLoader$2;-><init>(Lcom/ydnetwork/net/toolbox/ImageLoader;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v7, Lcom/ydnetwork/net/toolbox/ImageLoader$3;

    invoke-direct {v7, p0, p5}, Lcom/ydnetwork/net/toolbox/ImageLoader$3;-><init>(Lcom/ydnetwork/net/toolbox/ImageLoader;Ljava/lang/String;)V

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/ydnetwork/net/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/ydnetwork/net/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/ydnetwork/net/Response$ErrorListener;)V

    return-object v0
.end method

.method protected onGetImageError(Ljava/lang/String;Lcom/ydnetwork/net/VolleyError;)V
    .registers 4

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p2}, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->setError(Lcom/ydnetwork/net/VolleyError;)V

    invoke-direct {p0, p1, v0}, Lcom/ydnetwork/net/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;)V

    :cond_10
    return-void
.end method

.method protected onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mCache:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageCache;

    invoke-interface {v0, p1, p2}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_15

    # setter for: Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->access$002(Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/ydnetwork/net/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;)V

    :cond_15
    return-void
.end method

.method public setBatchedResponseDelay(I)V
    .registers 2

    iput p1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    return-void
.end method
