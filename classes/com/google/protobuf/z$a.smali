.class public final Lcom/google/protobuf/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private eE:I

.field private eF:Lcom/google/protobuf/z$b$a;

.field private ei:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private X(I)Lcom/google/protobuf/z$b$a;
    .registers 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/protobuf/z$a;->eF:Lcom/google/protobuf/z$b$a;

    if-eqz v0, :cond_16

    .line 304
    iget v0, p0, Lcom/google/protobuf/z$a;->eE:I

    if-ne p1, v0, :cond_b

    .line 305
    iget-object v0, p0, Lcom/google/protobuf/z$a;->eF:Lcom/google/protobuf/z$b$a;

    .line 319
    :goto_a
    return-object v0

    .line 308
    :cond_b
    iget v0, p0, Lcom/google/protobuf/z$a;->eE:I

    iget-object v1, p0, Lcom/google/protobuf/z$a;->eF:Lcom/google/protobuf/z$b$a;

    invoke-virtual {v1}, Lcom/google/protobuf/z$b$a;->hy()Lcom/google/protobuf/z$b;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/z$a;->b(ILcom/google/protobuf/z$b;)Lcom/google/protobuf/z$a;

    .line 310
    :cond_16
    if-nez p1, :cond_1a

    .line 311
    const/4 v0, 0x0

    goto :goto_a

    .line 313
    :cond_1a
    iget-object v0, p0, Lcom/google/protobuf/z$a;->ei:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/z$b;

    .line 314
    iput p1, p0, Lcom/google/protobuf/z$a;->eE:I

    .line 315
    invoke-static {}, Lcom/google/protobuf/z$b;->hq()Lcom/google/protobuf/z$b$a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/z$a;->eF:Lcom/google/protobuf/z$b$a;

    .line 316
    if-eqz v0, :cond_35

    .line 317
    iget-object v1, p0, Lcom/google/protobuf/z$a;->eF:Lcom/google/protobuf/z$b$a;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/z$b$a;->f(Lcom/google/protobuf/z$b;)Lcom/google/protobuf/z$b$a;

    .line 319
    :cond_35
    iget-object v0, p0, Lcom/google/protobuf/z$a;->eF:Lcom/google/protobuf/z$b$a;

    goto :goto_a
.end method

.method private static hm()Lcom/google/protobuf/z$a;
    .registers 1

    .prologue
    .line 293
    new-instance v0, Lcom/google/protobuf/z$a;

    invoke-direct {v0}, Lcom/google/protobuf/z$a;-><init>()V

    .line 294
    invoke-direct {v0}, Lcom/google/protobuf/z$a;->reinitialize()V

    .line 295
    return-object v0
.end method

.method static synthetic hp()Lcom/google/protobuf/z$a;
    .registers 1

    .prologue
    .line 280
    invoke-static {}, Lcom/google/protobuf/z$a;->hm()Lcom/google/protobuf/z$a;

    move-result-object v0

    return-object v0
.end method

.method private reinitialize()V
    .registers 2

    .prologue
    .line 360
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/z$a;->ei:Ljava/util/Map;

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/z$a;->eE:I

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/z$a;->eF:Lcom/google/protobuf/z$b$a;

    .line 363
    return-void
.end method


# virtual methods
.method public Y(I)Z
    .registers 4

    .prologue
    .line 419
    if-nez p1, :cond_a

    .line 420
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_a
    iget v0, p0, Lcom/google/protobuf/z$a;->eE:I

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lcom/google/protobuf/z$a;->ei:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public a(ILcom/google/protobuf/z$b;)Lcom/google/protobuf/z$a;
    .registers 5

    .prologue
    .line 390
    if-nez p1, :cond_a

    .line 391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/protobuf/z$a;->Y(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 394
    invoke-direct {p0, p1}, Lcom/google/protobuf/z$a;->X(I)Lcom/google/protobuf/z$b$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/protobuf/z$b$a;->f(Lcom/google/protobuf/z$b;)Lcom/google/protobuf/z$b$a;

    .line 401
    :goto_17
    return-object p0

    .line 399
    :cond_18
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/z$a;->b(ILcom/google/protobuf/z$b;)Lcom/google/protobuf/z$a;

    goto :goto_17
.end method

.method public a(ILcom/google/protobuf/d;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 475
    invoke-static {p1}, Lcom/google/protobuf/A;->ad(I)I

    move-result v1

    .line 476
    invoke-static {p1}, Lcom/google/protobuf/A;->ac(I)I

    move-result v2

    packed-switch v2, :pswitch_data_5a

    .line 498
    invoke-static {}, Lcom/google/protobuf/s;->hc()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 478
    :pswitch_11
    invoke-direct {p0, v1}, Lcom/google/protobuf/z$a;->X(I)Lcom/google/protobuf/z$b$a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/protobuf/d;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/protobuf/z$b$a;->s(J)Lcom/google/protobuf/z$b$a;

    .line 496
    :goto_1c
    return v0

    .line 481
    :pswitch_1d
    invoke-direct {p0, v1}, Lcom/google/protobuf/z$a;->X(I)Lcom/google/protobuf/z$b$a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/protobuf/d;->j()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/protobuf/z$b$a;->t(J)Lcom/google/protobuf/z$b$a;

    goto :goto_1c

    .line 484
    :pswitch_29
    invoke-direct {p0, v1}, Lcom/google/protobuf/z$a;->X(I)Lcom/google/protobuf/z$b$a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/protobuf/d;->m()Lcom/google/protobuf/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/z$b$a;->e(Lcom/google/protobuf/c;)Lcom/google/protobuf/z$b$a;

    goto :goto_1c

    .line 487
    :pswitch_35
    invoke-static {}, Lcom/google/protobuf/z;->hh()Lcom/google/protobuf/z$a;

    move-result-object v2

    .line 488
    invoke-static {}, Lcom/google/protobuf/n;->gN()Lcom/google/protobuf/n;

    move-result-object v3

    invoke-virtual {p2, v1, v2, v3}, Lcom/google/protobuf/d;->a(ILcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 490
    invoke-direct {p0, v1}, Lcom/google/protobuf/z$a;->X(I)Lcom/google/protobuf/z$b$a;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/z$b$a;->k(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$b$a;

    goto :goto_1c

    .line 493
    :pswitch_4c
    const/4 v0, 0x0

    goto :goto_1c

    .line 495
    :pswitch_4e
    invoke-direct {p0, v1}, Lcom/google/protobuf/z$a;->X(I)Lcom/google/protobuf/z$b$a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/protobuf/d;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/z$b$a;->ab(I)Lcom/google/protobuf/z$b$a;

    goto :goto_1c

    .line 476
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_11
        :pswitch_1d
        :pswitch_29
        :pswitch_35
        :pswitch_4c
        :pswitch_4e
    .end packed-switch
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    return-object v0
.end method

.method public b(ILcom/google/protobuf/z$b;)Lcom/google/protobuf/z$a;
    .registers 5

    .prologue
    .line 430
    if-nez p1, :cond_a

    .line 431
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/z$a;->eF:Lcom/google/protobuf/z$b$a;

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/google/protobuf/z$a;->eE:I

    if-ne v0, p1, :cond_18

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/z$a;->eF:Lcom/google/protobuf/z$b$a;

    .line 436
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/z$a;->eE:I

    .line 438
    :cond_18
    iget-object v0, p0, Lcom/google/protobuf/z$a;->ei:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 439
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/z$a;->ei:Ljava/util/Map;

    .line 441
    :cond_27
    iget-object v0, p0, Lcom/google/protobuf/z$a;->ei:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    return-object p0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/z$a;->v(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/z$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/google/protobuf/z$a;->ho()Lcom/google/protobuf/z$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/protobuf/d;)Lcom/google/protobuf/z$a;
    .registers 3

    .prologue
    .line 460
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v0

    .line 461
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/z$a;->a(ILcom/google/protobuf/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    :cond_c
    return-object p0
.end method

.method public hn()Lcom/google/protobuf/z;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/z$a;->X(I)Lcom/google/protobuf/z$b$a;

    .line 334
    iget-object v0, p0, Lcom/google/protobuf/z$a;->ei:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 335
    invoke-static {}, Lcom/google/protobuf/z;->hi()Lcom/google/protobuf/z;

    move-result-object v0

    .line 339
    :goto_11
    iput-object v2, p0, Lcom/google/protobuf/z$a;->ei:Ljava/util/Map;

    .line 340
    return-object v0

    .line 337
    :cond_14
    new-instance v0, Lcom/google/protobuf/z;

    iget-object v1, p0, Lcom/google/protobuf/z$a;->ei:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/z;-><init>(Ljava/util/Map;Lcom/google/protobuf/d;)V

    goto :goto_11
.end method

.method public ho()Lcom/google/protobuf/z$a;
    .registers 5

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/z$a;->X(I)Lcom/google/protobuf/z$b$a;

    .line 351
    invoke-static {}, Lcom/google/protobuf/z;->hh()Lcom/google/protobuf/z$a;

    move-result-object v0

    new-instance v1, Lcom/google/protobuf/z;

    iget-object v2, p0, Lcom/google/protobuf/z$a;->ei:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/z;-><init>(Ljava/util/Map;Lcom/google/protobuf/d;)V

    invoke-virtual {v0, v1}, Lcom/google/protobuf/z$a;->j(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    return-object v0
.end method

.method public j(II)Lcom/google/protobuf/z$a;
    .registers 7

    .prologue
    .line 410
    if-nez p1, :cond_a

    .line 411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_a
    invoke-direct {p0, p1}, Lcom/google/protobuf/z$a;->X(I)Lcom/google/protobuf/z$b$a;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/z$b$a;->s(J)Lcom/google/protobuf/z$b$a;

    .line 414
    return-object p0
.end method

.method public j(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;
    .registers 5

    .prologue
    .line 377
    invoke-static {}, Lcom/google/protobuf/z;->hi()Lcom/google/protobuf/z;

    move-result-object v0

    if-eq p1, v0, :cond_32

    .line 378
    invoke-static {p1}, Lcom/google/protobuf/z;->i(Lcom/google/protobuf/z;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 379
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/z$b;

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/z$a;->a(ILcom/google/protobuf/z$b;)Lcom/google/protobuf/z$a;

    goto :goto_12

    .line 382
    :cond_32
    return-object p0
.end method

.method public v(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/z$a;
    .registers 4

    .prologue
    .line 579
    invoke-virtual {p0, p1}, Lcom/google/protobuf/z$a;->d(Lcom/google/protobuf/d;)Lcom/google/protobuf/z$a;

    move-result-object v0

    return-object v0
.end method
