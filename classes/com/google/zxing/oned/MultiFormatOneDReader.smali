.class public final Lcom/google/zxing/oned/MultiFormatOneDReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "MultiFormatOneDReader.java"


# instance fields
.field private final readers:[Lcom/google/zxing/oned/OneDReader;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 43
    if-nez p1, :cond_105

    const/4 v0, 0x0

    .line 45
    .local v0, "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    :goto_6
    if-eqz p1, :cond_110

    sget-object v3, Lcom/google/zxing/DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

    .line 46
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_110

    const/4 v2, 0x1

    .line 47
    .local v2, "useCode39CheckDigit":Z
    :goto_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/OneDReader;>;"
    if-eqz v0, :cond_b0

    .line 49
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    .line 50
    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    .line 51
    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    .line 52
    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 53
    :cond_38
    new-instance v3, Lcom/google/zxing/oned/MultiFormatUPCEANReader;

    invoke-direct {v3, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_40
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 56
    new-instance v3, Lcom/google/zxing/oned/Code39Reader;

    invoke-direct {v3, v2}, Lcom/google/zxing/oned/Code39Reader;-><init>(Z)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_50
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 59
    new-instance v3, Lcom/google/zxing/oned/Code93Reader;

    invoke-direct {v3}, Lcom/google/zxing/oned/Code93Reader;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_60
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 62
    new-instance v3, Lcom/google/zxing/oned/Code128Reader;

    invoke-direct {v3}, Lcom/google/zxing/oned/Code128Reader;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_70
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 65
    new-instance v3, Lcom/google/zxing/oned/ITFReader;

    invoke-direct {v3}, Lcom/google/zxing/oned/ITFReader;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_80
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 68
    new-instance v3, Lcom/google/zxing/oned/CodaBarReader;

    invoke-direct {v3}, Lcom/google/zxing/oned/CodaBarReader;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_90
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 71
    new-instance v3, Lcom/google/zxing/oned/rss/RSS14Reader;

    invoke-direct {v3}, Lcom/google/zxing/oned/rss/RSS14Reader;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_a0
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 74
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;

    invoke-direct {v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_b0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 78
    new-instance v3, Lcom/google/zxing/oned/MultiFormatUPCEANReader;

    invoke-direct {v3, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v3, Lcom/google/zxing/oned/Code39Reader;

    invoke-direct {v3}, Lcom/google/zxing/oned/Code39Reader;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v3, Lcom/google/zxing/oned/CodaBarReader;

    invoke-direct {v3}, Lcom/google/zxing/oned/CodaBarReader;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v3, Lcom/google/zxing/oned/Code93Reader;

    invoke-direct {v3}, Lcom/google/zxing/oned/Code93Reader;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v3, Lcom/google/zxing/oned/Code128Reader;

    invoke-direct {v3}, Lcom/google/zxing/oned/Code128Reader;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v3, Lcom/google/zxing/oned/ITFReader;

    invoke-direct {v3}, Lcom/google/zxing/oned/ITFReader;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v3, Lcom/google/zxing/oned/rss/RSS14Reader;

    invoke-direct {v3}, Lcom/google/zxing/oned/rss/RSS14Reader;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;

    invoke-direct {v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_f6
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/zxing/oned/OneDReader;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/zxing/oned/OneDReader;

    iput-object v3, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:[Lcom/google/zxing/oned/OneDReader;

    .line 88
    return-void

    .line 43
    .end local v0    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    .end local v1    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/OneDReader;>;"
    .end local v2    # "useCode39CheckDigit":Z
    :cond_105
    sget-object v3, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    .line 44
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object v0, v3

    goto/16 :goto_6

    .line 46
    .restart local v0    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    :cond_110
    const/4 v2, 0x0

    goto/16 :goto_11
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 9
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 94
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:[Lcom/google/zxing/oned/OneDReader;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_11

    aget-object v0, v2, v1

    .line 96
    .local v0, "reader":Lcom/google/zxing/oned/OneDReader;
    :try_start_8
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_b
    .catch Lcom/google/zxing/ReaderException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 94
    :catch_d
    move-exception v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 102
    .end local v0    # "reader":Lcom/google/zxing/oned/OneDReader;
    :cond_11
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method public reset()V
    .registers 5

    .prologue
    .line 107
    iget-object v1, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:[Lcom/google/zxing/oned/OneDReader;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 108
    invoke-interface {v3}, Lcom/google/zxing/Reader;->reset()V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 110
    :cond_e
    return-void
.end method
