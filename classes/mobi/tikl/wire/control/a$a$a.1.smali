.class public final Lmobi/tikl/wire/control/a$a$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private oq:Lmobi/tikl/wire/control/a$a;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18751
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method static synthetic nB()Lmobi/tikl/wire/control/a$a$a;
    .registers 1

    .prologue
    .line 18746
    invoke-static {}, Lmobi/tikl/wire/control/a$a$a;->nw()Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method private static nw()Lmobi/tikl/wire/control/a$a$a;
    .registers 3

    .prologue
    .line 18754
    new-instance v0, Lmobi/tikl/wire/control/a$a$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$a$a;-><init>()V

    .line 18755
    new-instance v1, Lmobi/tikl/wire/control/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$a;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    .line 18756
    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 18746
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$a$a;->w(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 18746
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$a$a;->y(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$a$a;
    .registers 4

    .prologue
    .line 18893
    if-nez p1, :cond_8

    .line 18894
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18896
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$a;->b(Lmobi/tikl/wire/control/a$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 18897
    iget-object v0, p0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$a;->a(Lmobi/tikl/wire/control/a$a;Ljava/util/List;)Ljava/util/List;

    .line 18899
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$a;->b(Lmobi/tikl/wire/control/a$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18900
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 18778
    invoke-static {}, Lmobi/tikl/wire/control/a$a;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 18746
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a$a;->nx()Lmobi/tikl/wire/control/a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 18746
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a$a;->ny()Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 18746
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a$a;->nz()Lmobi/tikl/wire/control/a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 18746
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a$a;->nz()Lmobi/tikl/wire/control/a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 18746
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a$a;->ny()Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 18746
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$a$a;->w(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 18746
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a$a;->ny()Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 18746
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$a$a;->w(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$a;)Lmobi/tikl/wire/control/a$a$a;
    .registers 4

    .prologue
    .line 18828
    invoke-static {}, Lmobi/tikl/wire/control/a$a;->nq()Lmobi/tikl/wire/control/a$a;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 18836
    :goto_6
    return-object p0

    .line 18829
    :cond_7
    invoke-static {p1}, Lmobi/tikl/wire/control/a$a;->b(Lmobi/tikl/wire/control/a$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 18830
    iget-object v0, p0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$a;->b(Lmobi/tikl/wire/control/a$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 18831
    iget-object v0, p0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$a;->a(Lmobi/tikl/wire/control/a$a;Ljava/util/List;)Ljava/util/List;

    .line 18833
    :cond_27
    iget-object v0, p0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$a;->b(Lmobi/tikl/wire/control/a$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$a;->b(Lmobi/tikl/wire/control/a$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18835
    :cond_34
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$a$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 18746
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a$a;->ny()Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 18746
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$a$a;->y(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 18786
    iget-object v0, p0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$a;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public nA()Lmobi/tikl/wire/control/a$a;
    .registers 3

    .prologue
    .line 18805
    iget-object v0, p0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    if-nez v0, :cond_c

    .line 18806
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18809
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$a;->b(Lmobi/tikl/wire/control/a$a;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 18810
    iget-object v0, p0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$a;->b(Lmobi/tikl/wire/control/a$a;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$a;->a(Lmobi/tikl/wire/control/a$a;Ljava/util/List;)Ljava/util/List;

    .line 18813
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    .line 18814
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    .line 18815
    return-object v0
.end method

.method protected nx()Lmobi/tikl/wire/control/a$a;
    .registers 2

    .prologue
    .line 18760
    iget-object v0, p0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    return-object v0
.end method

.method public ny()Lmobi/tikl/wire/control/a$a$a;
    .registers 3

    .prologue
    .line 18773
    invoke-static {}, Lmobi/tikl/wire/control/a$a$a;->nw()Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$a$a;->c(Lmobi/tikl/wire/control/a$a;)Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public nz()Lmobi/tikl/wire/control/a$a;
    .registers 2

    .prologue
    .line 18789
    iget-object v0, p0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 18790
    iget-object v0, p0, Lmobi/tikl/wire/control/a$a$a;->oq:Lmobi/tikl/wire/control/a$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$a$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 18792
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a$a;->nA()Lmobi/tikl/wire/control/a$a;

    move-result-object v0

    return-object v0
.end method

.method public w(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$a$a;
    .registers 5

    .prologue
    .line 18843
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 18847
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 18848
    sparse-switch v1, :sswitch_data_34

    .line 18853
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$a$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 18855
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$a$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 18856
    :goto_1c
    return-object p0

    .line 18850
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$a$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 18861
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$M;->xh()Lmobi/tikl/wire/control/a$M$a;

    move-result-object v1

    .line 18862
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 18863
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$M$a;->xo()Lmobi/tikl/wire/control/a$M;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$a$a;->a(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$a$a;

    goto :goto_8

    .line 18848
    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
    .end sparse-switch
.end method

.method public y(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$a$a;
    .registers 3

    .prologue
    .line 18819
    instance-of v0, p1, Lmobi/tikl/wire/control/a$a;

    if-eqz v0, :cond_b

    .line 18820
    check-cast p1, Lmobi/tikl/wire/control/a$a;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$a$a;->c(Lmobi/tikl/wire/control/a$a;)Lmobi/tikl/wire/control/a$a$a;

    move-result-object p0

    .line 18823
    :goto_a
    return-object p0

    .line 18822
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method
