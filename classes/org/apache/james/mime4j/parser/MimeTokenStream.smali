.class public Lorg/apache/james/mime4j/parser/MimeTokenStream;
.super Ljava/lang/Object;
.source "MimeTokenStream.java"

# interfaces
.implements Lorg/apache/james/mime4j/parser/EntityStates;
.implements Lorg/apache/james/mime4j/parser/RecursionMode;


# instance fields
.field private final config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

.field private currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

.field private final entities:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/james/mime4j/parser/EntityStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

.field private recursionMode:I

.field private state:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 118
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    .line 119
    return-void
.end method

.method protected constructor <init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .registers 3
    .param p1, "config"    # Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    .line 123
    iput-object p1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    .line 124
    return-void
.end method

.method public static final createMaximalDescriptorStream()Lorg/apache/james/mime4j/parser/MimeTokenStream;
    .registers 2

    .prologue
    .line 86
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    .line 87
    .local v0, "config":Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->setMaximalBodyDescriptor(Z)V

    .line 88
    new-instance v1, Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    return-object v1
.end method

.method public static final createStrictValidationStream()Lorg/apache/james/mime4j/parser/MimeTokenStream;
    .registers 2

    .prologue
    .line 98
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    .line 99
    .local v0, "config":Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->setStrictParsing(Z)V

    .line 100
    new-instance v1, Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    return-object v1
.end method

.method private doParse(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 12
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, "lineSource":Lorg/apache/james/mime4j/io/LineNumberSource;
    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->isCountLineNumbers()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 155
    new-instance v7, Lorg/apache/james/mime4j/io/LineNumberInputStream;

    invoke-direct {v7, p1}, Lorg/apache/james/mime4j/io/LineNumberInputStream;-><init>(Ljava/io/InputStream;)V

    .line 156
    .local v7, "lineInput":Lorg/apache/james/mime4j/io/LineNumberInputStream;
    move-object v1, v7

    .line 157
    move-object p1, v7

    .line 160
    .end local v7    # "lineInput":Lorg/apache/james/mime4j/io/LineNumberInputStream;
    :cond_15
    new-instance v2, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    const/16 v3, 0x1000

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;-><init>(Ljava/io/InputStream;II)V

    iput-object v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 164
    iget v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    packed-switch v2, :pswitch_data_5c

    .line 187
    :goto_29
    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v2}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getState()I

    move-result v2

    iput v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    .line 189
    return-void

    .line 166
    :pswitch_39
    new-instance v8, Lorg/apache/james/mime4j/parser/RawEntity;

    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-direct {v8, v2}, Lorg/apache/james/mime4j/parser/RawEntity;-><init>(Ljava/io/InputStream;)V

    .line 167
    .local v8, "rawentity":Lorg/apache/james/mime4j/parser/RawEntity;
    iput-object v8, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    goto :goto_29

    .line 173
    .end local v8    # "rawentity":Lorg/apache/james/mime4j/parser/RawEntity;
    :pswitch_43
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntity;

    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct/range {v0 .. v6}, Lorg/apache/james/mime4j/parser/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    .line 180
    .local v0, "mimeentity":Lorg/apache/james/mime4j/parser/MimeEntity;
    iget v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/parser/MimeEntity;->setRecursionMode(I)V

    .line 181
    if-eqz p2, :cond_59

    .line 182
    invoke-virtual {v0, p2}, Lorg/apache/james/mime4j/parser/MimeEntity;->skipHeader(Ljava/lang/String;)V

    .line 184
    :cond_59
    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    goto :goto_29

    .line 164
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_43
        :pswitch_43
        :pswitch_39
        :pswitch_43
    .end packed-switch
.end method

.method public static final stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 383
    invoke-static {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDecodedInputStream()Ljava/io/InputStream;
    .registers 6

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v0

    .line 281
    .local v0, "bodyDescriptor":Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    invoke-interface {v0}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "transferEncoding":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v4}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getContentStream()Ljava/io/InputStream;

    move-result-object v1

    .line 283
    .local v1, "dataStream":Ljava/io/InputStream;
    invoke-static {v3}, Lorg/apache/james/mime4j/util/MimeUtil;->isBase64Encoding(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 284
    new-instance v2, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-direct {v2, v1}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .end local v1    # "dataStream":Ljava/io/InputStream;
    .local v2, "dataStream":Ljava/io/InputStream;
    move-object v1, v2

    .line 288
    .end local v2    # "dataStream":Ljava/io/InputStream;
    .restart local v1    # "dataStream":Ljava/io/InputStream;
    :cond_1a
    :goto_1a
    return-object v1

    .line 285
    :cond_1b
    invoke-static {v3}, Lorg/apache/james/mime4j/util/MimeUtil;->isQuotedPrintableEncoded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 286
    new-instance v2, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    invoke-direct {v2, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v1    # "dataStream":Ljava/io/InputStream;
    .restart local v2    # "dataStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "dataStream":Ljava/io/InputStream;
    .restart local v1    # "dataStream":Ljava/io/InputStream;
    goto :goto_1a
.end method

.method public getField()Lorg/apache/james/mime4j/parser/Field;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getField()Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .registers 6

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v0

    .line 310
    .local v0, "bodyDescriptor":Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    invoke-interface {v0}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "mimeCharset":Ljava/lang/String;
    if-eqz v3, :cond_12

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 313
    :cond_12
    sget-object v1, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    .line 317
    .local v1, "charset":Ljava/nio/charset/Charset;
    :goto_14
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getDecodedInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 318
    .local v2, "instream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v4

    .line 315
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    .end local v2    # "instream":Ljava/io/InputStream;
    :cond_1e
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .restart local v1    # "charset":Ljava/nio/charset/Charset;
    goto :goto_14
.end method

.method public getRecursionMode()I
    .registers 2

    .prologue
    .line 212
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 251
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    return v0
.end method

.method public isRaw()Z
    .registers 3

    .prologue
    .line 199
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public next()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 352
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    if-eq v1, v3, :cond_9

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    if-nez v1, :cond_21

    .line 353
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No more tokens are available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 365
    .local v0, "next":Lorg/apache/james/mime4j/parser/EntityStateMachine;
    :cond_11
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 366
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 367
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    .line 355
    .end local v0    # "next":Lorg/apache/james/mime4j/parser/EntityStateMachine;
    :cond_21
    :goto_21
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    if-eqz v1, :cond_55

    .line 356
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->advance()Lorg/apache/james/mime4j/parser/EntityStateMachine;

    move-result-object v0

    .line 357
    .restart local v0    # "next":Lorg/apache/james/mime4j/parser/EntityStateMachine;
    if-eqz v0, :cond_34

    .line 358
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 359
    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    .line 361
    :cond_34
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getState()I

    move-result v1

    iput v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    .line 362
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    if-eq v1, v3, :cond_11

    .line 363
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    .line 374
    .end local v0    # "next":Lorg/apache/james/mime4j/parser/EntityStateMachine;
    :goto_42
    return v1

    .line 369
    .restart local v0    # "next":Lorg/apache/james/mime4j/parser/EntityStateMachine;
    :cond_43
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/parser/EntityStateMachine;

    iput-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    .line 370
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    iget v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->setRecursionMode(I)V

    goto :goto_21

    .line 373
    .end local v0    # "next":Lorg/apache/james/mime4j/parser/EntityStateMachine;
    :cond_55
    iput v3, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    .line 374
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    goto :goto_42
.end method

.method public parse(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->doParse(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public parseHeadless(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 144
    if-nez p2, :cond_a

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content type may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->doParse(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setRecursionMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 225
    iput p1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    .line 226
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    if-eqz v0, :cond_b

    .line 227
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->setRecursionMode(I)V

    .line 229
    :cond_b
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncate()V

    .line 245
    return-void
.end method
