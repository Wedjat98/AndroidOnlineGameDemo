.class public Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"


# static fields
.field public static final staticFlag:Z


# instance fields
.field available:I

.field protected bufcolumn:[I

.field protected buffer:[C

.field protected bufline:[I

.field public bufpos:I

.field bufsize:I

.field protected column:I

.field protected inBuf:I

.field protected inputStream:Ljava/io/Reader;

.field protected line:I

.field protected maxNextCharInd:I

.field protected prevCharIsCR:Z

.field protected prevCharIsLF:Z

.field protected tabSize:I

.field tokenBegin:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "dstream"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x1

    .line 343
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    .line 344
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 5
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I

    .prologue
    .line 333
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    .line 334
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;III)V
    .registers 6
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I
    .param p4, "buffersize"    # I

    .prologue
    .line 321
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 322
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 338
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 339
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;II)V
    .registers 11
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "startline"    # I
    .param p4, "startcolumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 327
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 328
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;III)V
    .registers 7
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "startline"    # I
    .param p4, "startcolumn"    # I
    .param p5, "buffersize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 315
    if-nez p2, :cond_b

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_7
    invoke-direct {p0, v0, p3, p4, p5}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 316
    return-void

    .line 315
    :cond_b
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4
    .param p1, "dstream"    # Ljava/io/Reader;

    .prologue
    const/4 v1, 0x1

    .line 281
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 282
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .registers 5
    .param p1, "dstream"    # Ljava/io/Reader;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I

    .prologue
    .line 276
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 277
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .registers 7
    .param p1, "dstream"    # Ljava/io/Reader;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I
    .param p4, "buffersize"    # I

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    .line 37
    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->column:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->line:I

    .line 40
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 41
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 46
    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->maxNextCharInd:I

    .line 47
    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->inBuf:I

    .line 48
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tabSize:I

    .line 263
    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 264
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->line:I

    .line 265
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->column:I

    .line 267
    iput p4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->available:I

    .line 268
    new-array v0, p4, [C

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    .line 269
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    .line 270
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    .line 271
    return-void
.end method


# virtual methods
.method public BeginToken()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    .line 152
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v0

    .line 153
    .local v0, "c":C
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    .line 155
    return v0
.end method

.method public Done()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    .line 405
    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    .line 406
    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    .line 407
    return-void
.end method

.method protected ExpandBuff(Z)V
    .registers 12
    .param p1, "wrapAround"    # Z

    .prologue
    const/4 v9, 0x0

    .line 56
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v1, v4, [C

    .line 57
    .local v1, "newbuffer":[C
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v2, v4, [I

    .line 58
    .local v2, "newbufline":[I
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v0, v4, [I

    .line 62
    .local v0, "newbufcolumn":[I
    if-eqz p1, :cond_82

    .line 64
    :try_start_15
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    .line 69
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    .line 73
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    .line 77
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    iput v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_75} :catch_b9

    .line 99
    :goto_75
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    iput v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    .line 100
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    iput v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->available:I

    .line 101
    iput v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    .line 102
    return-void

    .line 81
    :cond_82
    :try_start_82
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    .line 84
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    .line 87
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    .line 90
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    iput v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_b8} :catch_b9

    goto :goto_75

    .line 93
    :catch_b9
    move-exception v3

    .line 95
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/Error;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected FillBuff()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x800

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 106
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->maxNextCharInd:I

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->available:I

    if-ne v2, v3, :cond_1c

    .line 108
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->available:I

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    if-ne v2, v3, :cond_58

    .line 110
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    if-le v2, v4, :cond_4b

    .line 112
    iput v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    .line 113
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->available:I

    .line 130
    :cond_1c
    :goto_1c
    :try_start_1c
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->maxNextCharInd:I

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->available:I

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->maxNextCharInd:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, "i":I
    if-ne v1, v8, :cond_74

    .line 133
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 134
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_38} :catch_38

    .line 140
    .end local v1    # "i":I
    :catch_38
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    .line 142
    invoke-virtual {p0, v7}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V

    .line 143
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    if-ne v2, v8, :cond_4a

    .line 144
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    .line 145
    :cond_4a
    throw v0

    .line 115
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4b
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    if-gez v2, :cond_54

    .line 116
    iput v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    goto :goto_1c

    .line 118
    :cond_54
    invoke-virtual {p0, v7}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_1c

    .line 120
    :cond_58
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->available:I

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    if-le v2, v3, :cond_63

    .line 121
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->available:I

    goto :goto_1c

    .line 122
    :cond_63
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->available:I

    sub-int/2addr v2, v3

    if-ge v2, v4, :cond_6f

    .line 123
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_1c

    .line 125
    :cond_6f
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->available:I

    goto :goto_1c

    .line 137
    .restart local v1    # "i":I
    :cond_74
    :try_start_74
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->maxNextCharInd:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_79} :catch_38

    .line 138
    return-void
.end method

.method public GetImage()Ljava/lang/String;
    .registers 7

    .prologue
    .line 379
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_17

    .line 380
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 382
    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public GetSuffix(I)[C
    .registers 7
    .param p1, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 388
    new-array v0, p1, [C

    .line 390
    .local v0, "ret":[C
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_14

    .line 391
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    :goto_13
    return-object v0

    .line 394
    :cond_14
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_13
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "dstream"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x1

    .line 365
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    .line 366
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;II)V
    .registers 5
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I

    .prologue
    .line 375
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    .line 376
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;III)V
    .registers 6
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I
    .param p4, "buffersize"    # I

    .prologue
    .line 355
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 356
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 360
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 361
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    .registers 11
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "startline"    # I
    .param p4, "startcolumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 370
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 371
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V
    .registers 7
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "startline"    # I
    .param p4, "startcolumn"    # I
    .param p5, "buffersize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 349
    if-nez p2, :cond_b

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_7
    invoke-virtual {p0, v0, p3, p4, p5}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 350
    return-void

    .line 349
    :cond_b
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public ReInit(Ljava/io/Reader;)V
    .registers 4
    .param p1, "dstream"    # Ljava/io/Reader;

    .prologue
    const/4 v1, 0x1

    .line 310
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 311
    return-void
.end method

.method public ReInit(Ljava/io/Reader;II)V
    .registers 5
    .param p1, "dstream"    # Ljava/io/Reader;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I

    .prologue
    .line 305
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 306
    return-void
.end method

.method public ReInit(Ljava/io/Reader;III)V
    .registers 7
    .param p1, "dstream"    # Ljava/io/Reader;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I
    .param p4, "buffersize"    # I

    .prologue
    const/4 v1, 0x0

    .line 286
    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 287
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->line:I

    .line 288
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->column:I

    .line 290
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    array-length v0, v0

    if-eq p4, v0, :cond_22

    .line 292
    :cond_12
    iput p4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->available:I

    .line 293
    new-array v0, p4, [C

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    .line 294
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    .line 295
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    .line 297
    :cond_22
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->prevCharIsCR:Z

    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 298
    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->maxNextCharInd:I

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->inBuf:I

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    .line 299
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    .line 300
    return-void
.end method

.method protected UpdateLineColumn(C)V
    .registers 6
    .param p1, "c"    # C

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 160
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->column:I

    .line 162
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->prevCharIsLF:Z

    if-eqz v0, :cond_2a

    .line 164
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 165
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->line:I

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->line:I

    .line 178
    :cond_16
    :goto_16
    packed-switch p1, :pswitch_data_5a

    .line 194
    :goto_19
    :pswitch_19
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->line:I

    aput v2, v0, v1

    .line 195
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->column:I

    aput v2, v0, v1

    .line 196
    return-void

    .line 167
    :cond_2a
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->prevCharIsCR:Z

    if-eqz v0, :cond_16

    .line 169
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 170
    const/16 v0, 0xa

    if-ne p1, v0, :cond_37

    .line 172
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_16

    .line 175
    :cond_37
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->line:I

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->line:I

    goto :goto_16

    .line 181
    :pswitch_40
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->prevCharIsCR:Z

    goto :goto_19

    .line 184
    :pswitch_43
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_19

    .line 187
    :pswitch_46
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->column:I

    .line 188
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->column:I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tabSize:I

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->column:I

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tabSize:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->column:I

    goto :goto_19

    .line 178
    :pswitch_data_5a
    .packed-switch 0x9
        :pswitch_46
        :pswitch_43
        :pswitch_19
        :pswitch_19
        :pswitch_40
    .end packed-switch
.end method

.method public adjustBeginLineColumn(II)V
    .registers 15
    .param p1, "newLine"    # I
    .param p2, "newCol"    # I

    .prologue
    .line 414
    iget v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    .line 417
    .local v8, "start":I
    iget v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    iget v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    if-lt v9, v10, :cond_46

    .line 419
    iget v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    iget v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v9, v10

    iget v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v9, v10

    add-int/lit8 v5, v9, 0x1

    .line 426
    .local v5, "len":I
    :goto_12
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    const/4 v4, 0x0

    .line 427
    .local v4, "k":I
    const/4 v7, 0x0

    .local v7, "nextColDiff":I
    const/4 v0, 0x0

    .line 430
    .local v0, "columnDiff":I
    :goto_17
    if-ge v1, v5, :cond_55

    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    rem-int v3, v8, v10

    aget v9, v9, v3

    iget-object v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 v8, v8, 0x1

    iget v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    rem-int v4, v8, v11

    aget v10, v10, v4

    if-ne v9, v10, :cond_55

    .line 432
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    aput p1, v9, v3

    .line 433
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    aget v9, v9, v4

    add-int/2addr v9, v0

    iget-object v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    aget v10, v10, v3

    sub-int v7, v9, v10

    .line 434
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    add-int v10, p2, v0

    aput v10, v9, v3

    .line 435
    move v0, v7

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 423
    .end local v0    # "columnDiff":I
    .end local v1    # "i":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    .end local v5    # "len":I
    .end local v7    # "nextColDiff":I
    :cond_46
    iget v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    iget v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v9, v10

    iget v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->inBuf:I

    add-int v5, v9, v10

    .restart local v5    # "len":I
    goto :goto_12

    .line 439
    .restart local v0    # "columnDiff":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "k":I
    .restart local v7    # "nextColDiff":I
    :cond_55
    if-ge v1, v5, :cond_8c

    .line 441
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 v6, p1, 0x1

    .end local p1    # "newLine":I
    .local v6, "newLine":I
    aput p1, v9, v3

    .line 442
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    add-int v10, p2, v0

    aput v10, v9, v3

    move v2, v1

    .line 444
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_64
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-ge v2, v5, :cond_8b

    .line 446
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    rem-int v3, v8, v10

    aget v9, v9, v3

    iget-object v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 v8, v8, 0x1

    iget v11, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    rem-int v11, v8, v11

    aget v10, v10, v11

    if-eq v9, v10, :cond_85

    .line 447
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 p1, v6, 0x1

    .end local v6    # "newLine":I
    .restart local p1    # "newLine":I
    aput v6, v9, v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v6, p1

    .end local p1    # "newLine":I
    .restart local v6    # "newLine":I
    goto :goto_64

    .line 449
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_85
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    aput v6, v9, v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_64

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_8b
    move p1, v6

    .line 453
    .end local v6    # "newLine":I
    .restart local p1    # "newLine":I
    :cond_8c
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    aget v9, v9, v3

    iput v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->line:I

    .line 454
    iget-object v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    aget v9, v9, v3

    iput v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->column:I

    .line 455
    return-void
.end method

.method public backup(I)V
    .registers 4
    .param p1, "amount"    # I

    .prologue
    .line 255
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->inBuf:I

    .line 256
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    if-gez v0, :cond_13

    .line 257
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    .line 258
    :cond_13
    return-void
.end method

.method public getBeginColumn()I
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .registers 3

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getColumn()I
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getLine()I
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method protected getTabSize(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 51
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tabSize:I

    return v0
.end method

.method public readChar()C
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->inBuf:I

    if-lez v1, :cond_1e

    .line 202
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->inBuf:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->inBuf:I

    .line 204
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufsize:I

    if-ne v1, v2, :cond_17

    .line 205
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    .line 207
    :cond_17
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 216
    :goto_1d
    return v0

    .line 210
    :cond_1e
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->maxNextCharInd:I

    if-lt v1, v2, :cond_2b

    .line 211
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->FillBuff()V

    .line 213
    :cond_2b
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 215
    .local v0, "c":C
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->UpdateLineColumn(C)V

    goto :goto_1d
.end method

.method protected setTabSize(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 50
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->tabSize:I

    return-void
.end method
