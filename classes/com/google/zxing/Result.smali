.class public final Lcom/google/zxing/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private final format:Lcom/google/zxing/BarcodeFormat;

.field private final numBits:I

.field private final rawBytes:[B

.field private resultMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private resultPoints:[Lcom/google/zxing/ResultPoint;

.field private final text:Ljava/lang/String;

.field private final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "rawBytes"    # [B
    .param p3, "numBits"    # I
    .param p4, "resultPoints"    # [Lcom/google/zxing/ResultPoint;
    .param p5, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p6, "timestamp"    # J

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/google/zxing/Result;->rawBytes:[B

    .line 61
    iput p3, p0, Lcom/google/zxing/Result;->numBits:I

    .line 62
    iput-object p4, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    .line 63
    iput-object p5, p0, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    .line 65
    iput-wide p6, p0, Lcom/google/zxing/Result;->timestamp:J

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V
    .registers 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "rawBytes"    # [B
    .param p3, "resultPoints"    # [Lcom/google/zxing/ResultPoint;
    .param p4, "format"    # Lcom/google/zxing/BarcodeFormat;

    .prologue
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V
    .registers 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "rawBytes"    # [B
    .param p3, "resultPoints"    # [Lcom/google/zxing/ResultPoint;
    .param p4, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p5, "timestamp"    # J

    .prologue
    .line 49
    if-nez p2, :cond_d

    const/4 v3, 0x0

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 51
    return-void

    .line 49
    :cond_d
    array-length v0, p2

    mul-int/lit8 v3, v0, 0x8

    goto :goto_3
.end method


# virtual methods
.method public addResultPoints([Lcom/google/zxing/ResultPoint;)V
    .registers 7
    .param p1, "newPoints"    # [Lcom/google/zxing/ResultPoint;

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    .line 134
    .local v1, "oldPoints":[Lcom/google/zxing/ResultPoint;
    if-nez v1, :cond_8

    .line 135
    iput-object p1, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    .line 142
    :cond_7
    :goto_7
    return-void

    .line 136
    :cond_8
    if-eqz p1, :cond_7

    array-length v2, p1

    if-lez v2, :cond_7

    .line 137
    array-length v2, v1

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v0, v2, [Lcom/google/zxing/ResultPoint;

    .line 138
    .local v0, "allPoints":[Lcom/google/zxing/ResultPoint;
    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    array-length v2, v1

    array-length v3, p1

    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iput-object v0, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    goto :goto_7
.end method

.method public getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method

.method public getNumBits()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/google/zxing/Result;->numBits:I

    return v0
.end method

.method public getRawBytes()[B
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/zxing/Result;->rawBytes:[B

    return-object v0
.end method

.method public getResultMetadata()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public getResultPoints()[Lcom/google/zxing/ResultPoint;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/google/zxing/Result;->timestamp:J

    return-wide v0
.end method

.method public putAllMetadata(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    if-eqz p1, :cond_8

    .line 124
    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 125
    iput-object p1, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    .line 130
    :cond_8
    :goto_8
    return-void

    .line 127
    :cond_9
    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_8
.end method

.method public putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V
    .registers 5
    .param p1, "type"    # Lcom/google/zxing/ResultMetadataType;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    if-nez v0, :cond_d

    .line 117
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    .line 119
    :cond_d
    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    return-object v0
.end method
