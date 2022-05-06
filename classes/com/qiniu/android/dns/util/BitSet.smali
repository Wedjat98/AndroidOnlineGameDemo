.class public final Lcom/qiniu/android/dns/util/BitSet;
.super Ljava/lang/Object;
.source "BitSet.java"


# instance fields
.field private set:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    .line 11
    return-void
.end method


# virtual methods
.method public allIsSet(I)Z
    .registers 5
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 28
    iget v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    add-int/lit8 v1, v1, 0x1

    shl-int v2, v0, p1

    if-ne v1, v2, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public clear()Lcom/qiniu/android/dns/util/BitSet;
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    .line 64
    return-object p0
.end method

.method public isSet(I)Z
    .registers 5
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 19
    iget v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public leadingZeros()I
    .registers 4

    .prologue
    .line 33
    const/16 v0, 0x20

    .line 34
    .local v0, "n":I
    iget v2, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shr-int/lit8 v1, v2, 0x10

    .line 35
    .local v1, "y":I
    if-eqz v1, :cond_c

    .line 36
    add-int/lit8 v0, v0, -0x10

    .line 37
    iput v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    .line 39
    :cond_c
    iget v2, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shr-int/lit8 v1, v2, 0x8

    .line 40
    if-eqz v1, :cond_16

    .line 41
    add-int/lit8 v0, v0, -0x8

    .line 42
    iput v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    .line 44
    :cond_16
    iget v2, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shr-int/lit8 v1, v2, 0x4

    .line 45
    if-eqz v1, :cond_20

    .line 46
    add-int/lit8 v0, v0, -0x4

    .line 47
    iput v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    .line 49
    :cond_20
    iget v2, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shr-int/lit8 v1, v2, 0x2

    .line 50
    if-eqz v1, :cond_2a

    .line 51
    add-int/lit8 v0, v0, -0x2

    .line 52
    iput v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    .line 54
    :cond_2a
    iget v2, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shr-int/lit8 v1, v2, 0x1

    .line 55
    if-eqz v1, :cond_33

    .line 56
    add-int/lit8 v2, v0, -0x2

    .line 59
    :goto_32
    return v2

    :cond_33
    iget v2, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    sub-int v2, v0, v2

    goto :goto_32
.end method

.method public noneIsSet(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 23
    iget v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public set(I)Lcom/qiniu/android/dns/util/BitSet;
    .registers 4
    .param p1, "bitIndex"    # I

    .prologue
    .line 14
    iget v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    .line 15
    return-object p0
.end method

.method public value()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    return v0
.end method
