.class public final Lcom/bumptech/glide/util/ByteBufferUtil;
.super Ljava/lang/Object;
.source "ByteBufferUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;,
        Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
    }
.end annotation


# static fields
.field private static final BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final BUFFER_SIZE:I = 0x4000


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static fromFile(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 11
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    .local v6, "raf":Ljava/io/RandomAccessFile;
    const/4 v0, 0x0

    .line 33
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 35
    .local v4, "fileLength":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v1, v4, v2

    if-lez v1, :cond_23

    .line 36
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File too large to map into memory"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_17

    .line 47
    .end local v4    # "fileLength":J
    :catchall_17
    move-exception v1

    :goto_18
    if-eqz v0, :cond_1d

    .line 49
    :try_start_1a
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_55

    .line 54
    :cond_1d
    :goto_1d
    if-eqz v6, :cond_22

    .line 56
    :try_start_1f
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_57

    .line 59
    :cond_22
    :goto_22
    throw v1

    .line 39
    .restart local v4    # "fileLength":J
    :cond_23
    cmp-long v1, v4, v8

    if-nez v1, :cond_2f

    .line 40
    :try_start_27
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File unsuitable for memory mapping"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_2f
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v7, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_17

    .line 44
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v7, "raf":Ljava/io/RandomAccessFile;
    :try_start_36
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 45
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_59

    move-result-object v1

    .line 47
    if-eqz v0, :cond_4b

    .line 49
    :try_start_48
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_51

    .line 54
    :cond_4b
    :goto_4b
    if-eqz v7, :cond_50

    .line 56
    :try_start_4d
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_53

    .line 45
    :cond_50
    :goto_50
    return-object v1

    .line 50
    :catch_51
    move-exception v2

    goto :goto_4b

    .line 57
    :catch_53
    move-exception v2

    goto :goto_50

    .line 50
    .end local v4    # "fileLength":J
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_55
    move-exception v2

    goto :goto_1d

    .line 57
    :catch_57
    move-exception v2

    goto :goto_22

    .line 47
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "fileLength":J
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catchall_59
    move-exception v1

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_18
.end method

.method public static fromStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .registers 9
    .param p0, "stream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x4000

    const/4 v6, 0x0

    .line 136
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 138
    .local v3, "outStream":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 139
    .local v0, "buffer":[B
    if-nez v0, :cond_15

    .line 140
    new-array v0, v7, [B

    .line 144
    :cond_15
    :goto_15
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "n":I
    if-ltz v2, :cond_1f

    .line 145
    invoke-virtual {v3, v0, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_15

    .line 148
    :cond_1f
    sget-object v4, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 150
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 153
    .local v1, "bytes":[B
    array-length v4, v1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    return-object v4
.end method

.method private static getSafeArray(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
    .registers 5
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 159
    new-instance v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;-><init>([BII)V

    .line 161
    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static toBytes(Ljava/nio/ByteBuffer;)[B
    .registers 6
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 117
    invoke-static {p0}, Lcom/bumptech/glide/util/ByteBufferUtil;->getSafeArray(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;

    move-result-object v1

    .line 118
    .local v1, "safeArray":Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
    if-eqz v1, :cond_16

    iget v3, v1, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->offset:I

    if-nez v3, :cond_16

    iget v3, v1, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->limit:I

    iget-object v4, v1, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->data:[B

    array-length v4, v4

    if-ne v3, v4, :cond_16

    .line 119
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 126
    .local v0, "result":[B
    :goto_15
    return-object v0

    .line 121
    .end local v0    # "result":[B
    :cond_16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 122
    .local v2, "toCopy":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    new-array v0, v3, [B

    .line 123
    .restart local v0    # "result":[B
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_15
.end method

.method public static toFile(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    .registers 7
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const/4 v0, 0x0

    .line 69
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    :try_start_6
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_29

    .line 70
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 72
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 73
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 74
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_3d

    .line 76
    if-eqz v0, :cond_23

    .line 78
    :try_start_20
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_35

    .line 83
    :cond_23
    :goto_23
    if-eqz v2, :cond_28

    .line 85
    :try_start_25
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_37

    .line 91
    :cond_28
    :goto_28
    return-void

    .line 76
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :catchall_29
    move-exception v3

    :goto_2a
    if-eqz v0, :cond_2f

    .line 78
    :try_start_2c
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_39

    .line 83
    :cond_2f
    :goto_2f
    if-eqz v1, :cond_34

    .line 85
    :try_start_31
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_3b

    .line 88
    :cond_34
    :goto_34
    throw v3

    .line 79
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_35
    move-exception v3

    goto :goto_23

    .line 86
    :catch_37
    move-exception v3

    goto :goto_28

    .line 79
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :catch_39
    move-exception v4

    goto :goto_2f

    .line 86
    :catch_3b
    move-exception v4

    goto :goto_34

    .line 76
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_3d
    move-exception v3

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2a
.end method

.method public static toStream(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;
    .registers 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static toStream(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .registers 9
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "os"    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-static {p0}, Lcom/bumptech/glide/util/ByteBufferUtil;->getSafeArray(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;

    move-result-object v1

    .line 96
    .local v1, "safeArray":Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
    if-eqz v1, :cond_14

    .line 97
    iget-object v3, v1, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->data:[B

    iget v4, v1, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->offset:I

    iget v5, v1, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->offset:I

    iget v6, v1, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->limit:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 112
    :goto_13
    return-void

    .line 99
    :cond_14
    sget-object v3, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 100
    .local v0, "buffer":[B
    if-nez v0, :cond_23

    .line 101
    const/16 v3, 0x4000

    new-array v0, v3, [B

    .line 104
    :cond_23
    :goto_23
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_39

    .line 105
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 106
    .local v2, "toRead":I
    invoke-virtual {p0, v0, v5, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {p1, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_23

    .line 110
    .end local v2    # "toRead":I
    :cond_39
    sget-object v3, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_13
.end method
