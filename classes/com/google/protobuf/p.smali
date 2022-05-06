.class final Lcom/google/protobuf/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/p$1;,
        Lcom/google/protobuf/p$a;
    }
.end annotation


# static fields
.field private static final ej:Lcom/google/protobuf/p;


# instance fields
.field private ei:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 103
    new-instance v0, Lcom/google/protobuf/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/p;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/p;->ej:Lcom/google/protobuf/p;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    .line 80
    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    .line 88
    return-void
.end method

.method private static a(Lcom/google/protobuf/A$a;ILjava/lang/Object;)I
    .registers 5

    .prologue
    .line 636
    invoke-static {p1}, Lcom/google/protobuf/e;->y(I)I

    move-result v0

    .line 637
    sget-object v1, Lcom/google/protobuf/A$a;->eZ:Lcom/google/protobuf/A$a;

    if-ne p0, v1, :cond_a

    .line 638
    shl-int/lit8 v0, v0, 0x1

    .line 640
    :cond_a
    invoke-static {p0, p2}, Lcom/google/protobuf/p;->b(Lcom/google/protobuf/A$a;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static a(Lcom/google/protobuf/A$a;Z)I
    .registers 3

    .prologue
    .line 371
    if-eqz p1, :cond_4

    .line 372
    const/4 v0, 0x2

    .line 374
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/A$a;->hC()I

    move-result v0

    goto :goto_3
.end method

.method public static a(Lcom/google/protobuf/d;Lcom/google/protobuf/A$a;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 434
    sget-object v0, Lcom/google/protobuf/p$1;->el:[I

    invoke-virtual {p1}, Lcom/google/protobuf/A$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_aa

    .line 464
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :pswitch_13
    invoke-virtual {p0}, Lcom/google/protobuf/d;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 449
    :goto_1b
    return-object v0

    .line 436
    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/protobuf/d;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1b

    .line 437
    :pswitch_25
    invoke-virtual {p0}, Lcom/google/protobuf/d;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1b

    .line 438
    :pswitch_2e
    invoke-virtual {p0}, Lcom/google/protobuf/d;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1b

    .line 439
    :pswitch_37
    invoke-virtual {p0}, Lcom/google/protobuf/d;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1b

    .line 440
    :pswitch_40
    invoke-virtual {p0}, Lcom/google/protobuf/d;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1b

    .line 441
    :pswitch_49
    invoke-virtual {p0}, Lcom/google/protobuf/d;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1b

    .line 442
    :pswitch_52
    invoke-virtual {p0}, Lcom/google/protobuf/d;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1b

    .line 443
    :pswitch_5b
    invoke-virtual {p0}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 444
    :pswitch_60
    invoke-virtual {p0}, Lcom/google/protobuf/d;->m()Lcom/google/protobuf/c;

    move-result-object v0

    goto :goto_1b

    .line 445
    :pswitch_65
    invoke-virtual {p0}, Lcom/google/protobuf/d;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1b

    .line 446
    :pswitch_6e
    invoke-virtual {p0}, Lcom/google/protobuf/d;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1b

    .line 447
    :pswitch_77
    invoke-virtual {p0}, Lcom/google/protobuf/d;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1b

    .line 448
    :pswitch_80
    invoke-virtual {p0}, Lcom/google/protobuf/d;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1b

    .line 449
    :pswitch_89
    invoke-virtual {p0}, Lcom/google/protobuf/d;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1b

    .line 452
    :pswitch_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :pswitch_9a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :pswitch_a2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle enums."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1c
        :pswitch_25
        :pswitch_2e
        :pswitch_37
        :pswitch_40
        :pswitch_49
        :pswitch_52
        :pswitch_5b
        :pswitch_60
        :pswitch_65
        :pswitch_6e
        :pswitch_77
        :pswitch_80
        :pswitch_89
        :pswitch_92
        :pswitch_9a
        :pswitch_a2
    .end packed-switch
.end method

.method private static a(Lcom/google/protobuf/A$a;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 294
    if-nez p1, :cond_8

    .line 295
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 298
    :cond_8
    const/4 v0, 0x0

    .line 299
    sget-object v1, Lcom/google/protobuf/p$1;->ek:[I

    invoke-virtual {p0}, Lcom/google/protobuf/A$a;->hB()Lcom/google/protobuf/A$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/A$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3e

    .line 317
    :goto_18
    if-nez v0, :cond_3d

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :pswitch_22
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_18

    .line 301
    :pswitch_25
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_18

    .line 302
    :pswitch_28
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_18

    .line 303
    :pswitch_2b
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_18

    .line 304
    :pswitch_2e
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_18

    .line 305
    :pswitch_31
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_18

    .line 306
    :pswitch_34
    instance-of v0, p1, Lcom/google/protobuf/c;

    goto :goto_18

    .line 309
    :pswitch_37
    instance-of v0, p1, Lcom/google/protobuf/r;

    goto :goto_18

    .line 313
    :pswitch_3a
    instance-of v0, p1, Lcom/google/protobuf/u;

    goto :goto_18

    .line 328
    :cond_3d
    return-void

    .line 299
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
    .end packed-switch
.end method

.method private static a(Lcom/google/protobuf/e;Lcom/google/protobuf/A$a;ILjava/lang/Object;)V
    .registers 5

    .prologue
    .line 512
    sget-object v0, Lcom/google/protobuf/A$a;->eZ:Lcom/google/protobuf/A$a;

    if-ne p1, v0, :cond_a

    .line 513
    check-cast p3, Lcom/google/protobuf/u;

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/e;->a(ILcom/google/protobuf/u;)V

    .line 518
    :goto_9
    return-void

    .line 515
    :cond_a
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/A$a;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/e;->i(II)V

    .line 516
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/e;Lcom/google/protobuf/A$a;Ljava/lang/Object;)V

    goto :goto_9
.end method

.method private static a(Lcom/google/protobuf/e;Lcom/google/protobuf/A$a;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 534
    sget-object v0, Lcom/google/protobuf/p$1;->el:[I

    invoke-virtual {p1}, Lcom/google/protobuf/A$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b4

    .line 557
    :goto_b
    return-void

    .line 535
    :pswitch_c
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/e;->a(D)V

    goto :goto_b

    .line 536
    :pswitch_16
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->a(F)V

    goto :goto_b

    .line 537
    :pswitch_20
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/e;->d(J)V

    goto :goto_b

    .line 538
    :pswitch_2a
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/e;->c(J)V

    goto :goto_b

    .line 539
    :pswitch_34
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->l(I)V

    goto :goto_b

    .line 540
    :pswitch_3e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/e;->e(J)V

    goto :goto_b

    .line 541
    :pswitch_48
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->m(I)V

    goto :goto_b

    .line 542
    :pswitch_52
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->c(Z)V

    goto :goto_b

    .line 543
    :pswitch_5c
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/e;->h(Ljava/lang/String;)V

    goto :goto_b

    .line 544
    :pswitch_62
    check-cast p2, Lcom/google/protobuf/u;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/e;->a(Lcom/google/protobuf/u;)V

    goto :goto_b

    .line 545
    :pswitch_68
    check-cast p2, Lcom/google/protobuf/u;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/e;->b(Lcom/google/protobuf/u;)V

    goto :goto_b

    .line 546
    :pswitch_6e
    check-cast p2, Lcom/google/protobuf/c;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/e;->b(Lcom/google/protobuf/c;)V

    goto :goto_b

    .line 547
    :pswitch_74
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->n(I)V

    goto :goto_b

    .line 548
    :pswitch_7e
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->p(I)V

    goto :goto_b

    .line 549
    :pswitch_88
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/e;->f(J)V

    goto/16 :goto_b

    .line 550
    :pswitch_93
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->q(I)V

    goto/16 :goto_b

    .line 551
    :pswitch_9e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/e;->g(J)V

    goto/16 :goto_b

    .line 554
    :pswitch_a9
    check-cast p2, Lcom/google/protobuf/r;

    invoke-interface {p2}, Lcom/google/protobuf/r;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->o(I)V

    goto/16 :goto_b

    .line 534
    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_16
        :pswitch_20
        :pswitch_2a
        :pswitch_34
        :pswitch_3e
        :pswitch_48
        :pswitch_52
        :pswitch_5c
        :pswitch_6e
        :pswitch_74
        :pswitch_7e
        :pswitch_88
        :pswitch_93
        :pswitch_9e
        :pswitch_62
        :pswitch_68
        :pswitch_a9
    .end packed-switch
.end method

.method public static a(Lcom/google/protobuf/p$a;Ljava/lang/Object;Lcom/google/protobuf/e;)V
    .registers 7

    .prologue
    .line 564
    invoke-interface {p0}, Lcom/google/protobuf/p$a;->gr()Lcom/google/protobuf/A$a;

    move-result-object v1

    .line 565
    invoke-interface {p0}, Lcom/google/protobuf/p$a;->getNumber()I

    move-result v0

    .line 566
    invoke-interface {p0}, Lcom/google/protobuf/p$a;->gs()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 567
    check-cast p1, Ljava/util/List;

    .line 568
    invoke-interface {p0}, Lcom/google/protobuf/p$a;->gt()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 569
    const/4 v2, 0x2

    invoke-virtual {p2, v0, v2}, Lcom/google/protobuf/e;->i(II)V

    .line 571
    const/4 v0, 0x0

    .line 572
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 573
    invoke-static {v1, v3}, Lcom/google/protobuf/p;->b(Lcom/google/protobuf/A$a;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1f

    .line 575
    :cond_2f
    invoke-virtual {p2, v0}, Lcom/google/protobuf/e;->z(I)V

    .line 577
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 578
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/e;Lcom/google/protobuf/A$a;Ljava/lang/Object;)V

    goto :goto_36

    .line 581
    :cond_44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 582
    invoke-static {p2, v1, v0, v3}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/e;Lcom/google/protobuf/A$a;ILjava/lang/Object;)V

    goto :goto_48

    .line 586
    :cond_56
    invoke-static {p2, v1, v0, p1}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/e;Lcom/google/protobuf/A$a;ILjava/lang/Object;)V

    .line 588
    :cond_59
    return-void
.end method

.method private static b(Lcom/google/protobuf/A$a;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 655
    sget-object v0, Lcom/google/protobuf/p$1;->el:[I

    invoke-virtual {p0}, Lcom/google/protobuf/A$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ce

    .line 681
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :pswitch_13
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(D)I

    move-result v0

    .line 677
    :goto_1d
    return v0

    .line 659
    :pswitch_1e
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/e;->b(F)I

    move-result v0

    goto :goto_1d

    .line 660
    :pswitch_29
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->i(J)I

    move-result v0

    goto :goto_1d

    .line 661
    :pswitch_34
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->h(J)I

    move-result v0

    goto :goto_1d

    .line 662
    :pswitch_3f
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/e;->r(I)I

    move-result v0

    goto :goto_1d

    .line 663
    :pswitch_4a
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->j(J)I

    move-result v0

    goto :goto_1d

    .line 664
    :pswitch_55
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/e;->s(I)I

    move-result v0

    goto :goto_1d

    .line 665
    :pswitch_60
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/e;->d(Z)I

    move-result v0

    goto :goto_1d

    .line 666
    :pswitch_6b
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/protobuf/e;->i(Ljava/lang/String;)I

    move-result v0

    goto :goto_1d

    .line 667
    :pswitch_72
    check-cast p1, Lcom/google/protobuf/u;

    invoke-static {p1}, Lcom/google/protobuf/e;->c(Lcom/google/protobuf/u;)I

    move-result v0

    goto :goto_1d

    .line 668
    :pswitch_79
    check-cast p1, Lcom/google/protobuf/u;

    invoke-static {p1}, Lcom/google/protobuf/e;->d(Lcom/google/protobuf/u;)I

    move-result v0

    goto :goto_1d

    .line 669
    :pswitch_80
    check-cast p1, Lcom/google/protobuf/c;

    invoke-static {p1}, Lcom/google/protobuf/e;->c(Lcom/google/protobuf/c;)I

    move-result v0

    goto :goto_1d

    .line 670
    :pswitch_87
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/e;->t(I)I

    move-result v0

    goto :goto_1d

    .line 671
    :pswitch_92
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/e;->v(I)I

    move-result v0

    goto :goto_1d

    .line 672
    :pswitch_9d
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->k(J)I

    move-result v0

    goto/16 :goto_1d

    .line 673
    :pswitch_a9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/e;->w(I)I

    move-result v0

    goto/16 :goto_1d

    .line 674
    :pswitch_b5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->l(J)I

    move-result v0

    goto/16 :goto_1d

    .line 677
    :pswitch_c1
    check-cast p1, Lcom/google/protobuf/r;

    invoke-interface {p1}, Lcom/google/protobuf/r;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/e;->u(I)I

    move-result v0

    goto/16 :goto_1d

    .line 655
    nop

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1e
        :pswitch_29
        :pswitch_34
        :pswitch_3f
        :pswitch_4a
        :pswitch_55
        :pswitch_60
        :pswitch_6b
        :pswitch_80
        :pswitch_87
        :pswitch_92
        :pswitch_9d
        :pswitch_a9
        :pswitch_b5
        :pswitch_72
        :pswitch_79
        :pswitch_c1
    .end packed-switch
.end method

.method public static c(Lcom/google/protobuf/p$a;Ljava/lang/Object;)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 690
    invoke-interface {p0}, Lcom/google/protobuf/p$a;->gr()Lcom/google/protobuf/A$a;

    move-result-object v1

    .line 691
    invoke-interface {p0}, Lcom/google/protobuf/p$a;->getNumber()I

    move-result v2

    .line 692
    invoke-interface {p0}, Lcom/google/protobuf/p$a;->gs()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 693
    invoke-interface {p0}, Lcom/google/protobuf/p$a;->gt()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 695
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 696
    invoke-static {v1, v4}, Lcom/google/protobuf/p;->b(Lcom/google/protobuf/A$a;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1b

    .line 698
    :cond_2b
    invoke-static {v2}, Lcom/google/protobuf/e;->y(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v0}, Lcom/google/protobuf/e;->A(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 709
    :cond_35
    :goto_35
    return v0

    .line 703
    :cond_36
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 704
    invoke-static {v1, v2, v4}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/A$a;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_3c

    .line 709
    :cond_4c
    invoke-static {v1, v2, p1}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/A$a;ILjava/lang/Object;)I

    move-result v0

    goto :goto_35
.end method

.method public static gP()Lcom/google/protobuf/p;
    .registers 1

    .prologue
    .line 93
    new-instance v0, Lcom/google/protobuf/p;

    invoke-direct {v0}, Lcom/google/protobuf/p;-><init>()V

    return-object v0
.end method

.method public static gQ()Lcom/google/protobuf/p;
    .registers 1

    .prologue
    .line 100
    sget-object v0, Lcom/google/protobuf/p;->ej:Lcom/google/protobuf/p;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 595
    const/4 v0, 0x0

    .line 597
    iget-object v1, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 598
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/p$a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/p;->c(Lcom/google/protobuf/p$a;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_c

    .line 600
    :cond_29
    return v2
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 473
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/p$a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/p$a;Ljava/lang/Object;Lcom/google/protobuf/e;)V

    goto :goto_a

    .line 475
    :cond_24
    return-void
.end method

.method public a(Lcom/google/protobuf/p$a;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 170
    invoke-interface {p1}, Lcom/google/protobuf/p$a;->gs()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 171
    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_12

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 181
    invoke-interface {p1}, Lcom/google/protobuf/p$a;->gr()Lcom/google/protobuf/A$a;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/A$a;Ljava/lang/Object;)V

    goto :goto_20

    :cond_32
    move-object p2, v0

    .line 188
    :goto_33
    iget-object v0, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void

    .line 185
    :cond_39
    invoke-interface {p1}, Lcom/google/protobuf/p$a;->gr()Lcom/google/protobuf/A$a;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/A$a;Ljava/lang/Object;)V

    goto :goto_33
.end method

.method public a(Lcom/google/protobuf/p;)V
    .registers 7

    .prologue
    .line 384
    iget-object v0, p1, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 385
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/p$a;

    .line 386
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 388
    invoke-interface {v1}, Lcom/google/protobuf/p$a;->gs()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 389
    iget-object v2, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 390
    if-nez v2, :cond_3b

    .line 394
    iget-object v2, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    new-instance v4, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_3b
    move-object v1, v2

    .line 397
    check-cast v1, Ljava/util/List;

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_a

    .line 399
    :cond_44
    invoke-interface {v1}, Lcom/google/protobuf/p$a;->gp()Lcom/google/protobuf/A$b;

    move-result-object v2

    sget-object v4, Lcom/google/protobuf/A$b;->ft:Lcom/google/protobuf/A$b;

    if-ne v2, v4, :cond_70

    .line 400
    iget-object v2, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 401
    if-nez v2, :cond_5a

    .line 402
    iget-object v2, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 405
    :cond_5a
    iget-object v4, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    check-cast v2, Lcom/google/protobuf/u;

    invoke-interface {v2}, Lcom/google/protobuf/u;->aP()Lcom/google/protobuf/u$a;

    move-result-object v2

    check-cast v0, Lcom/google/protobuf/u;

    invoke-interface {v1, v2, v0}, Lcom/google/protobuf/p$a;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/u;)Lcom/google/protobuf/u$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/u$a;->aZ()Lcom/google/protobuf/u;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 412
    :cond_70
    iget-object v2, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 415
    :cond_76
    return-void
.end method

.method public a(Lcom/google/protobuf/p$a;)Z
    .registers 4

    .prologue
    .line 145
    invoke-interface {p1}, Lcom/google/protobuf/p$a;->gs()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hasField() can only be called on non-repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_e
    iget-object v0, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public b(Lcom/google/protobuf/p$a;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/protobuf/e;)V
    .registers 7

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 484
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/p$a;

    .line 485
    invoke-interface {v1}, Lcom/google/protobuf/p$a;->gp()Lcom/google/protobuf/A$b;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/A$b;->ft:Lcom/google/protobuf/A$b;

    if-ne v3, v4, :cond_44

    invoke-interface {v1}, Lcom/google/protobuf/p$a;->gs()Z

    move-result v3

    if-nez v3, :cond_44

    invoke-interface {v1}, Lcom/google/protobuf/p$a;->gt()Z

    move-result v3

    if-nez v3, :cond_44

    .line 487
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/p$a;

    invoke-interface {v1}, Lcom/google/protobuf/p$a;->getNumber()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/u;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/e;->c(ILcom/google/protobuf/u;)V

    goto :goto_a

    .line 490
    :cond_44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/p$a;Ljava/lang/Object;Lcom/google/protobuf/e;)V

    goto :goto_a

    .line 493
    :cond_4c
    return-void
.end method

.method public b(Lcom/google/protobuf/p$a;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 266
    invoke-interface {p1}, Lcom/google/protobuf/p$a;->gs()Z

    move-result v0

    if-nez v0, :cond_e

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_e
    invoke-interface {p1}, Lcom/google/protobuf/p$a;->gr()Lcom/google/protobuf/A$a;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/A$a;Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 275
    if-nez v0, :cond_2b

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :goto_27
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-void

    .line 279
    :cond_2b
    check-cast v0, Ljava/util/List;

    goto :goto_27
.end method

.method public gG()Ljava/util/Map;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public gR()I
    .registers 7

    .prologue
    .line 607
    const/4 v0, 0x0

    .line 609
    iget-object v1, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 610
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/p$a;

    .line 611
    invoke-interface {v1}, Lcom/google/protobuf/p$a;->gp()Lcom/google/protobuf/A$b;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/A$b;->ft:Lcom/google/protobuf/A$b;

    if-ne v4, v5, :cond_49

    invoke-interface {v1}, Lcom/google/protobuf/p$a;->gs()Z

    move-result v4

    if-nez v4, :cond_49

    invoke-interface {v1}, Lcom/google/protobuf/p$a;->gt()Z

    move-result v4

    if-nez v4, :cond_49

    .line 613
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/p$a;

    invoke-interface {v1}, Lcom/google/protobuf/p$a;->getNumber()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/u;

    invoke-static {v1, v0}, Lcom/google/protobuf/e;->f(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_c

    .line 616
    :cond_49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/p;->c(Lcom/google/protobuf/p$a;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    .line 618
    goto :goto_c

    .line 619
    :cond_54
    return v2
.end method

.method public isInitialized()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 342
    iget-object v0, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 343
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/p$a;

    .line 344
    invoke-interface {v1}, Lcom/google/protobuf/p$a;->gp()Lcom/google/protobuf/A$b;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/A$b;->ft:Lcom/google/protobuf/A$b;

    if-ne v4, v5, :cond_b

    .line 345
    invoke-interface {v1}, Lcom/google/protobuf/p$a;->gs()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 347
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/u;

    .line 348
    invoke-interface {v0}, Lcom/google/protobuf/u;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_35

    move v0, v2

    .line 360
    :goto_48
    return v0

    .line 353
    :cond_49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/u;

    invoke-interface {v0}, Lcom/google/protobuf/u;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    .line 354
    goto :goto_48

    .line 360
    :cond_57
    const/4 v0, 0x1

    goto :goto_48
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public makeImmutable()V
    .registers 5

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/p$a;

    invoke-interface {v1}, Lcom/google/protobuf/p$a;->gs()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 112
    iget-object v3, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 115
    :cond_36
    iget-object v0, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/p;->ei:Ljava/util/Map;

    .line 116
    return-void
.end method
