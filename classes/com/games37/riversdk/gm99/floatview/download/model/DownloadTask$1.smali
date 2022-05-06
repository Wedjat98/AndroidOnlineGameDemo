.class Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$1;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->runTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$1;->this$0:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$1;->this$0:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;

    # getter for: Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->access$000(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 119
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$1;->this$0:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;

    # getter for: Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->access$000(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    :cond_12
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$1;->this$0:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;

    # getter for: Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mRetryTimes:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->access$100(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 122
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$1;->this$0:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;

    # getter for: Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mRetryTimes:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->access$100(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 124
    :cond_23
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$1;->this$0:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;

    # invokes: Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->download()V
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->access$200(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)V

    .line 125
    return-void
.end method
