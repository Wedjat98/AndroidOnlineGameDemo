.class Lcom/ydnetwork/net/toolbox/ImageLoader$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ydnetwork/net/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ydnetwork/net/toolbox/ImageLoader;->makeImageRequest(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/ydnetwork/net/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;

.field final synthetic val$cacheKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ydnetwork/net/toolbox/ImageLoader;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$3;->this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;

    iput-object p2, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$3;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/ydnetwork/net/VolleyError;)V
    .registers 4

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$3;->this$0:Lcom/ydnetwork/net/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$3;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ydnetwork/net/toolbox/ImageLoader;->onGetImageError(Ljava/lang/String;Lcom/ydnetwork/net/VolleyError;)V

    return-void
.end method
