.class public abstract Lcom/google/protobuf/a$a;
.super Lcom/google/protobuf/b$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/google/protobuf/b$a;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/google/protobuf/l$f;I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->isExtension()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 603
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    :goto_1e
    const/4 v1, -0x1

    if-eq p2, v1, :cond_30

    .line 610
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    :cond_30
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 607
    :cond_3a
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e
.end method

.method private static a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;Lcom/google/protobuf/t$a;)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 433
    invoke-interface {p3}, Lcom/google/protobuf/t$a;->aT()Lcom/google/protobuf/l$a;

    move-result-object v6

    .line 451
    const/4 v0, 0x0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move v5, v0

    .line 457
    :goto_a
    invoke-virtual {p0}, Lcom/google/protobuf/d;->e()I

    move-result v0

    .line 458
    if-eqz v0, :cond_90

    .line 459
    sget v7, Lcom/google/protobuf/A;->eO:I

    if-ne v0, v7, :cond_60

    .line 463
    invoke-virtual {p0}, Lcom/google/protobuf/d;->n()I

    move-result v5

    .line 465
    if-eqz v5, :cond_8c

    .line 473
    instance-of v0, p2, Lcom/google/protobuf/n;

    if-eqz v0, :cond_4a

    move-object v0, p2

    .line 474
    check-cast v0, Lcom/google/protobuf/n;

    invoke-virtual {v0, v6, v5}, Lcom/google/protobuf/n;->a(Lcom/google/protobuf/l$a;I)Lmobi/androidcloud/lib/aws/b;

    move-result-object v0

    .line 480
    :goto_25
    if-eqz v0, :cond_4c

    .line 481
    iget-object v1, v0, Lmobi/androidcloud/lib/aws/b;->hd:Lcom/google/protobuf/l$f;

    .line 482
    iget-object v0, v0, Lmobi/androidcloud/lib/aws/b;->he:Lcom/google/protobuf/t;

    invoke-interface {v0}, Lcom/google/protobuf/t;->aN()Lcom/google/protobuf/t$a;

    move-result-object v3

    .line 483
    invoke-interface {p3, v1}, Lcom/google/protobuf/t$a;->g(Lcom/google/protobuf/l$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t;

    .line 484
    if-eqz v0, :cond_3a

    .line 485
    invoke-interface {v3, v0}, Lcom/google/protobuf/t$a;->d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;

    .line 487
    :cond_3a
    if-eqz v4, :cond_a1

    .line 489
    invoke-virtual {v4}, Lcom/google/protobuf/c;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/d;->d(Ljava/io/InputStream;)Lcom/google/protobuf/d;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/google/protobuf/t$a;->c(Lcom/google/protobuf/d;)Lcom/google/protobuf/t$a;

    move-object v0, v2

    :goto_48
    move-object v4, v0

    .line 493
    goto :goto_a

    :cond_4a
    move-object v0, v2

    .line 477
    goto :goto_25

    .line 496
    :cond_4c
    if-eqz v4, :cond_9f

    .line 497
    invoke-static {}, Lcom/google/protobuf/z$b;->hq()Lcom/google/protobuf/z$b$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/protobuf/z$b$a;->e(Lcom/google/protobuf/c;)Lcom/google/protobuf/z$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z$b$a;->hy()Lcom/google/protobuf/z$b;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/z$a;->a(ILcom/google/protobuf/z$b;)Lcom/google/protobuf/z$a;

    move-object v0, v2

    :goto_5e
    move-object v4, v0

    .line 504
    goto :goto_a

    .line 505
    :cond_60
    sget v7, Lcom/google/protobuf/A;->eP:I

    if-ne v0, v7, :cond_86

    .line 506
    if-nez v5, :cond_6c

    .line 509
    invoke-virtual {p0}, Lcom/google/protobuf/d;->m()Lcom/google/protobuf/c;

    move-result-object v0

    move-object v4, v0

    goto :goto_a

    .line 510
    :cond_6c
    if-nez v3, :cond_82

    .line 512
    invoke-static {}, Lcom/google/protobuf/z$b;->hq()Lcom/google/protobuf/z$b$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/d;->m()Lcom/google/protobuf/c;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/z$b$a;->e(Lcom/google/protobuf/c;)Lcom/google/protobuf/z$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z$b$a;->hy()Lcom/google/protobuf/z$b;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/z$a;->a(ILcom/google/protobuf/z$b;)Lcom/google/protobuf/z$a;

    goto :goto_a

    .line 519
    :cond_82
    invoke-virtual {p0, v3, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    goto :goto_a

    .line 523
    :cond_86
    invoke-virtual {p0, v0}, Lcom/google/protobuf/d;->b(I)Z

    move-result v0

    if-eqz v0, :cond_90

    :cond_8c
    move v0, v5

    move v5, v0

    .line 524
    goto/16 :goto_a

    .line 529
    :cond_90
    sget v0, Lcom/google/protobuf/A;->eN:I

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d;->a(I)V

    .line 531
    if-eqz v3, :cond_9e

    .line 532
    invoke-interface {v3}, Lcom/google/protobuf/t$a;->aY()Lcom/google/protobuf/t;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lcom/google/protobuf/t$a;->d(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/t$a;

    .line 534
    :cond_9e
    return-void

    :cond_9f
    move-object v0, v4

    goto :goto_5e

    :cond_a1
    move-object v0, v4

    goto :goto_48
.end method

.method private static a(Lcom/google/protobuf/t;Ljava/lang/String;Ljava/util/List;)V
    .registers 9

    .prologue
    .line 568
    invoke-interface {p0}, Lcom/google/protobuf/t;->aT()Lcom/google/protobuf/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$a;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$f;

    .line 569
    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->isRequired()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p0, v0}, Lcom/google/protobuf/t;->d(Lcom/google/protobuf/l$f;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 575
    :cond_3d
    invoke-interface {p0}, Lcom/google/protobuf/t;->gG()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_49
    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 576
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/l$f;

    .line 577
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 579
    invoke-virtual {v1}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    if-ne v2, v3, :cond_49

    .line 580
    invoke-virtual {v1}, Lcom/google/protobuf/l$f;->gs()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 581
    const/4 v2, 0x0

    .line 582
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_74
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 583
    check-cast v0, Lcom/google/protobuf/t;

    add-int/lit8 v3, v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/a$a;->a(Ljava/lang/String;Lcom/google/protobuf/l$f;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/google/protobuf/a$a;->a(Lcom/google/protobuf/t;Ljava/lang/String;Ljava/util/List;)V

    move v2, v3

    goto :goto_74

    .line 588
    :cond_8b
    invoke-interface {p0, v1}, Lcom/google/protobuf/t;->d(Lcom/google/protobuf/l$f;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 589
    check-cast v0, Lcom/google/protobuf/t;

    const/4 v2, -0x1

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/a$a;->a(Ljava/lang/String;Lcom/google/protobuf/l$f;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/protobuf/a$a;->a(Lcom/google/protobuf/t;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_49

    .line 596
    :cond_9c
    return-void
.end method

.method static a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;Lcom/google/protobuf/t$a;I)Z
    .registers 13

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 284
    invoke-interface {p3}, Lcom/google/protobuf/t$a;->aT()Lcom/google/protobuf/l$a;

    move-result-object v4

    .line 286
    invoke-virtual {v4}, Lcom/google/protobuf/l$a;->aI()Lcom/google/protobuf/f$k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/f$k;->ei()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget v0, Lcom/google/protobuf/A;->eM:I

    if-ne p4, v0, :cond_1a

    .line 288
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/a$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;Lcom/google/protobuf/t$a;)V

    move v0, v2

    .line 424
    :goto_19
    return v0

    .line 293
    :cond_1a
    invoke-static {p4}, Lcom/google/protobuf/A;->ac(I)I

    move-result v5

    .line 294
    invoke-static {p4}, Lcom/google/protobuf/A;->ad(I)I

    move-result v6

    .line 299
    invoke-virtual {v4, v6}, Lcom/google/protobuf/l$a;->U(I)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 305
    instance-of v0, p2, Lcom/google/protobuf/n;

    if-eqz v0, :cond_74

    move-object v0, p2

    .line 306
    check-cast v0, Lcom/google/protobuf/n;

    invoke-virtual {v0, v4, v6}, Lcom/google/protobuf/n;->a(Lcom/google/protobuf/l$a;I)Lmobi/androidcloud/lib/aws/b;

    move-result-object v0

    .line 309
    if-nez v0, :cond_4a

    move-object v4, v3

    .line 330
    :goto_36
    if-eqz v4, :cond_8e

    .line 331
    invoke-virtual {v4}, Lcom/google/protobuf/l$f;->gr()Lcom/google/protobuf/A$a;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/A$a;Z)I

    move-result v0

    if-ne v5, v0, :cond_7c

    move v0, v1

    .line 345
    :goto_43
    if-eqz v1, :cond_91

    .line 346
    invoke-virtual {p1, p4, p0}, Lcom/google/protobuf/z$a;->a(ILcom/google/protobuf/d;)Z

    move-result v0

    goto :goto_19

    .line 312
    :cond_4a
    iget-object v3, v0, Lmobi/androidcloud/lib/aws/b;->hd:Lcom/google/protobuf/l$f;

    .line 313
    iget-object v0, v0, Lmobi/androidcloud/lib/aws/b;->he:Lcom/google/protobuf/t;

    .line 314
    if-nez v0, :cond_71

    invoke-virtual {v3}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v4

    sget-object v7, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    if-ne v4, v7, :cond_71

    .line 316
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message-typed extension lacked default instance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/protobuf/l$f;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_71
    move-object v4, v3

    move-object v3, v0

    .line 321
    goto :goto_36

    :cond_74
    move-object v4, v3

    .line 322
    goto :goto_36

    .line 325
    :cond_76
    invoke-virtual {v4, v6}, Lcom/google/protobuf/l$a;->V(I)Lcom/google/protobuf/l$f;

    move-result-object v0

    move-object v4, v0

    goto :goto_36

    .line 336
    :cond_7c
    invoke-virtual {v4}, Lcom/google/protobuf/l$f;->gu()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-virtual {v4}, Lcom/google/protobuf/l$f;->gr()Lcom/google/protobuf/A$a;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/A$a;Z)I

    move-result v0

    if-ne v5, v0, :cond_8e

    move v0, v2

    .line 340
    goto :goto_43

    :cond_8e
    move v0, v1

    move v1, v2

    .line 342
    goto :goto_43

    .line 349
    :cond_91
    if-eqz v0, :cond_d6

    .line 350
    invoke-virtual {p0}, Lcom/google/protobuf/d;->t()I

    move-result v0

    .line 351
    invoke-virtual {p0, v0}, Lcom/google/protobuf/d;->d(I)I

    move-result v0

    .line 352
    invoke-virtual {v4}, Lcom/google/protobuf/l$f;->gr()Lcom/google/protobuf/A$a;

    move-result-object v1

    sget-object v3, Lcom/google/protobuf/A$a;->fd:Lcom/google/protobuf/A$a;

    if-ne v1, v3, :cond_be

    .line 353
    :goto_a3
    invoke-virtual {p0}, Lcom/google/protobuf/d;->y()I

    move-result v1

    if-lez v1, :cond_d0

    .line 354
    invoke-virtual {p0}, Lcom/google/protobuf/d;->o()I

    move-result v1

    .line 355
    invoke-virtual {v4}, Lcom/google/protobuf/l$f;->gy()Lcom/google/protobuf/l$d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/protobuf/l$d;->W(I)Lcom/google/protobuf/l$e;

    move-result-object v1

    .line 356
    if-nez v1, :cond_ba

    move v0, v2

    .line 359
    goto/16 :goto_19

    .line 361
    :cond_ba
    invoke-interface {p3, v4, v1}, Lcom/google/protobuf/t$a;->c(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/t$a;

    goto :goto_a3

    .line 364
    :cond_be
    :goto_be
    invoke-virtual {p0}, Lcom/google/protobuf/d;->y()I

    move-result v1

    if-lez v1, :cond_d0

    .line 365
    invoke-virtual {v4}, Lcom/google/protobuf/l$f;->gr()Lcom/google/protobuf/A$a;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/A$a;)Ljava/lang/Object;

    move-result-object v1

    .line 367
    invoke-interface {p3, v4, v1}, Lcom/google/protobuf/t$a;->c(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/t$a;

    goto :goto_be

    .line 370
    :cond_d0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/d;->e(I)V

    :goto_d3
    move v0, v2

    .line 424
    goto/16 :goto_19

    .line 373
    :cond_d6
    sget-object v0, Lcom/google/protobuf/a$1;->b:[I

    invoke-virtual {v4}, Lcom/google/protobuf/l$f;->gq()Lcom/google/protobuf/l$f$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/l$f$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_15c

    .line 413
    invoke-virtual {v4}, Lcom/google/protobuf/l$f;->gr()Lcom/google/protobuf/A$a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/A$a;)Ljava/lang/Object;

    move-result-object v0

    .line 417
    :cond_ed
    :goto_ed
    invoke-virtual {v4}, Lcom/google/protobuf/l$f;->gs()Z

    move-result v1

    if-eqz v1, :cond_157

    .line 418
    invoke-interface {p3, v4, v0}, Lcom/google/protobuf/t$a;->c(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/t$a;

    goto :goto_d3

    .line 376
    :pswitch_f7
    if-eqz v3, :cond_119

    .line 377
    invoke-interface {v3}, Lcom/google/protobuf/t;->aN()Lcom/google/protobuf/t$a;

    move-result-object v0

    move-object v1, v0

    .line 381
    :goto_fe
    invoke-virtual {v4}, Lcom/google/protobuf/l$f;->gs()Z

    move-result v0

    if-nez v0, :cond_10d

    .line 382
    invoke-interface {p3, v4}, Lcom/google/protobuf/t$a;->g(Lcom/google/protobuf/l$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t;

    invoke-interface {v1, v0}, Lcom/google/protobuf/t$a;->d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;

    .line 384
    :cond_10d
    invoke-virtual {v4}, Lcom/google/protobuf/l$f;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/d;->a(ILcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 385
    invoke-interface {v1}, Lcom/google/protobuf/t$a;->aY()Lcom/google/protobuf/t;

    move-result-object v0

    goto :goto_ed

    .line 379
    :cond_119
    invoke-interface {p3, v4}, Lcom/google/protobuf/t$a;->h(Lcom/google/protobuf/l$f;)Lcom/google/protobuf/t$a;

    move-result-object v0

    move-object v1, v0

    goto :goto_fe

    .line 390
    :pswitch_11f
    if-eqz v3, :cond_13d

    .line 391
    invoke-interface {v3}, Lcom/google/protobuf/t;->aN()Lcom/google/protobuf/t$a;

    move-result-object v0

    move-object v1, v0

    .line 395
    :goto_126
    invoke-virtual {v4}, Lcom/google/protobuf/l$f;->gs()Z

    move-result v0

    if-nez v0, :cond_135

    .line 396
    invoke-interface {p3, v4}, Lcom/google/protobuf/t$a;->g(Lcom/google/protobuf/l$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t;

    invoke-interface {v1, v0}, Lcom/google/protobuf/t$a;->d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;

    .line 398
    :cond_135
    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 399
    invoke-interface {v1}, Lcom/google/protobuf/t$a;->aY()Lcom/google/protobuf/t;

    move-result-object v0

    goto :goto_ed

    .line 393
    :cond_13d
    invoke-interface {p3, v4}, Lcom/google/protobuf/t$a;->h(Lcom/google/protobuf/l$f;)Lcom/google/protobuf/t$a;

    move-result-object v0

    move-object v1, v0

    goto :goto_126

    .line 403
    :pswitch_143
    invoke-virtual {p0}, Lcom/google/protobuf/d;->o()I

    move-result v1

    .line 404
    invoke-virtual {v4}, Lcom/google/protobuf/l$f;->gy()Lcom/google/protobuf/l$d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l$d;->W(I)Lcom/google/protobuf/l$e;

    move-result-object v0

    .line 407
    if-nez v0, :cond_ed

    .line 408
    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/z$a;->j(II)Lcom/google/protobuf/z$a;

    move v0, v2

    .line 409
    goto/16 :goto_19

    .line 420
    :cond_157
    invoke-interface {p3, v4, v0}, Lcom/google/protobuf/t$a;->d(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/t$a;

    goto/16 :goto_d3

    .line 373
    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_f7
        :pswitch_11f
        :pswitch_143
    .end packed-switch
.end method

.method protected static b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;
    .registers 3

    .prologue
    .line 550
    new-instance v0, Lcom/google/protobuf/y;

    invoke-static {p0}, Lcom/google/protobuf/a$a;->c(Lcom/google/protobuf/t;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/y;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static c(Lcom/google/protobuf/t;)Ljava/util/List;
    .registers 3

    .prologue
    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/a$a;->a(Lcom/google/protobuf/t;Ljava/lang/String;Ljava/util/List;)V

    .line 560
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/protobuf/d;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 244
    invoke-static {}, Lcom/google/protobuf/n;->gN()Lcom/google/protobuf/n;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 5

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/a$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 255
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 256
    if-eqz v1, :cond_14

    .line 257
    invoke-static {p1, v0, p2, p0, v1}, Lcom/google/protobuf/a$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;Lcom/google/protobuf/t$a;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 263
    :cond_14
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a$a;->e(Lcom/google/protobuf/z;)Lcom/google/protobuf/t$a;

    .line 267
    return-object p0
.end method

.method public a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 7

    .prologue
    .line 199
    invoke-interface {p1}, Lcom/google/protobuf/t;->aT()Lcom/google/protobuf/l$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/a$a;->aT()Lcom/google/protobuf/l$a;

    move-result-object v1

    if-eq v0, v1, :cond_12

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_12
    invoke-interface {p1}, Lcom/google/protobuf/t;->gG()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/l$f;

    .line 216
    invoke-virtual {v1}, Lcom/google/protobuf/l$f;->gs()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 218
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/a$a;->c(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/t$a;

    goto :goto_40

    .line 220
    :cond_4e
    invoke-virtual {v1}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v2

    sget-object v4, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    if-ne v2, v4, :cond_84

    .line 221
    invoke-virtual {p0, v1}, Lcom/google/protobuf/a$a;->g(Lcom/google/protobuf/l$f;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/t;

    .line 222
    invoke-interface {v2}, Lcom/google/protobuf/t;->aO()Lcom/google/protobuf/t;

    move-result-object v4

    if-ne v2, v4, :cond_6a

    .line 223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/a$a;->d(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/t$a;

    goto :goto_1e

    .line 225
    :cond_6a
    invoke-interface {v2}, Lcom/google/protobuf/t;->aN()Lcom/google/protobuf/t$a;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/google/protobuf/t$a;->d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t;

    invoke-interface {v2, v0}, Lcom/google/protobuf/t$a;->d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/t$a;->aY()Lcom/google/protobuf/t;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/a$a;->d(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/t$a;

    goto :goto_1e

    .line 232
    :cond_84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/a$a;->d(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/t$a;

    goto :goto_1e

    .line 236
    :cond_8c
    invoke-interface {p1}, Lcom/google/protobuf/t;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a$a;->a(Lcom/google/protobuf/z;)Lcom/google/protobuf/a$a;

    .line 238
    return-object p0
.end method

.method public a(Lcom/google/protobuf/z;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/google/protobuf/a$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z$a;->j(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a$a;->e(Lcom/google/protobuf/z;)Lcom/google/protobuf/t$a;

    .line 541
    return-object p0
.end method

.method public a(Ljava/io/InputStream;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 683
    invoke-super {p0, p1}, Lcom/google/protobuf/b$a;->c(Ljava/io/InputStream;)Lcom/google/protobuf/b$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a$a;

    return-object v0
.end method

.method public a(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 691
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/b$a;->c(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a$a;

    return-object v0
.end method

.method public a([B)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 654
    invoke-super {p0, p1}, Lcom/google/protobuf/b$a;->b([B)Lcom/google/protobuf/b$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a$a;

    return-object v0
.end method

.method public a([BII)Lcom/google/protobuf/a$a;
    .registers 5

    .prologue
    .line 661
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/b$a;->b([BII)Lcom/google/protobuf/b$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a$a;

    return-object v0
.end method

.method public a([BIILcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 6

    .prologue
    .line 677
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/b$a;->b([BIILcom/google/protobuf/o;)Lcom/google/protobuf/b$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a$a;

    return-object v0
.end method

.method public a([BLcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 669
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/b$a;->b([BLcom/google/protobuf/o;)Lcom/google/protobuf/b$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a$a;

    return-object v0
.end method

.method public abstract b()Lcom/google/protobuf/a$a;
.end method

.method public synthetic b(Lcom/google/protobuf/d;)Lcom/google/protobuf/b$a;
    .registers 3

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a$a;->a(Lcom/google/protobuf/d;)Lcom/google/protobuf/a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([B)Lcom/google/protobuf/b$a;
    .registers 3

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a$a;->a([B)Lcom/google/protobuf/a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([BII)Lcom/google/protobuf/b$a;
    .registers 5

    .prologue
    .line 183
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/a$a;->a([BII)Lcom/google/protobuf/a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([BIILcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 6

    .prologue
    .line 183
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/a$a;->a([BIILcom/google/protobuf/o;)Lcom/google/protobuf/a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([BLcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a$a;->a([BLcom/google/protobuf/o;)Lcom/google/protobuf/a$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/io/InputStream;)Z
    .registers 3

    .prologue
    .line 697
    invoke-super {p0, p1}, Lcom/google/protobuf/b$a;->b(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/io/InputStream;Lcom/google/protobuf/o;)Z
    .registers 4

    .prologue
    .line 705
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/b$a;->b(Ljava/io/InputStream;Lcom/google/protobuf/o;)Z

    move-result v0

    return v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/protobuf/a$a;->b()Lcom/google/protobuf/a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Ljava/io/InputStream;)Lcom/google/protobuf/b$a;
    .registers 3

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a$a;->a(Ljava/io/InputStream;)Lcom/google/protobuf/a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a$a;->a(Ljava/io/InputStream;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a$a;->a(Lcom/google/protobuf/d;)Lcom/google/protobuf/a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/protobuf/a$a;->b()Lcom/google/protobuf/a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/google/protobuf/a$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    move-result-object v0

    return-object v0
.end method
