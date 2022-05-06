.class Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;
.super Ljava/io/InputStream;
.source "ByteBufferUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/ByteBufferUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteBufferStream"
.end annotation


# static fields
.field private static final UNSET:I = -0x1


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private markPos:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->markPos:I

    .line 184
    iput-object p1, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 185
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .param p1, "readLimit"    # I

    .prologue
    .line 202
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->markPos:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 203
    monitor-exit p0

    return-void

    .line 202
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    .line 195
    const/4 v0, -0x1

    .line 197
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    goto :goto_9
.end method

.method public read([BII)I
    .registers 6
    .param p1, "buffer"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v1, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_a

    .line 213
    const/4 v0, -0x1

    .line 217
    :goto_9
    return v0

    .line 215
    :cond_a
    invoke-virtual {p0}, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->available()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 216
    .local v0, "toRead":I
    iget-object v1, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_9
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->markPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 223
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reset to unset mark position"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    .line 222
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 226
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->markPos:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_e

    .line 227
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .registers 10
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v2, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_b

    .line 232
    const-wide/16 v0, -0x1

    .line 237
    :goto_a
    return-wide v0

    .line 235
    :cond_b
    invoke-virtual {p0}, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 236
    .local v0, "toSkip":J
    iget-object v2, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v4, v0

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_a
.end method
