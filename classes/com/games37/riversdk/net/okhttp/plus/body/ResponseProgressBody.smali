.class public Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;
.super Lokhttp3/ResponseBody;
.source "ResponseProgressBody.java"


# instance fields
.field private bufferedSource:Lokio/BufferedSource;

.field private final mProgressListener:Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;

.field private final mResponseBody:Lokhttp3/ResponseBody;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;)V
    .registers 3
    .param p1, "responseBody"    # Lokhttp3/ResponseBody;
    .param p2, "progressListener"    # Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;

    .prologue
    .line 26
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->mResponseBody:Lokhttp3/ResponseBody;

    .line 28
    iput-object p2, p0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->mProgressListener:Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;)Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->mProgressListener:Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;)Lokhttp3/ResponseBody;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->mResponseBody:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method private source(Lokio/Source;)Lokio/Source;
    .registers 3
    .param p1, "source"    # Lokio/Source;

    .prologue
    .line 51
    new-instance v0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody$1;

    invoke-direct {v0, p0, p1}, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody$1;-><init>(Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->mResponseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->mResponseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->bufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_14

    .line 44
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->mResponseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->source(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->bufferedSource:Lokio/BufferedSource;

    .line 46
    :cond_14
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->bufferedSource:Lokio/BufferedSource;

    return-object v0
.end method
