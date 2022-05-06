.class Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->addTask(Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    iput-object p2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 365
    new-instance v1, Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;

    invoke-direct {v1}, Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;-><init>()V

    .line 366
    .local v1, "holder":Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->val$view:Landroid/view/View;

    iput-object v2, v1, Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;->view:Landroid/view/View;

    .line 367
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->val$path:Ljava/lang/String;

    iput-object v2, v1, Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;->path:Ljava/lang/String;

    .line 368
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    const/16 v3, 0x333

    # invokes: Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->sendMsg(ILcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;)V
    invoke-static {v2, v3, v1}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->access$500(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;ILcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;)V

    .line 370
    invoke-static {}, Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;->getInstance()Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 371
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_4e

    .line 373
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->val$path:Ljava/lang/String;

    # invokes: Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->urlIsNetWork(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->access$600(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 375
    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    iget-object v4, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->val$view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    # invokes: Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->decodeSampledBitmapFromDisk(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    invoke-static {v3, v4, v2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->access$700(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 381
    :goto_36
    if-nez v0, :cond_4e

    .line 382
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->val$path:Ljava/lang/String;

    # invokes: Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->urlIsNetWork(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->access$600(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 383
    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    iget-object v4, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->val$view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    # invokes: Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->decodeSampledBitmapFromNetWork(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    invoke-static {v3, v4, v2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->access$900(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 389
    :cond_4e
    :goto_4e
    if-eqz v0, :cond_7d

    .line 390
    invoke-static {}, Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;->getInstance()Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 391
    iput-object v0, v1, Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 392
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    const/16 v3, 0x111

    # invokes: Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->sendMsg(ILcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;)V
    invoke-static {v2, v3, v1}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->access$500(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;ILcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;)V

    .line 397
    :goto_62
    return-void

    .line 378
    :cond_63
    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    iget-object v4, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->val$view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    # invokes: Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->decodeSampledBitmapFromResource(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    invoke-static {v3, v4, v2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->access$800(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_36

    .line 385
    :cond_70
    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    iget-object v4, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->val$view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    # invokes: Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->decodeSampledBitmapFromLocal(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    invoke-static {v3, v4, v2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->access$1000(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4e

    .line 395
    :cond_7d
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    const/16 v3, 0x222

    # invokes: Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->sendMsg(ILcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;)V
    invoke-static {v2, v3, v1}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->access$500(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;ILcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;)V

    goto :goto_62
.end method
