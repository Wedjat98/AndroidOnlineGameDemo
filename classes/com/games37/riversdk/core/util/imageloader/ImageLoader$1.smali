.class Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;
.super Ljava/lang/Thread;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->init(Landroid/content/Context;ILcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;)V
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
    .line 206
    iput-object p1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 209
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 210
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    new-instance v1, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1$1;

    invoke-direct {v1, p0}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1$1;-><init>(Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;)V

    # setter for: Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mPoolThreadHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->access$002(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;Landroid/os/Handler;)Landroid/os/Handler;

    .line 221
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    # getter for: Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mSemapHore:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->access$400(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 222
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 223
    return-void
.end method
