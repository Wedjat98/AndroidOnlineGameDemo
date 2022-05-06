.class Lcom/ydnetwork/net/toolbox/ImageLoader$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ydnetwork/net/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ydnetwork/net/toolbox/ImageLoader;->makeImageRequest(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/ydnetwork/net/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ydnetwork/net/Response$Listener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;

.field final synthetic val$cacheKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ydnetwork/net/toolbox/ImageLoader;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$2;->this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;

    iput-object p2, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$2;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$2;->this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$2;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ydnetwork/net/toolbox/ImageLoader;->onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/ydnetwork/net/toolbox/ImageLoader$2;->onResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method
