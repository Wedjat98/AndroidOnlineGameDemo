.class public final Lcom/tencent/bugly/proguard/i;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/i$a;
    }
.end annotation


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 51
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 5

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 55
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    return-void
.end method

.method private a(DIZ)D
    .registers 8

    .prologue
    .line 318
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 319
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 320
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 321
    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    sparse-switch v0, :sswitch_data_3a

    .line 332
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :sswitch_1d
    const-wide/16 p1, 0x0

    .line 337
    :cond_1f
    :goto_1f
    return-wide p1

    .line 326
    :sswitch_20
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    float-to-double p1, v0

    .line 327
    goto :goto_1f

    .line 329
    :sswitch_28
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p1

    goto :goto_1f

    .line 334
    :cond_2f
    if-eqz p4, :cond_1f

    .line 335
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    nop

    :sswitch_data_3a
    .sparse-switch
        0x4 -> :sswitch_20
        0x5 -> :sswitch_28
        0xc -> :sswitch_1d
    .end sparse-switch
.end method

.method private a(FIZ)F
    .registers 6

    .prologue
    .line 298
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 299
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 300
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 301
    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    sparse-switch v0, :sswitch_data_30

    .line 309
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :sswitch_1d
    const/4 p1, 0x0

    .line 314
    :cond_1e
    :goto_1e
    return p1

    .line 306
    :sswitch_1f
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    goto :goto_1e

    .line 311
    :cond_26
    if-eqz p3, :cond_1e

    .line 312
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :sswitch_data_30
    .sparse-switch
        0x4 -> :sswitch_1f
        0xc -> :sswitch_1d
    .end sparse-switch
.end method

.method private static a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I
    .registers 4

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 74
    and-int/lit8 v1, v0, 0xf

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/tencent/bugly/proguard/i$a;->a:B

    .line 75
    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tencent/bugly/proguard/i$a;->b:I

    .line 76
    iget v0, p0, Lcom/tencent/bugly/proguard/i$a;->b:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1d

    .line 77
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/i$a;->b:I

    .line 78
    const/4 v0, 0x2

    .line 80
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;IZ)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 493
    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 495
    :cond_a
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 526
    :cond_f
    return-object p1

    .line 500
    :cond_10
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 501
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 502
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 503
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 505
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 506
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 507
    iget-object v4, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 508
    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch v0, :pswitch_data_7a

    .line 521
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :pswitch_43
    invoke-virtual {p0, v1, v1, v7}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v4

    .line 511
    if-gez v4, :cond_5e

    .line 512
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    move v0, v1

    .line 513
    :goto_5f
    if-ge v0, v4, :cond_f

    .line 514
    invoke-virtual {p0, v2, v1, v7}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v5

    .line 515
    invoke-virtual {p0, v3, v7, v7}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v6

    .line 516
    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 523
    :cond_6f
    if-eqz p4, :cond_f

    .line 524
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    nop

    :pswitch_data_7a
    .packed-switch 0x8
        :pswitch_43
    .end packed-switch
.end method

.method private a()V
    .registers 4

    .prologue
    .line 116
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 118
    :cond_5
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 119
    iget-byte v1, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/i;->a(B)V

    .line 120
    iget-byte v1, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_5

    .line 121
    return-void
.end method

.method private a(B)V
    .registers 7

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 131
    packed-switch p1, :pswitch_data_102

    .line 190
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "invalid type."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :pswitch_10
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 188
    :cond_1c
    :goto_1c
    :pswitch_1c
    return-void

    .line 136
    :pswitch_1d
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1c

    .line 139
    :pswitch_2b
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1c

    .line 142
    :pswitch_38
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1c

    .line 145
    :pswitch_45
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1c

    .line 148
    :pswitch_52
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1c

    .line 151
    :pswitch_5f
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 152
    if-gez v0, :cond_69

    .line 153
    add-int/lit16 v0, v0, 0x100

    .line 154
    :cond_69
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1c

    .line 158
    :pswitch_76
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1c

    .line 162
    :pswitch_89
    invoke-virtual {p0, v0, v0, v3}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v1

    .line 163
    :goto_8d
    shl-int/lit8 v2, v1, 0x1

    if-ge v0, v2, :cond_1c

    .line 164
    new-instance v2, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    iget-byte v2, v2, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/i;->a(B)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    .line 168
    :pswitch_a3
    invoke-virtual {p0, v0, v0, v3}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v1

    .line 169
    :goto_a7
    if-ge v0, v1, :cond_1c

    .line 170
    new-instance v2, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    iget-byte v2, v2, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/i;->a(B)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    .line 174
    :pswitch_bb
    new-instance v1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 175
    iget-object v2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 176
    iget-byte v2, v1, Lcom/tencent/bugly/proguard/i$a;->a:B

    if-eqz v2, :cond_ea

    .line 177
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skipField with invalid type, type value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v1, v1, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_ea
    invoke-virtual {p0, v0, v0, v3}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_1c

    .line 184
    :pswitch_fc
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/i;->a()V

    goto/16 :goto_1c

    .line 131
    nop

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_10
        :pswitch_1d
        :pswitch_2b
        :pswitch_38
        :pswitch_45
        :pswitch_52
        :pswitch_5f
        :pswitch_76
        :pswitch_89
        :pswitch_a3
        :pswitch_fc
        :pswitch_1c
        :pswitch_1c
        :pswitch_bb
    .end packed-switch
.end method

.method private a(I)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 100
    :try_start_1
    new-instance v1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 102
    :goto_6
    iget-object v2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 103
    iget v3, v1, Lcom/tencent/bugly/proguard/i$a;->b:I

    if-le p1, v3, :cond_1a

    iget-byte v3, v1, Lcom/tencent/bugly/proguard/i$a;->a:B

    const/16 v4, 0xb

    if-ne v3, v4, :cond_20

    .line 104
    :cond_1a
    iget v1, v1, Lcom/tencent/bugly/proguard/i$a;->b:I

    if-ne p1, v1, :cond_1f

    const/4 v0, 0x1

    .line 111
    :cond_1f
    :goto_1f
    return v0

    .line 105
    :cond_20
    iget-object v3, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    iget-byte v2, v1, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/i;->a(B)V
    :try_end_31
    .catch Lcom/tencent/bugly/proguard/g; {:try_start_1 .. :try_end_31} :catch_32
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_31} :catch_34

    goto :goto_6

    .line 110
    :catch_32
    move-exception v1

    goto :goto_1f

    :catch_34
    move-exception v1

    goto :goto_1f
.end method

.method private a([Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IZ)[TT;"
        }
    .end annotation

    .prologue
    .line 797
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_d

    .line 798
    :cond_5
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "unable to get type of key and value."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_d
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0, p2, p3}, Lcom/tencent/bugly/proguard/i;->b(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)[TT;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 818
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 819
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 820
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 821
    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch v0, :pswitch_data_5c

    .line 834
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :pswitch_1f
    invoke-virtual {p0, v2, v2, v5}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v3

    .line 824
    if-gez v3, :cond_3a

    .line 825
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_3a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move v1, v2

    .line 827
    :goto_45
    if-ge v1, v3, :cond_5b

    .line 828
    invoke-virtual {p0, p1, v2, v5}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    .line 829
    aput-object v4, v0, v1

    .line 827
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 836
    :cond_50
    if-eqz p3, :cond_5a

    .line 837
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_5a
    const/4 v0, 0x0

    :cond_5b
    return-object v0

    .line 821
    :pswitch_data_5c
    .packed-switch 0x9
        :pswitch_1f
    .end packed-switch
.end method

.method private d(IZ)[Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 615
    const/4 v0, 0x0

    .line 616
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 617
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 618
    iget-object v3, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 619
    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch v0, :pswitch_data_5c

    .line 630
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :pswitch_20
    invoke-virtual {p0, v2, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v5

    .line 622
    if-gez v5, :cond_3b

    .line 623
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_3b
    new-array v3, v5, [Z

    move v4, v2

    .line 625
    :goto_3e
    if-ge v4, v5, :cond_4f

    .line 626
    invoke-virtual {p0, v2, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(BIZ)B

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v1

    :goto_47
    aput-boolean v0, v3, v4

    .line 625
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3e

    :cond_4d
    move v0, v2

    .line 626
    goto :goto_47

    :cond_4f
    move-object v0, v3

    .line 635
    :cond_50
    return-object v0

    .line 632
    :cond_51
    if-eqz p2, :cond_50

    .line 633
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    nop

    :pswitch_data_5c
    .packed-switch 0x9
        :pswitch_20
    .end packed-switch
.end method

.method private e(IZ)[S
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 676
    const/4 v0, 0x0

    .line 677
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 678
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 679
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 680
    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch v0, :pswitch_data_56

    .line 691
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :pswitch_20
    invoke-virtual {p0, v2, v2, v5}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v3

    .line 683
    if-gez v3, :cond_3b

    .line 684
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_3b
    new-array v0, v3, [S

    move v1, v2

    .line 686
    :goto_3e
    if-ge v1, v3, :cond_55

    .line 687
    aget-short v4, v0, v2

    invoke-virtual {p0, v4, v2, v5}, Lcom/tencent/bugly/proguard/i;->a(SIZ)S

    move-result v4

    aput-short v4, v0, v1

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 693
    :cond_4b
    if-eqz p2, :cond_55

    .line 694
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_55
    return-object v0

    .line 680
    :pswitch_data_56
    .packed-switch 0x9
        :pswitch_20
    .end packed-switch
.end method

.method private f(IZ)[I
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 700
    const/4 v0, 0x0

    .line 701
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 702
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 703
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 704
    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch v0, :pswitch_data_56

    .line 715
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :pswitch_20
    invoke-virtual {p0, v2, v2, v5}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v3

    .line 707
    if-gez v3, :cond_3b

    .line 708
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_3b
    new-array v0, v3, [I

    move v1, v2

    .line 710
    :goto_3e
    if-ge v1, v3, :cond_55

    .line 711
    aget v4, v0, v2

    invoke-virtual {p0, v4, v2, v5}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v4

    aput v4, v0, v1

    .line 710
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 717
    :cond_4b
    if-eqz p2, :cond_55

    .line 718
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_55
    return-object v0

    .line 704
    :pswitch_data_56
    .packed-switch 0x9
        :pswitch_20
    .end packed-switch
.end method

.method private g(IZ)[J
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 724
    const/4 v0, 0x0

    .line 725
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 726
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 727
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 728
    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch v0, :pswitch_data_56

    .line 739
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :pswitch_20
    invoke-virtual {p0, v2, v2, v6}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v3

    .line 731
    if-gez v3, :cond_3b

    .line 732
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_3b
    new-array v0, v3, [J

    move v1, v2

    .line 734
    :goto_3e
    if-ge v1, v3, :cond_55

    .line 735
    aget-wide v4, v0, v2

    invoke-virtual {p0, v4, v5, v2, v6}, Lcom/tencent/bugly/proguard/i;->a(JIZ)J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 741
    :cond_4b
    if-eqz p2, :cond_55

    .line 742
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_55
    return-object v0

    .line 728
    :pswitch_data_56
    .packed-switch 0x9
        :pswitch_20
    .end packed-switch
.end method

.method private h(IZ)[F
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 748
    const/4 v0, 0x0

    .line 749
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 750
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 751
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 752
    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch v0, :pswitch_data_56

    .line 763
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :pswitch_20
    invoke-virtual {p0, v2, v2, v5}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v3

    .line 755
    if-gez v3, :cond_3b

    .line 756
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_3b
    new-array v0, v3, [F

    move v1, v2

    .line 758
    :goto_3e
    if-ge v1, v3, :cond_55

    .line 759
    aget v4, v0, v2

    invoke-direct {p0, v4, v2, v5}, Lcom/tencent/bugly/proguard/i;->a(FIZ)F

    move-result v4

    aput v4, v0, v1

    .line 758
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 765
    :cond_4b
    if-eqz p2, :cond_55

    .line 766
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_55
    return-object v0

    .line 752
    :pswitch_data_56
    .packed-switch 0x9
        :pswitch_20
    .end packed-switch
.end method

.method private i(IZ)[D
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 772
    const/4 v0, 0x0

    .line 773
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 774
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 775
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 776
    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch v0, :pswitch_data_56

    .line 787
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :pswitch_20
    invoke-virtual {p0, v2, v2, v6}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v3

    .line 779
    if-gez v3, :cond_3b

    .line 780
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_3b
    new-array v0, v3, [D

    move v1, v2

    .line 782
    :goto_3e
    if-ge v1, v3, :cond_55

    .line 783
    aget-wide v4, v0, v2

    invoke-direct {p0, v4, v5, v2, v6}, Lcom/tencent/bugly/proguard/i;->a(DIZ)D

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 782
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 789
    :cond_4b
    if-eqz p2, :cond_55

    .line 790
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_55
    return-object v0

    .line 776
    :pswitch_data_56
    .packed-switch 0x9
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public final a(BIZ)B
    .registers 6

    .prologue
    .line 200
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 201
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 202
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 203
    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    sparse-switch v0, :sswitch_data_30

    .line 211
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :sswitch_1d
    const/4 p1, 0x0

    .line 216
    :cond_1e
    :goto_1e
    return p1

    .line 208
    :sswitch_1f
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    goto :goto_1e

    .line 213
    :cond_26
    if-eqz p3, :cond_1e

    .line 214
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_1f
        0xc -> :sswitch_1d
    .end sparse-switch
.end method

.method public final a(IIZ)I
    .registers 6

    .prologue
    .line 243
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 244
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 246
    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    sparse-switch v0, :sswitch_data_3e

    .line 260
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :sswitch_1d
    const/4 p1, 0x0

    .line 265
    :cond_1e
    :goto_1e
    return p1

    .line 251
    :sswitch_1f
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    goto :goto_1e

    .line 254
    :sswitch_26
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_1e

    .line 257
    :sswitch_2d
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    goto :goto_1e

    .line 262
    :cond_34
    if-eqz p3, :cond_1e

    .line 263
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_1f
        0x1 -> :sswitch_26
        0x2 -> :sswitch_2d
        0xc -> :sswitch_1d
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 993
    iput-object p1, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    .line 994
    const/4 v0, 0x0

    return v0
.end method

.method public final a(JIZ)J
    .registers 8

    .prologue
    .line 269
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 270
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 271
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 272
    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    sparse-switch v0, :sswitch_data_4a

    .line 289
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :sswitch_1d
    const-wide/16 p1, 0x0

    .line 294
    :cond_1f
    :goto_1f
    return-wide p1

    .line 277
    :sswitch_20
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-long p1, v0

    .line 278
    goto :goto_1f

    .line 280
    :sswitch_28
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    int-to-long p1, v0

    .line 281
    goto :goto_1f

    .line 283
    :sswitch_30
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long p1, v0

    .line 284
    goto :goto_1f

    .line 286
    :sswitch_38
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    goto :goto_1f

    .line 291
    :cond_3f
    if-eqz p4, :cond_1f

    .line 292
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    nop

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_20
        0x1 -> :sswitch_28
        0x2 -> :sswitch_30
        0x3 -> :sswitch_38
        0xc -> :sswitch_1d
    .end sparse-switch
.end method

.method public final a(Lcom/tencent/bugly/proguard/k;IZ)Lcom/tencent/bugly/proguard/k;
    .registers 7

    .prologue
    .line 919
    const/4 v0, 0x0

    .line 920
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 922
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/k;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_29

    .line 927
    new-instance v1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 928
    iget-object v2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 929
    iget-byte v1, v1, Lcom/tencent/bugly/proguard/i$a;->a:B

    const/16 v2, 0xa

    if-eq v1, v2, :cond_34

    .line 930
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :catch_29
    move-exception v0

    .line 924
    new-instance v1, Lcom/tencent/bugly/proguard/g;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v1

    .line 931
    :cond_34
    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/k;->a(Lcom/tencent/bugly/proguard/i;)V

    .line 932
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/i;->a()V

    .line 936
    :cond_3a
    return-object v0

    .line 933
    :cond_3b
    if-eqz p3, :cond_3a

    .line 934
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 945
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_e

    .line 946
    invoke-virtual {p0, v0, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(BIZ)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 984
    :goto_d
    return-object v0

    .line 947
    :cond_e
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1e

    .line 948
    invoke-virtual {p0, v0, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(BIZ)B

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_d

    .line 949
    :cond_1e
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_2b

    .line 950
    invoke-virtual {p0, v0, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(SIZ)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_d

    .line 951
    :cond_2b
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_38

    .line 952
    invoke-virtual {p0, v0, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v0

    .line 953
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_d

    .line 954
    :cond_38
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_47

    .line 955
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(JIZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_d

    .line 956
    :cond_47
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_55

    .line 957
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(FIZ)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_d

    .line 958
    :cond_55
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_64

    .line 959
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(DIZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_d

    .line 960
    :cond_64
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_71

    .line 961
    invoke-virtual {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 962
    :cond_71
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_83

    .line 963
    check-cast p1, Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_d

    .line 964
    :cond_83
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_b8

    .line 965
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_91

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_98

    :cond_91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_d

    :cond_98
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/tencent/bugly/proguard/i;->b(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a5

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_a5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_aa
    array-length v3, v2

    if-ge v0, v3, :cond_b5

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_aa

    :cond_b5
    move-object v0, v1

    goto/16 :goto_d

    .line 966
    :cond_b8
    instance-of v0, p1, Lcom/tencent/bugly/proguard/k;

    if-eqz v0, :cond_c4

    .line 967
    check-cast p1, Lcom/tencent/bugly/proguard/k;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/k;IZ)Lcom/tencent/bugly/proguard/k;

    move-result-object v0

    goto/16 :goto_d

    .line 968
    :cond_c4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_120

    .line 969
    instance-of v0, p1, [B

    if-nez v0, :cond_d6

    instance-of v0, p1, [Ljava/lang/Byte;

    if-eqz v0, :cond_dc

    .line 970
    :cond_d6
    invoke-virtual {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->c(IZ)[B

    move-result-object v0

    goto/16 :goto_d

    .line 971
    :cond_dc
    instance-of v0, p1, [Z

    if-eqz v0, :cond_e6

    .line 972
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->d(IZ)[Z

    move-result-object v0

    goto/16 :goto_d

    .line 973
    :cond_e6
    instance-of v0, p1, [S

    if-eqz v0, :cond_f0

    .line 974
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->e(IZ)[S

    move-result-object v0

    goto/16 :goto_d

    .line 975
    :cond_f0
    instance-of v0, p1, [I

    if-eqz v0, :cond_fa

    .line 976
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->f(IZ)[I

    move-result-object v0

    goto/16 :goto_d

    .line 977
    :cond_fa
    instance-of v0, p1, [J

    if-eqz v0, :cond_104

    .line 978
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->g(IZ)[J

    move-result-object v0

    goto/16 :goto_d

    .line 979
    :cond_104
    instance-of v0, p1, [F

    if-eqz v0, :cond_10e

    .line 980
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->h(IZ)[F

    move-result-object v0

    goto/16 :goto_d

    .line 981
    :cond_10e
    instance-of v0, p1, [D

    if-eqz v0, :cond_118

    .line 982
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->i(IZ)[D

    move-result-object v0

    goto/16 :goto_d

    .line 984
    :cond_118
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_d

    .line 987
    :cond_120
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "read object error: unsupport type."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/util/Map;IZ)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;IZ)",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(SIZ)S
    .registers 6

    .prologue
    .line 220
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 221
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 222
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 223
    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    sparse-switch v0, :sswitch_data_38

    .line 234
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :sswitch_1d
    const/4 p1, 0x0

    .line 239
    :cond_1e
    :goto_1e
    return p1

    .line 228
    :sswitch_1f
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-short p1, v0

    .line 229
    goto :goto_1e

    .line 231
    :sswitch_27
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_1e

    .line 236
    :cond_2e
    if-eqz p3, :cond_1e

    .line 237
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_1f
        0x1 -> :sswitch_27
        0xc -> :sswitch_1d
    .end sparse-switch
.end method

.method public final a([B)V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_9

    .line 61
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 63
    :cond_9
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 64
    return-void
.end method

.method public final a(IZ)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(BIZ)B

    move-result v1

    .line 196
    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public final b(IZ)Ljava/lang/String;
    .registers 7

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 416
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 417
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 418
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 419
    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch v0, :pswitch_data_80

    .line 449
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :pswitch_1e
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 422
    if-gez v0, :cond_28

    .line 423
    add-int/lit16 v0, v0, 0x100

    .line 424
    :cond_28
    new-array v1, v0, [B

    .line 425
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 427
    :try_start_2f
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2f .. :try_end_36} :catch_37

    .line 454
    :cond_36
    :goto_36
    return-object v0

    .line 430
    :catch_37
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_36

    .line 435
    :pswitch_3e
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 436
    const/high16 v1, 0x6400000

    if-gt v0, v1, :cond_4a

    if-gez v0, :cond_5f

    .line 437
    :cond_4a
    new-instance v1, Lcom/tencent/bugly/proguard/g;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "String too long: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v1

    .line 438
    :cond_5f
    new-array v1, v0, [B

    .line 439
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 441
    :try_start_66
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_66 .. :try_end_6d} :catch_6e

    goto :goto_36

    .line 444
    :catch_6e
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_36

    .line 451
    :cond_75
    if-eqz p2, :cond_36

    .line 452
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    nop

    :pswitch_data_80
    .packed-switch 0x6
        :pswitch_1e
        :pswitch_3e
    .end packed-switch
.end method

.method public final c(IZ)[B
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 639
    const/4 v0, 0x0

    .line 640
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 641
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 642
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 643
    iget-byte v1, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    sparse-switch v1, :sswitch_data_d6

    .line 667
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :sswitch_20
    new-instance v1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 646
    iget-object v3, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 647
    iget-byte v3, v1, Lcom/tencent/bugly/proguard/i$a;->a:B

    if-eqz v3, :cond_5b

    .line 648
    new-instance v2, Lcom/tencent/bugly/proguard/g;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type mismatch, tag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, v1, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v2

    .line 650
    :cond_5b
    invoke-virtual {p0, v2, v2, v5}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v2

    .line 651
    if-gez v2, :cond_98

    .line 652
    new-instance v3, Lcom/tencent/bugly/proguard/g;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invalid size, tag: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, v1, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v3

    .line 653
    :cond_98
    new-array v0, v2, [B

    .line 654
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 672
    :cond_9f
    return-object v0

    .line 658
    :sswitch_a0
    invoke-virtual {p0, v2, v2, v5}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v3

    .line 659
    if-gez v3, :cond_bb

    .line 660
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_bb
    new-array v0, v3, [B

    move v1, v2

    .line 662
    :goto_be
    if-ge v1, v3, :cond_9f

    .line 663
    aget-byte v4, v0, v2

    invoke-virtual {p0, v4, v2, v5}, Lcom/tencent/bugly/proguard/i;->a(BIZ)B

    move-result v4

    aput-byte v4, v0, v1

    .line 662
    add-int/lit8 v1, v1, 0x1

    goto :goto_be

    .line 669
    :cond_cb
    if-eqz p2, :cond_9f

    .line 670
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    nop

    :sswitch_data_d6
    .sparse-switch
        0x9 -> :sswitch_a0
        0xd -> :sswitch_20
    .end sparse-switch
.end method
