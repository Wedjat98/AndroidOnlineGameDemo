.class public final Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECBlocks"
.end annotation


# instance fields
.field private final ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

.field private final ecCodewordsPerBlock:I


# direct methods
.method varargs constructor <init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V
    .registers 3
    .param p1, "ecCodewordsPerBlock"    # I
    .param p2, "ecBlocks"    # [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    .line 190
    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    .line 191
    return-void
.end method


# virtual methods
.method public getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    return-object v0
.end method

.method public getECCodewordsPerBlock()I
    .registers 2

    .prologue
    .line 194
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    return v0
.end method

.method public getNumBlocks()I
    .registers 7

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, "total":I
    iget-object v3, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_11

    aget-object v0, v3, v2

    .line 200
    .local v0, "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 202
    .end local v0    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    :cond_11
    return v1
.end method

.method public getTotalECCodewords()I
    .registers 3

    .prologue
    .line 206
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
