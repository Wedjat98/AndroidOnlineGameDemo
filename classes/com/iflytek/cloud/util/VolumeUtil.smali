.class public Lcom/iflytek/cloud/util/VolumeUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeVolume([BI)I
    .registers 14

    const-wide/16 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-gt p1, v1, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    div-int/lit8 v8, p1, 0x2

    move v4, v0

    move-wide v6, v2

    :goto_d
    mul-int/lit8 v5, v8, 0x2

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_21

    aget-byte v5, p0, v4

    add-int/lit8 v9, v4, 0x1

    aget-byte v9, p0, v9

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v5, v9

    int-to-long v10, v5

    add-long/2addr v6, v10

    add-int/lit8 v4, v4, 0x2

    goto :goto_d

    :cond_21
    int-to-long v4, v8

    div-long/2addr v6, v4

    move-wide v4, v2

    move v2, v0

    :goto_25
    mul-int/lit8 v3, v8, 0x2

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3f

    aget-byte v3, p0, v2

    add-int/lit8 v9, v2, 0x1

    aget-byte v9, p0, v9

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v3, v9

    int-to-long v10, v3

    sub-long/2addr v10, v6

    long-to-int v3, v10

    mul-int/2addr v3, v3

    shr-int/lit8 v3, v3, 0x9

    int-to-long v10, v3

    add-long/2addr v4, v10

    add-int/lit8 v2, v2, 0x2

    goto :goto_25

    :cond_3f
    int-to-long v2, v8

    div-long v2, v4, v2

    const-wide/16 v4, 0x149

    cmp-long v4, v2, v4

    if-ltz v4, :cond_8

    const-wide/16 v4, 0x1a5

    cmp-long v0, v2, v4

    if-gez v0, :cond_50

    const/4 v0, 0x1

    goto :goto_8

    :cond_50
    const-wide/16 v4, 0x21f

    cmp-long v0, v2, v4

    if-gez v0, :cond_58

    move v0, v1

    goto :goto_8

    :cond_58
    const-wide/16 v0, 0x2b6

    cmp-long v0, v2, v0

    if-gez v0, :cond_60

    const/4 v0, 0x3

    goto :goto_8

    :cond_60
    const-wide/16 v0, 0x37f

    cmp-long v0, v2, v0

    if-gez v0, :cond_68

    const/4 v0, 0x4

    goto :goto_8

    :cond_68
    const-wide/16 v0, 0x47a

    cmp-long v0, v2, v0

    if-gez v0, :cond_70

    const/4 v0, 0x5

    goto :goto_8

    :cond_70
    const-wide/16 v0, 0x5c4

    cmp-long v0, v2, v0

    if-gez v0, :cond_78

    const/4 v0, 0x6

    goto :goto_8

    :cond_78
    const-wide/16 v0, 0x762

    cmp-long v0, v2, v0

    if-gez v0, :cond_80

    const/4 v0, 0x7

    goto :goto_8

    :cond_80
    const-wide/16 v0, 0x981

    cmp-long v0, v2, v0

    if-gez v0, :cond_89

    const/16 v0, 0x8

    goto :goto_8

    :cond_89
    const-wide/16 v0, 0xc2e

    cmp-long v0, v2, v0

    if-gez v0, :cond_93

    const/16 v0, 0x9

    goto/16 :goto_8

    :cond_93
    const-wide/16 v0, 0xfab

    cmp-long v0, v2, v0

    if-gez v0, :cond_9d

    const/16 v0, 0xa

    goto/16 :goto_8

    :cond_9d
    const-wide/16 v0, 0x1416

    cmp-long v0, v2, v0

    if-gez v0, :cond_a7

    const/16 v0, 0xb

    goto/16 :goto_8

    :cond_a7
    const-wide/16 v0, 0x19d4

    cmp-long v0, v2, v0

    if-gez v0, :cond_b1

    const/16 v0, 0xc

    goto/16 :goto_8

    :cond_b1
    const-wide/16 v0, 0x211e

    cmp-long v0, v2, v0

    if-gez v0, :cond_bb

    const/16 v0, 0xd

    goto/16 :goto_8

    :cond_bb
    const-wide/16 v0, 0x2a94

    cmp-long v0, v2, v0

    if-gez v0, :cond_c5

    const/16 v0, 0xe

    goto/16 :goto_8

    :cond_c5
    const-wide/16 v0, 0x369e

    cmp-long v0, v2, v0

    if-gez v0, :cond_cf

    const/16 v0, 0xf

    goto/16 :goto_8

    :cond_cf
    const-wide/16 v0, 0x4630

    cmp-long v0, v2, v0

    if-gez v0, :cond_d9

    const/16 v0, 0x10

    goto/16 :goto_8

    :cond_d9
    const-wide/16 v0, 0x5a0e

    cmp-long v0, v2, v0

    if-gez v0, :cond_e3

    const/16 v0, 0x11

    goto/16 :goto_8

    :cond_e3
    const-wide/16 v0, 0x73b4

    cmp-long v0, v2, v0

    if-gez v0, :cond_ed

    const/16 v0, 0x12

    goto/16 :goto_8

    :cond_ed
    const-wide/32 v0, 0x947e

    cmp-long v0, v2, v0

    if-gez v0, :cond_f8

    const/16 v0, 0x13

    goto/16 :goto_8

    :cond_f8
    const-wide/32 v0, 0xbebc

    cmp-long v0, v2, v0

    if-gez v0, :cond_103

    const/16 v0, 0x14

    goto/16 :goto_8

    :cond_103
    const-wide/32 v0, 0xf4be

    cmp-long v0, v2, v0

    if-gez v0, :cond_10e

    const/16 v0, 0x15

    goto/16 :goto_8

    :cond_10e
    const-wide/32 v0, 0x13a6b

    cmp-long v0, v2, v0

    if-gez v0, :cond_119

    const/16 v0, 0x16

    goto/16 :goto_8

    :cond_119
    const-wide/32 v0, 0x1937e

    cmp-long v0, v2, v0

    if-gez v0, :cond_124

    const/16 v0, 0x17

    goto/16 :goto_8

    :cond_124
    const-wide/32 v0, 0x2064e

    cmp-long v0, v2, v0

    if-gez v0, :cond_12f

    const/16 v0, 0x18

    goto/16 :goto_8

    :cond_12f
    const-wide/32 v0, 0x2997e

    cmp-long v0, v2, v0

    if-gez v0, :cond_13a

    const/16 v0, 0x19

    goto/16 :goto_8

    :cond_13a
    const-wide/32 v0, 0x35668

    cmp-long v0, v2, v0

    if-gez v0, :cond_145

    const/16 v0, 0x1a

    goto/16 :goto_8

    :cond_145
    const-wide/32 v0, 0x448fe

    cmp-long v0, v2, v0

    if-gez v0, :cond_150

    const/16 v0, 0x1b

    goto/16 :goto_8

    :cond_150
    const/16 v0, 0x1e

    goto/16 :goto_8
.end method
