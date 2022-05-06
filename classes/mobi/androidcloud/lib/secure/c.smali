.class public final Lmobi/androidcloud/lib/secure/c;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private iS:[B

.field private iT:Lmobi/androidcloud/lib/secure/a;

.field private out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;[B)V
    .registers 4

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lmobi/androidcloud/lib/secure/c;->iS:[B

    .line 15
    iput-object p1, p0, Lmobi/androidcloud/lib/secure/c;->out:Ljava/io/OutputStream;

    .line 16
    new-instance v0, Lmobi/androidcloud/lib/secure/a;

    invoke-direct {v0}, Lmobi/androidcloud/lib/secure/a;-><init>()V

    iput-object v0, p0, Lmobi/androidcloud/lib/secure/c;->iT:Lmobi/androidcloud/lib/secure/a;

    .line 17
    iget-object v0, p0, Lmobi/androidcloud/lib/secure/c;->iT:Lmobi/androidcloud/lib/secure/a;

    invoke-virtual {v0, p2}, Lmobi/androidcloud/lib/secure/a;->m([B)V

    .line 18
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lmobi/androidcloud/lib/secure/c;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_9

    .line 23
    iget-object v0, p0, Lmobi/androidcloud/lib/secure/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 25
    :cond_9
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    .line 26
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lmobi/androidcloud/lib/secure/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 52
    return-void
.end method

.method public write(I)V
    .registers 5

    .prologue
    .line 30
    iget-object v0, p0, Lmobi/androidcloud/lib/secure/c;->iS:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 31
    iget-object v0, p0, Lmobi/androidcloud/lib/secure/c;->iS:[B

    invoke-virtual {p0, v0}, Lmobi/androidcloud/lib/secure/c;->write([B)V

    .line 32
    return-void
.end method

.method public write([B)V
    .registers 4

    .prologue
    .line 46
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmobi/androidcloud/lib/secure/c;->write([BII)V

    .line 47
    return-void
.end method

.method public write([BII)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 37
    new-array v3, p3, [B

    .line 39
    iget-object v0, p0, Lmobi/androidcloud/lib/secure/c;->iT:Lmobi/androidcloud/lib/secure/a;

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lmobi/androidcloud/lib/secure/a;->a([BI[BII)V

    .line 41
    iget-object v0, p0, Lmobi/androidcloud/lib/secure/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3, v4, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 42
    return-void
.end method
