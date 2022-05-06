.class public final Lmobi/tikl/wire/control/a$as$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private we:Lmobi/tikl/wire/control/a$as;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17753
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static Ha()Lmobi/tikl/wire/control/a$as$a;
    .registers 3

    .prologue
    .line 17756
    new-instance v0, Lmobi/tikl/wire/control/a$as$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$as$a;-><init>()V

    .line 17757
    new-instance v1, Lmobi/tikl/wire/control/a$as;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$as;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    .line 17758
    return-object v0
.end method

.method static synthetic Hf()Lmobi/tikl/wire/control/a$as$a;
    .registers 1

    .prologue
    .line 17748
    invoke-static {}, Lmobi/tikl/wire/control/a$as$a;->Ha()Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected Hb()Lmobi/tikl/wire/control/a$as;
    .registers 2

    .prologue
    .line 17762
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    return-object v0
.end method

.method public Hc()Lmobi/tikl/wire/control/a$as$a;
    .registers 3

    .prologue
    .line 17775
    invoke-static {}, Lmobi/tikl/wire/control/a$as$a;->Ha()Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$as$a;->c(Lmobi/tikl/wire/control/a$as;)Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    return-object v0
.end method

.method public Hd()Lmobi/tikl/wire/control/a$as;
    .registers 2

    .prologue
    .line 17791
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 17792
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$as$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 17794
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as$a;->He()Lmobi/tikl/wire/control/a$as;

    move-result-object v0

    return-object v0
.end method

.method public He()Lmobi/tikl/wire/control/a$as;
    .registers 3

    .prologue
    .line 17807
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    if-nez v0, :cond_c

    .line 17808
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17811
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$as;->b(Lmobi/tikl/wire/control/a$as;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 17812
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$as;->b(Lmobi/tikl/wire/control/a$as;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$as;->a(Lmobi/tikl/wire/control/a$as;Ljava/util/List;)Ljava/util/List;

    .line 17815
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    .line 17816
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    .line 17817
    return-object v0
.end method

.method public M(Z)Lmobi/tikl/wire/control/a$as$a;
    .registers 4

    .prologue
    .line 17939
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$as;->a(Lmobi/tikl/wire/control/a$as;Z)Z

    .line 17940
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$as;->b(Lmobi/tikl/wire/control/a$as;Z)Z

    .line 17941
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 17748
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$as$a;->aO(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 17748
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$as$a;->aQ(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    return-object v0
.end method

.method public aN(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$as$a;
    .registers 4

    .prologue
    .line 17902
    if-nez p1, :cond_8

    .line 17903
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17905
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$as;->b(Lmobi/tikl/wire/control/a$as;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 17906
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$as;->a(Lmobi/tikl/wire/control/a$as;Ljava/util/List;)Ljava/util/List;

    .line 17908
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$as;->b(Lmobi/tikl/wire/control/a$as;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17909
    return-object p0
.end method

.method public aO(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$as$a;
    .registers 5

    .prologue
    .line 17848
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 17852
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 17853
    sparse-switch v1, :sswitch_data_3c

    .line 17858
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$as$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 17860
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$as$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 17861
    :goto_1c
    return-object p0

    .line 17855
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$as$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 17866
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 17867
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 17868
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$as$a;->aN(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$as$a;

    goto :goto_8

    .line 17872
    :sswitch_34
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$as$a;->M(Z)Lmobi/tikl/wire/control/a$as$a;

    goto :goto_8

    .line 17853
    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x10 -> :sswitch_34
    .end sparse-switch
.end method

.method public aQ(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$as$a;
    .registers 3

    .prologue
    .line 17821
    instance-of v0, p1, Lmobi/tikl/wire/control/a$as;

    if-eqz v0, :cond_b

    .line 17822
    check-cast p1, Lmobi/tikl/wire/control/a$as;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$as$a;->c(Lmobi/tikl/wire/control/a$as;)Lmobi/tikl/wire/control/a$as$a;

    move-result-object p0

    .line 17825
    :goto_a
    return-object p0

    .line 17824
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 17780
    invoke-static {}, Lmobi/tikl/wire/control/a$as;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 17748
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as$a;->Hb()Lmobi/tikl/wire/control/a$as;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 17748
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as$a;->Hc()Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 17748
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as$a;->Hd()Lmobi/tikl/wire/control/a$as;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 17748
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as$a;->Hd()Lmobi/tikl/wire/control/a$as;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 17748
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as$a;->Hc()Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 17748
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$as$a;->aO(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 17748
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as$a;->Hc()Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 17748
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$as$a;->aO(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$as;)Lmobi/tikl/wire/control/a$as$a;
    .registers 4

    .prologue
    .line 17830
    invoke-static {}, Lmobi/tikl/wire/control/a$as;->GV()Lmobi/tikl/wire/control/a$as;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 17841
    :goto_6
    return-object p0

    .line 17831
    :cond_7
    invoke-static {p1}, Lmobi/tikl/wire/control/a$as;->b(Lmobi/tikl/wire/control/a$as;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 17832
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$as;->b(Lmobi/tikl/wire/control/a$as;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 17833
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$as;->a(Lmobi/tikl/wire/control/a$as;Ljava/util/List;)Ljava/util/List;

    .line 17835
    :cond_27
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$as;->b(Lmobi/tikl/wire/control/a$as;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$as;->b(Lmobi/tikl/wire/control/a$as;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17837
    :cond_34
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$as;->tm()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 17838
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$as;->tn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$as$a;->M(Z)Lmobi/tikl/wire/control/a$as$a;

    .line 17840
    :cond_41
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$as;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$as$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 17748
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as$a;->Hc()Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 17748
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$as$a;->aQ(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 17788
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as$a;->we:Lmobi/tikl/wire/control/a$as;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$as;->isInitialized()Z

    move-result v0

    return v0
.end method
