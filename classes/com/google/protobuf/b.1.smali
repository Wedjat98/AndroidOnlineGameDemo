.class public abstract Lcom/google/protobuf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .registers 4

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/protobuf/b;->a()I

    move-result v0

    .line 85
    invoke-static {v0}, Lcom/google/protobuf/e;->A(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Lcom/google/protobuf/e;->k(I)I

    move-result v1

    .line 87
    invoke-static {p1, v1}, Lcom/google/protobuf/e;->a(Ljava/io/OutputStream;I)Lcom/google/protobuf/e;

    move-result-object v1

    .line 89
    invoke-virtual {v1, v0}, Lcom/google/protobuf/e;->z(I)V

    .line 90
    invoke-virtual {p0, v1}, Lcom/google/protobuf/b;->a(Lcom/google/protobuf/e;)V

    .line 91
    invoke-virtual {v1}, Lcom/google/protobuf/e;->flush()V

    .line 92
    return-void
.end method

.method public toByteArray()[B
    .registers 4

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/b;->a()I

    move-result v0

    new-array v0, v0, [B

    .line 63
    invoke-static {v0}, Lcom/google/protobuf/e;->e([B)Lcom/google/protobuf/e;

    move-result-object v1

    .line 64
    invoke-virtual {p0, v1}, Lcom/google/protobuf/b;->a(Lcom/google/protobuf/e;)V

    .line 65
    invoke-virtual {v1}, Lcom/google/protobuf/e;->I()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    .line 66
    return-object v0

    .line 67
    :catch_11
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
