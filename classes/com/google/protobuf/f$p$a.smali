.class public final Lcom/google/protobuf/f$p$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private cL:Lcom/google/protobuf/f$p;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 8413
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static fJ()Lcom/google/protobuf/f$p$a;
    .registers 3

    .prologue
    .line 8416
    new-instance v0, Lcom/google/protobuf/f$p$a;

    invoke-direct {v0}, Lcom/google/protobuf/f$p$a;-><init>()V

    .line 8417
    new-instance v1, Lcom/google/protobuf/f$p;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/f$p;-><init>(Lcom/google/protobuf/g;)V

    iput-object v1, v0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    .line 8418
    return-object v0
.end method

.method static synthetic fO()Lcom/google/protobuf/f$p$a;
    .registers 1

    .prologue
    .line 8408
    invoke-static {}, Lcom/google/protobuf/f$p$a;->fJ()Lcom/google/protobuf/f$p$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/google/protobuf/f$p$a;
    .registers 4

    .prologue
    .line 8627
    if-nez p1, :cond_8

    .line 8628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8630
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$p;->a(Lcom/google/protobuf/f$p;Z)Z

    .line 8631
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$p;->a(Lcom/google/protobuf/f$p;Ljava/lang/String;)Ljava/lang/String;

    .line 8632
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 8408
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$p$a;->t(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$p$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 8408
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$p$a;->v(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$p$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/f$p$b;)Lcom/google/protobuf/f$p$a;
    .registers 4

    .prologue
    .line 8590
    if-nez p1, :cond_8

    .line 8591
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8593
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    invoke-static {v0}, Lcom/google/protobuf/f$p;->i(Lcom/google/protobuf/f$p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 8594
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$p;->a(Lcom/google/protobuf/f$p;Ljava/util/List;)Ljava/util/List;

    .line 8596
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    invoke-static {v0}, Lcom/google/protobuf/f$p;->i(Lcom/google/protobuf/f$p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8597
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 8440
    invoke-static {}, Lcom/google/protobuf/f$p;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$a;->fK()Lcom/google/protobuf/f$p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$a;->fL()Lcom/google/protobuf/f$p$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$a;->fM()Lcom/google/protobuf/f$p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$a;->fM()Lcom/google/protobuf/f$p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$a;->fL()Lcom/google/protobuf/f$p$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 8408
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$p$a;->t(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$p$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$a;->fL()Lcom/google/protobuf/f$p$a;

    move-result-object v0

    return-object v0
.end method

.method public c(D)Lcom/google/protobuf/f$p$a;
    .registers 6

    .prologue
    .line 8684
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$p;->d(Lcom/google/protobuf/f$p;Z)Z

    .line 8685
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/f$p;->a(Lcom/google/protobuf/f$p;D)D

    .line 8686
    return-object p0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 8408
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$p$a;->t(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$p$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$a;->fL()Lcom/google/protobuf/f$p$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/protobuf/c;)Lcom/google/protobuf/f$p$a;
    .registers 4

    .prologue
    .line 8702
    if-nez p1, :cond_8

    .line 8703
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8705
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$p;->e(Lcom/google/protobuf/f$p;Z)Z

    .line 8706
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$p;->a(Lcom/google/protobuf/f$p;Lcom/google/protobuf/c;)Lcom/google/protobuf/c;

    .line 8707
    return-object p0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 8408
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$p$a;->v(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$p$a;

    move-result-object v0

    return-object v0
.end method

.method protected fK()Lcom/google/protobuf/f$p;
    .registers 2

    .prologue
    .line 8422
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    return-object v0
.end method

.method public fL()Lcom/google/protobuf/f$p$a;
    .registers 3

    .prologue
    .line 8435
    invoke-static {}, Lcom/google/protobuf/f$p$a;->fJ()Lcom/google/protobuf/f$p$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/f$p$a;->j(Lcom/google/protobuf/f$p;)Lcom/google/protobuf/f$p$a;

    move-result-object v0

    return-object v0
.end method

.method public fM()Lcom/google/protobuf/f$p;
    .registers 2

    .prologue
    .line 8451
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/f$p$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 8452
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    invoke-static {v0}, Lcom/google/protobuf/f$p$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 8454
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$a;->fN()Lcom/google/protobuf/f$p;

    move-result-object v0

    return-object v0
.end method

.method public fN()Lcom/google/protobuf/f$p;
    .registers 3

    .prologue
    .line 8467
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    if-nez v0, :cond_c

    .line 8468
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8471
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    invoke-static {v0}, Lcom/google/protobuf/f$p;->i(Lcom/google/protobuf/f$p;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 8472
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    iget-object v1, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    invoke-static {v1}, Lcom/google/protobuf/f$p;->i(Lcom/google/protobuf/f$p;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$p;->a(Lcom/google/protobuf/f$p;Ljava/util/List;)Ljava/util/List;

    .line 8475
    :cond_25
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    .line 8476
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    .line 8477
    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 8448
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    invoke-virtual {v0}, Lcom/google/protobuf/f$p;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public j(Lcom/google/protobuf/f$p;)Lcom/google/protobuf/f$p$a;
    .registers 4

    .prologue
    .line 8490
    invoke-static {}, Lcom/google/protobuf/f$p;->fu()Lcom/google/protobuf/f$p;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 8513
    :goto_6
    return-object p0

    .line 8491
    :cond_7
    invoke-static {p1}, Lcom/google/protobuf/f$p;->i(Lcom/google/protobuf/f$p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 8492
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    invoke-static {v0}, Lcom/google/protobuf/f$p;->i(Lcom/google/protobuf/f$p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 8493
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$p;->a(Lcom/google/protobuf/f$p;Ljava/util/List;)Ljava/util/List;

    .line 8495
    :cond_27
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    invoke-static {v0}, Lcom/google/protobuf/f$p;->i(Lcom/google/protobuf/f$p;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$p;->i(Lcom/google/protobuf/f$p;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8497
    :cond_34
    invoke-virtual {p1}, Lcom/google/protobuf/f$p;->fx()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 8498
    invoke-virtual {p1}, Lcom/google/protobuf/f$p;->fy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$p$a;->A(Ljava/lang/String;)Lcom/google/protobuf/f$p$a;

    .line 8500
    :cond_41
    invoke-virtual {p1}, Lcom/google/protobuf/f$p;->fz()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 8501
    invoke-virtual {p1}, Lcom/google/protobuf/f$p;->fA()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/f$p$a;->q(J)Lcom/google/protobuf/f$p$a;

    .line 8503
    :cond_4e
    invoke-virtual {p1}, Lcom/google/protobuf/f$p;->fB()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 8504
    invoke-virtual {p1}, Lcom/google/protobuf/f$p;->fC()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/f$p$a;->r(J)Lcom/google/protobuf/f$p$a;

    .line 8506
    :cond_5b
    invoke-virtual {p1}, Lcom/google/protobuf/f$p;->fD()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 8507
    invoke-virtual {p1}, Lcom/google/protobuf/f$p;->fE()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/f$p$a;->c(D)Lcom/google/protobuf/f$p$a;

    .line 8509
    :cond_68
    invoke-virtual {p1}, Lcom/google/protobuf/f$p;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 8510
    invoke-virtual {p1}, Lcom/google/protobuf/f$p;->fF()Lcom/google/protobuf/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$p$a;->d(Lcom/google/protobuf/c;)Lcom/google/protobuf/f$p$a;

    .line 8512
    :cond_75
    invoke-virtual {p1}, Lcom/google/protobuf/f$p;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$p$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public q(J)Lcom/google/protobuf/f$p$a;
    .registers 6

    .prologue
    .line 8648
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$p;->b(Lcom/google/protobuf/f$p;Z)Z

    .line 8649
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/f$p;->a(Lcom/google/protobuf/f$p;J)J

    .line 8650
    return-object p0
.end method

.method public r(J)Lcom/google/protobuf/f$p$a;
    .registers 6

    .prologue
    .line 8666
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$p;->c(Lcom/google/protobuf/f$p;Z)Z

    .line 8667
    iget-object v0, p0, Lcom/google/protobuf/f$p$a;->cL:Lcom/google/protobuf/f$p;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/f$p;->b(Lcom/google/protobuf/f$p;J)J

    .line 8668
    return-object p0
.end method

.method public t(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$p$a;
    .registers 7

    .prologue
    .line 8520
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 8524
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 8525
    sparse-switch v1, :sswitch_data_5c

    .line 8530
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/protobuf/f$p$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 8532
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$p$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 8533
    :goto_1c
    return-object p0

    .line 8527
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$p$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 8538
    :sswitch_25
    invoke-static {}, Lcom/google/protobuf/f$p$b;->fV()Lcom/google/protobuf/f$p$b$a;

    move-result-object v1

    .line 8539
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 8540
    invoke-virtual {v1}, Lcom/google/protobuf/f$p$b$a;->gc()Lcom/google/protobuf/f$p$b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$p$a;->a(Lcom/google/protobuf/f$p$b;)Lcom/google/protobuf/f$p$a;

    goto :goto_8

    .line 8544
    :sswitch_34
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$p$a;->A(Ljava/lang/String;)Lcom/google/protobuf/f$p$a;

    goto :goto_8

    .line 8548
    :sswitch_3c
    invoke-virtual {p1}, Lcom/google/protobuf/d;->g()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/protobuf/f$p$a;->q(J)Lcom/google/protobuf/f$p$a;

    goto :goto_8

    .line 8552
    :sswitch_44
    invoke-virtual {p1}, Lcom/google/protobuf/d;->h()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/protobuf/f$p$a;->r(J)Lcom/google/protobuf/f$p$a;

    goto :goto_8

    .line 8556
    :sswitch_4c
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/protobuf/f$p$a;->c(D)Lcom/google/protobuf/f$p$a;

    goto :goto_8

    .line 8560
    :sswitch_54
    invoke-virtual {p1}, Lcom/google/protobuf/d;->m()Lcom/google/protobuf/c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$p$a;->d(Lcom/google/protobuf/c;)Lcom/google/protobuf/f$p$a;

    goto :goto_8

    .line 8525
    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_1d
        0x12 -> :sswitch_25
        0x1a -> :sswitch_34
        0x20 -> :sswitch_3c
        0x28 -> :sswitch_44
        0x31 -> :sswitch_4c
        0x3a -> :sswitch_54
    .end sparse-switch
.end method

.method public v(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$p$a;
    .registers 3

    .prologue
    .line 8481
    instance-of v0, p1, Lcom/google/protobuf/f$p;

    if-eqz v0, :cond_b

    .line 8482
    check-cast p1, Lcom/google/protobuf/f$p;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$p$a;->j(Lcom/google/protobuf/f$p;)Lcom/google/protobuf/f$p$a;

    move-result-object p0

    .line 8485
    :goto_a
    return-object p0

    .line 8484
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method
