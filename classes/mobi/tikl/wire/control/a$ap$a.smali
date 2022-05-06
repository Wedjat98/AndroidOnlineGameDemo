.class public final Lmobi/tikl/wire/control/a$ap$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private vU:Lmobi/tikl/wire/control/a$ap;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4645
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static Go()Lmobi/tikl/wire/control/a$ap$a;
    .registers 3

    .prologue
    .line 4648
    new-instance v0, Lmobi/tikl/wire/control/a$ap$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ap$a;-><init>()V

    .line 4649
    new-instance v1, Lmobi/tikl/wire/control/a$ap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$ap;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    .line 4650
    return-object v0
.end method

.method static synthetic Gt()Lmobi/tikl/wire/control/a$ap$a;
    .registers 1

    .prologue
    .line 4640
    invoke-static {}, Lmobi/tikl/wire/control/a$ap$a;->Go()Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected Gp()Lmobi/tikl/wire/control/a$ap;
    .registers 2

    .prologue
    .line 4654
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    return-object v0
.end method

.method public Gq()Lmobi/tikl/wire/control/a$ap$a;
    .registers 3

    .prologue
    .line 4667
    invoke-static {}, Lmobi/tikl/wire/control/a$ap$a;->Go()Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ap$a;->e(Lmobi/tikl/wire/control/a$ap;)Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    return-object v0
.end method

.method public Gr()Lmobi/tikl/wire/control/a$ap;
    .registers 2

    .prologue
    .line 4683
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 4684
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ap$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 4686
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap$a;->Gs()Lmobi/tikl/wire/control/a$ap;

    move-result-object v0

    return-object v0
.end method

.method public Gs()Lmobi/tikl/wire/control/a$ap;
    .registers 3

    .prologue
    .line 4699
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    if-nez v0, :cond_c

    .line 4700
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4703
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ap;->d(Lmobi/tikl/wire/control/a$ap;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 4704
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ap;->d(Lmobi/tikl/wire/control/a$ap;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ap;->a(Lmobi/tikl/wire/control/a$ap;Ljava/util/List;)Ljava/util/List;

    .line 4707
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    .line 4708
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    .line 4709
    return-object v0
.end method

.method public L(Z)Lmobi/tikl/wire/control/a$ap$a;
    .registers 4

    .prologue
    .line 4806
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ap;->a(Lmobi/tikl/wire/control/a$ap;Z)Z

    .line 4807
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ap;->b(Lmobi/tikl/wire/control/a$ap;Z)Z

    .line 4808
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 4640
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ap$a;->aL(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 4640
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ap$a;->aN(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    return-object v0
.end method

.method public aL(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ap$a;
    .registers 5

    .prologue
    .line 4752
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 4756
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 4757
    sparse-switch v1, :sswitch_data_56

    .line 4762
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$ap$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 4764
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ap$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 4765
    :goto_1c
    return-object p0

    .line 4759
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ap$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 4770
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ap$a;->L(Z)Lmobi/tikl/wire/control/a$ap$a;

    goto :goto_8

    .line 4774
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ap$a;->bH(I)Lmobi/tikl/wire/control/a$ap$a;

    goto :goto_8

    .line 4778
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ap$a;->bI(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ap$a;

    goto :goto_8

    .line 4782
    :sswitch_3d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ap$a;->bI(I)Lmobi/tikl/wire/control/a$ap$a;

    goto :goto_8

    .line 4786
    :sswitch_45
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ap$a;->bJ(I)Lmobi/tikl/wire/control/a$ap$a;

    goto :goto_8

    .line 4790
    :sswitch_4d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ap$a;->bJ(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ap$a;

    goto :goto_8

    .line 4757
    nop

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0xa0 -> :sswitch_2d
        0xaa -> :sswitch_35
        0xb0 -> :sswitch_3d
        0xb8 -> :sswitch_45
        0x322 -> :sswitch_4d
    .end sparse-switch
.end method

.method public aN(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ap$a;
    .registers 3

    .prologue
    .line 4713
    instance-of v0, p1, Lmobi/tikl/wire/control/a$ap;

    if-eqz v0, :cond_b

    .line 4714
    check-cast p1, Lmobi/tikl/wire/control/a$ap;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ap$a;->e(Lmobi/tikl/wire/control/a$ap;)Lmobi/tikl/wire/control/a$ap$a;

    move-result-object p0

    .line 4717
    :goto_a
    return-object p0

    .line 4716
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 4672
    invoke-static {}, Lmobi/tikl/wire/control/a$ap;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 4640
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap$a;->Gp()Lmobi/tikl/wire/control/a$ap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 4640
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap$a;->Gq()Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 4640
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap$a;->Gr()Lmobi/tikl/wire/control/a$ap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 4640
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap$a;->Gr()Lmobi/tikl/wire/control/a$ap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 4640
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap$a;->Gq()Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 4640
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ap$a;->aL(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    return-object v0
.end method

.method public bH(I)Lmobi/tikl/wire/control/a$ap$a;
    .registers 4

    .prologue
    .line 4824
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ap;->c(Lmobi/tikl/wire/control/a$ap;Z)Z

    .line 4825
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ap;->a(Lmobi/tikl/wire/control/a$ap;I)I

    .line 4826
    return-object p0
.end method

.method public bI(I)Lmobi/tikl/wire/control/a$ap$a;
    .registers 4

    .prologue
    .line 4863
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ap;->e(Lmobi/tikl/wire/control/a$ap;Z)Z

    .line 4864
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ap;->b(Lmobi/tikl/wire/control/a$ap;I)I

    .line 4865
    return-object p0
.end method

.method public bI(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ap$a;
    .registers 4

    .prologue
    .line 4842
    if-nez p1, :cond_8

    .line 4843
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4845
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ap;->d(Lmobi/tikl/wire/control/a$ap;Z)Z

    .line 4846
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ap;->a(Lmobi/tikl/wire/control/a$ap;Ljava/lang/String;)Ljava/lang/String;

    .line 4847
    return-object p0
.end method

.method public bJ(I)Lmobi/tikl/wire/control/a$ap$a;
    .registers 4

    .prologue
    .line 4881
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ap;->f(Lmobi/tikl/wire/control/a$ap;Z)Z

    .line 4882
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ap;->c(Lmobi/tikl/wire/control/a$ap;I)I

    .line 4883
    return-object p0
.end method

.method public bJ(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ap$a;
    .registers 4

    .prologue
    .line 4909
    if-nez p1, :cond_8

    .line 4910
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4912
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ap;->d(Lmobi/tikl/wire/control/a$ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4913
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ap;->a(Lmobi/tikl/wire/control/a$ap;Ljava/util/List;)Ljava/util/List;

    .line 4915
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ap;->d(Lmobi/tikl/wire/control/a$ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4916
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 4640
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap$a;->Gq()Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 4640
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ap$a;->aL(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 4640
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap$a;->Gq()Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 4640
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ap$a;->aN(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Lmobi/tikl/wire/control/a$ap;)Lmobi/tikl/wire/control/a$ap$a;
    .registers 4

    .prologue
    .line 4722
    invoke-static {}, Lmobi/tikl/wire/control/a$ap;->Gd()Lmobi/tikl/wire/control/a$ap;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4745
    :goto_6
    return-object p0

    .line 4723
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ap;->Gf()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4724
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ap;->Gg()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ap$a;->L(Z)Lmobi/tikl/wire/control/a$ap$a;

    .line 4726
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ap;->rc()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4727
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ap;->jQ()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ap$a;->bH(I)Lmobi/tikl/wire/control/a$ap$a;

    .line 4729
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ap;->Gh()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4730
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ap;->Gi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ap$a;->bI(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ap$a;

    .line 4732
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ap;->Gj()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4733
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ap;->getDestPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ap$a;->bI(I)Lmobi/tikl/wire/control/a$ap$a;

    .line 4735
    :cond_3b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ap;->rj()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 4736
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ap;->rk()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ap$a;->bJ(I)Lmobi/tikl/wire/control/a$ap$a;

    .line 4738
    :cond_48
    invoke-static {p1}, Lmobi/tikl/wire/control/a$ap;->d(Lmobi/tikl/wire/control/a$ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_75

    .line 4739
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ap;->d(Lmobi/tikl/wire/control/a$ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 4740
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ap;->a(Lmobi/tikl/wire/control/a$ap;Ljava/util/List;)Ljava/util/List;

    .line 4742
    :cond_68
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ap;->d(Lmobi/tikl/wire/control/a$ap;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$ap;->d(Lmobi/tikl/wire/control/a$ap;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4744
    :cond_75
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ap;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ap$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 4680
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap$a;->vU:Lmobi/tikl/wire/control/a$ap;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ap;->isInitialized()Z

    move-result v0

    return v0
.end method
