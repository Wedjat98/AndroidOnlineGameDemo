.class public final Lmobi/tikl/wire/control/a$ac$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private tE:Lmobi/tikl/wire/control/a$ac;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27638
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static BO()Lmobi/tikl/wire/control/a$ac$a;
    .registers 3

    .prologue
    .line 27641
    new-instance v0, Lmobi/tikl/wire/control/a$ac$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ac$a;-><init>()V

    .line 27642
    new-instance v1, Lmobi/tikl/wire/control/a$ac;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$ac;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    .line 27643
    return-object v0
.end method

.method static synthetic BT()Lmobi/tikl/wire/control/a$ac$a;
    .registers 1

    .prologue
    .line 27633
    invoke-static {}, Lmobi/tikl/wire/control/a$ac$a;->BO()Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected BP()Lmobi/tikl/wire/control/a$ac;
    .registers 2

    .prologue
    .line 27647
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    return-object v0
.end method

.method public BQ()Lmobi/tikl/wire/control/a$ac$a;
    .registers 3

    .prologue
    .line 27660
    invoke-static {}, Lmobi/tikl/wire/control/a$ac$a;->BO()Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ac$a;->d(Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    return-object v0
.end method

.method public BR()Lmobi/tikl/wire/control/a$ac;
    .registers 2

    .prologue
    .line 27676
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 27677
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ac$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 27679
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac$a;->BS()Lmobi/tikl/wire/control/a$ac;

    move-result-object v0

    return-object v0
.end method

.method public BS()Lmobi/tikl/wire/control/a$ac;
    .registers 3

    .prologue
    .line 27692
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    if-nez v0, :cond_c

    .line 27693
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27696
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ac;->b(Lmobi/tikl/wire/control/a$ac;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 27697
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ac;->b(Lmobi/tikl/wire/control/a$ac;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ac;->a(Lmobi/tikl/wire/control/a$ac;Ljava/util/List;)Ljava/util/List;

    .line 27700
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    .line 27701
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    .line 27702
    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 27633
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ac$a;->ay(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 27633
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ac$a;->aA(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    return-object v0
.end method

.method public aA(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ac$a;
    .registers 3

    .prologue
    .line 27706
    instance-of v0, p1, Lmobi/tikl/wire/control/a$ac;

    if-eqz v0, :cond_b

    .line 27707
    check-cast p1, Lmobi/tikl/wire/control/a$ac;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ac$a;->d(Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$ac$a;

    move-result-object p0

    .line 27710
    :goto_a
    return-object p0

    .line 27709
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 27665
    invoke-static {}, Lmobi/tikl/wire/control/a$ac;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 27633
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac$a;->BP()Lmobi/tikl/wire/control/a$ac;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 27633
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac$a;->BQ()Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 27633
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac$a;->BR()Lmobi/tikl/wire/control/a$ac;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 27633
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac$a;->BR()Lmobi/tikl/wire/control/a$ac;

    move-result-object v0

    return-object v0
.end method

.method public av(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ac$a;
    .registers 4

    .prologue
    .line 27803
    if-nez p1, :cond_8

    .line 27804
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27806
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ac;->b(Lmobi/tikl/wire/control/a$ac;Z)Z

    .line 27807
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ac;->a(Lmobi/tikl/wire/control/a$ac;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 27808
    return-object p0
.end method

.method public aw(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ac$a;
    .registers 4

    .prologue
    .line 27816
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ac;->sB()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ac;->c(Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 27818
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ac;->c(Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ac;->a(Lmobi/tikl/wire/control/a$ac;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 27823
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ac;->b(Lmobi/tikl/wire/control/a$ac;Z)Z

    .line 27824
    return-object p0

    .line 27821
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ac;->a(Lmobi/tikl/wire/control/a$ac;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public ax(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ac$a;
    .registers 4

    .prologue
    .line 27854
    if-nez p1, :cond_8

    .line 27855
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27857
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ac;->b(Lmobi/tikl/wire/control/a$ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 27858
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ac;->a(Lmobi/tikl/wire/control/a$ac;Ljava/util/List;)Ljava/util/List;

    .line 27860
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ac;->b(Lmobi/tikl/wire/control/a$ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27861
    return-object p0
.end method

.method public ay(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ac$a;
    .registers 6

    .prologue
    .line 27736
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 27740
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 27741
    sparse-switch v1, :sswitch_data_58

    .line 27746
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$ac$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 27748
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ac$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 27749
    :goto_1c
    return-object p0

    .line 27743
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ac$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 27754
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ac$a;->bC(I)Lmobi/tikl/wire/control/a$ac$a;

    goto :goto_8

    .line 27758
    :sswitch_2d
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 27759
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac$a;->sB()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 27760
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac$a;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 27762
    :cond_3e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 27763
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ac$a;->av(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ac$a;

    goto :goto_8

    .line 27767
    :sswitch_49
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 27768
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 27769
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ac$a;->ax(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ac$a;

    goto :goto_8

    .line 27741
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_49
    .end sparse-switch
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 27633
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac$a;->BQ()Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 27633
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ac$a;->ay(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    return-object v0
.end method

.method public bC(I)Lmobi/tikl/wire/control/a$ac$a;
    .registers 4

    .prologue
    .line 27785
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ac;->a(Lmobi/tikl/wire/control/a$ac;Z)Z

    .line 27786
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ac;->a(Lmobi/tikl/wire/control/a$ac;I)I

    .line 27787
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 27633
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac$a;->BQ()Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 27633
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ac$a;->ay(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 27633
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac$a;->BQ()Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 27633
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ac$a;->aA(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$ac$a;
    .registers 4

    .prologue
    .line 27715
    invoke-static {}, Lmobi/tikl/wire/control/a$ac;->BI()Lmobi/tikl/wire/control/a$ac;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 27729
    :goto_6
    return-object p0

    .line 27716
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ac;->oc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 27717
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ac;->getMsgId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ac$a;->bC(I)Lmobi/tikl/wire/control/a$ac$a;

    .line 27719
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ac;->sB()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 27720
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ac;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ac$a;->aw(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ac$a;

    .line 27722
    :cond_21
    invoke-static {p1}, Lmobi/tikl/wire/control/a$ac;->b(Lmobi/tikl/wire/control/a$ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 27723
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ac;->b(Lmobi/tikl/wire/control/a$ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 27724
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ac;->a(Lmobi/tikl/wire/control/a$ac;Ljava/util/List;)Ljava/util/List;

    .line 27726
    :cond_41
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ac;->b(Lmobi/tikl/wire/control/a$ac;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$ac;->b(Lmobi/tikl/wire/control/a$ac;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27728
    :cond_4e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ac;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ac$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 27673
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ac;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public sB()Z
    .registers 2

    .prologue
    .line 27797
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ac;->sB()Z

    move-result v0

    return v0
.end method

.method public sC()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 27800
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac$a;->tE:Lmobi/tikl/wire/control/a$ac;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ac;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method
