.class public final Lcom/google/protobuf/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buffer:[B

.field private bufferSize:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private final input:Ljava/io/InputStream;

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/d;->h:I

    .line 500
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/d;->k:I

    .line 503
    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/protobuf/d;->l:I

    .line 518
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/protobuf/d;->buffer:[B

    .line 519
    iput v1, p0, Lcom/google/protobuf/d;->bufferSize:I

    .line 520
    iput v1, p0, Lcom/google/protobuf/d;->e:I

    .line 521
    iput v1, p0, Lcom/google/protobuf/d;->g:I

    .line 522
    iput-object p1, p0, Lcom/google/protobuf/d;->input:Ljava/io/InputStream;

    .line 523
    return-void
.end method

.method private constructor <init>([BII)V
    .registers 5

    .prologue
    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/d;->h:I

    .line 500
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/d;->k:I

    .line 503
    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/protobuf/d;->l:I

    .line 510
    iput-object p1, p0, Lcom/google/protobuf/d;->buffer:[B

    .line 511
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/d;->bufferSize:I

    .line 512
    iput p2, p0, Lcom/google/protobuf/d;->e:I

    .line 513
    neg-int v0, p2

    iput v0, p0, Lcom/google/protobuf/d;->g:I

    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/d;->input:Ljava/io/InputStream;

    .line 515
    return-void
.end method

.method public static B()Lmobi/androidcloud/lib/audio/c;
    .registers 3

    .prologue
    .line 16
    invoke-static {}, Lmobi/androidcloud/lib/phone/c;->jB()Z

    move-result v0

    .line 18
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 21
    if-eqz v1, :cond_15

    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 24
    const/4 v0, 0x0

    .line 28
    :cond_15
    if-eqz v0, :cond_1d

    .line 30
    new-instance v0, Lmobi/androidcloud/lib/audio/e;

    invoke-direct {v0}, Lmobi/androidcloud/lib/audio/e;-><init>()V

    .line 39
    :goto_1c
    return-object v0

    .line 35
    :cond_1d
    new-instance v0, Lmobi/androidcloud/lib/audio/i;

    invoke-direct {v0}, Lmobi/androidcloud/lib/audio/i;-><init>()V

    goto :goto_1c
.end method

.method public static C()Z
    .registers 1

    .prologue
    .line 46
    invoke-static {}, Lmobi/androidcloud/lib/phone/c;->jH()Z

    move-result v0

    return v0
.end method

.method public static D()I
    .registers 4

    .prologue
    const v3, 0xbb80

    const v2, 0xac44

    .line 51
    invoke-static {}, Lmobi/androidcloud/lib/phone/c;->jC()Z

    .line 53
    const/16 v0, 0x1f40

    .line 79
    invoke-static {}, Lmobi/androidcloud/lib/audio/f;->ib()I

    move-result v1

    .line 81
    if-eq v1, v3, :cond_13

    if-ne v1, v2, :cond_14

    :cond_13
    move v0, v1

    .line 87
    :cond_14
    invoke-static {}, Lmobi/androidcloud/lib/phone/c;->jG()Z

    move-result v1

    if-eqz v1, :cond_1b

    move v0, v2

    .line 90
    :cond_1b
    invoke-static {}, Lmobi/androidcloud/lib/phone/c;->jE()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-static {}, Lmobi/androidcloud/lib/phone/c;->jF()Z

    move-result v1

    if-eqz v1, :cond_28

    :cond_27
    move v0, v3

    .line 93
    :cond_28
    return v0
.end method

.method public static E()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    invoke-static {}, Lcom/google/protobuf/d;->F()Ljava/lang/String;

    move-result-object v0

    .line 17
    if-nez v0, :cond_8

    .line 18
    const/4 v0, 0x0

    .line 21
    :goto_7
    return-object v0

    .line 20
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private static F()Ljava/lang/String;
    .registers 4

    .prologue
    .line 36
    invoke-static {}, Lcom/talkray/arcvoice/client/a;->hE()Ljava/lang/String;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_22

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method static a(ILjava/io/InputStream;)I
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 373
    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_6

    .line 396
    :cond_5
    :goto_5
    return p0

    .line 377
    :cond_6
    and-int/lit8 p0, p0, 0x7f

    .line 378
    const/4 v0, 0x7

    .line 379
    :goto_9
    const/16 v1, 0x20

    if-ge v0, v1, :cond_25

    .line 380
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 381
    if-ne v1, v3, :cond_18

    .line 382
    invoke-static {}, Lcom/google/protobuf/s;->gX()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 384
    :cond_18
    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr p0, v2

    .line 385
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_5

    .line 379
    add-int/lit8 v0, v0, 0x7

    goto :goto_9

    .line 390
    :cond_23
    add-int/lit8 v0, v0, 0x7

    :cond_25
    const/16 v1, 0x40

    if-ge v0, v1, :cond_39

    .line 391
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 392
    if-ne v1, v3, :cond_34

    .line 393
    invoke-static {}, Lcom/google/protobuf/s;->gX()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 395
    :cond_34
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_23

    goto :goto_5

    .line 399
    :cond_39
    invoke-static {}, Lcom/google/protobuf/s;->gZ()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0
.end method

.method public static a(J)J
    .registers 6

    .prologue
    .line 474
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static a(Ljava/lang/String;ZZ)J
    .registers 9

    .prologue
    const/16 v2, 0x10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1256
    .line 1259
    const-string v3, "-"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_130

    .line 1260
    if-nez p1, :cond_23

    .line 1261
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number must be positive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    move v1, v0

    .line 1267
    :goto_24
    const/16 v3, 0xa

    .line 1268
    const-string v4, "0x"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 1269
    add-int/lit8 v1, v1, 0x2

    move v3, v1

    move v1, v2

    .line 1275
    :goto_32
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1277
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v2, :cond_9c

    .line 1280
    invoke-static {v3, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 1281
    if-eqz v0, :cond_128

    .line 1282
    neg-long v0, v2

    .line 1288
    :goto_43
    if-nez p2, :cond_125

    .line 1289
    if-eqz p1, :cond_78

    .line 1290
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_55

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_125

    .line 1291
    :cond_55
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 32-bit signed integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1271
    :cond_6a
    const-string v4, "0"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_12b

    .line 1272
    const/16 v3, 0x8

    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_32

    .line 1295
    :cond_78
    const-wide v2, 0x100000000L

    cmp-long v2, v0, v2

    if-gez v2, :cond_87

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_125

    .line 1296
    :cond_87
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 32-bit unsigned integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1302
    :cond_9c
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1303
    if-eqz v0, :cond_126

    .line 1304
    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    .line 1308
    :goto_a7
    if-nez p2, :cond_e5

    .line 1309
    if-eqz p1, :cond_c8

    .line 1310
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x1f

    if-le v1, v2, :cond_121

    .line 1311
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 32-bit signed integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1315
    :cond_c8
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_121

    .line 1316
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 32-bit unsigned integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :cond_e5
    if-eqz p1, :cond_104

    .line 1322
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x3f

    if-le v1, v2, :cond_121

    .line 1323
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 64-bit signed integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1327
    :cond_104
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_121

    .line 1328
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 64-bit unsigned integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1334
    :cond_121
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    .line 1337
    :cond_125
    return-wide v0

    :cond_126
    move-object v0, v2

    goto :goto_a7

    :cond_128
    move-wide v0, v2

    goto/16 :goto_43

    :cond_12b
    move v5, v3

    move v3, v1

    move v1, v5

    goto/16 :goto_32

    :cond_130
    move v0, v1

    goto/16 :goto_24
.end method

.method static a(Ljava/lang/CharSequence;)Lcom/google/protobuf/c;
    .registers 10

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x27

    const/4 v1, 0x0

    .line 1088
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v5, v0, [B

    move v0, v1

    move v2, v1

    .line 1090
    :goto_d
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_143

    .line 1091
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1092
    if-ne v4, v8, :cond_13a

    .line 1093
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_132

    .line 1094
    add-int/lit8 v3, v0, 0x1

    .line 1095
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1096
    invoke-static {v0}, Lcom/google/protobuf/d;->a(C)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 1098
    invoke-static {v0}, Lcom/google/protobuf/d;->c(C)I

    move-result v0

    .line 1099
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_52

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/d;->a(C)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1100
    add-int/lit8 v3, v3, 0x1

    .line 1101
    shl-int/lit8 v0, v0, 0x3

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/d;->c(C)I

    move-result v4

    add-int/2addr v0, v4

    .line 1103
    :cond_52
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_73

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/d;->a(C)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 1104
    add-int/lit8 v3, v3, 0x1

    .line 1105
    shl-int/lit8 v0, v0, 0x3

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/d;->c(C)I

    move-result v4

    add-int/2addr v0, v4

    .line 1107
    :cond_73
    add-int/lit8 v4, v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    move v2, v4

    .line 1090
    :goto_79
    add-int/lit8 v0, v3, 0x1

    goto :goto_d

    .line 1109
    :cond_7c
    sparse-switch v0, :sswitch_data_148

    .line 1139
    new-instance v1, Lcom/google/protobuf/w;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid escape sequence: \'\\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/w;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1110
    :sswitch_98
    add-int/lit8 v0, v2, 0x1

    const/4 v4, 0x7

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_79

    .line 1111
    :sswitch_9f
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x8

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_79

    .line 1112
    :sswitch_a7
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xc

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_79

    .line 1113
    :sswitch_af
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xa

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_79

    .line 1114
    :sswitch_b7
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xd

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_79

    .line 1115
    :sswitch_bf
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x9

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_79

    .line 1116
    :sswitch_c7
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xb

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_79

    .line 1117
    :sswitch_cf
    add-int/lit8 v0, v2, 0x1

    aput-byte v8, v5, v2

    move v2, v0

    goto :goto_79

    .line 1118
    :sswitch_d5
    add-int/lit8 v0, v2, 0x1

    aput-byte v7, v5, v2

    move v2, v0

    goto :goto_79

    .line 1119
    :sswitch_db
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x22

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_79

    .line 1123
    :sswitch_e3
    add-int/lit8 v0, v3, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_12a

    add-int/lit8 v0, v3, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/d;->b(C)Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 1125
    add-int/lit8 v3, v3, 0x1

    .line 1126
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/d;->c(C)I

    move-result v0

    .line 1131
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_122

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/d;->b(C)Z

    move-result v4

    if-eqz v4, :cond_122

    .line 1132
    add-int/lit8 v3, v3, 0x1

    .line 1133
    shl-int/lit8 v0, v0, 0x4

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/d;->c(C)I

    move-result v4

    add-int/2addr v0, v4

    .line 1135
    :cond_122
    add-int/lit8 v4, v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    move v2, v4

    .line 1136
    goto/16 :goto_79

    .line 1128
    :cond_12a
    new-instance v0, Lcom/google/protobuf/w;

    const-string v1, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {v0, v1}, Lcom/google/protobuf/w;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1144
    :cond_132
    new-instance v0, Lcom/google/protobuf/w;

    const-string v1, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {v0, v1}, Lcom/google/protobuf/w;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1148
    :cond_13a
    add-int/lit8 v3, v2, 0x1

    int-to-byte v4, v4

    aput-byte v4, v5, v2

    move v2, v3

    move v3, v0

    goto/16 :goto_79

    .line 1152
    :cond_143
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/c;->c([BII)Lcom/google/protobuf/c;

    move-result-object v0

    return-object v0

    .line 1109
    :sswitch_data_148
    .sparse-switch
        0x22 -> :sswitch_db
        0x27 -> :sswitch_d5
        0x5c -> :sswitch_cf
        0x61 -> :sswitch_98
        0x62 -> :sswitch_9f
        0x66 -> :sswitch_a7
        0x6e -> :sswitch_af
        0x72 -> :sswitch_b7
        0x74 -> :sswitch_bf
        0x76 -> :sswitch_c7
        0x78 -> :sswitch_e3
    .end sparse-switch
.end method

.method static a(Lcom/google/protobuf/c;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/c;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1052
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/google/protobuf/c;->size()I

    move-result v2

    if-ge v0, v2, :cond_80

    .line 1053
    invoke-virtual {p0, v0}, Lcom/google/protobuf/c;->byteAt(I)B

    move-result v2

    .line 1054
    sparse-switch v2, :sswitch_data_86

    .line 1067
    const/16 v3, 0x20

    if-lt v2, v3, :cond_5e

    .line 1068
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1052
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1056
    :sswitch_22
    const-string v2, "\\a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 1057
    :sswitch_28
    const-string v2, "\\b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 1058
    :sswitch_2e
    const-string v2, "\\f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 1059
    :sswitch_34
    const-string v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 1060
    :sswitch_3a
    const-string v2, "\\r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 1061
    :sswitch_40
    const-string v2, "\\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 1062
    :sswitch_46
    const-string v2, "\\v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 1063
    :sswitch_4c
    const-string v2, "\\\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 1064
    :sswitch_52
    const-string v2, "\\\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 1065
    :sswitch_58
    const-string v2, "\\\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 1070
    :cond_5e
    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1071
    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1072
    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1073
    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 1078
    :cond_80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1054
    nop

    :sswitch_data_86
    .sparse-switch
        0x7 -> :sswitch_22
        0x8 -> :sswitch_28
        0x9 -> :sswitch_40
        0xa -> :sswitch_34
        0xb -> :sswitch_46
        0xc -> :sswitch_2e
        0xd -> :sswitch_3a
        0x22 -> :sswitch_58
        0x27 -> :sswitch_52
        0x5c -> :sswitch_4c
    .end sparse-switch
.end method

.method private static a(Lcom/google/protobuf/q;)Ljava/net/DatagramPacket;
    .registers 5

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/protobuf/q;->toByteArray()[B

    move-result-object v0

    .line 40
    new-instance v1, Lmobi/androidcloud/lib/wire/data/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lmobi/androidcloud/lib/wire/data/a;-><init>(I[B)V

    .line 43
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Lmobi/androidcloud/lib/wire/data/b;->kr()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Lmobi/androidcloud/lib/wire/data/b;->getTotalSize()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Ljava/net/DatagramPacket;-><init>([BII)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/net/DatagramSocket;
    .registers 3

    .prologue
    .line 43
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 55
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lmobi/androidcloud/lib/phone/a;
    .registers 3

    .prologue
    .line 47
    new-instance v0, Lmobi/androidcloud/lib/phone/a;

    invoke-direct {v0, p0, p1}, Lmobi/androidcloud/lib/phone/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lmobi/tikl/wire/control/a$G;)Lmobi/androidcloud/lib/phone/a;
    .registers 4

    .prologue
    .line 20
    new-instance v0, Lmobi/androidcloud/lib/phone/a;

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G;->vE()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmobi/androidcloud/lib/phone/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lmobi/tikl/wire/control/a$au;)Lmobi/androidcloud/lib/wire/control/L;
    .registers 8

    .prologue
    .line 473
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au;->Hw()Ljava/util/List;

    move-result-object v2

    .line 475
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 477
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 478
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$az;

    .line 479
    new-instance v4, Lmobi/androidcloud/lib/wire/control/L$a;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$az;->KG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$az;->KI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$az;->KK()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v6, v0}, Lmobi/androidcloud/lib/wire/control/L$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 483
    :cond_33
    new-instance v0, Lmobi/androidcloud/lib/wire/control/L;

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au;->Hy()Z

    move-result v1

    invoke-direct {v0, v3, v1}, Lmobi/androidcloud/lib/wire/control/L;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method public static a(Lmobi/tikl/wire/control/a$d;)Lmobi/androidcloud/lib/wire/control/a;
    .registers 9

    .prologue
    .line 597
    new-instance v1, Lmobi/androidcloud/lib/wire/control/a;

    invoke-direct {v1}, Lmobi/androidcloud/lib/wire/control/a;-><init>()V

    .line 598
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->getMsgId()I

    move-result v0

    iput v0, v1, Lmobi/androidcloud/lib/wire/control/a;->msgId:I

    .line 599
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/d;->a(Lmobi/tikl/wire/control/a$G;)Lmobi/androidcloud/lib/phone/a;

    move-result-object v0

    iput-object v0, v1, Lmobi/androidcloud/lib/wire/control/a;->kl:Lmobi/androidcloud/lib/phone/a;

    .line 601
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->og()I

    move-result v2

    .line 602
    new-array v0, v2, [Lmobi/androidcloud/lib/phone/a;

    iput-object v0, v1, Lmobi/androidcloud/lib/wire/control/a;->km:[Lmobi/androidcloud/lib/phone/a;

    .line 603
    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v2, :cond_2f

    .line 604
    iget-object v3, v1, Lmobi/androidcloud/lib/wire/control/a;->km:[Lmobi/androidcloud/lib/phone/a;

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d;->at(I)Lmobi/tikl/wire/control/a$G;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/d;->a(Lmobi/tikl/wire/control/a$G;)Lmobi/androidcloud/lib/phone/a;

    move-result-object v4

    aput-object v4, v3, v0

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 607
    :cond_2f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmobi/androidcloud/lib/wire/control/a;->message:Ljava/lang/String;

    .line 610
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oi()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 611
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->jr()I

    move-result v0

    iput v0, v1, Lmobi/androidcloud/lib/wire/control/a;->kn:I

    .line 612
    :cond_41
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oj()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 613
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmobi/androidcloud/lib/wire/control/a;->url:Ljava/lang/String;

    .line 614
    :cond_4d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->ok()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 615
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->js()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmobi/androidcloud/lib/wire/control/a;->ko:Ljava/lang/String;

    .line 616
    :cond_59
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->ov()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 617
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->ow()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmobi/androidcloud/lib/wire/control/a;->kp:Ljava/lang/String;

    .line 618
    :cond_65
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->ox()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 619
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmobi/androidcloud/lib/wire/control/a;->kq:Ljava/lang/String;

    .line 620
    :cond_71
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->ol()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 621
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->getLength()I

    move-result v0

    iput v0, v1, Lmobi/androidcloud/lib/wire/control/a;->length:I

    .line 623
    :cond_7d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->om()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 624
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->on()I

    move-result v0

    iput v0, v1, Lmobi/androidcloud/lib/wire/control/a;->ks:I

    .line 625
    :cond_89
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oo()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 626
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->op()I

    move-result v0

    iput v0, v1, Lmobi/androidcloud/lib/wire/control/a;->kt:I

    .line 627
    :cond_95
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oq()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 628
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->or()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmobi/androidcloud/lib/wire/control/a;->ku:Ljava/lang/String;

    .line 629
    :cond_a1
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->os()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 630
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->jt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmobi/androidcloud/lib/wire/control/a;->kv:Ljava/lang/String;

    .line 631
    :cond_ad
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->ot()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 632
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->ou()Lmobi/tikl/wire/control/a$P;

    move-result-object v0

    .line 633
    new-instance v2, Lmobi/androidcloud/lib/wire/control/a$a;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$P;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$P;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lmobi/androidcloud/lib/wire/control/a$a;-><init>(DD)V

    iput-object v2, v1, Lmobi/androidcloud/lib/wire/control/a;->kw:Lmobi/androidcloud/lib/wire/control/a$a;

    .line 636
    :cond_c6
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oz()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 637
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmobi/androidcloud/lib/wire/control/a;->kr:Ljava/lang/String;

    .line 638
    :cond_d2
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oB()Z

    move-result v0

    if-eqz v0, :cond_de

    .line 639
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oC()I

    move-result v0

    iput v0, v1, Lmobi/androidcloud/lib/wire/control/a;->kx:I

    .line 641
    :cond_de
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oD()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 642
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oE()Z

    move-result v0

    iput-boolean v0, v1, Lmobi/androidcloud/lib/wire/control/a;->ky:Z

    .line 644
    :cond_ea
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oF()Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 645
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oG()Z

    move-result v0

    iput-boolean v0, v1, Lmobi/androidcloud/lib/wire/control/a;->kz:Z

    .line 646
    :cond_f6
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oH()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 647
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->jv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmobi/androidcloud/lib/wire/control/a;->kA:Ljava/lang/String;

    .line 648
    :cond_102
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oI()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 649
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oJ()I

    move-result v0

    iput v0, v1, Lmobi/androidcloud/lib/wire/control/a;->kB:I

    .line 651
    :cond_10e
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oK()Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 652
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d;->oL()Z

    move-result v0

    iput-boolean v0, v1, Lmobi/androidcloud/lib/wire/control/a;->kC:Z

    .line 654
    :cond_11a
    return-object v1
.end method

.method public static a(Lmobi/tikl/wire/control/a$i;)Lmobi/androidcloud/lib/wire/control/d;
    .registers 9

    .prologue
    .line 720
    new-instance v0, Lmobi/androidcloud/lib/wire/control/d;

    invoke-direct {v0}, Lmobi/androidcloud/lib/wire/control/d;-><init>()V

    .line 721
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->getMsgId()I

    move-result v1

    iput v1, v0, Lmobi/androidcloud/lib/wire/control/d;->msgId:I

    .line 722
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/d;->a(Lmobi/tikl/wire/control/a$G;)Lmobi/androidcloud/lib/phone/a;

    move-result-object v1

    iput-object v1, v0, Lmobi/androidcloud/lib/wire/control/d;->kl:Lmobi/androidcloud/lib/phone/a;

    .line 723
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->pT()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/androidcloud/lib/wire/control/d;->fZ:Ljava/lang/String;

    .line 725
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/androidcloud/lib/wire/control/d;->message:Ljava/lang/String;

    .line 728
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oi()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 729
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->jr()I

    move-result v1

    iput v1, v0, Lmobi/androidcloud/lib/wire/control/d;->kn:I

    .line 730
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oj()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 731
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/androidcloud/lib/wire/control/d;->url:Ljava/lang/String;

    .line 732
    :cond_39
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ok()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 733
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->js()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/androidcloud/lib/wire/control/d;->ko:Ljava/lang/String;

    .line 734
    :cond_45
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ov()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 735
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ow()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/androidcloud/lib/wire/control/d;->kp:Ljava/lang/String;

    .line 736
    :cond_51
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ox()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 737
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oy()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/androidcloud/lib/wire/control/d;->kq:Ljava/lang/String;

    .line 739
    :cond_5d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ol()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 740
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->getLength()I

    move-result v1

    iput v1, v0, Lmobi/androidcloud/lib/wire/control/d;->length:I

    .line 742
    :cond_69
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->om()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 743
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->on()I

    move-result v1

    iput v1, v0, Lmobi/androidcloud/lib/wire/control/d;->ks:I

    .line 744
    :cond_75
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oo()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 745
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->op()I

    move-result v1

    iput v1, v0, Lmobi/androidcloud/lib/wire/control/d;->kt:I

    .line 746
    :cond_81
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oq()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 747
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->or()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/androidcloud/lib/wire/control/d;->ku:Ljava/lang/String;

    .line 748
    :cond_8d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->os()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 749
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->jt()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/androidcloud/lib/wire/control/d;->kv:Ljava/lang/String;

    .line 750
    :cond_99
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ot()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 751
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ou()Lmobi/tikl/wire/control/a$P;

    move-result-object v1

    .line 752
    new-instance v2, Lmobi/androidcloud/lib/wire/control/a$a;

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$P;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$P;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lmobi/androidcloud/lib/wire/control/a$a;-><init>(DD)V

    iput-object v2, v0, Lmobi/androidcloud/lib/wire/control/d;->kw:Lmobi/androidcloud/lib/wire/control/a$a;

    .line 755
    :cond_b2
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oz()Z

    move-result v1

    if-eqz v1, :cond_be

    .line 756
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oA()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/androidcloud/lib/wire/control/d;->kr:Ljava/lang/String;

    .line 757
    :cond_be
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oB()Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 758
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oC()I

    move-result v1

    iput v1, v0, Lmobi/androidcloud/lib/wire/control/d;->kx:I

    .line 760
    :cond_ca
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oD()Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 761
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oE()Z

    move-result v1

    iput-boolean v1, v0, Lmobi/androidcloud/lib/wire/control/d;->ky:Z

    .line 763
    :cond_d6
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oF()Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 764
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oG()Z

    move-result v1

    iput-boolean v1, v0, Lmobi/androidcloud/lib/wire/control/d;->kz:Z

    .line 765
    :cond_e2
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oH()Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 766
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->jv()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/androidcloud/lib/wire/control/d;->kA:Ljava/lang/String;

    .line 768
    :cond_ee
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oI()Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 769
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oJ()I

    move-result v1

    iput v1, v0, Lmobi/androidcloud/lib/wire/control/d;->kB:I

    .line 771
    :cond_fa
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oK()Z

    move-result v1

    if-eqz v1, :cond_106

    .line 772
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oL()Z

    move-result v1

    iput-boolean v1, v0, Lmobi/androidcloud/lib/wire/control/d;->kC:Z

    .line 774
    :cond_106
    return-object v0
.end method

.method public static a(Lmobi/tikl/wire/control/a$k;)Lmobi/androidcloud/lib/wire/control/f;
    .registers 5

    .prologue
    .line 1282
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->getMsgId()I

    move-result v0

    .line 1283
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->pT()Ljava/lang/String;

    move-result-object v1

    .line 1284
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->qr()I

    move-result v2

    .line 1287
    new-instance v3, Lmobi/androidcloud/lib/wire/control/f;

    invoke-direct {v3, v0, v1, v2}, Lmobi/androidcloud/lib/wire/control/f;-><init>(ILjava/lang/String;I)V

    .line 1290
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->qs()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1291
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/d;->a(Lmobi/tikl/wire/control/a$x;)Lmobi/androidcloud/lib/wire/control/q;

    move-result-object v0

    iput-object v0, v3, Lmobi/androidcloud/lib/wire/control/f;->kH:Lmobi/androidcloud/lib/wire/control/q;

    .line 1295
    :cond_21
    return-object v3
.end method

.method public static a(Lmobi/tikl/wire/control/a$p;)Lmobi/androidcloud/lib/wire/control/k;
    .registers 5

    .prologue
    .line 1394
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->getMsgId()I

    move-result v0

    .line 1395
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->pT()Ljava/lang/String;

    move-result-object v1

    .line 1396
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->qr()I

    move-result v2

    .line 1398
    new-instance v3, Lmobi/androidcloud/lib/wire/control/k;

    invoke-direct {v3, v0, v1, v2}, Lmobi/androidcloud/lib/wire/control/k;-><init>(ILjava/lang/String;I)V

    .line 1401
    return-object v3
.end method

.method public static a(Lmobi/tikl/wire/control/a$x;)Lmobi/androidcloud/lib/wire/control/q;
    .registers 7

    .prologue
    .line 1492
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->pT()Ljava/lang/String;

    move-result-object v0

    .line 1495
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->tz()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/d;->a(Ljava/util/List;)[Lmobi/androidcloud/lib/phone/a;

    move-result-object v1

    .line 1497
    new-instance v2, Lmobi/androidcloud/lib/wire/control/q;

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->tB()J

    move-result-wide v4

    invoke-direct {v2, v0, v1, v4, v5}, Lmobi/androidcloud/lib/wire/control/q;-><init>(Ljava/lang/String;[Lmobi/androidcloud/lib/phone/a;J)V

    .line 1499
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->hasName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1500
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lmobi/androidcloud/lib/wire/control/q;->name:Ljava/lang/String;

    .line 1502
    :cond_21
    return-object v2
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/t;)Lmobi/tikl/wire/control/a$A;
    .registers 3

    .prologue
    .line 585
    invoke-static {}, Lmobi/tikl/wire/control/a$A;->ul()Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    .line 588
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/t;->kl:Lmobi/androidcloud/lib/phone/a;

    invoke-static {v1}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$A$a;->F(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$A$a;

    .line 590
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$A$a;->aG(Ljava/lang/String;)Lmobi/tikl/wire/control/a$A$a;

    .line 592
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$A$a;->ur()Lmobi/tikl/wire/control/a$A;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/u;)Lmobi/tikl/wire/control/a$B;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1536
    invoke-static {}, Lmobi/tikl/wire/control/a$B;->uw()Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    .line 1538
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$B$a;->aH(Ljava/lang/String;)Lmobi/tikl/wire/control/a$B$a;

    .line 1539
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$B$a;->aI(Ljava/lang/String;)Lmobi/tikl/wire/control/a$B$a;

    .line 1541
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$B$a;->uC()Lmobi/tikl/wire/control/a$B;

    move-result-object v0

    .line 1543
    return-object v0
.end method

.method public static a(Lmobi/androidcloud/lib/wire/control/v;)Lmobi/tikl/wire/control/a$C;
    .registers 3

    .prologue
    .line 1631
    invoke-static {}, Lmobi/tikl/wire/control/a$C;->uH()Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    .line 1633
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$C$a;->aJ(Ljava/lang/String;)Lmobi/tikl/wire/control/a$C$a;

    .line 1635
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$C$a;->aZ(I)Lmobi/tikl/wire/control/a$C$a;

    .line 1637
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$C$a;->uN()Lmobi/tikl/wire/control/a$C;

    move-result-object v0

    .line 1644
    return-object v0
.end method

.method public static a(Lmobi/androidcloud/lib/wire/control/w;)Lmobi/tikl/wire/control/a$D;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1596
    invoke-static {}, Lmobi/tikl/wire/control/a$D;->uS()Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    .line 1598
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$D$a;->aK(Ljava/lang/String;)Lmobi/tikl/wire/control/a$D$a;

    .line 1601
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$D$a;->aL(Ljava/lang/String;)Lmobi/tikl/wire/control/a$D$a;

    .line 1609
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$D$a;->uY()Lmobi/tikl/wire/control/a$D;

    move-result-object v0

    .line 1612
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/x;)Lmobi/tikl/wire/control/a$E;
    .registers 3

    .prologue
    .line 1191
    invoke-static {}, Lmobi/tikl/wire/control/a$E;->vd()Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    .line 1193
    invoke-virtual {p0}, Lmobi/androidcloud/lib/wire/control/x;->jQ()I

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$E$a;->ba(I)Lmobi/tikl/wire/control/a$E$a;

    .line 1195
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$E$a;->vj()Lmobi/tikl/wire/control/a$E;

    move-result-object v0

    .line 1196
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/y;)Lmobi/tikl/wire/control/a$F;
    .registers 3

    .prologue
    .line 446
    invoke-static {}, Lmobi/tikl/wire/control/a$F;->vr()Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    .line 447
    invoke-virtual {p0}, Lmobi/androidcloud/lib/wire/control/y;->getEventType()I

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$F$a;->bb(I)Lmobi/tikl/wire/control/a$F$a;

    .line 448
    invoke-virtual {p0}, Lmobi/androidcloud/lib/wire/control/y;->kp()I

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$F$a;->bc(I)Lmobi/tikl/wire/control/a$F$a;

    .line 449
    invoke-virtual {p0}, Lmobi/androidcloud/lib/wire/control/y;->kq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$F$a;->aM(Ljava/lang/String;)Lmobi/tikl/wire/control/a$F$a;

    .line 451
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$F$a;->vx()Lmobi/tikl/wire/control/a$F;

    move-result-object v0

    .line 452
    return-object v0
.end method

.method public static a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;
    .registers 3

    .prologue
    .line 49
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lmobi/androidcloud/lib/phone/a;->iM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$G$a;->aN(Ljava/lang/String;)Lmobi/tikl/wire/control/a$G$a;

    .line 52
    iget-object v1, p0, Lmobi/androidcloud/lib/phone/a;->iN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$G$a;->aO(Ljava/lang/String;)Lmobi/tikl/wire/control/a$G$a;

    .line 53
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G$a;->vL()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/z;)Lmobi/tikl/wire/control/a$K;
    .registers 3

    .prologue
    .line 1175
    invoke-static {}, Lmobi/tikl/wire/control/a$K;->wI()Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    .line 1177
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/z;->kP:I

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$K$a;->bh(I)Lmobi/tikl/wire/control/a$K$a;

    .line 1178
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/z;->kQ:Lmobi/androidcloud/lib/phone/a;

    invoke-static {v1}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$K$a;->L(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$K$a;

    .line 1179
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/z;->kR:Lmobi/androidcloud/lib/phone/a;

    invoke-static {v1}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$K$a;->N(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$K$a;

    .line 1181
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$K$a;->wO()Lmobi/tikl/wire/control/a$K;

    move-result-object v0

    .line 1182
    return-object v0
.end method

.method public static a(Lmobi/androidcloud/lib/wire/control/A;)Lmobi/tikl/wire/control/a$L;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1160
    invoke-static {}, Lmobi/tikl/wire/control/a$L;->wV()Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    .line 1162
    invoke-virtual {v0, v3}, Lmobi/tikl/wire/control/a$L$a;->bi(I)Lmobi/tikl/wire/control/a$L$a;

    .line 1163
    invoke-static {v2}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$L$a;->P(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$L$a;

    .line 1164
    invoke-virtual {v0, v2}, Lmobi/tikl/wire/control/a$L$a;->aS(Ljava/lang/String;)Lmobi/tikl/wire/control/a$L$a;

    .line 1165
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/A;->kI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$L$a;->aT(Ljava/lang/String;)Lmobi/tikl/wire/control/a$L$a;

    .line 1166
    invoke-virtual {v0, v2}, Lmobi/tikl/wire/control/a$L$a;->aU(Ljava/lang/String;)Lmobi/tikl/wire/control/a$L$a;

    .line 1167
    invoke-virtual {v0, v3}, Lmobi/tikl/wire/control/a$L$a;->bj(I)Lmobi/tikl/wire/control/a$L$a;

    .line 1169
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$L$a;->xb()Lmobi/tikl/wire/control/a$L;

    move-result-object v0

    .line 1170
    return-object v0
.end method

.method public static a(Lmobi/androidcloud/lib/wire/control/B;)Lmobi/tikl/wire/control/a$M;
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1097
    invoke-static {}, Lmobi/tikl/wire/control/a$M;->xh()Lmobi/tikl/wire/control/a$M$a;

    move-result-object v2

    .line 1099
    invoke-virtual {v2, v1}, Lmobi/tikl/wire/control/a$M$a;->bl(I)Lmobi/tikl/wire/control/a$M$a;

    .line 1100
    invoke-static {v5}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmobi/tikl/wire/control/a$M$a;->R(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$M$a;

    .line 1101
    array-length v3, v5

    move v0, v1

    :goto_12
    if-ge v0, v3, :cond_1e

    .line 1102
    invoke-static {v5}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmobi/tikl/wire/control/a$M$a;->T(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$M$a;

    .line 1101
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1104
    :cond_1e
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/B;->kI:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lmobi/tikl/wire/control/a$M$a;->aV(Ljava/lang/String;)Lmobi/tikl/wire/control/a$M$a;

    .line 1105
    invoke-virtual {v2, v5}, Lmobi/tikl/wire/control/a$M$a;->aW(Ljava/lang/String;)Lmobi/tikl/wire/control/a$M$a;

    .line 1106
    invoke-virtual {v2, v1}, Lmobi/tikl/wire/control/a$M$a;->bm(I)Lmobi/tikl/wire/control/a$M$a;

    .line 1108
    invoke-virtual {v2}, Lmobi/tikl/wire/control/a$M$a;->xn()Lmobi/tikl/wire/control/a$M;

    move-result-object v0

    .line 1109
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/C;)Lmobi/tikl/wire/control/a$N;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 927
    invoke-static {}, Lmobi/tikl/wire/control/a$N;->xM()Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    .line 929
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$N$a;->bw(I)Lmobi/tikl/wire/control/a$N$a;

    .line 930
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$N$a;->bv(I)Lmobi/tikl/wire/control/a$N$a;

    .line 931
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$N$a;->bu(I)Lmobi/tikl/wire/control/a$N$a;

    .line 932
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$N$a;->bs(I)Lmobi/tikl/wire/control/a$N$a;

    .line 933
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$N$a;->bt(I)Lmobi/tikl/wire/control/a$N$a;

    .line 934
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$N$a;->A(Z)Lmobi/tikl/wire/control/a$N$a;

    .line 935
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$N$a;->bp(I)Lmobi/tikl/wire/control/a$N$a;

    .line 936
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$N$a;->br(I)Lmobi/tikl/wire/control/a$N$a;

    .line 937
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$N$a;->bq(I)Lmobi/tikl/wire/control/a$N$a;

    .line 938
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$N$a;->bo(I)Lmobi/tikl/wire/control/a$N$a;

    .line 940
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$N$a;->xS()Lmobi/tikl/wire/control/a$N;

    move-result-object v0

    .line 941
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/D;)Lmobi/tikl/wire/control/a$O;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 956
    invoke-static {}, Lmobi/tikl/wire/control/a$O;->yd()Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    .line 958
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$O$a;->B(Z)Lmobi/tikl/wire/control/a$O$a;

    .line 959
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$O$a;->bx(I)Lmobi/tikl/wire/control/a$O$a;

    .line 960
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$O$a;->C(Z)Lmobi/tikl/wire/control/a$O$a;

    .line 961
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$O$a;->D(Z)Lmobi/tikl/wire/control/a$O$a;

    .line 963
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$O$a;->yj()Lmobi/tikl/wire/control/a$O;

    move-result-object v0

    .line 964
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/E;)Lmobi/tikl/wire/control/a$S;
    .registers 3

    .prologue
    .line 419
    invoke-static {}, Lmobi/tikl/wire/control/a$S;->zh()Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/E;->kS:Lmobi/androidcloud/lib/phone/a;

    invoke-static {v1}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$S$a;->U(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$S$a;

    .line 422
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/E;->kT:Lmobi/androidcloud/lib/phone/a;

    invoke-static {v1}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$S$a;->W(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$S$a;

    .line 424
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$S$a;->zn()Lmobi/tikl/wire/control/a$S;

    move-result-object v0

    .line 425
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/F;)Lmobi/tikl/wire/control/a$T;
    .registers 3

    .prologue
    .line 430
    invoke-static {}, Lmobi/tikl/wire/control/a$T;->zu()Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/F;->kS:Lmobi/androidcloud/lib/phone/a;

    invoke-static {v1}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$T$a;->Y(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$T$a;

    .line 433
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/F;->kT:Lmobi/androidcloud/lib/phone/a;

    invoke-static {v1}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$T$a;->aa(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$T$a;

    .line 434
    iget-boolean v1, p0, Lmobi/androidcloud/lib/wire/control/F;->kU:Z

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$T$a;->F(Z)Lmobi/tikl/wire/control/a$T$a;

    .line 436
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$T$a;->zA()Lmobi/tikl/wire/control/a$T;

    move-result-object v0

    .line 437
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/G;)Lmobi/tikl/wire/control/a$ag;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 863
    invoke-static {}, Lmobi/tikl/wire/control/a$ag;->DI()Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    .line 865
    invoke-virtual {v0, v3}, Lmobi/tikl/wire/control/a$ag$a;->bD(I)Lmobi/tikl/wire/control/a$ag$a;

    .line 866
    invoke-static {v2}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ag$a;->aA(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ag$a;

    .line 868
    invoke-virtual {v0, v2}, Lmobi/tikl/wire/control/a$ag$a;->bi(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 869
    invoke-virtual {v0, v2}, Lmobi/tikl/wire/control/a$ag$a;->bj(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 871
    invoke-virtual {v0, v2}, Lmobi/tikl/wire/control/a$ag$a;->bk(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 872
    invoke-virtual {v0, v2}, Lmobi/tikl/wire/control/a$ag$a;->bl(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 873
    invoke-virtual {v0, v2}, Lmobi/tikl/wire/control/a$ag$a;->bm(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 874
    invoke-virtual {v0, v2}, Lmobi/tikl/wire/control/a$ag$a;->bn(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 875
    invoke-virtual {v0, v2}, Lmobi/tikl/wire/control/a$ag$a;->bp(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 876
    invoke-virtual {v0, v3}, Lmobi/tikl/wire/control/a$ag$a;->bF(I)Lmobi/tikl/wire/control/a$ag$a;

    .line 877
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ag$a;->DO()Lmobi/tikl/wire/control/a$ag;

    move-result-object v0

    .line 887
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/H;)Lmobi/tikl/wire/control/a$ah;
    .registers 3

    .prologue
    .line 900
    invoke-static {}, Lmobi/tikl/wire/control/a$ah;->DV()Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    .line 902
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ah$a;->I(Z)Lmobi/tikl/wire/control/a$ah$a;

    .line 903
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ah$a;->Eb()Lmobi/tikl/wire/control/a$ah;

    move-result-object v0

    .line 907
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/I;)Lmobi/tikl/wire/control/a$ao;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 988
    invoke-static {}, Lmobi/tikl/wire/control/a$ao;->FU()Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v1

    .line 990
    invoke-static {v3}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$ao$a;->aJ(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ao$a;

    .line 993
    array-length v2, v3

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_16

    .line 999
    invoke-virtual {v1, v3}, Lmobi/tikl/wire/control/a$ao$a;->bH(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ao$a;

    .line 998
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1002
    :cond_16
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$ao$a;->Ga()Lmobi/tikl/wire/control/a$ao;

    move-result-object v0

    .line 1003
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/J;)Lmobi/tikl/wire/control/a$ap;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1047
    invoke-static {}, Lmobi/tikl/wire/control/a$ap;->Gl()Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v1

    iget-boolean v2, p0, Lmobi/androidcloud/lib/wire/control/J;->kV:Z

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$ap$a;->L(Z)Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v1

    .line 1049
    iget-boolean v2, p0, Lmobi/androidcloud/lib/wire/control/J;->kV:Z

    if-eqz v2, :cond_1e

    .line 1050
    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$ap$a;->bH(I)Lmobi/tikl/wire/control/a$ap$a;

    .line 1051
    invoke-virtual {v1, v3}, Lmobi/tikl/wire/control/a$ap$a;->bI(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ap$a;

    .line 1052
    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$ap$a;->bI(I)Lmobi/tikl/wire/control/a$ap$a;

    .line 1058
    :cond_19
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$ap$a;->Gr()Lmobi/tikl/wire/control/a$ap;

    move-result-object v0

    .line 1059
    return-object v0

    .line 1054
    :cond_1e
    array-length v2, v3

    :goto_1f
    if-ge v0, v2, :cond_19

    .line 1055
    invoke-virtual {v1, v3}, Lmobi/tikl/wire/control/a$ap$a;->bJ(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ap$a;

    .line 1054
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/K;)Lmobi/tikl/wire/control/a$at;
    .registers 3

    .prologue
    .line 463
    invoke-static {}, Lmobi/tikl/wire/control/a$at;->Hl()Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    .line 465
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/K;->kW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$at$a;->bK(Ljava/lang/String;)Lmobi/tikl/wire/control/a$at$a;

    .line 466
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/K;->kX:I

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$at$a;->bK(I)Lmobi/tikl/wire/control/a$at$a;

    .line 468
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$at$a;->Hr()Lmobi/tikl/wire/control/a$at;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/L;)Lmobi/tikl/wire/control/a$au;
    .registers 6

    .prologue
    .line 488
    invoke-static {}, Lmobi/tikl/wire/control/a$au;->Hz()Lmobi/tikl/wire/control/a$au$a;

    move-result-object v1

    .line 490
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/L;->kY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/androidcloud/lib/wire/control/L$a;

    .line 491
    invoke-static {}, Lmobi/tikl/wire/control/a$az;->KL()Lmobi/tikl/wire/control/a$az$a;

    move-result-object v3

    iget-object v4, v0, Lmobi/androidcloud/lib/wire/control/L$a;->kZ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmobi/tikl/wire/control/a$az$a;->bN(Ljava/lang/String;)Lmobi/tikl/wire/control/a$az$a;

    move-result-object v3

    iget-object v4, v0, Lmobi/androidcloud/lib/wire/control/L$a;->la:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmobi/tikl/wire/control/a$az$a;->bO(Ljava/lang/String;)Lmobi/tikl/wire/control/a$az$a;

    move-result-object v3

    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/L$a;->lb:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lmobi/tikl/wire/control/a$az$a;->bP(Ljava/lang/String;)Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$az$a;->KR()Lmobi/tikl/wire/control/a$az;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$au$a;->a(Lmobi/tikl/wire/control/a$az;)Lmobi/tikl/wire/control/a$au$a;

    goto :goto_a

    .line 496
    :cond_34
    iget-boolean v0, p0, Lmobi/androidcloud/lib/wire/control/L;->hL:Z

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$au$a;->N(Z)Lmobi/tikl/wire/control/a$au$a;

    .line 498
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$au$a;->HF()Lmobi/tikl/wire/control/a$au;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lmobi/androidcloud/lib/wire/control/M;)Lmobi/tikl/wire/control/a$av;
    .registers 5

    .prologue
    .line 230
    invoke-static {}, Lmobi/tikl/wire/control/a$av;->JE()Lmobi/tikl/wire/control/a$av$a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$av$a;->bL(Ljava/lang/String;)Lmobi/tikl/wire/control/a$av$a;

    move-result-object v0

    iget-wide v2, p0, Lmobi/androidcloud/lib/wire/control/M;->timeStamp:J

    invoke-virtual {v0, v2, v3}, Lmobi/tikl/wire/control/a$av$a;->x(J)Lmobi/tikl/wire/control/a$av$a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$av$a;->bL(I)Lmobi/tikl/wire/control/a$av$a;

    move-result-object v0

    .line 234
    invoke-static {p0, v0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/M;Lmobi/tikl/wire/control/a$av$a;)V

    .line 236
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$av$a;->JK()Lmobi/tikl/wire/control/a$av;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/N;)Lmobi/tikl/wire/control/a$aw;
    .registers 6

    .prologue
    .line 560
    invoke-static {}, Lmobi/tikl/wire/control/a$aw;->JQ()Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v1

    .line 563
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/N;->kl:Lmobi/androidcloud/lib/phone/a;

    invoke-static {v0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$aw$a;->aO(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aw$a;

    .line 564
    iget-object v2, p0, Lmobi/androidcloud/lib/wire/control/N;->km:[Lmobi/androidcloud/lib/phone/a;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v3, :cond_1f

    aget-object v4, v2, v0

    .line 565
    invoke-static {v4}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmobi/tikl/wire/control/a$aw$a;->aQ(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aw$a;

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 568
    :cond_1f
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$aw$a;->JW()Lmobi/tikl/wire/control/a$aw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/a;)Lmobi/tikl/wire/control/a$d;
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 659
    invoke-static {}, Lmobi/tikl/wire/control/a$d;->oM()Lmobi/tikl/wire/control/a$d$a;

    move-result-object v1

    .line 662
    iget v0, p0, Lmobi/androidcloud/lib/wire/control/a;->msgId:I

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->au(I)Lmobi/tikl/wire/control/a$d$a;

    .line 663
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kl:Lmobi/androidcloud/lib/phone/a;

    invoke-static {v0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->d(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$d$a;

    .line 664
    iget-object v2, p0, Lmobi/androidcloud/lib/wire/control/a;->km:[Lmobi/androidcloud/lib/phone/a;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v3, :cond_25

    aget-object v4, v2, v0

    .line 665
    invoke-static {v4}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmobi/tikl/wire/control/a$d$a;->f(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$d$a;

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 667
    :cond_25
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->R(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 670
    iget v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kn:I

    if-eq v0, v5, :cond_33

    .line 671
    iget v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kn:I

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->av(I)Lmobi/tikl/wire/control/a$d$a;

    .line 672
    :cond_33
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->url:Ljava/lang/String;

    if-eqz v0, :cond_3c

    .line 673
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->S(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 674
    :cond_3c
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->ko:Ljava/lang/String;

    if-eqz v0, :cond_45

    .line 675
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->ko:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->T(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 676
    :cond_45
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kp:Ljava/lang/String;

    if-eqz v0, :cond_4e

    .line 677
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kp:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->W(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 678
    :cond_4e
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kq:Ljava/lang/String;

    if-eqz v0, :cond_57

    .line 679
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kq:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->X(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 681
    :cond_57
    iget v0, p0, Lmobi/androidcloud/lib/wire/control/a;->length:I

    if-eq v0, v5, :cond_60

    .line 682
    iget v0, p0, Lmobi/androidcloud/lib/wire/control/a;->length:I

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->aw(I)Lmobi/tikl/wire/control/a$d$a;

    .line 684
    :cond_60
    iget v0, p0, Lmobi/androidcloud/lib/wire/control/a;->ks:I

    if-eq v0, v5, :cond_69

    .line 685
    iget v0, p0, Lmobi/androidcloud/lib/wire/control/a;->ks:I

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->ax(I)Lmobi/tikl/wire/control/a$d$a;

    .line 686
    :cond_69
    iget v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kt:I

    if-eq v0, v5, :cond_72

    .line 687
    iget v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kt:I

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->ay(I)Lmobi/tikl/wire/control/a$d$a;

    .line 688
    :cond_72
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->ku:Ljava/lang/String;

    if-eqz v0, :cond_7b

    .line 689
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->ku:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->U(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 690
    :cond_7b
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kv:Ljava/lang/String;

    if-eqz v0, :cond_84

    .line 691
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kv:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->V(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 692
    :cond_84
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kw:Lmobi/androidcloud/lib/wire/control/a$a;

    if-eqz v0, :cond_a1

    .line 693
    invoke-static {}, Lmobi/tikl/wire/control/a$P;->yo()Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    .line 695
    iget-object v2, p0, Lmobi/androidcloud/lib/wire/control/a;->kw:Lmobi/androidcloud/lib/wire/control/a$a;

    iget-wide v2, v2, Lmobi/androidcloud/lib/wire/control/a$a;->kD:D

    invoke-virtual {v0, v2, v3}, Lmobi/tikl/wire/control/a$P$a;->e(D)Lmobi/tikl/wire/control/a$P$a;

    .line 696
    iget-object v2, p0, Lmobi/androidcloud/lib/wire/control/a;->kw:Lmobi/androidcloud/lib/wire/control/a$a;

    iget-wide v2, v2, Lmobi/androidcloud/lib/wire/control/a$a;->kE:D

    invoke-virtual {v0, v2, v3}, Lmobi/tikl/wire/control/a$P$a;->f(D)Lmobi/tikl/wire/control/a$P$a;

    .line 697
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$P$a;->yu()Lmobi/tikl/wire/control/a$P;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->a(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$d$a;

    .line 699
    :cond_a1
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kr:Ljava/lang/String;

    if-eqz v0, :cond_aa

    .line 700
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kr:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->Y(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 701
    :cond_aa
    iget v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kx:I

    if-eq v0, v5, :cond_b3

    .line 702
    iget v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kx:I

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->az(I)Lmobi/tikl/wire/control/a$d$a;

    .line 704
    :cond_b3
    iget-boolean v0, p0, Lmobi/androidcloud/lib/wire/control/a;->ky:Z

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->t(Z)Lmobi/tikl/wire/control/a$d$a;

    .line 706
    iget-boolean v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kz:Z

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->u(Z)Lmobi/tikl/wire/control/a$d$a;

    .line 707
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kA:Ljava/lang/String;

    if-eqz v0, :cond_c6

    .line 708
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->Z(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 710
    :cond_c6
    iget v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kB:I

    if-eq v0, v5, :cond_cf

    .line 711
    iget v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kB:I

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->aA(I)Lmobi/tikl/wire/control/a$d$a;

    .line 713
    :cond_cf
    iget-boolean v0, p0, Lmobi/androidcloud/lib/wire/control/a;->kC:Z

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$d$a;->v(Z)Lmobi/tikl/wire/control/a$d$a;

    .line 715
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$d$a;->oS()Lmobi/tikl/wire/control/a$d;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/b;)Lmobi/tikl/wire/control/a$e;
    .registers 3

    .prologue
    .line 513
    invoke-static {}, Lmobi/tikl/wire/control/a$e;->oZ()Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    .line 516
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/b;->msgId:I

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$e$a;->aB(I)Lmobi/tikl/wire/control/a$e$a;

    .line 517
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/b;->kl:Lmobi/androidcloud/lib/phone/a;

    invoke-static {v1}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$e$a;->g(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$e$a;

    .line 519
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/b;->kF:Lmobi/androidcloud/lib/phone/a;

    invoke-static {v1}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$e$a;->i(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$e$a;

    .line 521
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$e$a;->pf()Lmobi/tikl/wire/control/a$e;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/c;)Lmobi/tikl/wire/control/a$f;
    .registers 3

    .prologue
    .line 534
    invoke-static {}, Lmobi/tikl/wire/control/a$f;->pk()Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    .line 537
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/c;->msgId:I

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$f$a;->aC(I)Lmobi/tikl/wire/control/a$f$a;

    .line 539
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$f$a;->pq()Lmobi/tikl/wire/control/a$f;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/d;)Lmobi/tikl/wire/control/a$i;
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 779
    invoke-static {}, Lmobi/tikl/wire/control/a$i;->pU()Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    .line 782
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/d;->msgId:I

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->aE(I)Lmobi/tikl/wire/control/a$i$a;

    .line 783
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kl:Lmobi/androidcloud/lib/phone/a;

    invoke-static {v1}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->k(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$i$a;

    .line 785
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->fZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->ab(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 786
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->ac(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 789
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kn:I

    if-eq v1, v4, :cond_26

    .line 790
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kn:I

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->aF(I)Lmobi/tikl/wire/control/a$i$a;

    .line 791
    :cond_26
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->url:Ljava/lang/String;

    if-eqz v1, :cond_2f

    .line 792
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->ad(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 793
    :cond_2f
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->ko:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 794
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->ko:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->ae(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 795
    :cond_38
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kp:Ljava/lang/String;

    if-eqz v1, :cond_41

    .line 796
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->ah(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 797
    :cond_41
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kq:Ljava/lang/String;

    if-eqz v1, :cond_4a

    .line 798
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->ai(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 800
    :cond_4a
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/d;->length:I

    if-eq v1, v4, :cond_53

    .line 801
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/d;->length:I

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->aG(I)Lmobi/tikl/wire/control/a$i$a;

    .line 803
    :cond_53
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/d;->ks:I

    if-eq v1, v4, :cond_5c

    .line 804
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/d;->ks:I

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->aH(I)Lmobi/tikl/wire/control/a$i$a;

    .line 805
    :cond_5c
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kt:I

    if-eq v1, v4, :cond_65

    .line 806
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kt:I

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->aI(I)Lmobi/tikl/wire/control/a$i$a;

    .line 808
    :cond_65
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->ku:Ljava/lang/String;

    if-eqz v1, :cond_6e

    .line 809
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->ku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->af(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 810
    :cond_6e
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kv:Ljava/lang/String;

    if-eqz v1, :cond_77

    .line 811
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->ag(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 813
    :cond_77
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kw:Lmobi/androidcloud/lib/wire/control/a$a;

    if-eqz v1, :cond_94

    .line 814
    invoke-static {}, Lmobi/tikl/wire/control/a$P;->yo()Lmobi/tikl/wire/control/a$P$a;

    move-result-object v1

    .line 816
    iget-object v2, p0, Lmobi/androidcloud/lib/wire/control/d;->kw:Lmobi/androidcloud/lib/wire/control/a$a;

    iget-wide v2, v2, Lmobi/androidcloud/lib/wire/control/a$a;->kD:D

    invoke-virtual {v1, v2, v3}, Lmobi/tikl/wire/control/a$P$a;->e(D)Lmobi/tikl/wire/control/a$P$a;

    .line 817
    iget-object v2, p0, Lmobi/androidcloud/lib/wire/control/d;->kw:Lmobi/androidcloud/lib/wire/control/a$a;

    iget-wide v2, v2, Lmobi/androidcloud/lib/wire/control/a$a;->kE:D

    invoke-virtual {v1, v2, v3}, Lmobi/tikl/wire/control/a$P$a;->f(D)Lmobi/tikl/wire/control/a$P$a;

    .line 818
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$P$a;->yu()Lmobi/tikl/wire/control/a$P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->c(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$i$a;

    .line 820
    :cond_94
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kr:Ljava/lang/String;

    if-eqz v1, :cond_9d

    .line 821
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->aj(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 823
    :cond_9d
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kx:I

    if-eq v1, v4, :cond_a6

    .line 824
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kx:I

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->aJ(I)Lmobi/tikl/wire/control/a$i$a;

    .line 826
    :cond_a6
    iget-boolean v1, p0, Lmobi/androidcloud/lib/wire/control/d;->ky:Z

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->w(Z)Lmobi/tikl/wire/control/a$i$a;

    .line 828
    iget-boolean v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kz:Z

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->x(Z)Lmobi/tikl/wire/control/a$i$a;

    .line 829
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kA:Ljava/lang/String;

    if-eqz v1, :cond_b9

    .line 830
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->ak(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 832
    :cond_b9
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kB:I

    if-eq v1, v4, :cond_c2

    .line 833
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kB:I

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->aK(I)Lmobi/tikl/wire/control/a$i$a;

    .line 836
    :cond_c2
    iget-boolean v1, p0, Lmobi/androidcloud/lib/wire/control/d;->kC:Z

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->y(Z)Lmobi/tikl/wire/control/a$i$a;

    .line 838
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$i$a;->qa()Lmobi/tikl/wire/control/a$i;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/e;)Lmobi/tikl/wire/control/a$j;
    .registers 3

    .prologue
    .line 1329
    invoke-static {}, Lmobi/tikl/wire/control/a$j;->qf()Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    .line 1331
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$j$a;->aL(I)Lmobi/tikl/wire/control/a$j$a;

    .line 1332
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$j$a;->al(Ljava/lang/String;)Lmobi/tikl/wire/control/a$j$a;

    .line 1334
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$j$a;->ql()Lmobi/tikl/wire/control/a$j;

    move-result-object v0

    .line 1336
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/f;)Lmobi/tikl/wire/control/a$k;
    .registers 3

    .prologue
    .line 1300
    invoke-static {}, Lmobi/tikl/wire/control/a$k;->qu()Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    .line 1302
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/f;->msgId:I

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$k$a;->aM(I)Lmobi/tikl/wire/control/a$k$a;

    .line 1303
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/f;->fZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$k$a;->am(Ljava/lang/String;)Lmobi/tikl/wire/control/a$k$a;

    .line 1304
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/f;->kG:I

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$k$a;->aN(I)Lmobi/tikl/wire/control/a$k$a;

    .line 1306
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/f;->kH:Lmobi/androidcloud/lib/wire/control/q;

    if-eqz v1, :cond_20

    .line 1307
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/f;->kH:Lmobi/androidcloud/lib/wire/control/q;

    invoke-static {v1}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/q;)Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$k$a;->b(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$k$a;

    .line 1310
    :cond_20
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$k$a;->qA()Lmobi/tikl/wire/control/a$k;

    move-result-object v0

    .line 1312
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/g;)Lmobi/tikl/wire/control/a$l;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1219
    invoke-static {}, Lmobi/tikl/wire/control/a$l;->qG()Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    .line 1221
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$l$a;->aO(I)Lmobi/tikl/wire/control/a$l$a;

    .line 1222
    invoke-virtual {v0, v2}, Lmobi/tikl/wire/control/a$l$a;->an(Ljava/lang/String;)Lmobi/tikl/wire/control/a$l$a;

    .line 1224
    invoke-static {v2}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$l$a;->m(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$l$a;

    .line 1226
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$l$a;->qM()Lmobi/tikl/wire/control/a$l;

    move-result-object v0

    .line 1235
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/h;)Lmobi/tikl/wire/control/a$m;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1259
    invoke-static {}, Lmobi/tikl/wire/control/a$m;->qR()Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    .line 1261
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$m$a;->aP(I)Lmobi/tikl/wire/control/a$m$a;

    .line 1262
    invoke-virtual {v0, v2}, Lmobi/tikl/wire/control/a$m$a;->ap(Ljava/lang/String;)Lmobi/tikl/wire/control/a$m$a;

    .line 1264
    invoke-static {v2}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$m$a;->p(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$m$a;

    .line 1266
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$m$a;->qX()Lmobi/tikl/wire/control/a$m;

    move-result-object v0

    .line 1276
    return-object v0
.end method

.method public static a(Lmobi/androidcloud/lib/wire/control/i;)Lmobi/tikl/wire/control/a$n;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1129
    invoke-static {}, Lmobi/tikl/wire/control/a$n;->rl()Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    .line 1131
    invoke-virtual {v0, v3}, Lmobi/tikl/wire/control/a$n$a;->aQ(I)Lmobi/tikl/wire/control/a$n$a;

    .line 1132
    invoke-static {v2}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$n$a;->s(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$n$a;

    .line 1134
    invoke-virtual {v0, v2}, Lmobi/tikl/wire/control/a$n$a;->aq(Ljava/lang/String;)Lmobi/tikl/wire/control/a$n$a;

    .line 1135
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/i;->kI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$n$a;->ar(Ljava/lang/String;)Lmobi/tikl/wire/control/a$n$a;

    .line 1136
    invoke-virtual {v0, v2}, Lmobi/tikl/wire/control/a$n$a;->as(Ljava/lang/String;)Lmobi/tikl/wire/control/a$n$a;

    .line 1137
    invoke-virtual {v0, v3}, Lmobi/tikl/wire/control/a$n$a;->aR(I)Lmobi/tikl/wire/control/a$n$a;

    .line 1139
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$n$a;->rr()Lmobi/tikl/wire/control/a$n;

    move-result-object v0

    .line 1140
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/j;)Lmobi/tikl/wire/control/a$o;
    .registers 3

    .prologue
    .line 1430
    invoke-static {}, Lmobi/tikl/wire/control/a$o;->rw()Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    .line 1432
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$o$a;->aT(I)Lmobi/tikl/wire/control/a$o$a;

    .line 1433
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$o$a;->at(Ljava/lang/String;)Lmobi/tikl/wire/control/a$o$a;

    .line 1435
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$o$a;->rC()Lmobi/tikl/wire/control/a$o;

    move-result-object v0

    .line 1436
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/k;)Lmobi/tikl/wire/control/a$p;
    .registers 3

    .prologue
    .line 1406
    invoke-static {}, Lmobi/tikl/wire/control/a$p;->rH()Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    .line 1408
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/k;->msgId:I

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$p$a;->aU(I)Lmobi/tikl/wire/control/a$p$a;

    .line 1409
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/k;->fZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$p$a;->au(Ljava/lang/String;)Lmobi/tikl/wire/control/a$p$a;

    .line 1410
    iget v1, p0, Lmobi/androidcloud/lib/wire/control/k;->kG:I

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$p$a;->aV(I)Lmobi/tikl/wire/control/a$p$a;

    .line 1412
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$p$a;->rN()Lmobi/tikl/wire/control/a$p;

    move-result-object v0

    .line 1413
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/l;)Lmobi/tikl/wire/control/a$q;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1353
    invoke-static {}, Lmobi/tikl/wire/control/a$q;->rS()Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    .line 1355
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$q$a;->aW(I)Lmobi/tikl/wire/control/a$q$a;

    .line 1356
    invoke-virtual {v0, v2}, Lmobi/tikl/wire/control/a$q$a;->av(Ljava/lang/String;)Lmobi/tikl/wire/control/a$q$a;

    .line 1358
    invoke-static {v2}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$q$a;->u(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$q$a;

    .line 1360
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$q$a;->rY()Lmobi/tikl/wire/control/a$q;

    move-result-object v0

    .line 1361
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/m;)Lmobi/tikl/wire/control/a$r;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1379
    invoke-static {}, Lmobi/tikl/wire/control/a$r;->sd()Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    .line 1381
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$r$a;->aX(I)Lmobi/tikl/wire/control/a$r$a;

    .line 1382
    invoke-virtual {v0, v2}, Lmobi/tikl/wire/control/a$r$a;->aw(Ljava/lang/String;)Lmobi/tikl/wire/control/a$r$a;

    .line 1384
    invoke-static {v2}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$r$a;->w(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$r$a;

    .line 1385
    invoke-static {v2}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/q;)Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$r$a;->f(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$r$a;

    .line 1387
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$r$a;->sj()Lmobi/tikl/wire/control/a$r;

    move-result-object v0

    .line 1388
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/n;)Lmobi/tikl/wire/control/a$u;
    .registers 3

    .prologue
    .line 1021
    invoke-static {}, Lmobi/tikl/wire/control/a$u;->sQ()Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    .line 1023
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/n;->kJ:Lmobi/androidcloud/lib/phone/a;

    invoke-static {v1}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$u$a;->C(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$u$a;

    .line 1025
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/n;->fZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$u$a;->az(Ljava/lang/String;)Lmobi/tikl/wire/control/a$u$a;

    .line 1027
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$u$a;->sW()Lmobi/tikl/wire/control/a$u;

    move-result-object v0

    .line 1029
    return-object v0
.end method

.method public static a(Lmobi/androidcloud/lib/wire/control/o;)Lmobi/tikl/wire/control/a$v;
    .registers 3

    .prologue
    .line 1553
    invoke-static {}, Lmobi/tikl/wire/control/a$v;->tb()Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    .line 1555
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$v$a;->aA(Ljava/lang/String;)Lmobi/tikl/wire/control/a$v$a;

    .line 1558
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$v$a;->th()Lmobi/tikl/wire/control/a$v;

    move-result-object v0

    .line 1560
    return-object v0
.end method

.method public static a(Lmobi/androidcloud/lib/wire/control/p;)Lmobi/tikl/wire/control/a$w;
    .registers 3

    .prologue
    .line 1571
    invoke-static {}, Lmobi/tikl/wire/control/a$w;->to()Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    .line 1573
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$w$a;->aB(Ljava/lang/String;)Lmobi/tikl/wire/control/a$w$a;

    .line 1575
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$w$a;->z(Z)Lmobi/tikl/wire/control/a$w$a;

    .line 1578
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$w$a;->tu()Lmobi/tikl/wire/control/a$w;

    move-result-object v0

    .line 1581
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/q;)Lmobi/tikl/wire/control/a$x;
    .registers 6

    .prologue
    .line 1507
    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tC()Lmobi/tikl/wire/control/a$x$a;

    move-result-object v1

    .line 1509
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/q;->fZ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$x$a;->aC(Ljava/lang/String;)Lmobi/tikl/wire/control/a$x$a;

    .line 1510
    iget-wide v2, p0, Lmobi/androidcloud/lib/wire/control/q;->kL:J

    invoke-virtual {v1, v2, v3}, Lmobi/tikl/wire/control/a$x$a;->w(J)Lmobi/tikl/wire/control/a$x$a;

    .line 1512
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/q;->kK:[Lmobi/androidcloud/lib/phone/a;

    if-eqz v0, :cond_24

    .line 1513
    iget-object v2, p0, Lmobi/androidcloud/lib/wire/control/q;->kK:[Lmobi/androidcloud/lib/phone/a;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v3, :cond_24

    aget-object v4, v2, v0

    .line 1514
    invoke-static {v4}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/phone/a;)Lmobi/tikl/wire/control/a$G;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmobi/tikl/wire/control/a$x$a;->E(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$x$a;

    .line 1513
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1517
    :cond_24
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/q;->name:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 1518
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/control/q;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmobi/tikl/wire/control/a$x$a;->aD(Ljava/lang/String;)Lmobi/tikl/wire/control/a$x$a;

    .line 1520
    :cond_2d
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$x$a;->tI()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    .line 1521
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/r;)Lmobi/tikl/wire/control/a$y;
    .registers 3

    .prologue
    .line 1451
    invoke-static {}, Lmobi/tikl/wire/control/a$y;->tN()Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    .line 1453
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$y$a;->aE(Ljava/lang/String;)Lmobi/tikl/wire/control/a$y$a;

    .line 1455
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$y$a;->tT()Lmobi/tikl/wire/control/a$y;

    move-result-object v0

    .line 1456
    return-object v0
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/s;)Lmobi/tikl/wire/control/a$z;
    .registers 3

    .prologue
    .line 1479
    invoke-static {}, Lmobi/tikl/wire/control/a$z;->ua()Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    .line 1481
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$z$a;->aF(Ljava/lang/String;)Lmobi/tikl/wire/control/a$z$a;

    .line 1482
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$z$a;->aY(I)Lmobi/tikl/wire/control/a$z$a;

    .line 1483
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$z$a;->ug()Lmobi/tikl/wire/control/a$z;

    move-result-object v0

    .line 1487
    return-object v0
.end method

.method private static a(Lcom/google/protobuf/l$f;Ljava/lang/Object;Lcom/google/protobuf/x;)V
    .registers 5

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gs()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 147
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 148
    invoke-static {p0, v1, p2}, Lcom/google/protobuf/d;->b(Lcom/google/protobuf/l$f;Ljava/lang/Object;Lcom/google/protobuf/x;)V

    goto :goto_c

    .line 151
    :cond_1a
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/d;->b(Lcom/google/protobuf/l$f;Ljava/lang/Object;Lcom/google/protobuf/x;)V

    .line 153
    :cond_1d
    return-void
.end method

.method private static a(Lcom/google/protobuf/t;Lcom/google/protobuf/x;)V
    .registers 5

    .prologue
    .line 114
    invoke-interface {p0}, Lcom/google/protobuf/t;->gG()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/l$f;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/l$f;Ljava/lang/Object;Lcom/google/protobuf/x;)V

    goto :goto_c

    .line 117
    :cond_26
    invoke-interface {p0}, Lcom/google/protobuf/t;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/z;Lcom/google/protobuf/x;)V

    .line 118
    return-void
.end method

.method public static a(Lcom/google/protobuf/t;Ljava/lang/Appendable;)V
    .registers 4

    .prologue
    .line 66
    new-instance v0, Lcom/google/protobuf/x;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/x;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/v;)V

    .line 67
    invoke-static {p0, v0}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/t;Lcom/google/protobuf/x;)V

    .line 68
    return-void
.end method

.method private static a(Lcom/google/protobuf/z;Lcom/google/protobuf/x;)V
    .registers 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/z;->hj()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/z$b;

    .line 256
    invoke-virtual {v1}, Lcom/google/protobuf/z$b;->hr()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 258
    const-string v2, ": "

    invoke-virtual {p1, v2}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 259
    invoke-static {v6, v7}, Lcom/google/protobuf/d;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 260
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    goto :goto_41

    .line 262
    :cond_70
    invoke-virtual {v1}, Lcom/google/protobuf/z$b;->hs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 263
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 264
    const-string v2, ": "

    invoke-virtual {p1, v2}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 265
    const-string v2, "0x%08x"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v8

    invoke-static {v10, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 266
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    goto :goto_78

    .line 268
    :cond_b1
    invoke-virtual {v1}, Lcom/google/protobuf/z$b;->ht()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 269
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 270
    const-string v2, ": "

    invoke-virtual {p1, v2}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 271
    const-string v2, "0x%016x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v10, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 272
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    goto :goto_b9

    .line 274
    :cond_f2
    invoke-virtual {v1}, Lcom/google/protobuf/z$b;->hu()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_fa
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_125

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/c;

    .line 275
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 276
    const-string v3, ": \""

    invoke-virtual {p1, v3}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 277
    invoke-static {v2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 278
    const-string v2, "\"\n"

    invoke-virtual {p1, v2}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    goto :goto_fa

    .line 280
    :cond_125
    invoke-virtual {v1}, Lcom/google/protobuf/z$b;->hv()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/z;

    .line 281
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 282
    const-string v2, " {\n"

    invoke-virtual {p1, v2}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {p1}, Lcom/google/protobuf/x;->indent()V

    .line 284
    invoke-static {v1, p1}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/z;Lcom/google/protobuf/x;)V

    .line 285
    invoke-virtual {p1}, Lcom/google/protobuf/x;->hf()V

    .line 286
    const-string v1, "}\n"

    invoke-virtual {p1, v1}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    goto :goto_12d

    .line 289
    :cond_15a
    return-void
.end method

.method public static a(Lcom/google/protobuf/z;Ljava/lang/Appendable;)V
    .registers 4

    .prologue
    .line 74
    new-instance v0, Lcom/google/protobuf/x;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/x;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/v;)V

    .line 75
    invoke-static {p0, v0}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/z;Lcom/google/protobuf/x;)V

    .line 76
    return-void
.end method

.method private static a(Lmobi/androidcloud/lib/wire/control/M;Lmobi/tikl/wire/control/a$av$a;)V
    .registers 5

    .prologue
    .line 241
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/a;

    if-eqz v0, :cond_e

    .line 242
    check-cast p0, Lmobi/androidcloud/lib/wire/control/a;

    .line 243
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/a;)Lmobi/tikl/wire/control/a$d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->g(Lmobi/tikl/wire/control/a$d;)Lmobi/tikl/wire/control/a$av$a;

    .line 397
    :goto_d
    return-void

    .line 245
    :cond_e
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/b;

    if-eqz v0, :cond_1c

    .line 246
    check-cast p0, Lmobi/androidcloud/lib/wire/control/b;

    .line 247
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/b;)Lmobi/tikl/wire/control/a$e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->g(Lmobi/tikl/wire/control/a$e;)Lmobi/tikl/wire/control/a$av$a;

    goto :goto_d

    .line 249
    :cond_1c
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/c;

    if-eqz v0, :cond_2a

    .line 250
    check-cast p0, Lmobi/androidcloud/lib/wire/control/c;

    .line 251
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/c;)Lmobi/tikl/wire/control/a$f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->e(Lmobi/tikl/wire/control/a$f;)Lmobi/tikl/wire/control/a$av$a;

    goto :goto_d

    .line 253
    :cond_2a
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/N;

    if-eqz v0, :cond_38

    .line 254
    check-cast p0, Lmobi/androidcloud/lib/wire/control/N;

    .line 255
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/N;)Lmobi/tikl/wire/control/a$aw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->a(Lmobi/tikl/wire/control/a$aw;)Lmobi/tikl/wire/control/a$av$a;

    goto :goto_d

    .line 257
    :cond_38
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/K;

    if-eqz v0, :cond_46

    .line 258
    check-cast p0, Lmobi/androidcloud/lib/wire/control/K;

    .line 259
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/K;)Lmobi/tikl/wire/control/a$at;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->c(Lmobi/tikl/wire/control/a$at;)Lmobi/tikl/wire/control/a$av$a;

    goto :goto_d

    .line 261
    :cond_46
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/L;

    if-eqz v0, :cond_54

    .line 262
    check-cast p0, Lmobi/androidcloud/lib/wire/control/L;

    .line 263
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/L;)Lmobi/tikl/wire/control/a$au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->e(Lmobi/tikl/wire/control/a$au;)Lmobi/tikl/wire/control/a$av$a;

    goto :goto_d

    .line 265
    :cond_54
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/C;

    if-eqz v0, :cond_62

    .line 266
    check-cast p0, Lmobi/androidcloud/lib/wire/control/C;

    .line 267
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/C;)Lmobi/tikl/wire/control/a$N;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->c(Lmobi/tikl/wire/control/a$N;)Lmobi/tikl/wire/control/a$av$a;

    goto :goto_d

    .line 269
    :cond_62
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/D;

    if-eqz v0, :cond_70

    .line 270
    check-cast p0, Lmobi/androidcloud/lib/wire/control/D;

    .line 271
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/D;)Lmobi/tikl/wire/control/a$O;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->d(Lmobi/tikl/wire/control/a$O;)Lmobi/tikl/wire/control/a$av$a;

    goto :goto_d

    .line 273
    :cond_70
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/I;

    if-eqz v0, :cond_7e

    .line 274
    check-cast p0, Lmobi/androidcloud/lib/wire/control/I;

    .line 275
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/I;)Lmobi/tikl/wire/control/a$ao;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->f(Lmobi/tikl/wire/control/a$ao;)Lmobi/tikl/wire/control/a$av$a;

    goto :goto_d

    .line 277
    :cond_7e
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/J;

    if-eqz v0, :cond_8c

    .line 278
    check-cast p0, Lmobi/androidcloud/lib/wire/control/J;

    .line 279
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/J;)Lmobi/tikl/wire/control/a$ap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->f(Lmobi/tikl/wire/control/a$ap;)Lmobi/tikl/wire/control/a$av$a;

    goto :goto_d

    .line 281
    :cond_8c
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/B;

    if-eqz v0, :cond_9b

    .line 282
    check-cast p0, Lmobi/androidcloud/lib/wire/control/B;

    .line 283
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/B;)Lmobi/tikl/wire/control/a$M;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->h(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 285
    :cond_9b
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/A;

    if-eqz v0, :cond_aa

    .line 286
    check-cast p0, Lmobi/androidcloud/lib/wire/control/A;

    .line 287
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/A;)Lmobi/tikl/wire/control/a$L;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->f(Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 289
    :cond_aa
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/z;

    if-eqz v0, :cond_b9

    .line 290
    check-cast p0, Lmobi/androidcloud/lib/wire/control/z;

    .line 291
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/z;)Lmobi/tikl/wire/control/a$K;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->e(Lmobi/tikl/wire/control/a$K;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 293
    :cond_b9
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/x;

    if-eqz v0, :cond_c8

    .line 294
    check-cast p0, Lmobi/androidcloud/lib/wire/control/x;

    .line 295
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/x;)Lmobi/tikl/wire/control/a$E;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->c(Lmobi/tikl/wire/control/a$E;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 297
    :cond_c8
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/G;

    if-eqz v0, :cond_d7

    .line 298
    check-cast p0, Lmobi/androidcloud/lib/wire/control/G;

    .line 299
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/G;)Lmobi/tikl/wire/control/a$ag;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->d(Lmobi/tikl/wire/control/a$ag;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 301
    :cond_d7
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/H;

    if-eqz v0, :cond_e6

    .line 302
    check-cast p0, Lmobi/androidcloud/lib/wire/control/H;

    .line 303
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/H;)Lmobi/tikl/wire/control/a$ah;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->d(Lmobi/tikl/wire/control/a$ah;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 305
    :cond_e6
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/y;

    if-eqz v0, :cond_f5

    .line 306
    check-cast p0, Lmobi/androidcloud/lib/wire/control/y;

    .line 307
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/y;)Lmobi/tikl/wire/control/a$F;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->c(Lmobi/tikl/wire/control/a$F;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 309
    :cond_f5
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/E;

    if-eqz v0, :cond_104

    .line 310
    check-cast p0, Lmobi/androidcloud/lib/wire/control/E;

    .line 311
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/E;)Lmobi/tikl/wire/control/a$S;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->e(Lmobi/tikl/wire/control/a$S;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 313
    :cond_104
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/F;

    if-eqz v0, :cond_113

    .line 314
    check-cast p0, Lmobi/androidcloud/lib/wire/control/F;

    .line 315
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/F;)Lmobi/tikl/wire/control/a$T;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->e(Lmobi/tikl/wire/control/a$T;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 317
    :cond_113
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/g;

    if-eqz v0, :cond_122

    .line 318
    check-cast p0, Lmobi/androidcloud/lib/wire/control/g;

    .line 319
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/g;)Lmobi/tikl/wire/control/a$l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->e(Lmobi/tikl/wire/control/a$l;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 321
    :cond_122
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/h;

    if-eqz v0, :cond_131

    .line 322
    check-cast p0, Lmobi/androidcloud/lib/wire/control/h;

    .line 323
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/h;)Lmobi/tikl/wire/control/a$m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->f(Lmobi/tikl/wire/control/a$m;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 325
    :cond_131
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/f;

    if-eqz v0, :cond_140

    .line 326
    check-cast p0, Lmobi/androidcloud/lib/wire/control/f;

    .line 327
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/f;)Lmobi/tikl/wire/control/a$k;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->e(Lmobi/tikl/wire/control/a$k;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 329
    :cond_140
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/e;

    if-eqz v0, :cond_14f

    .line 330
    check-cast p0, Lmobi/androidcloud/lib/wire/control/e;

    .line 331
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/e;)Lmobi/tikl/wire/control/a$j;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->c(Lmobi/tikl/wire/control/a$j;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 333
    :cond_14f
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/l;

    if-eqz v0, :cond_15e

    .line 334
    check-cast p0, Lmobi/androidcloud/lib/wire/control/l;

    .line 335
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/l;)Lmobi/tikl/wire/control/a$q;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->d(Lmobi/tikl/wire/control/a$q;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 337
    :cond_15e
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/m;

    if-eqz v0, :cond_16d

    .line 338
    check-cast p0, Lmobi/androidcloud/lib/wire/control/m;

    .line 339
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/m;)Lmobi/tikl/wire/control/a$r;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->e(Lmobi/tikl/wire/control/a$r;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 341
    :cond_16d
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/k;

    if-eqz v0, :cond_17c

    .line 342
    check-cast p0, Lmobi/androidcloud/lib/wire/control/k;

    .line 343
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/k;)Lmobi/tikl/wire/control/a$p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->d(Lmobi/tikl/wire/control/a$p;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 345
    :cond_17c
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/j;

    if-eqz v0, :cond_18b

    .line 346
    check-cast p0, Lmobi/androidcloud/lib/wire/control/j;

    .line 347
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/j;)Lmobi/tikl/wire/control/a$o;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->c(Lmobi/tikl/wire/control/a$o;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 349
    :cond_18b
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/r;

    if-eqz v0, :cond_19a

    .line 350
    check-cast p0, Lmobi/androidcloud/lib/wire/control/r;

    .line 351
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/r;)Lmobi/tikl/wire/control/a$y;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->c(Lmobi/tikl/wire/control/a$y;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 353
    :cond_19a
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/s;

    if-eqz v0, :cond_1a9

    .line 354
    check-cast p0, Lmobi/androidcloud/lib/wire/control/s;

    .line 355
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/s;)Lmobi/tikl/wire/control/a$z;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->d(Lmobi/tikl/wire/control/a$z;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 357
    :cond_1a9
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/q;

    if-eqz v0, :cond_1b8

    .line 358
    check-cast p0, Lmobi/androidcloud/lib/wire/control/q;

    .line 359
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/q;)Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->o(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 361
    :cond_1b8
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/u;

    if-eqz v0, :cond_1c7

    .line 362
    check-cast p0, Lmobi/androidcloud/lib/wire/control/u;

    .line 363
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/u;)Lmobi/tikl/wire/control/a$B;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->c(Lmobi/tikl/wire/control/a$B;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 365
    :cond_1c7
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/d;

    if-eqz v0, :cond_1d6

    .line 366
    check-cast p0, Lmobi/androidcloud/lib/wire/control/d;

    .line 367
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/d;)Lmobi/tikl/wire/control/a$i;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->f(Lmobi/tikl/wire/control/a$i;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 369
    :cond_1d6
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/i;

    if-eqz v0, :cond_1e5

    .line 370
    check-cast p0, Lmobi/androidcloud/lib/wire/control/i;

    .line 371
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/i;)Lmobi/tikl/wire/control/a$n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->g(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 373
    :cond_1e5
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/n;

    if-eqz v0, :cond_1f4

    .line 374
    check-cast p0, Lmobi/androidcloud/lib/wire/control/n;

    .line 375
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/n;)Lmobi/tikl/wire/control/a$u;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->d(Lmobi/tikl/wire/control/a$u;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 377
    :cond_1f4
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/t;

    if-eqz v0, :cond_203

    .line 378
    check-cast p0, Lmobi/androidcloud/lib/wire/control/t;

    .line 379
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/t;)Lmobi/tikl/wire/control/a$A;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->d(Lmobi/tikl/wire/control/a$A;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 381
    :cond_203
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/o;

    if-eqz v0, :cond_212

    .line 382
    check-cast p0, Lmobi/androidcloud/lib/wire/control/o;

    .line 383
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/o;)Lmobi/tikl/wire/control/a$v;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->c(Lmobi/tikl/wire/control/a$v;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 385
    :cond_212
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/p;

    if-eqz v0, :cond_221

    .line 386
    check-cast p0, Lmobi/androidcloud/lib/wire/control/p;

    .line 387
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/p;)Lmobi/tikl/wire/control/a$w;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->c(Lmobi/tikl/wire/control/a$w;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 389
    :cond_221
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/w;

    if-eqz v0, :cond_230

    .line 390
    check-cast p0, Lmobi/androidcloud/lib/wire/control/w;

    .line 391
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/w;)Lmobi/tikl/wire/control/a$D;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->d(Lmobi/tikl/wire/control/a$D;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 393
    :cond_230
    instance-of v0, p0, Lmobi/androidcloud/lib/wire/control/v;

    if-eqz v0, :cond_23f

    .line 394
    check-cast p0, Lmobi/androidcloud/lib/wire/control/v;

    .line 395
    invoke-static {p0}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/v;)Lmobi/tikl/wire/control/a$C;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av$a;->d(Lmobi/tikl/wire/control/a$C;)Lmobi/tikl/wire/control/a$av$a;

    goto/16 :goto_d

    .line 398
    :cond_23f
    new-instance v0, Lmobi/androidcloud/lib/net/transport/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Java message:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmobi/androidcloud/lib/wire/control/M;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobi/androidcloud/lib/net/transport/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(C)Z
    .registers 2

    .prologue
    .line 1187
    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v0, 0x37

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 13
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Lcom/google/protobuf/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/google/protobuf/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 19
    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private a(Z)Z
    .registers 6

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 665
    iget v0, p0, Lcom/google/protobuf/d;->e:I

    iget v3, p0, Lcom/google/protobuf/d;->bufferSize:I

    if-ge v0, v3, :cond_10

    .line 666
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_10
    iget v0, p0, Lcom/google/protobuf/d;->g:I

    iget v3, p0, Lcom/google/protobuf/d;->bufferSize:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/google/protobuf/d;->h:I

    if-ne v0, v3, :cond_22

    .line 672
    if-eqz p1, :cond_20

    .line 673
    invoke-static {}, Lcom/google/protobuf/s;->gX()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    :cond_20
    move v0, v2

    .line 702
    :goto_21
    return v0

    .line 679
    :cond_22
    iget v0, p0, Lcom/google/protobuf/d;->g:I

    iget v3, p0, Lcom/google/protobuf/d;->bufferSize:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/protobuf/d;->g:I

    .line 681
    iput v2, p0, Lcom/google/protobuf/d;->e:I

    .line 682
    iget-object v0, p0, Lcom/google/protobuf/d;->input:Ljava/io/InputStream;

    if-nez v0, :cond_57

    move v0, v1

    :goto_30
    iput v0, p0, Lcom/google/protobuf/d;->bufferSize:I

    .line 683
    iget v0, p0, Lcom/google/protobuf/d;->bufferSize:I

    if-eqz v0, :cond_3a

    iget v0, p0, Lcom/google/protobuf/d;->bufferSize:I

    if-ge v0, v1, :cond_60

    .line 684
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InputStream#read(byte[]) returned invalid result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/protobuf/d;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_57
    iget-object v0, p0, Lcom/google/protobuf/d;->input:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/protobuf/d;->buffer:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_30

    .line 688
    :cond_60
    iget v0, p0, Lcom/google/protobuf/d;->bufferSize:I

    if-ne v0, v1, :cond_6f

    .line 689
    iput v2, p0, Lcom/google/protobuf/d;->bufferSize:I

    .line 690
    if-eqz p1, :cond_6d

    .line 691
    invoke-static {}, Lcom/google/protobuf/s;->gX()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    :cond_6d
    move v0, v2

    .line 693
    goto :goto_21

    .line 696
    :cond_6f
    invoke-direct {p0}, Lcom/google/protobuf/d;->x()V

    .line 697
    iget v0, p0, Lcom/google/protobuf/d;->g:I

    iget v1, p0, Lcom/google/protobuf/d;->bufferSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/d;->d:I

    add-int/2addr v0, v1

    .line 699
    iget v1, p0, Lcom/google/protobuf/d;->l:I

    if-gt v0, v1, :cond_80

    if-gez v0, :cond_85

    .line 700
    :cond_80
    invoke-static {}, Lcom/google/protobuf/s;->he()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 702
    :cond_85
    const/4 v0, 0x1

    goto :goto_21
.end method

.method public static a(Ljava/util/List;)[Lmobi/androidcloud/lib/phone/a;
    .registers 4

    .prologue
    .line 37
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lmobi/androidcloud/lib/phone/a;

    .line 39
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 40
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    invoke-static {v0}, Lcom/google/protobuf/d;->a(Lmobi/tikl/wire/control/a$G;)Lmobi/androidcloud/lib/phone/a;

    move-result-object v0

    aput-object v0, v2, v1

    .line 39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 43
    :cond_1e
    return-object v2
.end method

.method public static a(Lmobi/tikl/wire/control/a$H;)[Lmobi/androidcloud/lib/phone/a;
    .registers 5

    .prologue
    .line 26
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H;->vR()I

    move-result v1

    .line 27
    new-array v2, v1, [Lmobi/androidcloud/lib/phone/a;

    .line 28
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_16

    .line 29
    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$H;->bd(I)Lmobi/tikl/wire/control/a$G;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/d;->a(Lmobi/tikl/wire/control/a$G;)Lmobi/androidcloud/lib/phone/a;

    move-result-object v3

    aput-object v3, v2, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 32
    :cond_16
    return-object v2
.end method

.method static b(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 1218
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/d;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static b(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 302
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_b

    .line 303
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_a
    return-object v0

    :cond_b
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static b(Lcom/google/protobuf/z;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 100
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-static {p0, v0}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/z;Ljava/lang/Appendable;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    return-object v0

    .line 103
    :catch_d
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Writing to a StringBuilder threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Z)Ljava/net/DatagramPacket;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 18
    invoke-static {}, Lmobi/tikl/wire/control/a$Q;->yE()Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$Q$a;->by(I)Lmobi/tikl/wire/control/a$Q$a;

    .line 23
    if-eqz p0, :cond_16

    .line 24
    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$Q$a;->bz(I)Lmobi/tikl/wire/control/a$Q$a;

    .line 28
    :goto_d
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$Q$a;->yK()Lmobi/tikl/wire/control/a$Q;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/q;)Ljava/net/DatagramPacket;

    move-result-object v0

    .line 32
    return-object v0

    .line 26
    :cond_16
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$Q$a;->bz(I)Lmobi/tikl/wire/control/a$Q$a;

    goto :goto_d
.end method

.method public static b(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 5

    .prologue
    .line 60
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Host "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 67
    const/16 v2, 0x2710

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 69
    return-object v1
.end method

.method private static b(Lcom/google/protobuf/l$f;Ljava/lang/Object;Lcom/google/protobuf/x;)V
    .registers 5

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 160
    const-string v0, "["

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gv()Lcom/google/protobuf/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$a;->aI()Lcom/google/protobuf/f$k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/f$k;->ei()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gq()Lcom/google/protobuf/l$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/l$f$b;->dK:Lcom/google/protobuf/l$f$b;

    if-ne v0, v1, :cond_6a

    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->isOptional()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gw()Lcom/google/protobuf/l$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gx()Lcom/google/protobuf/l$a;

    move-result-object v1

    if-ne v0, v1, :cond_6a

    .line 167
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gx()Lcom/google/protobuf/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$a;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 171
    :goto_3c
    const-string v0, "]"

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 181
    :goto_41
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    if-ne v0, v1, :cond_8e

    .line 182
    const-string v0, " {\n"

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {p2}, Lcom/google/protobuf/x;->indent()V

    .line 188
    :goto_51
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/d;->c(Lcom/google/protobuf/l$f;Ljava/lang/Object;Lcom/google/protobuf/x;)V

    .line 190
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    if-ne v0, v1, :cond_64

    .line 191
    invoke-virtual {p2}, Lcom/google/protobuf/x;->hf()V

    .line 192
    const-string v0, "}"

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 194
    :cond_64
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 195
    return-void

    .line 169
    :cond_6a
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    goto :goto_3c

    .line 173
    :cond_72
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gq()Lcom/google/protobuf/l$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/l$f$b;->dJ:Lcom/google/protobuf/l$f$b;

    if-ne v0, v1, :cond_86

    .line 175
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gx()Lcom/google/protobuf/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    goto :goto_41

    .line 177
    :cond_86
    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    goto :goto_41

    .line 185
    :cond_8e
    const-string v0, ": "

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    goto :goto_51
.end method

.method private static b(C)Z
    .registers 2

    .prologue
    .line 1192
    const/16 v0, 0x30

    if-gt v0, p0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-gt v0, p0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static c(C)I
    .registers 2

    .prologue
    .line 1203
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 1204
    add-int/lit8 v0, p0, -0x30

    .line 1208
    :goto_a
    return v0

    .line 1205
    :cond_b
    const/16 v0, 0x61

    if-gt v0, p0, :cond_18

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_18

    .line 1206
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 1208
    :cond_18
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a
.end method

.method public static c(I)I
    .registers 3

    .prologue
    .line 460
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method static c(Ljava/lang/String;)I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1229
    invoke-static {p0, v0, v0}, Lcom/google/protobuf/d;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static c(Lcom/google/protobuf/l$f;Ljava/lang/Object;Lcom/google/protobuf/x;)V
    .registers 5

    .prologue
    .line 201
    sget-object v0, Lcom/google/protobuf/v;->b:[I

    invoke-virtual {p0}, Lcom/google/protobuf/l$f;->gq()Lcom/google/protobuf/l$f$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6c

    .line 246
    :goto_f
    return-void

    .line 212
    :pswitch_10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 217
    :pswitch_18
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/d;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 222
    :pswitch_26
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/d;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 226
    :pswitch_34
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 227
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/protobuf/d;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 228
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 232
    :pswitch_48
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 233
    check-cast p1, Lcom/google/protobuf/c;

    invoke-static {p1}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    .line 234
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 238
    :pswitch_5c
    check-cast p1, Lcom/google/protobuf/l$e;

    invoke-virtual {p1}, Lcom/google/protobuf/l$e;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/x;->b(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 243
    :pswitch_66
    check-cast p1, Lcom/google/protobuf/t;

    invoke-static {p1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/t;Lcom/google/protobuf/x;)V

    goto :goto_f

    .line 201
    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_18
        :pswitch_18
        :pswitch_26
        :pswitch_26
        :pswitch_34
        :pswitch_48
        :pswitch_5c
        :pswitch_66
        :pswitch_66
    .end packed-switch
.end method

.method static d(Ljava/lang/String;)J
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1238
    invoke-static {p0, v0, v0}, Lcom/google/protobuf/d;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(Ljava/io/InputStream;)Lcom/google/protobuf/d;
    .registers 2

    .prologue
    .line 55
    new-instance v0, Lcom/google/protobuf/d;

    invoke-direct {v0, p0}, Lcom/google/protobuf/d;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static d([B)Lcom/google/protobuf/d;
    .registers 3

    .prologue
    .line 62
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/d;->d([BII)Lcom/google/protobuf/d;

    move-result-object v0

    return-object v0
.end method

.method public static d([BII)Lcom/google/protobuf/d;
    .registers 4

    .prologue
    .line 70
    new-instance v0, Lcom/google/protobuf/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/d;-><init>([BII)V

    return-object v0
.end method

.method static e(Ljava/lang/String;)J
    .registers 3

    .prologue
    .line 1249
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/d;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e(Lcom/google/protobuf/t;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 84
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-static {p0, v0}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/t;Ljava/lang/Appendable;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    return-object v0

    .line 87
    :catch_d
    move-exception v0

    .line 88
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Writing to a StringBuilder threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static escapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1173
    invoke-static {p0}, Lcom/google/protobuf/c;->a(Ljava/lang/String;)Lcom/google/protobuf/c;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 25
    invoke-static {}, Lcom/google/protobuf/d;->F()Ljava/lang/String;

    move-result-object v0

    .line 27
    if-nez v0, :cond_8

    .line 28
    const/4 v0, 0x0

    .line 31
    :goto_7
    return-object v0

    .line 30
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static g(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 83
    new-instance v2, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 84
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 85
    array-length v4, v3

    move v0, v1

    :goto_f
    if-ge v0, v4, :cond_28

    aget-object v5, v3, v0

    .line 86
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 87
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_25

    .line 88
    aget-object v6, v5, v1

    .line 91
    const/4 v7, 0x1

    aget-object v5, v5, v7

    .line 93
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 96
    :cond_28
    return-object v2
.end method

.method private static h(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 293
    if-ltz p0, :cond_7

    .line 294
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    :goto_6
    return-object v0

    :cond_7
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static i(I)V
    .registers 7

    .prologue
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 37
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    int-to-long v4, p0

    cmp-long v2, v2, v4

    if-gez v2, :cond_16

    .line 42
    const-wide/16 v2, 0x1f4

    :try_start_10
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_4

    .line 50
    :catch_14
    move-exception v2

    goto :goto_4

    .line 53
    :cond_16
    return-void
.end method

.method public static j(I)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 71
    sget v1, Lmobi/androidcloud/lib/net/ConnectivityReceiver;->hM:I

    .line 73
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    int-to-long v6, p0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1b

    .line 78
    const-wide/16 v4, 0x1f4

    :try_start_13
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_1d

    .line 105
    sget v4, Lmobi/androidcloud/lib/net/ConnectivityReceiver;->hM:I

    if-le v4, v1, :cond_7

    .line 111
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x1

    goto :goto_1a

    .line 86
    :catch_1d
    move-exception v1

    goto :goto_1a
.end method

.method private x()V
    .registers 3

    .prologue
    .line 606
    iget v0, p0, Lcom/google/protobuf/d;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/d;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/d;->bufferSize:I

    .line 607
    iget v0, p0, Lcom/google/protobuf/d;->g:I

    iget v1, p0, Lcom/google/protobuf/d;->bufferSize:I

    add-int/2addr v0, v1

    .line 608
    iget v1, p0, Lcom/google/protobuf/d;->h:I

    if-le v0, v1, :cond_1d

    .line 610
    iget v1, p0, Lcom/google/protobuf/d;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/d;->d:I

    .line 611
    iget v0, p0, Lcom/google/protobuf/d;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/d;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/d;->bufferSize:I

    .line 615
    :goto_1c
    return-void

    .line 613
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/d;->d:I

    goto :goto_1c
.end method


# virtual methods
.method public A()B
    .registers 4

    .prologue
    .line 713
    iget v0, p0, Lcom/google/protobuf/d;->e:I

    iget v1, p0, Lcom/google/protobuf/d;->bufferSize:I

    if-ne v0, v1, :cond_a

    .line 714
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/d;->a(Z)Z

    .line 716
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/d;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/d;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/d;->e:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 105
    iget v0, p0, Lcom/google/protobuf/d;->f:I

    if-eq v0, p1, :cond_9

    .line 106
    invoke-static {}, Lcom/google/protobuf/s;->hb()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 108
    :cond_9
    return-void
.end method

.method public a(ILcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V
    .registers 6

    .prologue
    .line 218
    iget v0, p0, Lcom/google/protobuf/d;->j:I

    iget v1, p0, Lcom/google/protobuf/d;->k:I

    if-lt v0, v1, :cond_b

    .line 219
    invoke-static {}, Lcom/google/protobuf/s;->hd()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 221
    :cond_b
    iget v0, p0, Lcom/google/protobuf/d;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/d;->j:I

    .line 222
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/u$a;->c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;

    .line 223
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/protobuf/A;->k(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d;->a(I)V

    .line 225
    iget v0, p0, Lcom/google/protobuf/d;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/d;->j:I

    .line 226
    return-void
.end method

.method public a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V
    .registers 6

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/protobuf/d;->t()I

    move-result v0

    .line 252
    iget v1, p0, Lcom/google/protobuf/d;->j:I

    iget v2, p0, Lcom/google/protobuf/d;->k:I

    if-lt v1, v2, :cond_f

    .line 253
    invoke-static {}, Lcom/google/protobuf/s;->hd()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 255
    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/protobuf/d;->d(I)I

    move-result v0

    .line 256
    iget v1, p0, Lcom/google/protobuf/d;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/d;->j:I

    .line 257
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/u$a;->c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;

    .line 258
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/d;->a(I)V

    .line 259
    iget v1, p0, Lcom/google/protobuf/d;->j:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/d;->j:I

    .line 260
    invoke-virtual {p0, v0}, Lcom/google/protobuf/d;->e(I)V

    .line 261
    return-void
.end method

.method public b(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 117
    invoke-static {p1}, Lcom/google/protobuf/A;->ac(I)I

    move-result v1

    packed-switch v1, :pswitch_data_34

    .line 139
    invoke-static {}, Lcom/google/protobuf/s;->hc()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 119
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/d;->i()I

    .line 137
    :goto_10
    return v0

    .line 122
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/protobuf/d;->w()J

    goto :goto_10

    .line 125
    :pswitch_15
    invoke-virtual {p0}, Lcom/google/protobuf/d;->t()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/d;->g(I)V

    goto :goto_10

    .line 128
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/protobuf/d;->f()V

    .line 129
    invoke-static {p1}, Lcom/google/protobuf/A;->ad(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/protobuf/A;->k(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/d;->a(I)V

    goto :goto_10

    .line 134
    :pswitch_2d
    const/4 v0, 0x0

    goto :goto_10

    .line 136
    :pswitch_2f
    invoke-virtual {p0}, Lcom/google/protobuf/d;->v()I

    goto :goto_10

    .line 117
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_1d
        :pswitch_2d
        :pswitch_2f
    .end packed-switch
.end method

.method public d(I)I
    .registers 4

    .prologue
    .line 590
    if-gez p1, :cond_7

    .line 591
    invoke-static {}, Lcom/google/protobuf/s;->gY()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 593
    :cond_7
    iget v0, p0, Lcom/google/protobuf/d;->g:I

    iget v1, p0, Lcom/google/protobuf/d;->e:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 594
    iget v1, p0, Lcom/google/protobuf/d;->h:I

    .line 595
    if-le v0, v1, :cond_16

    .line 596
    invoke-static {}, Lcom/google/protobuf/s;->gX()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 598
    :cond_16
    iput v0, p0, Lcom/google/protobuf/d;->h:I

    .line 600
    invoke-direct {p0}, Lcom/google/protobuf/d;->x()V

    .line 602
    return v1
.end method

.method public e()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/google/protobuf/d;->z()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 82
    iput v0, p0, Lcom/google/protobuf/d;->f:I

    .line 92
    :goto_9
    return v0

    .line 86
    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/d;->t()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/d;->f:I

    .line 87
    iget v0, p0, Lcom/google/protobuf/d;->f:I

    invoke-static {v0}, Lcom/google/protobuf/A;->ad(I)I

    move-result v0

    if-nez v0, :cond_1d

    .line 90
    invoke-static {}, Lcom/google/protobuf/s;->ha()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 92
    :cond_1d
    iget v0, p0, Lcom/google/protobuf/d;->f:I

    goto :goto_9
.end method

.method public e(I)V
    .registers 2

    .prologue
    .line 623
    iput p1, p0, Lcom/google/protobuf/d;->h:I

    .line 624
    invoke-direct {p0}, Lcom/google/protobuf/d;->x()V

    .line 625
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/d;->e()I

    move-result v0

    .line 150
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :cond_c
    return-void
.end method

.method public f(I)[B
    .registers 13

    .prologue
    const/16 v10, 0x1000

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 726
    if-gez p1, :cond_c

    .line 727
    invoke-static {}, Lcom/google/protobuf/s;->gY()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 730
    :cond_c
    iget v0, p0, Lcom/google/protobuf/d;->g:I

    iget v2, p0, Lcom/google/protobuf/d;->e:I

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    iget v2, p0, Lcom/google/protobuf/d;->h:I

    if-le v0, v2, :cond_26

    .line 732
    iget v0, p0, Lcom/google/protobuf/d;->h:I

    iget v1, p0, Lcom/google/protobuf/d;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/d;->e:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d;->g(I)V

    .line 734
    invoke-static {}, Lcom/google/protobuf/s;->gX()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 737
    :cond_26
    iget v0, p0, Lcom/google/protobuf/d;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/d;->e:I

    sub-int/2addr v0, v2

    if-gt p1, v0, :cond_3c

    .line 739
    new-array v0, p1, [B

    .line 740
    iget-object v2, p0, Lcom/google/protobuf/d;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/d;->e:I

    invoke-static {v2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    iget v1, p0, Lcom/google/protobuf/d;->e:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/d;->e:I

    .line 822
    :goto_3b
    return-object v0

    .line 743
    :cond_3c
    if-ge p1, v10, :cond_78

    .line 748
    new-array v2, p1, [B

    .line 749
    iget v0, p0, Lcom/google/protobuf/d;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/d;->e:I

    sub-int/2addr v0, v3

    .line 750
    iget-object v3, p0, Lcom/google/protobuf/d;->buffer:[B

    iget v4, p0, Lcom/google/protobuf/d;->e:I

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    iget v3, p0, Lcom/google/protobuf/d;->bufferSize:I

    iput v3, p0, Lcom/google/protobuf/d;->e:I

    .line 756
    invoke-direct {p0, v5}, Lcom/google/protobuf/d;->a(Z)Z

    .line 758
    :goto_53
    sub-int v3, p1, v0

    iget v4, p0, Lcom/google/protobuf/d;->bufferSize:I

    if-le v3, v4, :cond_6b

    .line 759
    iget-object v3, p0, Lcom/google/protobuf/d;->buffer:[B

    iget v4, p0, Lcom/google/protobuf/d;->bufferSize:I

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    iget v3, p0, Lcom/google/protobuf/d;->bufferSize:I

    add-int/2addr v0, v3

    .line 761
    iget v3, p0, Lcom/google/protobuf/d;->bufferSize:I

    iput v3, p0, Lcom/google/protobuf/d;->e:I

    .line 762
    invoke-direct {p0, v5}, Lcom/google/protobuf/d;->a(Z)Z

    goto :goto_53

    .line 765
    :cond_6b
    iget-object v3, p0, Lcom/google/protobuf/d;->buffer:[B

    sub-int v4, p1, v0

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 766
    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/protobuf/d;->e:I

    move-object v0, v2

    .line 768
    goto :goto_3b

    .line 780
    :cond_78
    iget v5, p0, Lcom/google/protobuf/d;->e:I

    .line 781
    iget v6, p0, Lcom/google/protobuf/d;->bufferSize:I

    .line 784
    iget v0, p0, Lcom/google/protobuf/d;->g:I

    iget v2, p0, Lcom/google/protobuf/d;->bufferSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/d;->g:I

    .line 785
    iput v1, p0, Lcom/google/protobuf/d;->e:I

    .line 786
    iput v1, p0, Lcom/google/protobuf/d;->bufferSize:I

    .line 789
    sub-int v0, v6, v5

    sub-int v0, p1, v0

    .line 790
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    .line 792
    :goto_91
    if-lez v4, :cond_c1

    .line 793
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v8, v0, [B

    move v0, v1

    .line 795
    :goto_9a
    array-length v2, v8

    if-ge v0, v2, :cond_b9

    .line 796
    iget-object v2, p0, Lcom/google/protobuf/d;->input:Ljava/io/InputStream;

    if-nez v2, :cond_a9

    move v2, v3

    .line 798
    :goto_a2
    if-ne v2, v3, :cond_b2

    .line 799
    invoke-static {}, Lcom/google/protobuf/s;->gX()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 796
    :cond_a9
    iget-object v2, p0, Lcom/google/protobuf/d;->input:Ljava/io/InputStream;

    array-length v9, v8

    sub-int/2addr v9, v0

    invoke-virtual {v2, v8, v0, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_a2

    .line 801
    :cond_b2
    iget v9, p0, Lcom/google/protobuf/d;->g:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/google/protobuf/d;->g:I

    .line 802
    add-int/2addr v0, v2

    .line 803
    goto :goto_9a

    .line 804
    :cond_b9
    array-length v0, v8

    sub-int v0, v4, v0

    .line 805
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v0

    .line 806
    goto :goto_91

    .line 809
    :cond_c1
    new-array v3, p1, [B

    .line 812
    sub-int v0, v6, v5

    .line 813
    iget-object v2, p0, Lcom/google/protobuf/d;->buffer:[B

    invoke-static {v2, v5, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 816
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 817
    array-length v5, v0

    invoke-static {v0, v1, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 818
    array-length v0, v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_cf

    :cond_e3
    move-object v0, v3

    .line 822
    goto/16 :goto_3b
.end method

.method public g()J
    .registers 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/protobuf/d;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public g(I)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 833
    if-gez p1, :cond_8

    .line 834
    invoke-static {}, Lcom/google/protobuf/s;->gY()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 837
    :cond_8
    iget v0, p0, Lcom/google/protobuf/d;->g:I

    iget v1, p0, Lcom/google/protobuf/d;->e:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/d;->h:I

    if-le v0, v1, :cond_22

    .line 839
    iget v0, p0, Lcom/google/protobuf/d;->h:I

    iget v1, p0, Lcom/google/protobuf/d;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/d;->e:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d;->g(I)V

    .line 841
    invoke-static {}, Lcom/google/protobuf/s;->gX()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 844
    :cond_22
    iget v0, p0, Lcom/google/protobuf/d;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/d;->e:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2f

    .line 846
    iget v0, p0, Lcom/google/protobuf/d;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/d;->e:I

    .line 864
    :cond_2e
    return-void

    .line 849
    :cond_2f
    iget v0, p0, Lcom/google/protobuf/d;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/d;->e:I

    sub-int/2addr v0, v1

    .line 850
    iget v1, p0, Lcom/google/protobuf/d;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/d;->g:I

    .line 851
    iput v2, p0, Lcom/google/protobuf/d;->e:I

    .line 852
    iput v2, p0, Lcom/google/protobuf/d;->bufferSize:I

    move v1, v0

    .line 855
    :goto_3e
    if-ge v1, p1, :cond_2e

    .line 856
    iget-object v0, p0, Lcom/google/protobuf/d;->input:Ljava/io/InputStream;

    if-nez v0, :cond_4c

    const/4 v0, -0x1

    .line 857
    :goto_45
    if-gtz v0, :cond_57

    .line 858
    invoke-static {}, Lcom/google/protobuf/s;->gX()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 856
    :cond_4c
    iget-object v0, p0, Lcom/google/protobuf/d;->input:Ljava/io/InputStream;

    sub-int v2, p1, v1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    long-to-int v0, v2

    goto :goto_45

    .line 860
    :cond_57
    add-int/2addr v1, v0

    .line 861
    iget v2, p0, Lcom/google/protobuf/d;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/d;->g:I

    goto :goto_3e
.end method

.method public h()J
    .registers 3

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/protobuf/d;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/google/protobuf/d;->t()I

    move-result v0

    return v0
.end method

.method public j()J
    .registers 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/protobuf/d;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public k()I
    .registers 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/protobuf/d;->v()I

    move-result v0

    return v0
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/protobuf/d;->t()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public m()Lcom/google/protobuf/c;
    .registers 4

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/protobuf/d;->t()I

    move-result v1

    .line 266
    iget v0, p0, Lcom/google/protobuf/d;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/d;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_1b

    if-lez v1, :cond_1b

    .line 269
    iget-object v0, p0, Lcom/google/protobuf/d;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/d;->e:I

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/c;->c([BII)Lcom/google/protobuf/c;

    move-result-object v0

    .line 270
    iget v2, p0, Lcom/google/protobuf/d;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/d;->e:I

    .line 274
    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {p0, v1}, Lcom/google/protobuf/d;->f(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/c;->c([B)Lcom/google/protobuf/c;

    move-result-object v0

    goto :goto_1a
.end method

.method public n()I
    .registers 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/google/protobuf/d;->t()I

    move-result v0

    return v0
.end method

.method public o()I
    .registers 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/protobuf/d;->t()I

    move-result v0

    return v0
.end method

.method public p()I
    .registers 2

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/google/protobuf/d;->v()I

    move-result v0

    return v0
.end method

.method public q()J
    .registers 3

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/protobuf/d;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public r()I
    .registers 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/protobuf/d;->t()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/d;->c(I)I

    move-result v0

    return v0
.end method

.method public readDouble()D
    .registers 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/protobuf/d;->w()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/protobuf/d;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/google/protobuf/d;->t()I

    move-result v1

    .line 201
    iget v0, p0, Lcom/google/protobuf/d;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/d;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_1e

    if-lez v1, :cond_1e

    .line 204
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/d;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/d;->e:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 205
    iget v2, p0, Lcom/google/protobuf/d;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/d;->e:I

    .line 209
    :goto_1d
    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/protobuf/d;->f(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1d
.end method

.method public s()J
    .registers 3

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/google/protobuf/d;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/d;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public t()I
    .registers 4

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v0

    .line 319
    if-ltz v0, :cond_7

    .line 348
    :cond_6
    :goto_6
    return v0

    .line 322
    :cond_7
    and-int/lit8 v0, v0, 0x7f

    .line 323
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v1

    if-ltz v1, :cond_13

    .line 324
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_6

    .line 326
    :cond_13
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 327
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v1

    if-ltz v1, :cond_22

    .line 328
    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_6

    .line 330
    :cond_22
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 331
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v1

    if-ltz v1, :cond_31

    .line 332
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_6

    .line 334
    :cond_31
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 335
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    .line 336
    if-gez v1, :cond_6

    .line 338
    const/4 v1, 0x0

    :goto_40
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4c

    .line 339
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v2

    if-gez v2, :cond_6

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 343
    :cond_4c
    invoke-static {}, Lcom/google/protobuf/s;->gZ()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0
.end method

.method public u()J
    .registers 7

    .prologue
    .line 404
    const/4 v2, 0x0

    .line 405
    const-wide/16 v0, 0x0

    .line 406
    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 407
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v3

    .line 408
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 409
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    .line 410
    return-wide v0

    .line 412
    :cond_15
    add-int/lit8 v2, v2, 0x7

    .line 413
    goto :goto_3

    .line 414
    :cond_18
    invoke-static {}, Lcom/google/protobuf/s;->gZ()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0
.end method

.method public v()I
    .registers 5

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v0

    .line 420
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v1

    .line 421
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v2

    .line 422
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v3

    .line 423
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public w()J
    .registers 15

    .prologue
    const-wide/16 v12, 0xff

    .line 431
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v0

    .line 432
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v1

    .line 433
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v2

    .line 434
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v3

    .line 435
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v4

    .line 436
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v5

    .line 437
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v6

    .line 438
    invoke-virtual {p0}, Lcom/google/protobuf/d;->A()B

    move-result v7

    .line 439
    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public y()I
    .registers 3

    .prologue
    .line 632
    iget v0, p0, Lcom/google/protobuf/d;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    .line 633
    const/4 v0, -0x1

    .line 637
    :goto_8
    return v0

    .line 636
    :cond_9
    iget v0, p0, Lcom/google/protobuf/d;->g:I

    iget v1, p0, Lcom/google/protobuf/d;->e:I

    add-int/2addr v0, v1

    .line 637
    iget v1, p0, Lcom/google/protobuf/d;->h:I

    sub-int v0, v1, v0

    goto :goto_8
.end method

.method public z()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 646
    iget v1, p0, Lcom/google/protobuf/d;->e:I

    iget v2, p0, Lcom/google/protobuf/d;->bufferSize:I

    if-ne v1, v2, :cond_e

    invoke-direct {p0, v0}, Lcom/google/protobuf/d;->a(Z)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method
