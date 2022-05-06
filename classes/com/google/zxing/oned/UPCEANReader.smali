.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "UPCEANReader.java"


# static fields
.field static final END_PATTERN:[I

.field static final L_AND_G_PATTERNS:[[I

.field static final L_PATTERNS:[[I

.field private static final MAX_AVG_VARIANCE:F = 0.48f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.7f

.field static final MIDDLE_PATTERN:[I

.field static final START_END_PATTERN:[I


# instance fields
.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;

.field private final eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

.field private final extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 53
    new-array v4, v9, [I

    fill-array-data v4, :array_a2

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 58
    new-array v4, v10, [I

    fill-array-data v4, :array_ac

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    .line 62
    new-array v4, v11, [I

    fill-array-data v4, :array_ba

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->END_PATTERN:[I

    .line 66
    const/16 v4, 0xa

    new-array v4, v4, [[I

    new-array v5, v7, [I

    fill-array-data v5, :array_ca

    aput-object v5, v4, v8

    const/4 v5, 0x1

    new-array v6, v7, [I

    fill-array-data v6, :array_d6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v6, v7, [I

    fill-array-data v6, :array_e2

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_ee

    aput-object v5, v4, v9

    new-array v5, v7, [I

    fill-array-data v5, :array_fa

    aput-object v5, v4, v7

    new-array v5, v7, [I

    fill-array-data v5, :array_106

    aput-object v5, v4, v10

    new-array v5, v7, [I

    fill-array-data v5, :array_112

    aput-object v5, v4, v11

    const/4 v5, 0x7

    new-array v6, v7, [I

    fill-array-data v6, :array_11e

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-array v6, v7, [I

    fill-array-data v6, :array_12a

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-array v6, v7, [I

    fill-array-data v6, :array_136

    aput-object v6, v4, v5

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    .line 85
    const/16 v4, 0x14

    new-array v4, v4, [[I

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    .line 86
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    const/16 v6, 0xa

    invoke-static {v4, v8, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_7e
    const/16 v4, 0x14

    if-ge v0, v4, :cond_a1

    .line 88
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    add-int/lit8 v5, v0, -0xa

    aget-object v3, v4, v5

    .line 89
    .local v3, "widths":[I
    array-length v4, v3

    new-array v2, v4, [I

    .line 90
    .local v2, "reversedWidths":[I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_8c
    array-length v4, v3

    if-ge v1, v4, :cond_9a

    .line 91
    array-length v4, v3

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget v4, v3, v4

    aput v4, v2, v1

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 93
    :cond_9a
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aput-object v2, v4, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 95
    .end local v1    # "j":I
    .end local v2    # "reversedWidths":[I
    .end local v3    # "widths":[I
    :cond_a1
    return-void

    .line 53
    :array_a2
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    .line 58
    :array_ac
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 62
    :array_ba
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 66
    :array_ca
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_d6
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_e2
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_ee
    .array-data 4
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_fa
    .array-data 4
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_106
    .array-data 4
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_112
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_11e
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_12a
    .array-data 4
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_136
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    .line 103
    new-instance v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    .line 104
    new-instance v0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    .line 105
    return-void
.end method

.method static checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z
    .registers 8
    .param p0, "s"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x9

    const/4 v4, 0x0

    .line 264
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 265
    .local v2, "length":I
    if-nez v2, :cond_a

    .line 285
    :cond_9
    :goto_9
    return v4

    .line 269
    :cond_a
    const/4 v3, 0x0

    .line 270
    .local v3, "sum":I
    add-int/lit8 v1, v2, -0x2

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_22

    .line 271
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v0, v5, -0x30

    .line 272
    .local v0, "digit":I
    if-ltz v0, :cond_19

    if-le v0, v6, :cond_1e

    .line 273
    :cond_19
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 275
    :cond_1e
    add-int/2addr v3, v0

    .line 270
    add-int/lit8 v1, v1, -0x2

    goto :goto_d

    .line 277
    .end local v0    # "digit":I
    :cond_22
    mul-int/lit8 v3, v3, 0x3

    .line 278
    add-int/lit8 v1, v2, -0x1

    :goto_26
    if-ltz v1, :cond_3b

    .line 279
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v0, v5, -0x30

    .line 280
    .restart local v0    # "digit":I
    if-ltz v0, :cond_32

    if-le v0, v6, :cond_37

    .line 281
    :cond_32
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 283
    :cond_37
    add-int/2addr v3, v0

    .line 278
    add-int/lit8 v1, v1, -0x2

    goto :goto_26

    .line 285
    .end local v0    # "digit":I
    :cond_3b
    rem-int/lit8 v5, v3, 0xa

    if-nez v5, :cond_9

    const/4 v4, 0x1

    goto :goto_9
.end method

.method static decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I
    .registers 11
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .param p2, "rowOffset"    # I
    .param p3, "patterns"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/UPCEANReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 359
    const v1, 0x3ef5c28f    # 0.48f

    .line 360
    .local v1, "bestVariance":F
    const/4 v0, -0x1

    .line 361
    .local v0, "bestMatch":I
    array-length v3, p3

    .line 362
    .local v3, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v3, :cond_1d

    .line 363
    aget-object v4, p3, v2

    .line 364
    .local v4, "pattern":[I
    const v6, 0x3f333333    # 0.7f

    invoke-static {p1, v4, v6}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[IF)F

    move-result v5

    .line 365
    .local v5, "variance":F
    cmpg-float v6, v5, v1

    if-gez v6, :cond_1a

    .line 366
    move v1, v5

    .line 367
    move v0, v2

    .line 362
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 370
    .end local v4    # "pattern":[I
    .end local v5    # "variance":F
    :cond_1d
    if-ltz v0, :cond_20

    .line 371
    return v0

    .line 373
    :cond_20
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I
    .registers 5
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "rowOffset"    # I
    .param p2, "whiteFirst"    # Z
    .param p3, "pattern"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 296
    array-length v0, p3

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I
    .registers 16
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "rowOffset"    # I
    .param p2, "whiteFirst"    # Z
    .param p3, "pattern"    # [I
    .param p4, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 315
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    .line 316
    .local v4, "width":I
    if-eqz p2, :cond_24

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result p1

    .line 317
    :goto_d
    const/4 v0, 0x0

    .line 318
    .local v0, "counterPosition":I
    move v3, p1

    .line 319
    .local v3, "patternStart":I
    array-length v2, p3

    .line 320
    .local v2, "patternLength":I
    move v1, p2

    .line 321
    .local v1, "isWhite":Z
    move v5, p1

    .local v5, "x":I
    :goto_12
    if-ge v5, v4, :cond_62

    .line 322
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    xor-int/2addr v8, v1

    if-eqz v8, :cond_29

    .line 323
    aget v8, p4, v0

    add-int/lit8 v8, v8, 0x1

    aput v8, p4, v0

    .line 321
    :goto_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 316
    .end local v0    # "counterPosition":I
    .end local v1    # "isWhite":Z
    .end local v2    # "patternLength":I
    .end local v3    # "patternStart":I
    .end local v5    # "x":I
    :cond_24
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result p1

    goto :goto_d

    .line 325
    .restart local v0    # "counterPosition":I
    .restart local v1    # "isWhite":Z
    .restart local v2    # "patternLength":I
    .restart local v3    # "patternStart":I
    .restart local v5    # "x":I
    :cond_29
    add-int/lit8 v8, v2, -0x1

    if-ne v0, v8, :cond_5d

    .line 326
    const v8, 0x3f333333    # 0.7f

    invoke-static {p4, p3, v8}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[IF)F

    move-result v8

    const v9, 0x3ef5c28f    # 0.48f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_42

    .line 327
    new-array v8, v10, [I

    aput v3, v8, v7

    aput v5, v8, v6

    return-object v8

    .line 329
    :cond_42
    aget v8, p4, v7

    aget v9, p4, v6

    add-int/2addr v8, v9

    add-int/2addr v3, v8

    .line 330
    add-int/lit8 v8, v2, -0x2

    invoke-static {p4, v10, p4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    add-int/lit8 v8, v2, -0x2

    aput v7, p4, v8

    .line 332
    add-int/lit8 v8, v2, -0x1

    aput v7, p4, v8

    .line 333
    add-int/lit8 v0, v0, -0x1

    .line 337
    :goto_57
    aput v6, p4, v0

    .line 338
    if-nez v1, :cond_60

    move v1, v6

    :goto_5c
    goto :goto_21

    .line 335
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_60
    move v1, v7

    .line 338
    goto :goto_5c

    .line 341
    :cond_62
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method static findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I
    .registers 9
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "foundStart":Z
    const/4 v5, 0x0

    .line 110
    .local v5, "startRange":[I
    const/4 v2, 0x0

    .line 111
    .local v2, "nextStart":I
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v6, v6

    new-array v0, v6, [I

    .line 112
    .local v0, "counters":[I
    :cond_9
    :goto_9
    if-nez v1, :cond_27

    .line 113
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v6, v6

    invoke-static {v0, v7, v6, v7}, Ljava/util/Arrays;->fill([IIII)V

    .line 114
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {p0, v2, v7, v6, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v5

    .line 115
    aget v4, v5, v7

    .line 116
    .local v4, "start":I
    const/4 v6, 0x1

    aget v2, v5, v6

    .line 120
    sub-int v6, v2, v4

    sub-int v3, v4, v6

    .line 121
    .local v3, "quietStart":I
    if-ltz v3, :cond_9

    .line 122
    invoke-virtual {p0, v3, v4, v7}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v1

    goto :goto_9

    .line 125
    .end local v3    # "quietStart":I
    .end local v4    # "start":I
    :cond_27
    return-object v5
.end method


# virtual methods
.method checkChecksum(Ljava/lang/String;)Z
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .registers 5
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "endStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v0, 0x0

    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected abstract decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 5
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
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 131
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-static {p2}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;
    .registers 31
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "startGuardRange"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "[I",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 154
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-nez p4, :cond_ae

    const/16 v17, 0x0

    .line 157
    .local v17, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :goto_4
    if-eqz v17, :cond_2a

    .line 158
    new-instance v21, Lcom/google/zxing/ResultPoint;

    const/16 v22, 0x0

    aget v22, p3, v22

    const/16 v23, 0x1

    aget v23, p3, v23

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 163
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    .line 164
    .local v16, "result":Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/oned/UPCEANReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v9

    .line 167
    .local v9, "endStart":I
    if-eqz v17, :cond_5b

    .line 168
    new-instance v21, Lcom/google/zxing/ResultPoint;

    int-to-float v0, v9

    move/from16 v22, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 173
    :cond_5b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v9}, Lcom/google/zxing/oned/UPCEANReader;->decodeEnd(Lcom/google/zxing/common/BitArray;I)[I

    move-result-object v8

    .line 175
    .local v8, "endRange":[I
    if-eqz v17, :cond_89

    .line 176
    new-instance v21, Lcom/google/zxing/ResultPoint;

    const/16 v22, 0x0

    aget v22, v8, v22

    const/16 v23, 0x1

    aget v23, v8, v23

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 184
    :cond_89
    const/16 v21, 0x1

    aget v7, v8, v21

    .line 185
    .local v7, "end":I
    const/16 v21, 0x0

    aget v21, v8, v21

    sub-int v21, v7, v21

    add-int v15, v7, v21

    .line 186
    .local v15, "quietEnd":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v21

    move/from16 v0, v21

    if-ge v15, v0, :cond_a9

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v7, v15, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v21

    if-nez v21, :cond_be

    .line 187
    :cond_a9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    .line 154
    .end local v7    # "end":I
    .end local v8    # "endRange":[I
    .end local v9    # "endStart":I
    .end local v15    # "quietEnd":I
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .end local v17    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :cond_ae
    sget-object v21, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 155
    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/zxing/ResultPointCallback;

    move-object/from16 v17, v21

    goto/16 :goto_4

    .line 190
    .restart local v7    # "end":I
    .restart local v8    # "endRange":[I
    .restart local v9    # "endStart":I
    .restart local v15    # "quietEnd":I
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v17    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :cond_be
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 192
    .local v18, "resultString":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_d3

    .line 193
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v21

    throw v21

    .line 195
    :cond_d3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_e2

    .line 196
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v21

    throw v21

    .line 199
    :cond_e2
    const/16 v21, 0x1

    aget v21, p3, v21

    const/16 v22, 0x0

    aget v22, p3, v22

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v13, v21, v22

    .line 200
    .local v13, "left":F
    const/16 v21, 0x1

    aget v21, v8, v21

    const/16 v22, 0x0

    aget v22, v8, v22

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v19, v21, v22

    .line 201
    .local v19, "right":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/UPCEANReader;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v12

    .line 202
    .local v12, "format":Lcom/google/zxing/BarcodeFormat;
    new-instance v6, Lcom/google/zxing/Result;

    const/16 v21, 0x0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v13, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v24, v22, v23

    const/16 v23, 0x1

    new-instance v24, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v24, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v6, v0, v1, v2, v12}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 209
    .local v6, "decodeResult":Lcom/google/zxing/Result;
    const/4 v10, 0x0

    .line 212
    .local v10, "extensionLength":I
    :try_start_148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v8, v22

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeRow(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;

    move-result-object v11

    .line 213
    .local v11, "extensionResult":Lcom/google/zxing/Result;
    sget-object v21, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 214
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 215
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/google/zxing/Result;->addResultPoints([Lcom/google/zxing/ResultPoint;)V

    .line 216
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I
    :try_end_184
    .catch Lcom/google/zxing/ReaderException; {:try_start_148 .. :try_end_184} :catch_1dc

    move-result v10

    .line 221
    .end local v11    # "extensionResult":Lcom/google/zxing/Result;
    :goto_185
    if-nez p4, :cond_1a4

    const/4 v4, 0x0

    .line 223
    .local v4, "allowedExtensions":[I
    :goto_188
    if-eqz v4, :cond_1b8

    .line 224
    const/16 v20, 0x0

    .line 225
    .local v20, "valid":Z
    array-length v0, v4

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_191
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_19d

    aget v14, v4, v21

    .line 226
    .local v14, "length":I
    if-ne v10, v14, :cond_1b5

    .line 227
    const/16 v20, 0x1

    .line 231
    .end local v14    # "length":I
    :cond_19d
    if-nez v20, :cond_1b8

    .line 232
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    .line 221
    .end local v4    # "allowedExtensions":[I
    .end local v20    # "valid":Z
    :cond_1a4
    sget-object v21, Lcom/google/zxing/DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

    .line 222
    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [I

    check-cast v21, [I

    move-object/from16 v4, v21

    goto :goto_188

    .line 225
    .restart local v4    # "allowedExtensions":[I
    .restart local v14    # "length":I
    .restart local v20    # "valid":Z
    :cond_1b5
    add-int/lit8 v21, v21, 0x1

    goto :goto_191

    .line 236
    .end local v14    # "length":I
    .end local v20    # "valid":Z
    :cond_1b8
    sget-object v21, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v21

    if-eq v12, v0, :cond_1c4

    sget-object v21, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v21

    if-ne v12, v0, :cond_1db

    .line 237
    :cond_1c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "countryID":Ljava/lang/String;
    if-eqz v5, :cond_1db

    .line 239
    sget-object v21, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0, v5}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 243
    .end local v5    # "countryID":Ljava/lang/String;
    :cond_1db
    return-object v6

    .end local v4    # "allowedExtensions":[I
    :catch_1dc
    move-exception v21

    goto :goto_185
.end method

.method abstract getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
.end method
