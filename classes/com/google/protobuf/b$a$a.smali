.class final Lcom/google/protobuf/b$a$a;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private limit:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    .prologue
    .line 227
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 228
    iput p2, p0, Lcom/google/protobuf/b$a$a;->limit:I

    .line 229
    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    .prologue
    .line 233
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/b$a$a;->limit:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public read()I
    .registers 3

    .prologue
    .line 238
    iget v0, p0, Lcom/google/protobuf/b$a$a;->limit:I

    if-gtz v0, :cond_6

    .line 239
    const/4 v0, -0x1

    .line 245
    :cond_5
    :goto_5
    return v0

    .line 241
    :cond_6
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 242
    if-ltz v0, :cond_5

    .line 243
    iget v1, p0, Lcom/google/protobuf/b$a$a;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/b$a$a;->limit:I

    goto :goto_5
.end method

.method public read([BII)I
    .registers 6

    .prologue
    .line 251
    iget v0, p0, Lcom/google/protobuf/b$a$a;->limit:I

    if-gtz v0, :cond_6

    .line 252
    const/4 v0, -0x1

    .line 259
    :cond_5
    :goto_5
    return v0

    .line 254
    :cond_6
    iget v0, p0, Lcom/google/protobuf/b$a$a;->limit:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 255
    invoke-super {p0, p1, p2, v0}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 256
    if-ltz v0, :cond_5

    .line 257
    iget v1, p0, Lcom/google/protobuf/b$a$a;->limit:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/b$a$a;->limit:I

    goto :goto_5
.end method

.method public skip(J)J
    .registers 8

    .prologue
    .line 264
    iget v0, p0, Lcom/google/protobuf/b$a$a;->limit:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 265
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_18

    .line 266
    iget v2, p0, Lcom/google/protobuf/b$a$a;->limit:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/google/protobuf/b$a$a;->limit:I

    .line 268
    :cond_18
    return-wide v0
.end method
