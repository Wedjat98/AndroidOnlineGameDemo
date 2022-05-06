.class public abstract Lcom/google/protobuf/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/b$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    return-void
.end method


# virtual methods
.method public b(Lcom/google/protobuf/d;)Lcom/google/protobuf/b$a;
    .registers 3

    .prologue
    .line 108
    invoke-static {}, Lcom/google/protobuf/o;->gO()Lcom/google/protobuf/o;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/b$a;->b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
.end method

.method public b([B)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 153
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/b$a;->b([BII)Lcom/google/protobuf/b$a;

    move-result-object v0

    return-object v0
.end method

.method public b([BII)Lcom/google/protobuf/b$a;
    .registers 7

    .prologue
    .line 160
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/d;->d([BII)Lcom/google/protobuf/d;

    move-result-object v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/google/protobuf/b$a;->b(Lcom/google/protobuf/d;)Lcom/google/protobuf/b$a;

    .line 163
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d;->a(I)V
    :try_end_b
    .catch Lcom/google/protobuf/s; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_e

    .line 164
    return-object p0

    .line 165
    :catch_c
    move-exception v0

    throw v0

    .line 167
    :catch_e
    move-exception v0

    .line 168
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b([BIILcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 8

    .prologue
    .line 186
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/d;->d([BII)Lcom/google/protobuf/d;

    move-result-object v0

    .line 188
    invoke-virtual {p0, v0, p4}, Lcom/google/protobuf/b$a;->b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;

    .line 189
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d;->a(I)V
    :try_end_b
    .catch Lcom/google/protobuf/s; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_e

    .line 190
    return-object p0

    .line 191
    :catch_c
    move-exception v0

    throw v0

    .line 193
    :catch_e
    move-exception v0

    .line 194
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b([BLcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 5

    .prologue
    .line 178
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/protobuf/b$a;->b([BIILcom/google/protobuf/o;)Lcom/google/protobuf/b$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/io/InputStream;)Z
    .registers 3

    .prologue
    .line 288
    invoke-static {}, Lcom/google/protobuf/o;->gO()Lcom/google/protobuf/o;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/b$a;->b(Ljava/io/InputStream;Lcom/google/protobuf/o;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/io/InputStream;Lcom/google/protobuf/o;)Z
    .registers 5

    .prologue
    .line 276
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 277
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 278
    const/4 v0, 0x0

    .line 283
    :goto_8
    return v0

    .line 280
    :cond_9
    invoke-static {v0, p1}, Lcom/google/protobuf/d;->a(ILjava/io/InputStream;)I

    move-result v0

    .line 281
    new-instance v1, Lcom/google/protobuf/b$a$a;

    invoke-direct {v1, p1, v0}, Lcom/google/protobuf/b$a$a;-><init>(Ljava/io/InputStream;I)V

    .line 282
    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/b$a;->c(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;

    .line 283
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public abstract c()Lcom/google/protobuf/b$a;
.end method

.method public c(Ljava/io/InputStream;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 201
    invoke-static {p1}, Lcom/google/protobuf/d;->d(Ljava/io/InputStream;)Lcom/google/protobuf/d;

    move-result-object v0

    .line 202
    invoke-virtual {p0, v0}, Lcom/google/protobuf/b$a;->b(Lcom/google/protobuf/d;)Lcom/google/protobuf/b$a;

    .line 203
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d;->a(I)V

    .line 204
    return-object p0
.end method

.method public c(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 5

    .prologue
    .line 211
    invoke-static {p1}, Lcom/google/protobuf/d;->d(Ljava/io/InputStream;)Lcom/google/protobuf/d;

    move-result-object v0

    .line 212
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/b$a;->b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;

    .line 213
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d;->a(I)V

    .line 214
    return-object p0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b$a;->b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/protobuf/b$a;->c()Lcom/google/protobuf/b$a;

    move-result-object v0

    return-object v0
.end method
