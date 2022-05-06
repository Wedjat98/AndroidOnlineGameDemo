.class public final Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;
.super Ljava/lang/Object;
.source "PDF417ScanningDecoder.java"


# static fields
.field private static final CODEWORD_SKEW_SIZE:I = 0x2

.field private static final MAX_EC_CODEWORDS:I = 0x200

.field private static final MAX_ERRORS:I = 0x3

.field private static final errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private static adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .registers 11
    .param p0, "rowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 144
    if-nez p0, :cond_4

    .line 173
    :cond_3
    :goto_3
    return-object v7

    .line 147
    :cond_4
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getRowHeights()[I

    move-result-object v6

    .line 148
    .local v6, "rowHeights":[I
    if-eqz v6, :cond_3

    .line 151
    invoke-static {v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getMax([I)I

    move-result v1

    .line 152
    .local v1, "maxRowHeight":I
    const/4 v3, 0x0

    .line 153
    .local v3, "missingStartRows":I
    array-length v8, v6

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v8, :cond_1d

    aget v5, v6, v7

    .line 154
    .local v5, "rowHeight":I
    sub-int v9, v1, v5

    add-int/2addr v3, v9

    .line 155
    if-gtz v5, :cond_1d

    .line 153
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 159
    .end local v5    # "rowHeight":I
    :cond_1d
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 160
    .local v0, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_22
    if-lez v3, :cond_2d

    aget-object v7, v0, v4

    if-nez v7, :cond_2d

    .line 161
    add-int/lit8 v3, v3, -0x1

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 163
    :cond_2d
    const/4 v2, 0x0

    .line 164
    .local v2, "missingEndRows":I
    array-length v7, v6

    add-int/lit8 v4, v7, -0x1

    :goto_31
    if-ltz v4, :cond_3f

    .line 165
    aget v7, v6, v4

    sub-int v7, v1, v7

    add-int/2addr v2, v7

    .line 166
    aget v7, v6, v4

    if-gtz v7, :cond_3f

    .line 164
    add-int/lit8 v4, v4, -0x1

    goto :goto_31

    .line 170
    :cond_3f
    array-length v7, v0

    add-int/lit8 v4, v7, -0x1

    :goto_42
    if-lez v2, :cond_4d

    aget-object v7, v0, v4

    if-nez v7, :cond_4d

    .line 171
    add-int/lit8 v2, v2, -0x1

    .line 170
    add-int/lit8 v4, v4, -0x1

    goto :goto_42

    .line 173
    :cond_4d
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v7

    .line 174
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft()Z

    move-result v8

    .line 173
    invoke-virtual {v7, v3, v2, v8}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->addMissingRows(IIZ)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v7

    goto :goto_3
.end method

.method private static adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V
    .registers 8
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeMatrix"    # [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 236
    aget-object v2, p1, v4

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v1

    .line 237
    .local v1, "numberOfCodewords":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v2

    .line 238
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v3

    mul-int/2addr v2, v3

    .line 239
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getNumberOfECCodeWords(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 240
    .local v0, "calculatedNumberOfCodewords":I
    array-length v2, v1

    if-nez v2, :cond_33

    .line 241
    if-lez v0, :cond_26

    const/16 v2, 0x3a0

    if-le v0, v2, :cond_2b

    .line 242
    :cond_26
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 244
    :cond_2b
    aget-object v2, p1, v4

    aget-object v2, v2, v5

    invoke-virtual {v2, v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 249
    :cond_32
    :goto_32
    return-void

    .line 245
    :cond_33
    aget v2, v1, v4

    if-eq v2, v0, :cond_32

    .line 247
    aget-object v2, p1, v4

    aget-object v2, v2, v5

    invoke-virtual {v2, v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_32
.end method

.method private static adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I
    .registers 12
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "codewordStartColumn"    # I
    .param p5, "imageRow"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 500
    move v0, p4

    .line 501
    .local v0, "correctedStartColumn":I
    if-eqz p3, :cond_1c

    const/4 v2, -0x1

    .line 503
    .local v2, "increment":I
    :goto_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v5, :cond_2b

    .line 504
    :goto_9
    if-eqz p3, :cond_1e

    if-lt v0, p1, :cond_20

    .line 505
    :cond_d
    invoke-virtual {p0, v0, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-ne p3, v4, :cond_20

    .line 506
    sub-int v4, p4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v5, :cond_27

    .line 514
    .end local p4    # "codewordStartColumn":I
    :goto_1b
    return p4

    .end local v1    # "i":I
    .end local v2    # "increment":I
    .restart local p4    # "codewordStartColumn":I
    :cond_1c
    move v2, v3

    .line 501
    goto :goto_6

    .line 504
    .restart local v1    # "i":I
    .restart local v2    # "increment":I
    :cond_1e
    if-lt v0, p2, :cond_d

    .line 511
    :cond_20
    neg-int v2, v2

    .line 512
    if-nez p3, :cond_29

    move p3, v3

    .line 503
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 509
    :cond_27
    add-int/2addr v0, v2

    goto :goto_9

    .line 512
    :cond_29
    const/4 p3, 0x0

    goto :goto_24

    :cond_2b
    move p4, v0

    .line 514
    goto :goto_1b
.end method

.method private static checkCodewordSkew(III)Z
    .registers 4
    .param p0, "codewordSize"    # I
    .param p1, "minCodewordWidth"    # I
    .param p2, "maxCodewordWidth"    # I

    .prologue
    .line 518
    add-int/lit8 v0, p1, -0x2

    if-gt v0, p0, :cond_a

    add-int/lit8 v0, p2, 0x2

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static correctErrors([I[II)I
    .registers 5
    .param p0, "codewords"    # [I
    .param p1, "erasures"    # [I
    .param p2, "numECCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 549
    if-eqz p1, :cond_9

    array-length v0, p1

    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_f

    :cond_9
    if-ltz p2, :cond_f

    const/16 v0, 0x200

    if-le p2, v0, :cond_14

    .line 554
    :cond_f
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 556
    :cond_14
    sget-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-virtual {v0, p0, p2, p1}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->decode([II[I)I

    move-result v0

    return v0
.end method

.method private static createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .registers 16
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;

    .prologue
    const/4 v7, 0x0

    .line 331
    .line 332
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    filled-new-array {v6, v8}, [I

    move-result-object v6

    const-class v8, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    .line 333
    .local v0, "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_18
    array-length v6, v0

    if-ge v4, v6, :cond_30

    .line 334
    const/4 v2, 0x0

    .local v2, "column":I
    :goto_1c
    aget-object v6, v0, v4

    array-length v6, v6

    if-ge v2, v6, :cond_2d

    .line 335
    aget-object v6, v0, v4

    new-instance v8, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    aput-object v8, v6, v2

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 333
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 339
    .end local v2    # "column":I
    :cond_30
    const/4 v2, 0x0

    .line 340
    .restart local v2    # "column":I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v9

    array-length v10, v9

    move v8, v7

    :goto_37
    if-ge v8, v10, :cond_66

    aget-object v3, v9, v8

    .line 341
    .local v3, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    if-eqz v3, :cond_60

    .line 342
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v11

    array-length v12, v11

    move v6, v7

    :goto_43
    if-ge v6, v12, :cond_60

    aget-object v1, v11, v6

    .line 343
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v1, :cond_5d

    .line 344
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    .line 345
    .local v5, "rowNumber":I
    if-ltz v5, :cond_5d

    .line 346
    array-length v13, v0

    if-ge v5, v13, :cond_5d

    .line 350
    aget-object v13, v0, v5

    aget-object v13, v13, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 342
    .end local v5    # "rowNumber":I
    :cond_5d
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    .line 355
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_60
    add-int/lit8 v2, v2, 0x1

    .line 340
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_37

    .line 357
    .end local v3    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :cond_66
    return-object v0
.end method

.method private static createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;
    .registers 15
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    move-result-object v3

    .line 254
    .local v3, "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V

    .line 255
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v7, "erasures":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v11

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v12

    mul-int/2addr v11, v12

    new-array v5, v11, [I

    .line 257
    .local v5, "codewords":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v1, "ambiguousIndexValuesList":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v2, "ambiguousIndexesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .local v9, "row":I
    :goto_22
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v11

    if-ge v9, v11, :cond_65

    .line 260
    const/4 v6, 0x0

    .local v6, "column":I
    :goto_29
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v11

    if-ge v6, v11, :cond_62

    .line 261
    aget-object v11, v3, v9

    add-int/lit8 v12, v6, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v10

    .line 262
    .local v10, "values":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v11

    mul-int/2addr v11, v9

    add-int v4, v11, v6

    .line 263
    .local v4, "codewordIndex":I
    array-length v11, v10

    if-nez v11, :cond_4d

    .line 264
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 260
    :goto_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 265
    :cond_4d
    array-length v11, v10

    const/4 v12, 0x1

    if-ne v11, v12, :cond_57

    .line 266
    const/4 v11, 0x0

    aget v11, v10, v11

    aput v11, v5, v4

    goto :goto_4a

    .line 268
    :cond_57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 259
    .end local v4    # "codewordIndex":I
    .end local v10    # "values":[I
    :cond_62
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    .line 273
    .end local v6    # "column":I
    :cond_65
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    new-array v0, v11, [[I

    .line 274
    .local v0, "ambiguousIndexValues":[[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6c
    array-length v11, v0

    if-ge v8, v11, :cond_7a

    .line 275
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    aput-object v11, v0, v8

    .line 274
    add-int/lit8 v8, v8, 0x1

    goto :goto_6c

    .line 277
    :cond_7a
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v11

    .line 278
    invoke-static {v7}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v12

    invoke-static {v2}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v13

    .line 277
    invoke-static {v11, v5, v12, v13, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v11

    return-object v11
.end method

.method private static createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;
    .registers 12
    .param p0, "ecLevel"    # I
    .param p1, "codewords"    # [I
    .param p2, "erasureArray"    # [I
    .param p3, "ambiguousIndexes"    # [I
    .param p4, "ambiguousIndexValues"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 300
    array-length v4, p3

    new-array v0, v4, [I

    .line 302
    .local v0, "ambiguousIndexCount":[I
    const/16 v2, 0x64

    .local v2, "tries":I
    move v3, v2

    .line 303
    .end local v2    # "tries":I
    .local v3, "tries":I
    :goto_6
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "tries":I
    .restart local v2    # "tries":I
    if-lez v3, :cond_50

    .line 304
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v4, v0

    if-ge v1, v4, :cond_1b

    .line 305
    aget v4, p3, v1

    aget-object v5, p4, v1

    aget v6, v0, v1

    aget v5, v5, v6

    aput v5, p1, v4

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 308
    :cond_1b
    :try_start_1b
    invoke-static {p1, p0, p2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;
    :try_end_1e
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1b .. :try_end_1e} :catch_20

    move-result-object v4

    return-object v4

    .line 312
    :catch_20
    move-exception v4

    array-length v4, v0

    if-nez v4, :cond_29

    .line 313
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    .line 315
    :cond_29
    const/4 v1, 0x0

    :goto_2a
    array-length v4, v0

    if-ge v1, v4, :cond_4e

    .line 316
    aget v4, v0, v1

    aget-object v5, p4, v1

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_3e

    .line 317
    aget v4, v0, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v1

    move v3, v2

    .line 318
    .end local v2    # "tries":I
    .restart local v3    # "tries":I
    goto :goto_6

    .line 320
    .end local v3    # "tries":I
    .restart local v2    # "tries":I
    :cond_3e
    const/4 v4, 0x0

    aput v4, v0, v1

    .line 321
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_4b

    .line 322
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    .line 315
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_4e
    move v3, v2

    .end local v2    # "tries":I
    .restart local v3    # "tries":I
    goto :goto_6

    .line 327
    .end local v1    # "i":I
    .end local v3    # "tries":I
    .restart local v2    # "tries":I
    :cond_50
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4
.end method

.method public static decode(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/DecoderResult;
    .registers 28
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "imageTopLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "imageBottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "imageTopRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "imageBottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "minCodewordWidth"    # I
    .param p6, "maxCodewordWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v2, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 60
    .local v2, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    const/16 v17, 0x0

    .line 61
    .local v17, "leftRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/16 v20, 0x0

    .line 62
    .local v20, "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v14, 0x0

    .line 63
    .local v14, "detectionResult":Lcom/google/zxing/pdf417/decoder/DetectionResult;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_16
    const/4 v3, 0x2

    move/from16 v0, v16

    if-ge v0, v3, :cond_78

    .line 64
    if-eqz p1, :cond_2b

    .line 65
    const/4 v6, 0x1

    move-object/from16 v3, p0

    move-object v4, v2

    move-object/from16 v5, p1

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v17

    .line 68
    :cond_2b
    if-eqz p3, :cond_3b

    .line 69
    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v20

    .line 72
    :cond_3b
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;

    move-result-object v14

    .line 73
    if-nez v14, :cond_4a

    .line 74
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 76
    :cond_4a
    if-nez v16, :cond_75

    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    if-eqz v3, :cond_75

    .line 77
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v4

    if-lt v3, v4, :cond_6e

    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v4

    if-le v3, v4, :cond_75

    .line 79
    :cond_6e
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    .line 63
    add-int/lit8 v16, v16, 0x1

    goto :goto_16

    .line 81
    :cond_75
    invoke-virtual {v14, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .line 85
    :cond_78
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    add-int/lit8 v18, v3, 0x1

    .line 86
    .local v18, "maxBarcodeColumn":I
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 87
    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 89
    if-eqz v17, :cond_fc

    const/4 v6, 0x1

    .line 90
    .local v6, "leftToRight":Z
    :goto_8e
    const/4 v12, 0x1

    .local v12, "barcodeColumnCount":I
    :goto_8f
    move/from16 v0, v18

    if-gt v12, v0, :cond_10c

    .line 91
    if-eqz v6, :cond_fe

    move v11, v12

    .line 92
    .local v11, "barcodeColumn":I
    :goto_96
    invoke-virtual {v14, v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v3

    if-nez v3, :cond_109

    .line 97
    if-eqz v11, :cond_a2

    move/from16 v0, v18

    if-ne v11, v0, :cond_103

    .line 98
    :cond_a2
    new-instance v15, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    if-nez v11, :cond_101

    const/4 v3, 0x1

    :goto_a7
    invoke-direct {v15, v2, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    .line 102
    .local v15, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :goto_aa
    invoke-virtual {v14, v11, v15}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 104
    const/16 v19, -0x1

    .line 106
    .local v19, "previousStartColumn":I
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v8

    .local v8, "imageRow":I
    :goto_b3
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v3

    if-gt v8, v3, :cond_109

    .line 107
    invoke-static {v14, v11, v8, v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I

    move-result v7

    .line 108
    .local v7, "startColumn":I
    if-ltz v7, :cond_c5

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v3

    if-le v7, v3, :cond_cc

    .line 109
    :cond_c5
    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_f9

    .line 112
    move/from16 v7, v19

    .line 114
    :cond_cc
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v5

    move-object/from16 v3, p0

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v3 .. v10}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v13

    .line 116
    .local v13, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v13, :cond_f9

    .line 117
    invoke-virtual {v15, v8, v13}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 118
    move/from16 v19, v7

    .line 119
    invoke-virtual {v13}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v3

    move/from16 v0, p5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 120
    invoke-virtual {v13}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v3

    move/from16 v0, p6

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p6

    .line 106
    .end local v13    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_f9
    add-int/lit8 v8, v8, 0x1

    goto :goto_b3

    .line 89
    .end local v6    # "leftToRight":Z
    .end local v7    # "startColumn":I
    .end local v8    # "imageRow":I
    .end local v11    # "barcodeColumn":I
    .end local v12    # "barcodeColumnCount":I
    .end local v15    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .end local v19    # "previousStartColumn":I
    :cond_fc
    const/4 v6, 0x0

    goto :goto_8e

    .line 91
    .restart local v6    # "leftToRight":Z
    .restart local v12    # "barcodeColumnCount":I
    :cond_fe
    sub-int v11, v18, v12

    goto :goto_96

    .line 98
    .restart local v11    # "barcodeColumn":I
    :cond_101
    const/4 v3, 0x0

    goto :goto_a7

    .line 100
    :cond_103
    new-instance v15, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    invoke-direct {v15, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .restart local v15    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    goto :goto_aa

    .line 90
    .end local v15    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :cond_109
    add-int/lit8 v12, v12, 0x1

    goto :goto_8f

    .line 124
    .end local v11    # "barcodeColumn":I
    :cond_10c
    invoke-static {v14}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v3

    return-object v3
.end method

.method private static decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;
    .registers 8
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # I
    .param p2, "erasures"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 524
    array-length v3, p0

    if-nez v3, :cond_8

    .line 525
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 528
    :cond_8
    const/4 v3, 0x1

    add-int/lit8 v4, p1, 0x1

    shl-int v2, v3, v4

    .line 529
    .local v2, "numECCodewords":I
    invoke-static {p0, p2, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->correctErrors([I[II)I

    move-result v0

    .line 530
    .local v0, "correctedErrorsCount":I
    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->verifyCodewordCount([II)V

    .line 533
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 534
    .local v1, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    .line 535
    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/DecoderResult;->setErasures(Ljava/lang/Integer;)V

    .line 536
    return-object v1
.end method

.method private static detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;
    .registers 19
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "startColumn"    # I
    .param p5, "imageRow"    # I
    .param p6, "minCodewordWidth"    # I
    .param p7, "maxCodewordWidth"    # I

    .prologue
    .line 411
    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I

    move-result p4

    .line 416
    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I

    move-result-object v7

    .line 417
    .local v7, "moduleBitCount":[I
    if-nez v7, :cond_c

    .line 418
    const/4 v9, 0x0

    .line 458
    :goto_b
    return-object v9

    .line 421
    :cond_c
    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v3

    .line 422
    .local v3, "codewordBitCount":I
    if-eqz p3, :cond_20

    .line 423
    add-int v5, p4, v3

    .line 447
    .local v5, "endColumn":I
    :goto_14
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-static {v3, v0, v1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->checkCodewordSkew(III)Z

    move-result v9

    if-nez v9, :cond_3c

    .line 450
    const/4 v9, 0x0

    goto :goto_b

    .line 425
    .end local v5    # "endColumn":I
    :cond_20
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_21
    array-length v9, v7

    div-int/lit8 v9, v9, 0x2

    if-ge v6, v9, :cond_39

    .line 426
    aget v8, v7, v6

    .line 427
    .local v8, "tmpCount":I
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v6

    aget v9, v7, v9

    aput v9, v7, v6

    .line 428
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v6

    aput v8, v7, v9

    .line 425
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 430
    .end local v8    # "tmpCount":I
    :cond_39
    move v5, p4

    .line 431
    .restart local v5    # "endColumn":I
    sub-int/2addr p4, v3

    goto :goto_14

    .line 453
    .end local v6    # "i":I
    :cond_3c
    invoke-static {v7}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedValue([I)I

    move-result v4

    .line 454
    .local v4, "decodedValue":I
    invoke-static {v4}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(I)I

    move-result v2

    .line 455
    .local v2, "codeword":I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_49

    .line 456
    const/4 v9, 0x0

    goto :goto_b

    .line 458
    :cond_49
    new-instance v9, Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-static {v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber(I)I

    move-result v10

    invoke-direct {v9, p4, v5, v10, v2}, Lcom/google/zxing/pdf417/decoder/Codeword;-><init>(IIII)V

    goto :goto_b
.end method

.method private static getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .registers 7
    .param p0, "leftRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .param p1, "rightRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    .prologue
    const/4 v2, 0x0

    .line 188
    if-eqz p0, :cond_9

    .line 189
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    .local v0, "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v0, :cond_12

    .line 190
    .end local v0    # "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_9
    if-nez p1, :cond_d

    move-object v0, v2

    .line 203
    :cond_c
    :goto_c
    return-object v0

    .line 190
    :cond_d
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    goto :goto_c

    .line 193
    .restart local v0    # "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_12
    if-eqz p1, :cond_c

    .line 194
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    .local v1, "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-eqz v1, :cond_c

    .line 198
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v4

    if-eq v3, v4, :cond_c

    .line 199
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v4

    if-eq v3, v4, :cond_c

    .line 200
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    if-eq v3, v4, :cond_c

    move-object v0, v2

    .line 201
    goto :goto_c
.end method

.method private static getBitCountForCodeword(I)[I
    .registers 5
    .param p0, "codeword"    # I

    .prologue
    .line 586
    const/16 v3, 0x8

    new-array v2, v3, [I

    .line 587
    .local v2, "result":[I
    const/4 v1, 0x0

    .line 588
    .local v1, "previousValue":I
    const/4 v0, 0x7

    .line 590
    .local v0, "i":I
    :goto_6
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_10

    .line 591
    and-int/lit8 v1, p0, 0x1

    .line 592
    add-int/lit8 v0, v0, -0x1

    .line 593
    if-ltz v0, :cond_19

    .line 597
    :cond_10
    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 598
    shr-int/lit8 p0, p0, 0x1

    goto :goto_6

    .line 600
    :cond_19
    return-object v2
.end method

.method private static getCodewordBucketNumber(I)I
    .registers 2
    .param p0, "codeword"    # I

    .prologue
    .line 604
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBitCountForCodeword(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber([I)I

    move-result v0

    return v0
.end method

.method private static getCodewordBucketNumber([I)I
    .registers 3
    .param p0, "moduleBitCount"    # [I

    .prologue
    .line 608
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p0, v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    return v0
.end method

.method private static getMax([I)I
    .registers 5
    .param p0, "values"    # [I

    .prologue
    .line 178
    const/4 v0, -0x1

    .line 179
    .local v0, "maxValue":I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_e

    aget v1, p0, v2

    .line 180
    .local v1, "value":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 182
    .end local v1    # "value":I
    :cond_e
    return v0
.end method

.method private static getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I
    .registers 14
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "startColumn"    # I
    .param p5, "imageRow"    # I

    .prologue
    const/4 v5, 0x1

    const/16 v7, 0x8

    .line 467
    move v0, p4

    .line 468
    .local v0, "imageColumn":I
    new-array v2, v7, [I

    .line 469
    .local v2, "moduleBitCount":[I
    const/4 v3, 0x0

    .line 470
    .local v3, "moduleNumber":I
    if-eqz p3, :cond_1f

    move v1, v5

    .line 471
    .local v1, "increment":I
    :goto_a
    move v4, p3

    .line 472
    .local v4, "previousPixelValue":Z
    :goto_b
    if-eqz p3, :cond_21

    if-ge v0, p2, :cond_23

    :cond_f
    if-ge v3, v7, :cond_23

    .line 474
    invoke-virtual {p0, v0, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-ne v6, v4, :cond_2d

    .line 475
    aget v6, v2, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v3

    .line 476
    add-int/2addr v0, v1

    goto :goto_b

    .line 470
    .end local v1    # "increment":I
    .end local v4    # "previousPixelValue":Z
    :cond_1f
    const/4 v1, -0x1

    goto :goto_a

    .line 472
    .restart local v1    # "increment":I
    .restart local v4    # "previousPixelValue":Z
    :cond_21
    if-ge v0, p1, :cond_f

    .line 482
    :cond_23
    if-eq v3, v7, :cond_2c

    if-eqz p3, :cond_35

    .end local p2    # "maxColumn":I
    :goto_27
    if-ne v0, p2, :cond_37

    const/4 v5, 0x7

    if-ne v3, v5, :cond_37

    .line 487
    .end local v2    # "moduleBitCount":[I
    :cond_2c
    :goto_2c
    return-object v2

    .line 478
    .restart local v2    # "moduleBitCount":[I
    .restart local p2    # "maxColumn":I
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    .line 479
    if-nez v4, :cond_33

    move v4, v5

    :goto_32
    goto :goto_b

    :cond_33
    const/4 v4, 0x0

    goto :goto_32

    :cond_35
    move p2, p1

    .line 482
    goto :goto_27

    .line 487
    .end local p2    # "maxColumn":I
    :cond_37
    const/4 v2, 0x0

    goto :goto_2c
.end method

.method private static getNumberOfECCodeWords(I)I
    .registers 2
    .param p0, "barcodeECLevel"    # I

    .prologue
    .line 491
    const/4 v0, 0x2

    shl-int/2addr v0, p0

    return v0
.end method

.method private static getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .registers 18
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .param p2, "startPoint"    # Lcom/google/zxing/ResultPoint;
    .param p3, "leftToRight"    # Z
    .param p4, "minCodewordWidth"    # I
    .param p5, "maxCodewordWidth"    # I

    .prologue
    .line 212
    new-instance v11, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    invoke-direct {v11, p1, p3}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    .line 214
    .local v11, "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    const/4 v0, 0x2

    if-ge v9, v0, :cond_48

    .line 215
    if-nez v9, :cond_3e

    const/4 v10, 0x1

    .line 216
    .local v10, "increment":I
    :goto_c
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v4, v0

    .line 217
    .local v4, "startColumn":I
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v5, v0

    .local v5, "imageRow":I
    :goto_16
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    if-gt v5, v0, :cond_45

    .line 218
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v0

    if-lt v5, v0, :cond_45

    .line 219
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    move-object v0, p0

    move v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v8

    .line 221
    .local v8, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v8, :cond_3c

    .line 222
    invoke-virtual {v11, v5, v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 223
    if-eqz p3, :cond_40

    .line 224
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    .line 218
    :cond_3c
    :goto_3c
    add-int/2addr v5, v10

    goto :goto_16

    .line 215
    .end local v4    # "startColumn":I
    .end local v5    # "imageRow":I
    .end local v8    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v10    # "increment":I
    :cond_3e
    const/4 v10, -0x1

    goto :goto_c

    .line 226
    .restart local v4    # "startColumn":I
    .restart local v5    # "imageRow":I
    .restart local v8    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v10    # "increment":I
    :cond_40
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    goto :goto_3c

    .line 214
    .end local v8    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_45
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 231
    .end local v4    # "startColumn":I
    .end local v5    # "imageRow":I
    .end local v10    # "increment":I
    :cond_48
    return-object v11
.end method

.method private static getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I
    .registers 12
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeColumn"    # I
    .param p2, "imageRow"    # I
    .param p3, "leftToRight"    # Z

    .prologue
    .line 368
    if-eqz p3, :cond_1f

    const/4 v1, 0x1

    .line 369
    .local v1, "offset":I
    :goto_3
    const/4 v0, 0x0

    .line 370
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    sub-int v4, p1, v1

    invoke-static {p0, v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 371
    sub-int v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 373
    :cond_16
    if-eqz v0, :cond_26

    .line 374
    if-eqz p3, :cond_21

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    .line 400
    :goto_1e
    return v4

    .line 368
    .end local v0    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v1    # "offset":I
    :cond_1f
    const/4 v1, -0x1

    goto :goto_3

    .line 374
    .restart local v0    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v1    # "offset":I
    :cond_21
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    goto :goto_1e

    .line 376
    :cond_26
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_3c

    .line 378
    if-eqz p3, :cond_37

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    goto :goto_1e

    :cond_37
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    goto :goto_1e

    .line 380
    :cond_3c
    sub-int v4, p1, v1

    invoke-static {p0, v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 381
    sub-int v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 383
    :cond_4e
    if-eqz v0, :cond_5c

    .line 384
    if-eqz p3, :cond_57

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    goto :goto_1e

    :cond_57
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    goto :goto_1e

    .line 386
    :cond_5c
    const/4 v3, 0x0

    .line 388
    .local v3, "skippedColumns":I
    :goto_5d
    sub-int v4, p1, v1

    invoke-static {p0, v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 389
    sub-int/2addr p1, v1

    .line 390
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_70
    if-ge v4, v6, :cond_92

    aget-object v2, v5, v4

    .line 391
    .local v2, "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v2, :cond_8f

    .line 392
    if-eqz p3, :cond_8a

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    :goto_7c
    mul-int v5, v1, v3

    .line 395
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v6

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 392
    goto :goto_1e

    :cond_8a
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    goto :goto_7c

    .line 390
    :cond_8f
    add-int/lit8 v4, v4, 0x1

    goto :goto_70

    .line 398
    .end local v2    # "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    .line 400
    :cond_95
    if-eqz p3, :cond_a1

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v4

    goto/16 :goto_1e

    :cond_a1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v4

    goto/16 :goto_1e
.end method

.method private static isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z
    .registers 3
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeColumn"    # I

    .prologue
    .line 361
    if-ltz p1, :cond_c

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .registers 6
    .param p0, "leftRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .param p1, "rightRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 130
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 139
    :cond_5
    :goto_5
    return-object v2

    .line 133
    :cond_6
    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    .line 134
    .local v0, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-eqz v0, :cond_5

    .line 137
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    .line 138
    invoke-static {p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    .line 137
    invoke-static {v2, v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->merge(Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/pdf417/decoder/BoundingBox;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v1

    .line 139
    .local v1, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    new-instance v2, Lcom/google/zxing/pdf417/decoder/DetectionResult;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;-><init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    goto :goto_5
.end method

.method public static toString([[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)Ljava/lang/String;
    .registers 11
    .param p0, "barcodeMatrix"    # [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 612
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 613
    .local v2, "formatter":Ljava/util/Formatter;
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_8
    array-length v5, p0

    if-ge v4, v5, :cond_5d

    .line 614
    const-string v5, "Row %2d: "

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 615
    const/4 v1, 0x0

    .local v1, "column":I
    :goto_19
    aget-object v5, p0, v4

    array-length v5, v5

    if-ge v1, v5, :cond_53

    .line 616
    aget-object v5, p0, v4

    aget-object v0, v5, v1

    .line 617
    .local v0, "barcodeValue":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_32

    .line 618
    const-string v5, "        "

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 615
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 620
    :cond_32
    const-string v5, "%4d(%2d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 621
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v8

    invoke-virtual {v0, v7}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getConfidence(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    .line 620
    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2f

    .line 624
    .end local v0    # "barcodeValue":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    :cond_53
    const-string v5, "%n"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 613
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 626
    .end local v1    # "column":I
    :cond_5d
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 627
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    .line 628
    return-object v3
.end method

.method private static verifyCodewordCount([II)V
    .registers 6
    .param p0, "codewords"    # [I
    .param p1, "numECCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 563
    array-length v1, p0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_a

    .line 566
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 571
    :cond_a
    aget v0, p0, v3

    .line 572
    .local v0, "numberOfCodewords":I
    array-length v1, p0

    if-le v0, v1, :cond_14

    .line 573
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 575
    :cond_14
    if-nez v0, :cond_1d

    .line 577
    array-length v1, p0

    if-ge p1, v1, :cond_1e

    .line 578
    array-length v1, p0

    sub-int/2addr v1, p1

    aput v1, p0, v3

    .line 583
    :cond_1d
    return-void

    .line 580
    :cond_1e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1
.end method
