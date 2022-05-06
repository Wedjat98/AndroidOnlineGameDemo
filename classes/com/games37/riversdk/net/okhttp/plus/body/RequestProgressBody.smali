.class public Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;
.super Lokhttp3/RequestBody;
.source "RequestProgressBody.java"


# instance fields
.field private bufferedSink:Lokio/BufferedSink;

.field private final progressListener:Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;

.field private final requestBody:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;)V
    .registers 3
    .param p1, "requestBody"    # Lokhttp3/RequestBody;
    .param p2, "progressListener"    # Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;

    .prologue
    .line 26
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;->requestBody:Lokhttp3/RequestBody;

    .line 28
    iput-object p2, p0, Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;->progressListener:Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;)Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;->progressListener:Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;

    return-object v0
.end method

.method private sink(Lokio/Sink;)Lokio/Sink;
    .registers 3
    .param p1, "sink"    # Lokio/Sink;

    .prologue
    .line 50
    new-instance v0, Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody$1;

    invoke-direct {v0, p0, p1}, Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody$1;-><init>(Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;Lokio/Sink;)V

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
    .line 37
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 4
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;->bufferedSink:Lokio/BufferedSink;

    if-nez v0, :cond_e

    .line 43
    invoke-direct {p0, p1}, Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;->sink(Lokio/Sink;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;->bufferedSink:Lokio/BufferedSink;

    .line 45
    :cond_e
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;->requestBody:Lokhttp3/RequestBody;

    iget-object v1, p0, Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;->bufferedSink:Lokio/BufferedSink;

    invoke-virtual {v0, v1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 46
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;->bufferedSink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 47
    return-void
.end method
