.class public Lcom/qiniu/android/http/CountingRequestBody;
.super Lcom/squareup/okhttp/RequestBody;
.source "CountingRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/CountingRequestBody$CountingSink;
    }
.end annotation


# static fields
.field private static final SEGMENT_SIZE:I = 0x800


# instance fields
.field private final body:Lcom/squareup/okhttp/RequestBody;

.field private final cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;

.field private final progress:Lcom/qiniu/android/http/ProgressHandler;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/RequestBody;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CancellationHandler;)V
    .registers 4
    .param p1, "body"    # Lcom/squareup/okhttp/RequestBody;
    .param p2, "progress"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p3, "cancellationHandler"    # Lcom/qiniu/android/http/CancellationHandler;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/qiniu/android/http/CountingRequestBody;->body:Lcom/squareup/okhttp/RequestBody;

    .line 29
    iput-object p2, p0, Lcom/qiniu/android/http/CountingRequestBody;->progress:Lcom/qiniu/android/http/ProgressHandler;

    .line 30
    iput-object p3, p0, Lcom/qiniu/android/http/CountingRequestBody;->cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/http/CountingRequestBody;)Lcom/qiniu/android/http/CancellationHandler;
    .registers 2
    .param p0, "x0"    # Lcom/qiniu/android/http/CountingRequestBody;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/qiniu/android/http/CountingRequestBody;->cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qiniu/android/http/CountingRequestBody;)Lcom/qiniu/android/http/ProgressHandler;
    .registers 2
    .param p0, "x0"    # Lcom/qiniu/android/http/CountingRequestBody;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/qiniu/android/http/CountingRequestBody;->progress:Lcom/qiniu/android/http/ProgressHandler;

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/qiniu/android/http/CountingRequestBody;->body:Lcom/squareup/okhttp/RequestBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/qiniu/android/http/CountingRequestBody;->body:Lcom/squareup/okhttp/RequestBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/RequestBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 5
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v1, Lcom/qiniu/android/http/CountingRequestBody$CountingSink;

    invoke-direct {v1, p0, p1}, Lcom/qiniu/android/http/CountingRequestBody$CountingSink;-><init>(Lcom/qiniu/android/http/CountingRequestBody;Lokio/Sink;)V

    .line 48
    .local v1, "countingSink":Lcom/qiniu/android/http/CountingRequestBody$CountingSink;
    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 50
    .local v0, "bufferedSink":Lokio/BufferedSink;
    iget-object v2, p0, Lcom/qiniu/android/http/CountingRequestBody;->body:Lcom/squareup/okhttp/RequestBody;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 52
    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 53
    return-void
.end method
