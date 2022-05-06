.class public final Lmobi/androidcloud/lib/net/transport/f;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 12
    iput-object p1, p0, Lmobi/androidcloud/lib/net/transport/f;->out:Ljava/io/OutputStream;

    .line 13
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/f;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_9

    .line 18
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 20
    :cond_9
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    .line 21
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 48
    return-void
.end method

.method public write(I)V
    .registers 4

    .prologue
    .line 25
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/f;->out:Ljava/io/OutputStream;

    sget-object v1, Lmobi/androidcloud/lib/net/transport/a;->ix:Lmobi/androidcloud/lib/net/transport/a;

    invoke-virtual {v1, p1}, Lmobi/androidcloud/lib/net/transport/a;->ap(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 26
    return-void
.end method

.method public write([B)V
    .registers 5

    .prologue
    .line 39
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_11

    .line 40
    sget-object v1, Lmobi/androidcloud/lib/net/transport/a;->ix:Lmobi/androidcloud/lib/net/transport/a;

    aget-byte v2, p1, v0

    invoke-virtual {v1, v2}, Lmobi/androidcloud/lib/net/transport/a;->b(B)B

    move-result v1

    aput-byte v1, p1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    :cond_11
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 43
    return-void
.end method

.method public write([BII)V
    .registers 8

    .prologue
    .line 30
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_14

    .line 31
    add-int v1, p2, v0

    sget-object v2, Lmobi/androidcloud/lib/net/transport/a;->ix:Lmobi/androidcloud/lib/net/transport/a;

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    invoke-virtual {v2, v3}, Lmobi/androidcloud/lib/net/transport/a;->b(B)B

    move-result v2

    aput-byte v2, p1, v1

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    :cond_14
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 35
    return-void
.end method
