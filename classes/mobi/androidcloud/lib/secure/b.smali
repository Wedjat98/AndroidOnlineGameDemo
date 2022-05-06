.class public final Lmobi/androidcloud/lib/secure/b;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private iR:Lmobi/androidcloud/lib/secure/a;

.field private iS:[B

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .registers 4

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lmobi/androidcloud/lib/secure/b;->iS:[B

    .line 15
    new-instance v0, Lmobi/androidcloud/lib/secure/a;

    invoke-direct {v0}, Lmobi/androidcloud/lib/secure/a;-><init>()V

    iput-object v0, p0, Lmobi/androidcloud/lib/secure/b;->iR:Lmobi/androidcloud/lib/secure/a;

    .line 16
    iget-object v0, p0, Lmobi/androidcloud/lib/secure/b;->iR:Lmobi/androidcloud/lib/secure/a;

    invoke-virtual {v0, p2}, Lmobi/androidcloud/lib/secure/a;->m([B)V

    .line 17
    iput-object p1, p0, Lmobi/androidcloud/lib/secure/b;->in:Ljava/io/InputStream;

    .line 18
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lmobi/androidcloud/lib/secure/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lmobi/androidcloud/lib/secure/b;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 23
    iget-object v0, p0, Lmobi/androidcloud/lib/secure/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 25
    :cond_9
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 26
    return-void
.end method

.method public read()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 31
    iget-object v1, p0, Lmobi/androidcloud/lib/secure/b;->iS:[B

    invoke-virtual {p0, v1}, Lmobi/androidcloud/lib/secure/b;->read([B)I

    move-result v1

    .line 33
    if-ne v1, v0, :cond_a

    .line 37
    :goto_9
    return v0

    .line 36
    :cond_a
    iget-object v0, p0, Lmobi/androidcloud/lib/secure/b;->iS:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 37
    goto :goto_9
.end method

.method public read([B)I
    .registers 4

    .prologue
    .line 58
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmobi/androidcloud/lib/secure/b;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 10

    .prologue
    const/4 v0, -0x1

    .line 44
    new-array v1, p3, [B

    .line 46
    iget-object v2, p0, Lmobi/androidcloud/lib/secure/b;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 48
    if-ne v5, v0, :cond_d

    move v5, v0

    .line 53
    :goto_c
    return v5

    .line 51
    :cond_d
    iget-object v0, p0, Lmobi/androidcloud/lib/secure/b;->iR:Lmobi/androidcloud/lib/secure/a;

    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lmobi/androidcloud/lib/secure/a;->b([BI[BII)V

    goto :goto_c
.end method
