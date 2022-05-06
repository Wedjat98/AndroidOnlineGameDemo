.class public Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;
.super Lorg/apache/james/mime4j/io/LineReaderInputStream;
.source "MimeBoundaryInputStream.java"


# instance fields
.field private atBoundary:Z

.field private final boundary:[B

.field private boundaryLen:I

.field private buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

.field private completed:Z

.field private eof:Z

.field private lastPart:Z

.field private limit:I


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Ljava/lang/String;)V
    .registers 9
    .param p1, "inbuffer"    # Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;
    .param p2, "boundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2d

    const/4 v4, 0x0

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/LineReaderInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    invoke-virtual {p1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->capacity()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_18

    .line 55
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Boundary is too long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_18
    iput-object p1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 58
    iput-boolean v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    .line 59
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 60
    iput-boolean v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->atBoundary:Z

    .line 61
    iput v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    .line 62
    iput-boolean v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->lastPart:Z

    .line 63
    iput-boolean v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    .line 65
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    .line 66
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    aput-byte v5, v2, v4

    .line 67
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    const/4 v3, 0x1

    aput-byte v5, v2, v3

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5f

    .line 69
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v0, v2

    .line 70
    .local v0, "ch":B
    const/16 v2, 0xd

    if-eq v0, v2, :cond_4e

    const/16 v2, 0xa

    if-ne v0, v2, :cond_56

    .line 71
    :cond_4e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Boundary may not contain CR or LF"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_56
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    add-int/lit8 v3, v1, 0x2

    aput-byte v0, v2, v3

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 75
    .end local v0    # "ch":B
    :cond_5f
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer()I

    .line 76
    return-void
.end method

.method private calculateBoundaryLen()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    array-length v1, v1

    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    .line 229
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v2

    sub-int v0, v1, v2

    .line 230
    .local v0, "len":I
    if-lez v0, :cond_2b

    .line 231
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->charAt(I)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2b

    .line 232
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    .line 233
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 236
    :cond_2b
    const/4 v1, 0x1

    if-le v0, v1, :cond_48

    .line 237
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->charAt(I)B

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_48

    .line 238
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    .line 239
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 242
    :cond_48
    return-void
.end method

.method private endOfStream()Z
    .registers 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->atBoundary:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private fillBuffer()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 191
    iget-boolean v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    if-eqz v2, :cond_8

    move v0, v4

    .line 224
    :goto_7
    return v0

    .line 195
    :cond_8
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v2

    if-nez v2, :cond_43

    .line 196
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->fillBuffer()I

    move-result v0

    .line 200
    .local v0, "bytesRead":I
    :goto_14
    if-ne v0, v4, :cond_45

    move v2, v3

    :goto_17
    iput-boolean v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    .line 203
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v5, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    invoke-virtual {v2, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf([B)I

    move-result v1

    .line 206
    .local v1, "i":I
    :goto_21
    if-lez v1, :cond_47

    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v2, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->charAt(I)B

    move-result v2

    const/16 v5, 0xa

    if-eq v2, v5, :cond_47

    .line 209
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 210
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v5, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    iget-object v6, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->limit()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v2, v5, v1, v6}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf([BII)I

    move-result v1

    goto :goto_21

    .line 198
    .end local v0    # "bytesRead":I
    .end local v1    # "i":I
    :cond_43
    const/4 v0, 0x0

    .restart local v0    # "bytesRead":I
    goto :goto_14

    .line 200
    :cond_45
    const/4 v2, 0x0

    goto :goto_17

    .line 212
    .restart local v1    # "i":I
    :cond_47
    if-eq v1, v4, :cond_51

    .line 213
    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 214
    iput-boolean v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->atBoundary:Z

    .line 215
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->calculateBoundaryLen()V

    goto :goto_7

    .line 217
    :cond_51
    iget-boolean v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    if-eqz v2, :cond_5e

    .line 218
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->limit()I

    move-result v2

    iput v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    goto :goto_7

    .line 220
    :cond_5e
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->limit()I

    move-result v2

    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    goto :goto_7
.end method

.method private hasData()Z
    .registers 3

    .prologue
    .line 187
    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v1

    if-le v0, v1, :cond_16

    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->limit()I

    move-result v1

    if-gt v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private skipBoundary()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2d

    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 245
    iget-boolean v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    if-nez v3, :cond_50

    .line 246
    iput-boolean v5, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    .line 247
    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    .line 248
    const/4 v2, 0x1

    .line 250
    .local v2, "checkForLastPart":Z
    :goto_14
    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->length()I

    move-result v3

    if-le v3, v5, :cond_5f

    .line 251
    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->charAt(I)B

    move-result v0

    .line 252
    .local v0, "ch1":I
    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->charAt(I)B

    move-result v1

    .line 254
    .local v1, "ch2":I
    if-eqz v2, :cond_45

    if-ne v0, v8, :cond_45

    if-ne v1, v8, :cond_45

    .line 255
    iput-boolean v5, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->lastPart:Z

    .line 256
    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v3, v6}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    .line 257
    const/4 v2, 0x0

    .line 258
    goto :goto_14

    .line 261
    :cond_45
    const/16 v3, 0xd

    if-ne v0, v3, :cond_51

    if-ne v1, v7, :cond_51

    .line 262
    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v3, v6}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    .line 280
    .end local v0    # "ch1":I
    .end local v1    # "ch2":I
    .end local v2    # "checkForLastPart":Z
    :cond_50
    :goto_50
    return-void

    .line 264
    .restart local v0    # "ch1":I
    .restart local v1    # "ch2":I
    .restart local v2    # "checkForLastPart":Z
    :cond_51
    if-ne v0, v7, :cond_59

    .line 265
    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    goto :goto_50

    .line 269
    :cond_59
    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    goto :goto_14

    .line 273
    .end local v0    # "ch1":I
    .end local v1    # "ch2":I
    :cond_5f
    iget-boolean v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    if-nez v3, :cond_50

    .line 276
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer()I

    goto :goto_14
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    return-void
.end method

.method public eof()Z
    .registers 2

    .prologue
    .line 287
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isLastPart()Z
    .registers 2

    .prologue
    .line 283
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->lastPart:Z

    return v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 100
    iget-boolean v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    if-eqz v1, :cond_6

    .line 112
    :goto_5
    return v0

    .line 103
    :cond_6
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->endOfStream()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v1

    if-nez v1, :cond_19

    .line 104
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->skipBoundary()V

    goto :goto_5

    .line 114
    :cond_16
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer()I

    .line 108
    :cond_19
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 109
    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->read()I

    move-result v0

    goto :goto_5

    .line 110
    :cond_26
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->endOfStream()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 111
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->skipBoundary()V

    goto :goto_5
.end method

.method public read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 120
    iget-boolean v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    if-eqz v2, :cond_6

    .line 132
    :goto_5
    return v1

    .line 123
    :cond_6
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->endOfStream()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v2

    if-nez v2, :cond_16

    .line 124
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->skipBoundary()V

    goto :goto_5

    .line 127
    :cond_16
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer()I

    .line 128
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v1

    if-nez v1, :cond_24

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->read([BII)I

    move-result v1

    goto :goto_5

    .line 131
    :cond_24
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 132
    .local v0, "chunk":I
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->read([BII)I

    move-result v1

    goto :goto_5
.end method

.method public readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I
    .registers 12
    .param p1, "dst"    # Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 137
    if-nez p1, :cond_b

    .line 138
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Destination buffer may not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 140
    :cond_b
    iget-boolean v7, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    if-eqz v7, :cond_11

    move v5, v6

    .line 178
    :cond_10
    :goto_10
    return v5

    .line 143
    :cond_11
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->endOfStream()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v7

    if-nez v7, :cond_22

    .line 144
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->skipBoundary()V

    move v5, v6

    .line 145
    goto :goto_10

    .line 148
    :cond_22
    const/4 v5, 0x0

    .line 149
    .local v5, "total":I
    const/4 v2, 0x0

    .line 150
    .local v2, "found":Z
    const/4 v0, 0x0

    .line 151
    .local v0, "bytesRead":I
    :cond_25
    :goto_25
    if-nez v2, :cond_41

    .line 152
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v7

    if-nez v7, :cond_47

    .line 153
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer()I

    move-result v0

    .line 154
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v7

    if-nez v7, :cond_47

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->endOfStream()Z

    move-result v7

    if-eqz v7, :cond_47

    .line 155
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->skipBoundary()V

    .line 156
    const/4 v0, -0x1

    .line 175
    :cond_41
    if-nez v5, :cond_10

    if-ne v0, v6, :cond_10

    move v5, v6

    .line 176
    goto :goto_10

    .line 160
    :cond_47
    iget v7, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    iget-object v8, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v8

    sub-int v4, v7, v8

    .line 161
    .local v4, "len":I
    iget-object v7, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    const/16 v8, 0xa

    iget-object v9, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v9

    invoke-virtual {v7, v8, v9, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf(BII)I

    move-result v3

    .line 163
    .local v3, "i":I
    if-eq v3, v6, :cond_84

    .line 164
    const/4 v2, 0x1

    .line 165
    add-int/lit8 v7, v3, 0x1

    iget-object v8, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v8

    sub-int v1, v7, v8

    .line 169
    .local v1, "chunk":I
    :goto_6c
    if-lez v1, :cond_25

    .line 170
    iget-object v7, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buf()[B

    move-result-object v7

    iget-object v8, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v8

    invoke-virtual {p1, v7, v8, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    .line 171
    iget-object v7, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v7, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    .line 172
    add-int/2addr v5, v1

    goto :goto_25

    .line 167
    .end local v1    # "chunk":I
    :cond_84
    move v1, v4

    .restart local v1    # "chunk":I
    goto :goto_6c
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "MimeBoundaryInputStream, boundary "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .local v2, "buffer":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_b
    if-ge v3, v4, :cond_16

    aget-byte v1, v0, v3

    .line 294
    .local v1, "b":B
    int-to-char v5, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 296
    .end local v1    # "b":B
    :cond_16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
