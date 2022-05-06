.class public final Lmobi/androidcloud/lib/secure/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static MAX_SIZE:I


# instance fields
.field private i:I

.field private final iP:[B

.field private iQ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4
    const/16 v0, 0x100

    sput v0, Lmobi/androidcloud/lib/secure/a;->MAX_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget v0, Lmobi/androidcloud/lib/secure/a;->MAX_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmobi/androidcloud/lib/secure/a;->iP:[B

    .line 10
    iput v1, p0, Lmobi/androidcloud/lib/secure/a;->i:I

    .line 11
    iput v1, p0, Lmobi/androidcloud/lib/secure/a;->iQ:I

    return-void
.end method

.method private jJ()V
    .registers 4

    .prologue
    .line 50
    const/4 v0, 0x0

    :goto_1
    sget v1, Lmobi/androidcloud/lib/secure/a;->MAX_SIZE:I

    if-ge v0, v1, :cond_d

    .line 51
    iget-object v1, p0, Lmobi/androidcloud/lib/secure/a;->iP:[B

    int-to-byte v2, v0

    aput-byte v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    :cond_d
    return-void
.end method

.method private l(II)V
    .registers 6

    .prologue
    .line 32
    iget-object v0, p0, Lmobi/androidcloud/lib/secure/a;->iP:[B

    aget-byte v0, v0, p1

    .line 33
    iget-object v1, p0, Lmobi/androidcloud/lib/secure/a;->iP:[B

    iget-object v2, p0, Lmobi/androidcloud/lib/secure/a;->iP:[B

    aget-byte v2, v2, p2

    aput-byte v2, v1, p1

    .line 34
    iget-object v1, p0, Lmobi/androidcloud/lib/secure/a;->iP:[B

    aput-byte v0, v1, p2

    .line 35
    return-void
.end method

.method private n([B)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 57
    move v1, v0

    .line 58
    :goto_2
    sget v2, Lmobi/androidcloud/lib/secure/a;->MAX_SIZE:I

    if-ge v0, v2, :cond_19

    .line 59
    iget-object v2, p0, Lmobi/androidcloud/lib/secure/a;->iP:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    array-length v2, p1

    rem-int v2, v0, v2

    aget-byte v2, p1, v2

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 60
    invoke-direct {p0, v0, v1}, Lmobi/androidcloud/lib/secure/a;->l(II)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 62
    :cond_19
    return-void
.end method


# virtual methods
.method public a([BI[BII)V
    .registers 10

    .prologue
    .line 16
    add-int v0, p2, p5

    .line 19
    :goto_2
    if-ge p2, v0, :cond_3e

    .line 21
    iget v1, p0, Lmobi/androidcloud/lib/secure/a;->i:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lmobi/androidcloud/lib/secure/a;->i:I

    .line 22
    iget v1, p0, Lmobi/androidcloud/lib/secure/a;->iQ:I

    iget-object v2, p0, Lmobi/androidcloud/lib/secure/a;->iP:[B

    iget v3, p0, Lmobi/androidcloud/lib/secure/a;->i:I

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lmobi/androidcloud/lib/secure/a;->iQ:I

    .line 23
    iget v1, p0, Lmobi/androidcloud/lib/secure/a;->i:I

    iget v2, p0, Lmobi/androidcloud/lib/secure/a;->iQ:I

    invoke-direct {p0, v1, v2}, Lmobi/androidcloud/lib/secure/a;->l(II)V

    .line 24
    iget-object v1, p0, Lmobi/androidcloud/lib/secure/a;->iP:[B

    iget v2, p0, Lmobi/androidcloud/lib/secure/a;->i:I

    aget-byte v1, v1, v2

    iget-object v2, p0, Lmobi/androidcloud/lib/secure/a;->iP:[B

    iget v3, p0, Lmobi/androidcloud/lib/secure/a;->iQ:I

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 25
    iget-object v2, p0, Lmobi/androidcloud/lib/secure/a;->iP:[B

    aget-byte v1, v2, v1

    aget-byte v2, p1, p2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, p4

    .line 20
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 28
    :cond_3e
    return-void
.end method

.method public b([BI[BII)V
    .registers 6

    .prologue
    .line 39
    invoke-virtual/range {p0 .. p5}, Lmobi/androidcloud/lib/secure/a;->a([BI[BII)V

    .line 40
    return-void
.end method

.method public m([B)V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Lmobi/androidcloud/lib/secure/a;->jJ()V

    .line 45
    invoke-direct {p0, p1}, Lmobi/androidcloud/lib/secure/a;->n([B)V

    .line 46
    return-void
.end method
