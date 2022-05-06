.class public Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;
.super Lorg/apache/james/mime4j/io/LineReaderInputStream;
.source "BufferedLineReaderInputStream.java"


# instance fields
.field private buffer:[B

.field private buflen:I

.field private bufpos:I

.field private final maxLineLen:I

.field private truncated:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "buffersize"    # I

    .prologue
    .line 63
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 6
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "buffersize"    # I
    .param p3, "maxLineLen"    # I

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/LineReaderInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    if-nez p1, :cond_e

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_e
    if-gtz p2, :cond_18

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size may not be negative or zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_18
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    .line 54
    iput v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 55
    iput v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 56
    iput p3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->maxLineLen:I

    .line 57
    iput-boolean v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncated:Z

    .line 58
    return-void
.end method

.method private expand(I)V
    .registers 7
    .param p1, "newlen"    # I

    .prologue
    .line 67
    new-array v1, p1, [B

    .line 68
    .local v1, "newbuffer":[B
    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    iget v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    sub-int v0, v2, v3

    .line 69
    .local v0, "len":I
    if-lez v0, :cond_13

    .line 70
    iget-object v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    iget v4, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    :cond_13
    iput-object v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    .line 73
    return-void
.end method


# virtual methods
.method public buf()[B
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    return-object v0
.end method

.method public capacity()I
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public charAt(I)B
    .registers 3
    .param p1, "pos"    # I

    .prologue
    .line 291
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    if-lt p1, v0, :cond_8

    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    if-le p1, v0, :cond_e

    .line 292
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 294
    :cond_e
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 324
    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 325
    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 326
    return-void
.end method

.method public ensureCapacity(I)V
    .registers 3
    .param p1, "len"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    array-length v0, v0

    if-le p1, v0, :cond_8

    .line 77
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->expand(I)V

    .line 79
    :cond_8
    return-void
.end method

.method public fillBuffer()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v3, -0x1

    .line 83
    iget v4, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    if-lez v4, :cond_1b

    .line 84
    iget v4, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    iget v5, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    sub-int v1, v4, v5

    .line 85
    .local v1, "len":I
    if-lez v1, :cond_17

    .line 86
    iget-object v4, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    iget v5, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    iget-object v6, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    invoke-static {v4, v5, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    :cond_17
    iput v7, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 89
    iput v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 92
    .end local v1    # "len":I
    :cond_1b
    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 93
    .local v2, "off":I
    iget-object v4, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    array-length v4, v4

    sub-int v1, v4, v2

    .line 94
    .restart local v1    # "len":I
    iget-object v4, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    invoke-virtual {v4, v5, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 95
    .local v0, "l":I
    if-ne v0, v3, :cond_2e

    move v0, v3

    .line 99
    .end local v0    # "l":I
    :goto_2d
    return v0

    .line 98
    .restart local v0    # "l":I
    :cond_2e
    add-int v3, v2, v0

    iput v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    goto :goto_2d
.end method

.method public hasBufferedData()Z
    .registers 3

    .prologue
    .line 104
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public indexOf(B)I
    .registers 5
    .param p1, "b"    # B

    .prologue
    .line 287
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf(BII)I

    move-result v0

    return v0
.end method

.method public indexOf(BII)I
    .registers 7
    .param p1, "b"    # B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 275
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    if-lt p2, v1, :cond_c

    if-ltz p3, :cond_c

    add-int v1, p2, p3

    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    if-le v1, v2, :cond_12

    .line 276
    :cond_c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 278
    :cond_12
    move v0, p2

    .local v0, "i":I
    :goto_13
    add-int v1, p2, p3

    if-ge v0, v1, :cond_21

    .line 279
    iget-object v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    aget-byte v1, v1, v0

    if-ne v1, p1, :cond_1e

    .line 283
    .end local v0    # "i":I
    :goto_1d
    return v0

    .line 278
    .restart local v0    # "i":I
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 283
    :cond_21
    const/4 v0, -0x1

    goto :goto_1d
.end method

.method public indexOf([B)I
    .registers 5
    .param p1, "pattern"    # [B

    .prologue
    .line 271
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf([BII)I

    move-result v0

    return v0
.end method

.method public indexOf([BII)I
    .registers 14
    .param p1, "pattern"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v7, -0x1

    .line 219
    if-nez p1, :cond_b

    .line 220
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Pattern may not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 222
    :cond_b
    iget v8, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    if-lt p2, v8, :cond_17

    if-ltz p3, :cond_17

    add-int v8, p2, p3

    iget v9, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    if-le v8, v9, :cond_1d

    .line 223
    :cond_17
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 225
    :cond_1d
    array-length v8, p1

    if-ge p3, v8, :cond_22

    move v0, v7

    .line 259
    :cond_21
    :goto_21
    return v0

    .line 229
    :cond_22
    const/16 v8, 0x100

    new-array v5, v8, [I

    .line 230
    .local v5, "shiftTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    array-length v8, v5

    if-ge v1, v8, :cond_32

    .line 231
    array-length v8, p1

    add-int/lit8 v8, v8, 0x1

    aput v8, v5, v1

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 233
    :cond_32
    const/4 v1, 0x0

    :goto_33
    array-length v8, p1

    if-ge v1, v8, :cond_41

    .line 234
    aget-byte v8, p1, v1

    and-int/lit16 v6, v8, 0xff

    .line 235
    .local v6, "x":I
    array-length v8, p1

    sub-int/2addr v8, v1

    aput v8, v5, v6

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 238
    .end local v6    # "x":I
    :cond_41
    const/4 v2, 0x0

    .line 239
    .local v2, "j":I
    :goto_42
    array-length v8, p1

    sub-int v8, p3, v8

    if-gt v2, v8, :cond_63

    .line 240
    add-int v0, p2, v2

    .line 241
    .local v0, "cur":I
    const/4 v3, 0x1

    .line 242
    .local v3, "match":Z
    const/4 v1, 0x0

    :goto_4b
    array-length v8, p1

    if-ge v1, v8, :cond_59

    .line 243
    iget-object v8, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    add-int v9, v0, v1

    aget-byte v8, v8, v9

    aget-byte v9, p1, v1

    if-eq v8, v9, :cond_65

    .line 244
    const/4 v3, 0x0

    .line 248
    :cond_59
    if-nez v3, :cond_21

    .line 252
    array-length v8, p1

    add-int v4, v0, v8

    .line 253
    .local v4, "pos":I
    iget-object v8, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    array-length v8, v8

    if-lt v4, v8, :cond_68

    .end local v0    # "cur":I
    .end local v3    # "match":Z
    .end local v4    # "pos":I
    :cond_63
    move v0, v7

    .line 259
    goto :goto_21

    .line 242
    .restart local v0    # "cur":I
    .restart local v3    # "match":Z
    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 256
    .restart local v4    # "pos":I
    :cond_68
    iget-object v8, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    aget-byte v8, v8, v4

    and-int/lit16 v6, v8, 0xff

    .line 257
    .restart local v6    # "x":I
    aget v8, v5, v6

    add-int/2addr v2, v8

    .line 258
    goto :goto_42
.end method

.method public length()I
    .registers 3

    .prologue
    .line 310
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public limit()I
    .registers 2

    .prologue
    .line 306
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    return v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public pos()I
    .registers 2

    .prologue
    .line 302
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 114
    iget-boolean v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncated:Z

    if-eqz v2, :cond_6

    .line 124
    :goto_5
    return v1

    .line 117
    :cond_6
    const/4 v0, 0x0

    .line 118
    .local v0, "noRead":I
    :cond_7
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->hasBufferedData()Z

    move-result v2

    if-nez v2, :cond_14

    .line 119
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->fillBuffer()I

    move-result v0

    .line 120
    if-ne v0, v1, :cond_7

    goto :goto_5

    .line 124
    :cond_14
    iget-object v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    goto :goto_5
.end method

.method public read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 153
    iget-boolean v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncated:Z

    if-eqz v1, :cond_7

    .line 154
    const/4 v0, -0x1

    .line 159
    :cond_6
    :goto_6
    return v0

    .line 156
    :cond_7
    if-eqz p1, :cond_6

    .line 159
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->read([BII)I

    move-result v0

    goto :goto_6
.end method

.method public read([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 129
    iget-boolean v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncated:Z

    if-eqz v2, :cond_6

    .line 148
    :goto_5
    return v0

    .line 132
    :cond_6
    if-nez p1, :cond_a

    .line 133
    const/4 v0, 0x0

    goto :goto_5

    .line 135
    :cond_a
    const/4 v1, 0x0

    .line 136
    .local v1, "noRead":I
    :cond_b
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->hasBufferedData()Z

    move-result v2

    if-nez v2, :cond_18

    .line 137
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->fillBuffer()I

    move-result v1

    .line 138
    if-ne v1, v0, :cond_b

    goto :goto_5

    .line 142
    :cond_18
    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    iget v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    sub-int v0, v2, v3

    .line 143
    .local v0, "chunk":I
    if-le v0, p3, :cond_21

    .line 144
    move v0, p3

    .line 146
    :cond_21
    iget-object v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    goto :goto_5
.end method

.method public readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I
    .registers 10
    .param p1, "dst"    # Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 170
    if-nez p1, :cond_b

    .line 171
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Buffer may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 173
    :cond_b
    iget-boolean v6, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncated:Z

    if-eqz v6, :cond_11

    move v4, v5

    .line 206
    :cond_10
    :goto_10
    return v4

    .line 176
    :cond_11
    const/4 v4, 0x0

    .line 177
    .local v4, "total":I
    const/4 v2, 0x0

    .line 178
    .local v2, "found":Z
    const/4 v0, 0x0

    .line 179
    .local v0, "bytesRead":I
    :cond_14
    if-nez v2, :cond_22

    .line 180
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->hasBufferedData()Z

    move-result v6

    if-nez v6, :cond_28

    .line 181
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->fillBuffer()I

    move-result v0

    .line 182
    if-ne v0, v5, :cond_28

    .line 203
    :cond_22
    if-nez v4, :cond_10

    if-ne v0, v5, :cond_10

    move v4, v5

    .line 204
    goto :goto_10

    .line 186
    :cond_28
    const/16 v6, 0xa

    invoke-virtual {p0, v6}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf(B)I

    move-result v3

    .line 188
    .local v3, "i":I
    if-eq v3, v5, :cond_5e

    .line 189
    const/4 v2, 0x1

    .line 190
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v7

    sub-int v1, v6, v7

    .line 194
    .local v1, "chunk":I
    :goto_39
    if-lez v1, :cond_4a

    .line 195
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buf()[B

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v7

    invoke-virtual {p1, v6, v7, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    .line 196
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    .line 197
    add-int/2addr v4, v1

    .line 199
    :cond_4a
    iget v6, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->maxLineLen:I

    if-lez v6, :cond_14

    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v6

    iget v7, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->maxLineLen:I

    if-lt v6, v7, :cond_14

    .line 200
    new-instance v5, Lorg/apache/james/mime4j/io/MaxLineLimitException;

    const-string v6, "Maximum line length limit exceeded"

    invoke-direct {v5, v6}, Lorg/apache/james/mime4j/io/MaxLineLimitException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 192
    .end local v1    # "chunk":I
    :cond_5e
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->length()I

    move-result v1

    .restart local v1    # "chunk":I
    goto :goto_39
.end method

.method public skip(I)I
    .registers 5
    .param p1, "n"    # I

    .prologue
    .line 318
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 319
    .local v0, "chunk":I
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 320
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v2, "[pos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v2, "[limit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .local v1, "i":I
    :goto_2a
    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    if-ge v1, v2, :cond_39

    .line 339
    iget-object v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 341
    :cond_39
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public truncate()V
    .registers 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->clear()V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncated:Z

    .line 110
    return-void
.end method
