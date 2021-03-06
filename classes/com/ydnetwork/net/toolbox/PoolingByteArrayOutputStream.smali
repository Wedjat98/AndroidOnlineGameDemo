.class public Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;


# static fields
.field private static final DEFAULT_SIZE:I = 0x100


# instance fields
.field private final mPool:Lcom/ydnetwork/net/toolbox/ByteArrayPool;


# direct methods
.method public constructor <init>(Lcom/ydnetwork/net/toolbox/ByteArrayPool;)V
    .registers 3

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/ydnetwork/net/toolbox/ByteArrayPool;I)V

    return-void
.end method

.method public constructor <init>(Lcom/ydnetwork/net/toolbox/ByteArrayPool;I)V
    .registers 5

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/ydnetwork/net/toolbox/ByteArrayPool;

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/ydnetwork/net/toolbox/ByteArrayPool;

    const/16 v1, 0x100

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->buf:[B

    return-void
.end method

.method private expand(I)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->count:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/ydnetwork/net/toolbox/ByteArrayPool;

    iget v1, p0, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->count:I

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->buf:[B

    iget v2, p0, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/ydnetwork/net/toolbox/ByteArrayPool;

    iget-object v2, p0, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->buf:[B

    invoke-virtual {v1, v2}, Lcom/ydnetwork/net/toolbox/ByteArrayPool;->returnBuf([B)V

    iput-object v0, p0, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->buf:[B

    goto :goto_9
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/ydnetwork/net/toolbox/ByteArrayPool;

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/toolbox/ByteArrayPool;->returnBuf([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->buf:[B

    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method

.method public finalize()V
    .registers 3

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/ydnetwork/net/toolbox/ByteArrayPool;

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/toolbox/ByteArrayPool;->returnBuf([B)V

    return-void
.end method

.method public declared-synchronized write(I)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->expand(I)V

    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p3}, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->expand(I)V

    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
