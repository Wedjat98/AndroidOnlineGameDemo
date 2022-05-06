.class public Lorg/apache/james/mime4j/codec/Base64InputStream;
.super Ljava/io/InputStream;
.source "Base64InputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BASE64_DECODE:[I

.field private static final BASE64_PAD:B = 0x3dt

.field private static final ENCODED_BUFFER_SIZE:I = 0x600

.field private static final EOF:I = -0x1

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private closed:Z

.field private final encoded:[B

.field private eof:Z

.field private final in:Ljava/io/InputStream;

.field private position:I

.field private final q:Lorg/apache/james/mime4j/codec/ByteQueue;

.field private final singleByte:[B

.field private size:I

.field private strict:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x100

    .line 31
    const-class v1, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_24

    const/4 v1, 0x1

    :goto_b
    sput-boolean v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    .line 32
    const-class v1, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    .line 36
    new-array v1, v3, [I

    sput-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    if-ge v0, v3, :cond_26

    .line 40
    sget-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 31
    .end local v0    # "i":I
    :cond_24
    const/4 v1, 0x0

    goto :goto_b

    .line 41
    .restart local v0    # "i":I
    :cond_26
    const/4 v0, 0x0

    :goto_27
    sget-object v1, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_39

    .line 42
    sget-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    aput v0, v1, v2

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 43
    :cond_39
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "strict"    # Z

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    .line 54
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    .line 56
    const/16 v0, 0x600

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    .line 57
    iput v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    .line 58
    iput v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    .line 60
    new-instance v0, Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    .line 69
    if-nez p1, :cond_24

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 72
    :cond_24
    iput-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    .line 73
    iput-boolean p2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->strict:Z

    .line 74
    return-void
.end method

.method private decodePad(II[BII)I
    .registers 11
    .param p1, "data"    # I
    .param p2, "sextets"    # I
    .param p3, "buffer"    # [B
    .param p4, "index"    # I
    .param p5, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    .line 232
    const/4 v4, 0x2

    if-ne p2, v4, :cond_17

    .line 235
    ushr-int/lit8 v4, p1, 0x4

    int-to-byte v0, v4

    .line 236
    .local v0, "b":B
    if-ge p4, p5, :cond_11

    .line 237
    add-int/lit8 v3, p4, 0x1

    .end local p4    # "index":I
    .local v3, "index":I
    aput-byte v0, p3, p4

    move p4, v3

    .line 262
    .end local v0    # "b":B
    .end local v3    # "index":I
    .restart local p4    # "index":I
    :goto_10
    return p4

    .line 239
    .restart local v0    # "b":B
    :cond_11
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_10

    .line 241
    .end local v0    # "b":B
    :cond_17
    const/4 v4, 0x3

    if-ne p2, v4, :cond_47

    .line 244
    ushr-int/lit8 v4, p1, 0xa

    int-to-byte v1, v4

    .line 245
    .local v1, "b1":B
    ushr-int/lit8 v4, p1, 0x2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v2, v4

    .line 247
    .local v2, "b2":B
    add-int/lit8 v4, p5, -0x1

    if-ge p4, v4, :cond_2f

    .line 248
    add-int/lit8 v3, p4, 0x1

    .end local p4    # "index":I
    .restart local v3    # "index":I
    aput-byte v1, p3, p4

    .line 249
    add-int/lit8 p4, v3, 0x1

    .end local v3    # "index":I
    .restart local p4    # "index":I
    aput-byte v2, p3, v3

    goto :goto_10

    .line 250
    :cond_2f
    if-ge p4, p5, :cond_3c

    .line 251
    add-int/lit8 v3, p4, 0x1

    .end local p4    # "index":I
    .restart local v3    # "index":I
    aput-byte v1, p3, p4

    .line 252
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    move p4, v3

    .end local v3    # "index":I
    .restart local p4    # "index":I
    goto :goto_10

    .line 254
    :cond_3c
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 255
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_10

    .line 259
    .end local v1    # "b1":B
    .end local v2    # "b2":B
    :cond_47
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;->handleUnexpecedPad(I)V

    goto :goto_10
.end method

.method private handleUnexpecedPad(I)V
    .registers 5
    .param p1, "sextets"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->strict:Z

    if-eqz v0, :cond_c

    .line 275
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected padding character"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_c
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected padding character; dropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sextet(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method private handleUnexpectedEof(I)V
    .registers 5
    .param p1, "sextets"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->strict:Z

    if-eqz v0, :cond_c

    .line 267
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_c
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of file; dropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sextet(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method private read0([BII)I
    .registers 21
    .param p1, "buffer"    # [B
    .param p2, "from"    # I
    .param p3, "to"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    move/from16 v5, p2

    .line 136
    .local v5, "index":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->count()I

    move-result v13

    .local v13, "qCount":I
    move v14, v13

    .end local v13    # "qCount":I
    .local v14, "qCount":I
    move v11, v5

    .line 137
    .end local v5    # "index":I
    .local v11, "index":I
    :goto_c
    add-int/lit8 v13, v14, -0x1

    .end local v14    # "qCount":I
    .restart local v13    # "qCount":I
    if-lez v14, :cond_23

    move/from16 v0, p3

    if-ge v11, v0, :cond_23

    .line 138
    add-int/lit8 v5, v11, 0x1

    .end local v11    # "index":I
    .restart local v5    # "index":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->dequeue()B

    move-result v1

    aput-byte v1, p1, v11

    move v14, v13

    .end local v13    # "qCount":I
    .restart local v14    # "qCount":I
    move v11, v5

    .end local v5    # "index":I
    .restart local v11    # "index":I
    goto :goto_c

    .line 143
    .end local v14    # "qCount":I
    .restart local v13    # "qCount":I
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    if-eqz v1, :cond_33

    .line 144
    move/from16 v0, p2

    if-ne v11, v0, :cond_30

    const/4 v1, -0x1

    :goto_2e
    move v5, v11

    .line 225
    .end local v11    # "index":I
    .restart local v5    # "index":I
    :goto_2f
    return v1

    .line 144
    .end local v5    # "index":I
    .restart local v11    # "index":I
    :cond_30
    sub-int v1, v11, p2

    goto :goto_2e

    .line 148
    :cond_33
    const/4 v2, 0x0

    .line 149
    .local v2, "data":I
    const/4 v3, 0x0

    .local v3, "sextets":I
    move v5, v11

    .line 151
    .end local v11    # "index":I
    .restart local v5    # "index":I
    :cond_36
    move/from16 v0, p3

    if-ge v5, v0, :cond_13c

    .line 154
    :cond_3a
    :goto_3a
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    if-ne v1, v4, :cond_94

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v1, v4, v6, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .line 156
    .local v12, "n":I
    const/4 v1, -0x1

    if-ne v12, v1, :cond_76

    .line 157
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    .line 159
    if-eqz v3, :cond_6d

    .line 161
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/codec/Base64InputStream;->handleUnexpectedEof(I)V

    .line 164
    :cond_6d
    move/from16 v0, p2

    if-ne v5, v0, :cond_73

    const/4 v1, -0x1

    goto :goto_2f

    :cond_73
    sub-int v1, v5, p2

    goto :goto_2f

    .line 165
    :cond_76
    if-lez v12, :cond_82

    .line 166
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    .line 167
    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    goto :goto_3a

    .line 169
    :cond_82
    sget-boolean v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_3a

    if-eqz v12, :cond_3a

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 183
    .end local v12    # "n":I
    .local v15, "value":I
    :cond_8e
    sget-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    aget v10, v1, v15

    .line 184
    .local v10, "decoded":I
    if-gez v10, :cond_c6

    .line 175
    .end local v10    # "decoded":I
    .end local v15    # "value":I
    :cond_94
    :goto_94
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    if-ge v1, v4, :cond_36

    move/from16 v0, p3

    if-ge v5, v0, :cond_36

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    add-int/lit8 v6, v4, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    aget-byte v1, v1, v4

    and-int/lit16 v15, v1, 0xff

    .line 178
    .restart local v15    # "value":I
    const/16 v1, 0x3d

    if-ne v15, v1, :cond_8e

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    .line 179
    invoke-direct/range {v1 .. v6}, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodePad(II[BII)I

    move-result v5

    .line 180
    sub-int v1, v5, p2

    goto/16 :goto_2f

    .line 187
    .restart local v10    # "decoded":I
    :cond_c6
    shl-int/lit8 v1, v2, 0x6

    or-int v2, v1, v10

    .line 188
    add-int/lit8 v3, v3, 0x1

    .line 190
    const/4 v1, 0x4

    if-ne v3, v1, :cond_94

    .line 191
    const/4 v3, 0x0

    .line 193
    ushr-int/lit8 v1, v2, 0x10

    int-to-byte v7, v1

    .line 194
    .local v7, "b1":B
    ushr-int/lit8 v1, v2, 0x8

    int-to-byte v8, v1

    .line 195
    .local v8, "b2":B
    int-to-byte v9, v2

    .line 197
    .local v9, "b3":B
    add-int/lit8 v1, p3, -0x2

    if-ge v5, v1, :cond_e9

    .line 198
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "index":I
    .restart local v11    # "index":I
    aput-byte v7, p1, v5

    .line 199
    add-int/lit8 v5, v11, 0x1

    .end local v11    # "index":I
    .restart local v5    # "index":I
    aput-byte v8, p1, v11

    .line 200
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "index":I
    .restart local v11    # "index":I
    aput-byte v9, p1, v5

    move v5, v11

    .end local v11    # "index":I
    .restart local v5    # "index":I
    goto :goto_94

    .line 202
    :cond_e9
    add-int/lit8 v1, p3, -0x1

    if-ge v5, v1, :cond_10a

    .line 203
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "index":I
    .restart local v11    # "index":I
    aput-byte v7, p1, v5

    .line 204
    add-int/lit8 v5, v11, 0x1

    .end local v11    # "index":I
    .restart local v5    # "index":I
    aput-byte v8, p1, v11

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1, v9}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 216
    :goto_fc
    sget-boolean v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_138

    move/from16 v0, p3

    if-eq v5, v0, :cond_138

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 206
    :cond_10a
    move/from16 v0, p3

    if-ge v5, v0, :cond_122

    .line 207
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "index":I
    .restart local v11    # "index":I
    aput-byte v7, p1, v5

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1, v8}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1, v9}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    move v5, v11

    .end local v11    # "index":I
    .restart local v5    # "index":I
    goto :goto_fc

    .line 211
    :cond_122
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1, v7}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1, v8}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1, v9}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_fc

    .line 217
    :cond_138
    sub-int v1, p3, p2

    goto/16 :goto_2f

    .line 223
    .end local v7    # "b1":B
    .end local v8    # "b2":B
    .end local v9    # "b3":B
    .end local v10    # "decoded":I
    .end local v15    # "value":I
    :cond_13c
    sget-boolean v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_148

    if-eqz v3, :cond_148

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 224
    :cond_148
    sget-boolean v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_156

    move/from16 v0, p3

    if-eq v5, v0, :cond_156

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 225
    :cond_156
    sub-int v1, p3, p2

    goto/16 :goto_2f
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
    .line 124
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_5

    .line 128
    :goto_4
    return-void

    .line 127
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    goto :goto_4
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 78
    iget-boolean v2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v2, :cond_f

    .line 79
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Base64InputStream has been closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_f
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    .line 83
    .local v0, "bytes":I
    if-ne v0, v1, :cond_18

    .line 87
    :goto_17
    return v1

    .line 86
    :cond_18
    if-ne v0, v4, :cond_f

    .line 87
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    goto :goto_17
.end method

.method public read([B)I
    .registers 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v1, :cond_d

    .line 94
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_d
    if-nez p1, :cond_15

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 99
    :cond_15
    array-length v1, p1

    if-nez v1, :cond_19

    .line 102
    :goto_18
    return v0

    :cond_19
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    goto :goto_18
.end method

.method public read([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_c

    .line 108
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_c
    if-nez p1, :cond_14

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 113
    :cond_14
    if-ltz p2, :cond_1d

    if-ltz p3, :cond_1d

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_23

    .line 114
    :cond_1d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 116
    :cond_23
    if-nez p3, :cond_27

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_26
    return v0

    :cond_27
    add-int v0, p2, p3

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    goto :goto_26
.end method
