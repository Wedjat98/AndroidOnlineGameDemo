.class Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1$1;
.super Landroid/os/Handler;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1$1;->this$1:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1$1;->this$1:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;

    iget-object v1, v1, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    # getter for: Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->access$200(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1$1;->this$1:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;

    iget-object v2, v2, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    # invokes: Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->getTask()Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->access$100(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 215
    :try_start_13
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1$1;->this$1:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;

    iget-object v1, v1, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;->this$0:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    # getter for: Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mPoolSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v1}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->access$300(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1e} :catch_1f

    .line 219
    :goto_1e
    return-void

    .line 216
    :catch_1f
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1e
.end method
