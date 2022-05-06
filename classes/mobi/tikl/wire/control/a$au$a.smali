.class public final Lmobi/tikl/wire/control/a$au$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private wo:Lmobi/tikl/wire/control/a$au;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15390
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static HC()Lmobi/tikl/wire/control/a$au$a;
    .registers 3

    .prologue
    .line 15393
    new-instance v0, Lmobi/tikl/wire/control/a$au$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$au$a;-><init>()V

    .line 15394
    new-instance v1, Lmobi/tikl/wire/control/a$au;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$au;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    .line 15395
    return-object v0
.end method

.method static synthetic HH()Lmobi/tikl/wire/control/a$au$a;
    .registers 1

    .prologue
    .line 15385
    invoke-static {}, Lmobi/tikl/wire/control/a$au$a;->HC()Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected HD()Lmobi/tikl/wire/control/a$au;
    .registers 2

    .prologue
    .line 15399
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    return-object v0
.end method

.method public HE()Lmobi/tikl/wire/control/a$au$a;
    .registers 3

    .prologue
    .line 15412
    invoke-static {}, Lmobi/tikl/wire/control/a$au$a;->HC()Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$au$a;->d(Lmobi/tikl/wire/control/a$au;)Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    return-object v0
.end method

.method public HF()Lmobi/tikl/wire/control/a$au;
    .registers 2

    .prologue
    .line 15428
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 15429
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$au$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 15431
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au$a;->HG()Lmobi/tikl/wire/control/a$au;

    move-result-object v0

    return-object v0
.end method

.method public HG()Lmobi/tikl/wire/control/a$au;
    .registers 3

    .prologue
    .line 15444
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    if-nez v0, :cond_c

    .line 15445
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15448
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$au;->c(Lmobi/tikl/wire/control/a$au;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 15449
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$au;->c(Lmobi/tikl/wire/control/a$au;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$au;->a(Lmobi/tikl/wire/control/a$au;Ljava/util/List;)Ljava/util/List;

    .line 15452
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    .line 15453
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    .line 15454
    return-object v0
.end method

.method public N(Z)Lmobi/tikl/wire/control/a$au$a;
    .registers 4

    .prologue
    .line 15576
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$au;->a(Lmobi/tikl/wire/control/a$au;Z)Z

    .line 15577
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$au;->b(Lmobi/tikl/wire/control/a$au;Z)Z

    .line 15578
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 15385
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$au$a;->aQ(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 15385
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$au$a;->aS(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lmobi/tikl/wire/control/a$az;)Lmobi/tikl/wire/control/a$au$a;
    .registers 4

    .prologue
    .line 15539
    if-nez p1, :cond_8

    .line 15540
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15542
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$au;->c(Lmobi/tikl/wire/control/a$au;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 15543
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$au;->a(Lmobi/tikl/wire/control/a$au;Ljava/util/List;)Ljava/util/List;

    .line 15545
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$au;->c(Lmobi/tikl/wire/control/a$au;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15546
    return-object p0
.end method

.method public aQ(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$au$a;
    .registers 5

    .prologue
    .line 15485
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 15489
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 15490
    sparse-switch v1, :sswitch_data_3c

    .line 15495
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$au$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 15497
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$au$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 15498
    :goto_1c
    return-object p0

    .line 15492
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$au$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 15503
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$az;->KL()Lmobi/tikl/wire/control/a$az$a;

    move-result-object v1

    .line 15504
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 15505
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$az$a;->KS()Lmobi/tikl/wire/control/a$az;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$au$a;->a(Lmobi/tikl/wire/control/a$az;)Lmobi/tikl/wire/control/a$au$a;

    goto :goto_8

    .line 15509
    :sswitch_34
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$au$a;->N(Z)Lmobi/tikl/wire/control/a$au$a;

    goto :goto_8

    .line 15490
    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x10 -> :sswitch_34
    .end sparse-switch
.end method

.method public aS(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$au$a;
    .registers 3

    .prologue
    .line 15458
    instance-of v0, p1, Lmobi/tikl/wire/control/a$au;

    if-eqz v0, :cond_b

    .line 15459
    check-cast p1, Lmobi/tikl/wire/control/a$au;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$au$a;->d(Lmobi/tikl/wire/control/a$au;)Lmobi/tikl/wire/control/a$au$a;

    move-result-object p0

    .line 15462
    :goto_a
    return-object p0

    .line 15461
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 15417
    invoke-static {}, Lmobi/tikl/wire/control/a$au;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 15385
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au$a;->HD()Lmobi/tikl/wire/control/a$au;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 15385
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au$a;->HE()Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 15385
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au$a;->HF()Lmobi/tikl/wire/control/a$au;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 15385
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au$a;->HF()Lmobi/tikl/wire/control/a$au;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 15385
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au$a;->HE()Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 15385
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$au$a;->aQ(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 15385
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au$a;->HE()Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 15385
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$au$a;->aQ(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 15385
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au$a;->HE()Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 15385
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$au$a;->aS(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$au;)Lmobi/tikl/wire/control/a$au$a;
    .registers 4

    .prologue
    .line 15467
    invoke-static {}, Lmobi/tikl/wire/control/a$au;->Hu()Lmobi/tikl/wire/control/a$au;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 15478
    :goto_6
    return-object p0

    .line 15468
    :cond_7
    invoke-static {p1}, Lmobi/tikl/wire/control/a$au;->c(Lmobi/tikl/wire/control/a$au;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 15469
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$au;->c(Lmobi/tikl/wire/control/a$au;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 15470
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$au;->a(Lmobi/tikl/wire/control/a$au;Ljava/util/List;)Ljava/util/List;

    .line 15472
    :cond_27
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$au;->c(Lmobi/tikl/wire/control/a$au;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$au;->c(Lmobi/tikl/wire/control/a$au;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15474
    :cond_34
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$au;->Hx()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 15475
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$au;->Hy()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$au$a;->N(Z)Lmobi/tikl/wire/control/a$au$a;

    .line 15477
    :cond_41
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$au;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$au$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 15425
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au$a;->wo:Lmobi/tikl/wire/control/a$au;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$au;->isInitialized()Z

    move-result v0

    return v0
.end method
