.class public final Lcom/google/protobuf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/protobuf/c;


# instance fields
.field private final bytes:[B

.field private volatile hash:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 83
    new-instance v0, Lcom/google/protobuf/c;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/protobuf/c;-><init>([B)V

    sput-object v0, Lcom/google/protobuf/c;->c:Lcom/google/protobuf/c;

    return-void
.end method

.method private constructor <init>([B)V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/c;->hash:I

    .line 51
    iput-object p1, p0, Lcom/google/protobuf/c;->bytes:[B

    .line 52
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/protobuf/c;
    .registers 4

    .prologue
    .line 135
    :try_start_0
    new-instance v0, Lcom/google/protobuf/c;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/c;-><init>([B)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 136
    :catch_c
    move-exception v0

    .line 137
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c([B)Lcom/google/protobuf/c;
    .registers 3

    .prologue
    .line 99
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/c;->c([BII)Lcom/google/protobuf/c;

    move-result-object v0

    return-object v0
.end method

.method public static c([BII)Lcom/google/protobuf/c;
    .registers 5

    .prologue
    .line 90
    new-array v0, p2, [B

    .line 91
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    new-instance v1, Lcom/google/protobuf/c;

    invoke-direct {v1, v0}, Lcom/google/protobuf/c;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public byteAt(I)B
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/protobuf/c;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public d()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 296
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/protobuf/c;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 240
    if-ne p1, p0, :cond_5

    .line 262
    :cond_4
    :goto_4
    return v0

    .line 244
    :cond_5
    instance-of v2, p1, Lcom/google/protobuf/c;

    if-nez v2, :cond_b

    move v0, v1

    .line 245
    goto :goto_4

    .line 248
    :cond_b
    check-cast p1, Lcom/google/protobuf/c;

    .line 249
    iget-object v2, p0, Lcom/google/protobuf/c;->bytes:[B

    array-length v3, v2

    .line 250
    iget-object v2, p1, Lcom/google/protobuf/c;->bytes:[B

    array-length v2, v2

    if-eq v3, v2, :cond_17

    move v0, v1

    .line 251
    goto :goto_4

    .line 254
    :cond_17
    iget-object v4, p0, Lcom/google/protobuf/c;->bytes:[B

    .line 255
    iget-object v5, p1, Lcom/google/protobuf/c;->bytes:[B

    move v2, v1

    .line 256
    :goto_1c
    if-ge v2, v3, :cond_4

    .line 257
    aget-byte v6, v4, v2

    aget-byte v7, v5, v2

    if-eq v6, v7, :cond_26

    move v0, v1

    .line 258
    goto :goto_4

    .line 256
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 269
    iget v0, p0, Lcom/google/protobuf/c;->hash:I

    .line 271
    if-nez v0, :cond_1d

    .line 272
    iget-object v4, p0, Lcom/google/protobuf/c;->bytes:[B

    .line 273
    iget-object v0, p0, Lcom/google/protobuf/c;->bytes:[B

    array-length v2, v0

    .line 276
    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_c
    if-ge v1, v2, :cond_18

    .line 277
    mul-int/lit8 v0, v0, 0x1f

    aget-byte v3, v4, v1

    add-int/2addr v3, v0

    .line 276
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_c

    .line 279
    :cond_18
    if-nez v0, :cond_1b

    .line 280
    const/4 v0, 0x1

    .line 283
    :cond_1b
    iput v0, p0, Lcom/google/protobuf/c;->hash:I

    .line 286
    :cond_1d
    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/protobuf/c;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 200
    iget-object v0, p0, Lcom/google/protobuf/c;->bytes:[B

    array-length v0, v0

    .line 201
    new-array v1, v0, [B

    .line 202
    iget-object v2, p0, Lcom/google/protobuf/c;->bytes:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    return-object v1
.end method
