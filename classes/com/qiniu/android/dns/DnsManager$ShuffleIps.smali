.class Lcom/qiniu/android/dns/DnsManager$ShuffleIps;
.super Ljava/lang/Object;
.source "DnsManager.java"

# interfaces
.implements Lcom/qiniu/android/dns/IpSorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/dns/DnsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShuffleIps"
.end annotation


# instance fields
.field private pos:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/dns/DnsManager$ShuffleIps;->pos:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qiniu/android/dns/DnsManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/qiniu/android/dns/DnsManager$1;

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/qiniu/android/dns/DnsManager$ShuffleIps;-><init>()V

    return-void
.end method


# virtual methods
.method public sort([Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "ips"    # [Ljava/lang/String;

    .prologue
    .line 270
    if-eqz p1, :cond_6

    array-length v3, p1

    const/4 v4, 0x1

    if-gt v3, v4, :cond_8

    :cond_6
    move-object v1, p1

    .line 278
    :cond_7
    return-object v1

    .line 273
    :cond_8
    iget-object v3, p0, Lcom/qiniu/android/dns/DnsManager$ShuffleIps;->pos:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    and-int/lit16 v2, v3, 0xff

    .line 274
    .local v2, "x":I
    array-length v3, p1

    new-array v1, v3, [Ljava/lang/String;

    .line 275
    .local v1, "ret":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    array-length v3, p1

    if-ge v0, v3, :cond_7

    .line 276
    add-int v3, v0, v2

    array-length v4, p1

    rem-int/2addr v3, v4

    aget-object v3, p1, v3

    aput-object v3, v1, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method
