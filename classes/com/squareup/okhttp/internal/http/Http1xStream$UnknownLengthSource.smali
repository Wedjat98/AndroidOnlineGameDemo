.class Lcom/squareup/okhttp/internal/http/Http1xStream$UnknownLengthSource;
.super Lcom/squareup/okhttp/internal/http/Http1xStream$AbstractSource;
.source "Http1xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnknownLengthSource"
.end annotation


# instance fields
.field private inputExhausted:Z

.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/Http1xStream;)V
    .registers 3

    .prologue
    .line 480
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$UnknownLengthSource;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/http/Http1xStream$AbstractSource;-><init>(Lcom/squareup/okhttp/internal/http/Http1xStream;Lcom/squareup/okhttp/internal/http/Http1xStream$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/Http1xStream;Lcom/squareup/okhttp/internal/http/Http1xStream$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/http/Http1xStream;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/http/Http1xStream$1;

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/Http1xStream$UnknownLengthSource;-><init>(Lcom/squareup/okhttp/internal/http/Http1xStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$UnknownLengthSource;->closed:Z

    if-eqz v0, :cond_5

    .line 504
    :goto_4
    return-void

    .line 500
    :cond_5
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$UnknownLengthSource;->inputExhausted:Z

    if-nez v0, :cond_c

    .line 501
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/Http1xStream$UnknownLengthSource;->unexpectedEndOfInput()V

    .line 503
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$UnknownLengthSource;->closed:Z

    goto :goto_4
.end method

.method public read(Lokio/Buffer;J)J
    .registers 10
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 485
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

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

    .line 486
    :cond_21
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$UnknownLengthSource;->closed:Z

    if-eqz v4, :cond_2d

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 487
    :cond_2d
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$UnknownLengthSource;->inputExhausted:Z

    if-eqz v4, :cond_33

    move-wide v0, v2

    .line 495
    :cond_32
    :goto_32
    return-wide v0

    .line 489
    :cond_33
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$UnknownLengthSource;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/squareup/okhttp/internal/http/Http1xStream;->source:Lokio/BufferedSource;
    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/Http1xStream;->access$600(Lcom/squareup/okhttp/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 490
    .local v0, "read":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_32

    .line 491
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$UnknownLengthSource;->inputExhausted:Z

    .line 492
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/Http1xStream$UnknownLengthSource;->endOfInput()V

    move-wide v0, v2

    .line 493
    goto :goto_32
.end method
