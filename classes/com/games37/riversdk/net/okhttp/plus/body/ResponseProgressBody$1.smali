.class Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody$1;
.super Lokio/ForwardingSource;
.source "ResponseProgressBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;

.field totalBytesRead:J


# direct methods
.method constructor <init>(Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;Lokio/Source;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;
    .param p2, "x0"    # Lokio/Source;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody$1;->this$0:Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .registers 14
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 57
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v8

    .line 58
    .local v8, "bytesRead":J
    iget-wide v2, p0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody$1;->totalBytesRead:J

    cmp-long v0, v8, v6

    if-eqz v0, :cond_38

    move-wide v0, v8

    :goto_d
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody$1;->totalBytesRead:J

    .line 59
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody$1;->this$0:Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;

    # getter for: Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->mProgressListener:Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;
    invoke-static {v0}, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->access$000(Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;)Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 60
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody$1;->this$0:Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;

    # getter for: Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->mProgressListener:Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;
    invoke-static {v0}, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->access$000(Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;)Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;

    move-result-object v0

    new-instance v1, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;

    iget-wide v2, p0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody$1;->totalBytesRead:J

    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody$1;->this$0:Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;

    # getter for: Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->mResponseBody:Lokhttp3/ResponseBody;
    invoke-static {v4}, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;->access$100(Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;)Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    cmp-long v6, v8, v6

    if-nez v6, :cond_3b

    const/4 v6, 0x1

    :goto_31
    invoke-direct/range {v1 .. v6}, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;-><init>(JJZ)V

    invoke-interface {v0, v1}, Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;->onProgress(Lcom/games37/riversdk/net/okhttp/plus/model/Progress;)V

    .line 62
    :cond_37
    return-wide v8

    .line 58
    :cond_38
    const-wide/16 v0, 0x0

    goto :goto_d

    .line 60
    :cond_3b
    const/4 v6, 0x0

    goto :goto_31
.end method
