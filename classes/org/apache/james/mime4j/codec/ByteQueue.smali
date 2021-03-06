.class public Lorg/apache/james/mime4j/codec/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# instance fields
.field private buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

.field private initialCapacity:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->initialCapacity:I

    .line 30
    new-instance v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->initialCapacity:I

    .line 34
    new-instance v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    .line 35
    iput p1, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->initialCapacity:I

    .line 36
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 51
    iget v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->initialCapacity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 52
    new-instance v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v1, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->initialCapacity:I

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    .line 55
    :goto_e
    return-void

    .line 54
    :cond_f
    new-instance v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    goto :goto_e
.end method

.method public count()I
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->size()I

    move-result v0

    return v0
.end method

.method public dequeue()B
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->remove()B

    move-result v0

    return v0
.end method

.method public enqueue(B)V
    .registers 3
    .param p1, "b"    # B

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->add(B)Z

    .line 40
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
