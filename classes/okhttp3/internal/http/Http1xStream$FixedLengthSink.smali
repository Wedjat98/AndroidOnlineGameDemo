.class final Lokhttp3/internal/http/Http1xStream$FixedLengthSink;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FixedLengthSink"
.end annotation


# instance fields
.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Lokhttp3/internal/http/Http1xStream;

.field private final timeout:Lokio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lokhttp3/internal/http/Http1xStream;J)V
    .registers 6
    .param p2, "bytesRemaining"    # J

    .prologue
    .line 267
    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lokhttp3/internal/http/Http1xStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    new-instance v0, Lokio/ForwardingTimeout;

    iget-object v1, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lokhttp3/internal/http/Http1xStream;

    # getter for: Lokhttp3/internal/http/Http1xStream;->sink:Lokio/BufferedSink;
    invoke-static {v1}, Lokhttp3/internal/http/Http1xStream;->access$300(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->timeout:Lokio/ForwardingTimeout;

    .line 268
    iput-wide p2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    .line 269
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/http/Http1xStream;JLokhttp3/internal/http/Http1xStream$1;)V
    .registers 5
    .param p1, "x0"    # Lokhttp3/internal/http/Http1xStream;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lokhttp3/internal/http/Http1xStream$1;

    .prologue
    .line 262
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;-><init>(Lokhttp3/internal/http/Http1xStream;J)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_5

    .line 297
    :goto_4
    return-void

    .line 293
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    .line 294
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_18
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lokhttp3/internal/http/Http1xStream;

    iget-object v1, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->timeout:Lokio/ForwardingTimeout;

    # invokes: Lokhttp3/internal/http/Http1xStream;->detachTimeout(Lokio/ForwardingTimeout;)V
    invoke-static {v0, v1}, Lokhttp3/internal/http/Http1xStream;->access$400(Lokhttp3/internal/http/Http1xStream;Lokio/ForwardingTimeout;)V

    .line 296
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lokhttp3/internal/http/Http1xStream;

    const/4 v1, 0x3

    # setter for: Lokhttp3/internal/http/Http1xStream;->state:I
    invoke-static {v0, v1}, Lokhttp3/internal/http/Http1xStream;->access$502(Lokhttp3/internal/http/Http1xStream;I)I

    goto :goto_4
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_5

    .line 289
    :goto_4
    return-void

    .line 288
    :cond_5
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lokhttp3/internal/http/Http1xStream;

    # getter for: Lokhttp3/internal/http/Http1xStream;->sink:Lokio/BufferedSink;
    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->access$300(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    goto :goto_4
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->timeout:Lokio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 10
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_c
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 278
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_41

    .line 279
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_41
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lokhttp3/internal/http/Http1xStream;

    # getter for: Lokhttp3/internal/http/Http1xStream;->sink:Lokio/BufferedSink;
    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->access$300(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 283
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    .line 284
    return-void
.end method
