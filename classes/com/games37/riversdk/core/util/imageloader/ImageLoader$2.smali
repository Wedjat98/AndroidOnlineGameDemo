.class Lcom/games37/riversdk/core/util/imageloader/ImageLoader$2;
.super Landroid/os/Handler;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$2;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 286
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;

    .line 287
    .local v1, "holder":Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;
    iget-object v3, v1, Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;->view:Landroid/view/View;

    .line 288
    .local v3, "view":Landroid/view/View;
    iget-object v0, v1, Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 289
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v2, v1, Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;->path:Ljava/lang/String;

    .line 290
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    if-eqz v0, :cond_1f

    .line 291
    check-cast v3, Landroid/widget/ImageView;

    .end local v3    # "view":Landroid/view/View;
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 295
    :cond_1f
    return-void
.end method
