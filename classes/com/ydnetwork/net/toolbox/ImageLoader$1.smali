.class final Lcom/ydnetwork/net/toolbox/ImageLoader$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ydnetwork/net/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultImageResId:I

.field final synthetic val$errorImageResId:I

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(ILandroid/widget/ImageView;I)V
    .registers 4

    iput p1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$1;->val$errorImageResId:I

    iput-object p2, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    iput p3, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$1;->val$defaultImageResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/ydnetwork/net/VolleyError;)V
    .registers 4

    iget v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$1;->val$errorImageResId:I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    iget v1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$1;->val$errorImageResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_b
    return-void
.end method

.method public onResponse(Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 5

    invoke-virtual {p1}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$1;->val$defaultImageResId:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    iget v1, p0, Lcom/ydnetwork/net/toolbox/ImageLoader$1;->val$defaultImageResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f
.end method
