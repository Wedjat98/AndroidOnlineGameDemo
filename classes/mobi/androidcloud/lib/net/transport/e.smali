.class public final Lmobi/androidcloud/lib/net/transport/e;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final iE:Lmobi/androidcloud/lib/net/transport/c;

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lmobi/androidcloud/lib/net/transport/c;Ljava/io/InputStream;)V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 13
    iput-object p1, p0, Lmobi/androidcloud/lib/net/transport/e;->iE:Lmobi/androidcloud/lib/net/transport/c;

    .line 14
    iput-object p2, p0, Lmobi/androidcloud/lib/net/transport/e;->in:Ljava/io/InputStream;

    .line 15
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/e;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/e;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 20
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/e;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 22
    :cond_9
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 23
    return-void
.end method

.method public read()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 27
    iget-object v1, p0, Lmobi/androidcloud/lib/net/transport/e;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 29
    if-ne v1, v0, :cond_a

    .line 32
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/e;->iE:Lmobi/androidcloud/lib/net/transport/c;

    invoke-interface {v0, v1}, Lmobi/androidcloud/lib/net/transport/c;->aq(I)I

    move-result v0

    goto :goto_9
.end method

.method public read([B)I
    .registers 4

    .prologue
    .line 50
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmobi/androidcloud/lib/net/transport/e;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9

    .prologue
    const/4 v0, -0x1

    .line 37
    iget-object v1, p0, Lmobi/androidcloud/lib/net/transport/e;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 39
    if-ne v1, v0, :cond_a

    .line 45
    :goto_9
    return v0

    .line 42
    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_1e

    .line 43
    add-int v2, p2, v0

    iget-object v3, p0, Lmobi/androidcloud/lib/net/transport/e;->iE:Lmobi/androidcloud/lib/net/transport/c;

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    invoke-interface {v3, v4}, Lmobi/androidcloud/lib/net/transport/c;->c(B)B

    move-result v3

    aput-byte v3, p1, v2

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1e
    move v0, v1

    .line 45
    goto :goto_9
.end method
