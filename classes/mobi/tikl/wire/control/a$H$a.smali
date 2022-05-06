.class public final Lmobi/tikl/wire/control/a$H$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private rj:Lmobi/tikl/wire/control/a$H;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19785
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static vV()Lmobi/tikl/wire/control/a$H$a;
    .registers 3

    .prologue
    .line 19788
    new-instance v0, Lmobi/tikl/wire/control/a$H$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$H$a;-><init>()V

    .line 19789
    new-instance v1, Lmobi/tikl/wire/control/a$H;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$H;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    .line 19790
    return-object v0
.end method

.method static synthetic wa()Lmobi/tikl/wire/control/a$H$a;
    .registers 1

    .prologue
    .line 19780
    invoke-static {}, Lmobi/tikl/wire/control/a$H$a;->vV()Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public K(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$H$a;
    .registers 4

    .prologue
    .line 19927
    if-nez p1, :cond_8

    .line 19928
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19930
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$H;->c(Lmobi/tikl/wire/control/a$H;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 19931
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$H;->a(Lmobi/tikl/wire/control/a$H;Ljava/util/List;)Ljava/util/List;

    .line 19933
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$H;->c(Lmobi/tikl/wire/control/a$H;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19934
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 19780
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$H$a;->ad(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 19780
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$H$a;->af(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 19812
    invoke-static {}, Lmobi/tikl/wire/control/a$H;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 19780
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H$a;->vW()Lmobi/tikl/wire/control/a$H;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 19780
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H$a;->vX()Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 19780
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H$a;->vY()Lmobi/tikl/wire/control/a$H;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 19780
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H$a;->vY()Lmobi/tikl/wire/control/a$H;

    move-result-object v0

    return-object v0
.end method

.method public ad(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$H$a;
    .registers 5

    .prologue
    .line 19877
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 19881
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 19882
    sparse-switch v1, :sswitch_data_34

    .line 19887
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$H$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 19889
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$H$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 19890
    :goto_1c
    return-object p0

    .line 19884
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$H$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 19895
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 19896
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 19897
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$H$a;->K(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$H$a;

    goto :goto_8

    .line 19882
    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
    .end sparse-switch
.end method

.method public af(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$H$a;
    .registers 3

    .prologue
    .line 19853
    instance-of v0, p1, Lmobi/tikl/wire/control/a$H;

    if-eqz v0, :cond_b

    .line 19854
    check-cast p1, Lmobi/tikl/wire/control/a$H;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$H$a;->d(Lmobi/tikl/wire/control/a$H;)Lmobi/tikl/wire/control/a$H$a;

    move-result-object p0

    .line 19857
    :goto_a
    return-object p0

    .line 19856
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 19780
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H$a;->vX()Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 19780
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$H$a;->ad(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 19780
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H$a;->vX()Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 19780
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$H$a;->ad(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 19780
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H$a;->vX()Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 19780
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$H$a;->af(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$H;)Lmobi/tikl/wire/control/a$H$a;
    .registers 4

    .prologue
    .line 19862
    invoke-static {}, Lmobi/tikl/wire/control/a$H;->vO()Lmobi/tikl/wire/control/a$H;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 19870
    :goto_6
    return-object p0

    .line 19863
    :cond_7
    invoke-static {p1}, Lmobi/tikl/wire/control/a$H;->c(Lmobi/tikl/wire/control/a$H;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 19864
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$H;->c(Lmobi/tikl/wire/control/a$H;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 19865
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$H;->a(Lmobi/tikl/wire/control/a$H;Ljava/util/List;)Ljava/util/List;

    .line 19867
    :cond_27
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$H;->c(Lmobi/tikl/wire/control/a$H;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$H;->c(Lmobi/tikl/wire/control/a$H;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19869
    :cond_34
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$H;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$H$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 19820
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$H;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected vW()Lmobi/tikl/wire/control/a$H;
    .registers 2

    .prologue
    .line 19794
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    return-object v0
.end method

.method public vX()Lmobi/tikl/wire/control/a$H$a;
    .registers 3

    .prologue
    .line 19807
    invoke-static {}, Lmobi/tikl/wire/control/a$H$a;->vV()Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$H$a;->d(Lmobi/tikl/wire/control/a$H;)Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    return-object v0
.end method

.method public vY()Lmobi/tikl/wire/control/a$H;
    .registers 2

    .prologue
    .line 19823
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 19824
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$H$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 19826
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H$a;->vZ()Lmobi/tikl/wire/control/a$H;

    move-result-object v0

    return-object v0
.end method

.method public vZ()Lmobi/tikl/wire/control/a$H;
    .registers 3

    .prologue
    .line 19839
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    if-nez v0, :cond_c

    .line 19840
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19843
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$H;->c(Lmobi/tikl/wire/control/a$H;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 19844
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$H;->c(Lmobi/tikl/wire/control/a$H;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$H;->a(Lmobi/tikl/wire/control/a$H;Ljava/util/List;)Ljava/util/List;

    .line 19847
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    .line 19848
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$H$a;->rj:Lmobi/tikl/wire/control/a$H;

    .line 19849
    return-object v0
.end method
