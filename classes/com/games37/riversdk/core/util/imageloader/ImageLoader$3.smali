.class Lcom/games37/riversdk/core/util/imageloader/ImageLoader$3;
.super Landroid/os/Handler;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/view/View;Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

.field final synthetic val$loadListener:Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$3;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    iput-object p2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$3;->val$loadListener:Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 323
    iget v1, p1, Landroid/os/Message;->what:I

    .line 324
    .local v1, "code":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;

    .line 325
    .local v2, "holder":Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;
    iget-object v4, v2, Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;->view:Landroid/view/View;

    .line 326
    .local v4, "view":Landroid/view/View;
    iget-object v0, v2, Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 327
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v3, v2, Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;->path:Ljava/lang/String;

    .line 328
    .local v3, "path":Ljava/lang/String;
    sparse-switch v1, :sswitch_data_4e

    .line 347
    :cond_f
    :goto_f
    return-void

    .line 330
    :sswitch_10
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 331
    iget-object v5, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$3;->val$loadListener:Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener;

    invoke-interface {v5, v4, v0, v3}, Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener;->LoadSuccess(Landroid/view/View;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_f

    .line 337
    :sswitch_24
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 338
    iget-object v5, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$3;->val$loadListener:Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener;

    invoke-interface {v5, v4, v3}, Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener;->Loading(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_f

    .line 342
    :sswitch_38
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 343
    iget-object v5, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$3;->val$loadListener:Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v3, v6}, Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener;->LoadError(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 328
    nop

    :sswitch_data_4e
    .sparse-switch
        0x111 -> :sswitch_10
        0x222 -> :sswitch_38
        0x333 -> :sswitch_24
    .end sparse-switch
.end method
