.class final Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;
.super Ljava/lang/Object;
.source "BitArrayBuilder.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/common/BitArray;"
        }
    .end annotation

    .prologue
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    const/4 v11, 0x1

    .line 43
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    shl-int/lit8 v10, v10, 0x1

    add-int/lit8 v2, v10, -0x1

    .line 44
    .local v2, "charNumber":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    if-nez v10, :cond_1d

    .line 45
    add-int/lit8 v2, v2, -0x1

    .line 48
    :cond_1d
    mul-int/lit8 v9, v2, 0xc

    .line 50
    .local v9, "size":I
    new-instance v1, Lcom/google/zxing/common/BitArray;

    invoke-direct {v1, v9}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 51
    .local v1, "binary":Lcom/google/zxing/common/BitArray;
    const/4 v0, 0x0

    .line 53
    .local v0, "accPos":I
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 54
    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v4

    .line 55
    .local v4, "firstValue":I
    const/16 v5, 0xb

    .local v5, "i":I
    :goto_36
    if-ltz v5, :cond_45

    .line 56
    shl-int v10, v11, v5

    and-int/2addr v10, v4

    if-eqz v10, :cond_40

    .line 57
    invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 59
    :cond_40
    add-int/lit8 v0, v0, 0x1

    .line 55
    add-int/lit8 v5, v5, -0x1

    goto :goto_36

    .line 62
    :cond_45
    const/4 v5, 0x1

    :goto_46
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_8d

    .line 63
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 65
    .local v3, "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v7

    .line 66
    .local v7, "leftValue":I
    const/16 v6, 0xb

    .local v6, "j":I
    :goto_5c
    if-ltz v6, :cond_6b

    .line 67
    shl-int v10, v11, v6

    and-int/2addr v10, v7

    if-eqz v10, :cond_66

    .line 68
    invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 70
    :cond_66
    add-int/lit8 v0, v0, 0x1

    .line 66
    add-int/lit8 v6, v6, -0x1

    goto :goto_5c

    .line 73
    :cond_6b
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    if-eqz v10, :cond_8a

    .line 74
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    .line 75
    .local v8, "rightValue":I
    const/16 v6, 0xb

    :goto_7b
    if-ltz v6, :cond_8a

    .line 76
    shl-int v10, v11, v6

    and-int/2addr v10, v8

    if-eqz v10, :cond_85

    .line 77
    invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 79
    :cond_85
    add-int/lit8 v0, v0, 0x1

    .line 75
    add-int/lit8 v6, v6, -0x1

    goto :goto_7b

    .line 62
    .end local v8    # "rightValue":I
    :cond_8a
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 83
    .end local v3    # "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v6    # "j":I
    .end local v7    # "leftValue":I
    :cond_8d
    return-object v1
.end method
