.class public final Lcom/qiniu/android/http/CountingRequestBody$CountingSink;
.super Lokio/ForwardingSink;
.source "CountingRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/http/CountingRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CountingSink"
.end annotation


# instance fields
.field private bytesWritten:I

.field final synthetic this$0:Lcom/qiniu/android/http/CountingRequestBody;


# direct methods
.method public constructor <init>(Lcom/qiniu/android/http/CountingRequestBody;Lokio/Sink;)V
    .registers 4
    .param p1, "this$0"    # Lcom/qiniu/android/http/CountingRequestBody;
    .param p2, "delegate"    # Lokio/Sink;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/qiniu/android/http/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/CountingRequestBody;

    .line 60
    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/qiniu/android/http/CountingRequestBody$CountingSink;->bytesWritten:I

    .line 61
    return-void
.end method

.method static synthetic access$200(Lcom/qiniu/android/http/CountingRequestBody$CountingSink;)I
    .registers 2
    .param p0, "x0"    # Lcom/qiniu/android/http/CountingRequestBody$CountingSink;

    .prologue
    .line 55
    iget v0, p0, Lcom/qiniu/android/http/CountingRequestBody$CountingSink;->bytesWritten:I

    return v0
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .registers 6
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qiniu/android/http/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/CountingRequestBody;

    # getter for: Lcom/qiniu/android/http/CountingRequestBody;->cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;
    invoke-static {v0}, Lcom/qiniu/android/http/CountingRequestBody;->access$000(Lcom/qiniu/android/http/CountingRequestBody;)Lcom/qiniu/android/http/CancellationHandler;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/qiniu/android/http/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/CountingRequestBody;

    # getter for: Lcom/qiniu/android/http/CountingRequestBody;->progress:Lcom/qiniu/android/http/ProgressHandler;
    invoke-static {v0}, Lcom/qiniu/android/http/CountingRequestBody;->access$100(Lcom/qiniu/android/http/CountingRequestBody;)Lcom/qiniu/android/http/ProgressHandler;

    move-result-object v0

    if-nez v0, :cond_14

    .line 66
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 86
    :cond_13
    :goto_13
    return-void

    .line 69
    :cond_14
    iget-object v0, p0, Lcom/qiniu/android/http/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/CountingRequestBody;

    # getter for: Lcom/qiniu/android/http/CountingRequestBody;->cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;
    invoke-static {v0}, Lcom/qiniu/android/http/CountingRequestBody;->access$000(Lcom/qiniu/android/http/CountingRequestBody;)Lcom/qiniu/android/http/CancellationHandler;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/qiniu/android/http/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/CountingRequestBody;

    # getter for: Lcom/qiniu/android/http/CountingRequestBody;->cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;
    invoke-static {v0}, Lcom/qiniu/android/http/CountingRequestBody;->access$000(Lcom/qiniu/android/http/CountingRequestBody;)Lcom/qiniu/android/http/CancellationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/qiniu/android/http/CancellationHandler;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 70
    new-instance v0, Lcom/qiniu/android/http/CancellationHandler$CancellationException;

    invoke-direct {v0}, Lcom/qiniu/android/http/CancellationHandler$CancellationException;-><init>()V

    throw v0

    .line 72
    :cond_2e
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 73
    iget v0, p0, Lcom/qiniu/android/http/CountingRequestBody$CountingSink;->bytesWritten:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, p0, Lcom/qiniu/android/http/CountingRequestBody$CountingSink;->bytesWritten:I

    .line 74
    iget-object v0, p0, Lcom/qiniu/android/http/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/CountingRequestBody;

    # getter for: Lcom/qiniu/android/http/CountingRequestBody;->progress:Lcom/qiniu/android/http/ProgressHandler;
    invoke-static {v0}, Lcom/qiniu/android/http/CountingRequestBody;->access$100(Lcom/qiniu/android/http/CountingRequestBody;)Lcom/qiniu/android/http/ProgressHandler;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 75
    new-instance v0, Lcom/qiniu/android/http/CountingRequestBody$CountingSink$1;

    invoke-direct {v0, p0}, Lcom/qiniu/android/http/CountingRequestBody$CountingSink$1;-><init>(Lcom/qiniu/android/http/CountingRequestBody$CountingSink;)V

    invoke-static {v0}, Lcom/qiniu/android/utils/AsyncRun;->run(Ljava/lang/Runnable;)V

    goto :goto_13
.end method
