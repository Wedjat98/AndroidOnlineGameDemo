.class public final Lmobi/tikl/wire/control/a$aa$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private tz:Lmobi/tikl/wire/control/a$aa;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26516
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static Br()Lmobi/tikl/wire/control/a$aa$a;
    .registers 3

    .prologue
    .line 26519
    new-instance v0, Lmobi/tikl/wire/control/a$aa$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$aa$a;-><init>()V

    .line 26520
    new-instance v1, Lmobi/tikl/wire/control/a$aa;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$aa;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    .line 26521
    return-object v0
.end method

.method static synthetic Bw()Lmobi/tikl/wire/control/a$aa$a;
    .registers 1

    .prologue
    .line 26511
    invoke-static {}, Lmobi/tikl/wire/control/a$aa$a;->Br()Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected Bs()Lmobi/tikl/wire/control/a$aa;
    .registers 2

    .prologue
    .line 26525
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    return-object v0
.end method

.method public Bt()Lmobi/tikl/wire/control/a$aa$a;
    .registers 3

    .prologue
    .line 26538
    invoke-static {}, Lmobi/tikl/wire/control/a$aa$a;->Br()Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$aa$a;->d(Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    return-object v0
.end method

.method public Bu()Lmobi/tikl/wire/control/a$aa;
    .registers 2

    .prologue
    .line 26554
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 26555
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aa$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 26557
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa$a;->Bv()Lmobi/tikl/wire/control/a$aa;

    move-result-object v0

    return-object v0
.end method

.method public Bv()Lmobi/tikl/wire/control/a$aa;
    .registers 3

    .prologue
    .line 26570
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    if-nez v0, :cond_c

    .line 26571
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26574
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aa;->b(Lmobi/tikl/wire/control/a$aa;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 26575
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$aa;->b(Lmobi/tikl/wire/control/a$aa;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aa;->a(Lmobi/tikl/wire/control/a$aa;Ljava/util/List;)Ljava/util/List;

    .line 26578
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    .line 26579
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    .line 26580
    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 26511
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$aa$a;->aw(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 26511
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$aa$a;->ay(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 26543
    invoke-static {}, Lmobi/tikl/wire/control/a$aa;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 26511
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa$a;->Bs()Lmobi/tikl/wire/control/a$aa;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 26511
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa$a;->Bt()Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 26511
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa$a;->Bu()Lmobi/tikl/wire/control/a$aa;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 26511
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa$a;->Bu()Lmobi/tikl/wire/control/a$aa;

    move-result-object v0

    return-object v0
.end method

.method public aq(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aa$a;
    .registers 4

    .prologue
    .line 26656
    if-nez p1, :cond_8

    .line 26657
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26659
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aa;->a(Lmobi/tikl/wire/control/a$aa;Z)Z

    .line 26660
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$aa;->a(Lmobi/tikl/wire/control/a$aa;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 26661
    return-object p0
.end method

.method public ar(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aa$a;
    .registers 4

    .prologue
    .line 26669
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$aa;->so()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aa;->c(Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 26671
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$aa;->c(Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aa;->a(Lmobi/tikl/wire/control/a$aa;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 26676
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aa;->a(Lmobi/tikl/wire/control/a$aa;Z)Z

    .line 26677
    return-object p0

    .line 26674
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$aa;->a(Lmobi/tikl/wire/control/a$aa;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public as(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aa$a;
    .registers 4

    .prologue
    .line 26707
    if-nez p1, :cond_8

    .line 26708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26710
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aa;->b(Lmobi/tikl/wire/control/a$aa;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 26711
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aa;->a(Lmobi/tikl/wire/control/a$aa;Ljava/util/List;)Ljava/util/List;

    .line 26713
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aa;->b(Lmobi/tikl/wire/control/a$aa;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26714
    return-object p0
.end method

.method public aw(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$aa$a;
    .registers 6

    .prologue
    .line 26611
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 26615
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 26616
    sparse-switch v1, :sswitch_data_50

    .line 26621
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$aa$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 26623
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$aa$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 26624
    :goto_1c
    return-object p0

    .line 26618
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$aa$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 26629
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 26630
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa$a;->so()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 26631
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa$a;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 26633
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 26634
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$aa$a;->aq(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aa$a;

    goto :goto_8

    .line 26638
    :sswitch_41
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 26639
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 26640
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$aa$a;->as(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aa$a;

    goto :goto_8

    .line 26616
    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_1d
        0x12 -> :sswitch_25
        0x1a -> :sswitch_41
    .end sparse-switch
.end method

.method public ay(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$aa$a;
    .registers 3

    .prologue
    .line 26584
    instance-of v0, p1, Lmobi/tikl/wire/control/a$aa;

    if-eqz v0, :cond_b

    .line 26585
    check-cast p1, Lmobi/tikl/wire/control/a$aa;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$aa$a;->d(Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$aa$a;

    move-result-object p0

    .line 26588
    :goto_a
    return-object p0

    .line 26587
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 26511
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa$a;->Bt()Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 26511
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$aa$a;->aw(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 26511
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa$a;->Bt()Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 26511
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$aa$a;->aw(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26511
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa$a;->Bt()Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 26511
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$aa$a;->ay(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$aa$a;
    .registers 4

    .prologue
    .line 26593
    invoke-static {}, Lmobi/tikl/wire/control/a$aa;->Bl()Lmobi/tikl/wire/control/a$aa;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 26604
    :goto_6
    return-object p0

    .line 26594
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$aa;->so()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 26595
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$aa;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$aa$a;->ar(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aa$a;

    .line 26597
    :cond_14
    invoke-static {p1}, Lmobi/tikl/wire/control/a$aa;->b(Lmobi/tikl/wire/control/a$aa;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 26598
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aa;->b(Lmobi/tikl/wire/control/a$aa;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 26599
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aa;->a(Lmobi/tikl/wire/control/a$aa;Ljava/util/List;)Ljava/util/List;

    .line 26601
    :cond_34
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aa;->b(Lmobi/tikl/wire/control/a$aa;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$aa;->b(Lmobi/tikl/wire/control/a$aa;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26603
    :cond_41
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$aa;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$aa$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 26551
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$aa;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public so()Z
    .registers 2

    .prologue
    .line 26650
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$aa;->so()Z

    move-result v0

    return v0
.end method

.method public sp()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 26653
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa$a;->tz:Lmobi/tikl/wire/control/a$aa;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$aa;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method
