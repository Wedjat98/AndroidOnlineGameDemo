.class Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ydnetwork/net/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchedImageRequest"
.end annotation


# instance fields
.field private final mContainers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mError:Lcom/ydnetwork/net/VolleyError;

.field private final mRequest:Lcom/ydnetwork/net/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ydnetwork/net/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private mResponseBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/ydnetwork/net/toolbox/ImageLoader;Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/Request",
            "<*>;",
            "Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    iput-object p2, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/ydnetwork/net/Request;

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public addContainer(Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;)V
    .registers 3

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getError()Lcom/ydnetwork/net/VolleyError;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/ydnetwork/net/VolleyError;

    return-object v0
.end method

.method public removeContainerAndCancelIfNecessary(Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;)Z
    .registers 3

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/ydnetwork/net/Request;

    invoke-virtual {v0}, Lcom/ydnetwork/net/Request;->cancel()V

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public setError(Lcom/ydnetwork/net/VolleyError;)V
    .registers 2

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/ydnetwork/net/VolleyError;

    return-void
.end method
