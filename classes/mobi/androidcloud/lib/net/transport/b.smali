.class public final Lmobi/androidcloud/lib/net/transport/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final iB:[I

.field private final iC:[I


# direct methods
.method public constructor <init>([I[I)V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lmobi/androidcloud/lib/net/transport/b;->iB:[I

    .line 14
    iput-object p2, p0, Lmobi/androidcloud/lib/net/transport/b;->iC:[I

    .line 15
    return-void
.end method

.method static ar(I)B
    .registers 2

    .prologue
    .line 22
    int-to-byte v0, p0

    return v0
.end method

.method static d(B)I
    .registers 2

    .prologue
    .line 18
    and-int/lit16 v0, p0, 0xff

    return v0
.end method


# virtual methods
.method ap(I)I
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/b;->iB:[I

    aget v0, v0, p1

    return v0
.end method

.method aq(I)I
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/b;->iC:[I

    aget v0, v0, p1

    return v0
.end method

.method b(B)B
    .registers 4

    .prologue
    .line 26
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/b;->iB:[I

    invoke-static {p1}, Lmobi/androidcloud/lib/net/transport/b;->d(B)I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0}, Lmobi/androidcloud/lib/net/transport/b;->ar(I)B

    move-result v0

    return v0
.end method

.method c(B)B
    .registers 4

    .prologue
    .line 30
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/b;->iC:[I

    invoke-static {p1}, Lmobi/androidcloud/lib/net/transport/b;->d(B)I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0}, Lmobi/androidcloud/lib/net/transport/b;->ar(I)B

    move-result v0

    return v0
.end method

.method public k([B)[B
    .registers 5

    .prologue
    .line 42
    array-length v0, p1

    new-array v1, v0, [B

    .line 43
    const/4 v0, 0x0

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_12

    .line 44
    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lmobi/androidcloud/lib/net/transport/b;->b(B)B

    move-result v2

    aput-byte v2, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 46
    :cond_12
    return-object v1
.end method
