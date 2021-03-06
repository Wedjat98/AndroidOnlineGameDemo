.class Lokhttp3/internal/http/Http1xStream$FixedLengthSource;
.super Lokhttp3/internal/http/Http1xStream$AbstractSource;
.source "Http1xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lokhttp3/internal/http/Http1xStream;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http/Http1xStream;J)V
    .registers 8
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->this$0:Lokhttp3/internal/http/Http1xStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http/Http1xStream$AbstractSource;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V

    .line 366
    iput-wide p2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    .line 367
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 368
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->endOfInput(Z)V

    .line 370
    :cond_14
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
    .line 391
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->closed:Z

    if-eqz v0, :cond_5

    .line 398
    :goto_4
    return-void

    .line 393
    :cond_5
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->endOfInput(Z)V

    .line 397
    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->closed:Z

    goto :goto_4
.end method

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
    const-wide/16 v2, -0x1

    const-wide/16 v8, 0x0

    .line 373
    cmp-long v4, p2, v8

    if-gez v4, :cond_21

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    :cond_21
    iget-boolean v4, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->closed:Z

    if-eqz v4, :cond_2d

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    :cond_2d
    iget-wide v4, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_35

    move-wide v0, v2

    .line 387
    :cond_34
    :goto_34
    return-wide v0

    .line 377
    :cond_35
    iget-object v4, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->this$0:Lokhttp3/internal/http/Http1xStream;

    # getter for: Lokhttp3/internal/http/Http1xStream;->source:Lokio/BufferedSource;
    invoke-static {v4}, Lokhttp3/internal/http/Http1xStream;->access$600(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v4

    iget-wide v6, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    invoke-static {v6, v7, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-interface {v4, p1, v6, v7}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 378
    .local v0, "read":J
    cmp-long v2, v0, v2

    if-nez v2, :cond_55

    .line 379
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->endOfInput(Z)V

    .line 380
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 383
    :cond_55
    iget-wide v2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    .line 384
    iget-wide v2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_34

    .line 385
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->endOfInput(Z)V

    goto :goto_34
.end method
