.class public final Lmobi/tikl/wire/control/a$D$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qV:Lmobi/tikl/wire/control/a$D;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35866
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static uV()Lmobi/tikl/wire/control/a$D$a;
    .registers 3

    .prologue
    .line 35869
    new-instance v0, Lmobi/tikl/wire/control/a$D$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$D$a;-><init>()V

    .line 35870
    new-instance v1, Lmobi/tikl/wire/control/a$D;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$D;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    .line 35871
    return-object v0
.end method

.method static synthetic va()Lmobi/tikl/wire/control/a$D$a;
    .registers 1

    .prologue
    .line 35861
    invoke-static {}, Lmobi/tikl/wire/control/a$D$a;->uV()Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public H(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$D$a;
    .registers 4

    .prologue
    .line 36043
    if-nez p1, :cond_8

    .line 36044
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36046
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$D;->b(Lmobi/tikl/wire/control/a$D;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 36047
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$D;->a(Lmobi/tikl/wire/control/a$D;Ljava/util/List;)Ljava/util/List;

    .line 36049
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$D;->b(Lmobi/tikl/wire/control/a$D;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36050
    return-object p0
.end method

.method public Z(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$D$a;
    .registers 5

    .prologue
    .line 35964
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 35968
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 35969
    sparse-switch v1, :sswitch_data_44

    .line 35974
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$D$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 35976
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$D$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 35977
    :goto_1c
    return-object p0

    .line 35971
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$D$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 35982
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$D$a;->aK(Ljava/lang/String;)Lmobi/tikl/wire/control/a$D$a;

    goto :goto_8

    .line 35986
    :sswitch_2d
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 35987
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 35988
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$D$a;->H(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$D$a;

    goto :goto_8

    .line 35992
    :sswitch_3c
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$D$a;->aL(Ljava/lang/String;)Lmobi/tikl/wire/control/a$D$a;

    goto :goto_8

    .line 35969
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_3c
    .end sparse-switch
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 35861
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$D$a;->Z(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 35861
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$D$a;->ab(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    return-object v0
.end method

.method public aK(Ljava/lang/String;)Lmobi/tikl/wire/control/a$D$a;
    .registers 4

    .prologue
    .line 36008
    if-nez p1, :cond_8

    .line 36009
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36011
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$D;->a(Lmobi/tikl/wire/control/a$D;Z)Z

    .line 36012
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$D;->a(Lmobi/tikl/wire/control/a$D;Ljava/lang/String;)Ljava/lang/String;

    .line 36013
    return-object p0
.end method

.method public aL(Ljava/lang/String;)Lmobi/tikl/wire/control/a$D$a;
    .registers 4

    .prologue
    .line 36080
    if-nez p1, :cond_8

    .line 36081
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36083
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$D;->b(Lmobi/tikl/wire/control/a$D;Z)Z

    .line 36084
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$D;->b(Lmobi/tikl/wire/control/a$D;Ljava/lang/String;)Ljava/lang/String;

    .line 36085
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 35893
    invoke-static {}, Lmobi/tikl/wire/control/a$D;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 35861
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D$a;->uW()Lmobi/tikl/wire/control/a$D;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 35861
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D$a;->uX()Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 35861
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D$a;->uY()Lmobi/tikl/wire/control/a$D;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 35861
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D$a;->uY()Lmobi/tikl/wire/control/a$D;

    move-result-object v0

    return-object v0
.end method

.method public ab(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$D$a;
    .registers 3

    .prologue
    .line 35934
    instance-of v0, p1, Lmobi/tikl/wire/control/a$D;

    if-eqz v0, :cond_b

    .line 35935
    check-cast p1, Lmobi/tikl/wire/control/a$D;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$D$a;->c(Lmobi/tikl/wire/control/a$D;)Lmobi/tikl/wire/control/a$D$a;

    move-result-object p0

    .line 35938
    :goto_a
    return-object p0

    .line 35937
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 35861
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D$a;->uX()Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 35861
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$D$a;->Z(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 35861
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D$a;->uX()Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 35861
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$D$a;->Z(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$D;)Lmobi/tikl/wire/control/a$D$a;
    .registers 4

    .prologue
    .line 35943
    invoke-static {}, Lmobi/tikl/wire/control/a$D;->uQ()Lmobi/tikl/wire/control/a$D;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 35957
    :goto_6
    return-object p0

    .line 35944
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$D;->pS()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 35945
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$D;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$D$a;->aK(Ljava/lang/String;)Lmobi/tikl/wire/control/a$D$a;

    .line 35947
    :cond_14
    invoke-static {p1}, Lmobi/tikl/wire/control/a$D;->b(Lmobi/tikl/wire/control/a$D;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 35948
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$D;->b(Lmobi/tikl/wire/control/a$D;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 35949
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$D;->a(Lmobi/tikl/wire/control/a$D;Ljava/util/List;)Ljava/util/List;

    .line 35951
    :cond_34
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$D;->b(Lmobi/tikl/wire/control/a$D;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$D;->b(Lmobi/tikl/wire/control/a$D;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35953
    :cond_41
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$D;->hasName()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 35954
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$D;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$D$a;->aL(Ljava/lang/String;)Lmobi/tikl/wire/control/a$D$a;

    .line 35956
    :cond_4e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$D;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$D$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 35861
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D$a;->uX()Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 35861
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$D$a;->ab(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 35901
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$D;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected uW()Lmobi/tikl/wire/control/a$D;
    .registers 2

    .prologue
    .line 35875
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    return-object v0
.end method

.method public uX()Lmobi/tikl/wire/control/a$D$a;
    .registers 3

    .prologue
    .line 35888
    invoke-static {}, Lmobi/tikl/wire/control/a$D$a;->uV()Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$D$a;->c(Lmobi/tikl/wire/control/a$D;)Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    return-object v0
.end method

.method public uY()Lmobi/tikl/wire/control/a$D;
    .registers 2

    .prologue
    .line 35904
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 35905
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$D$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 35907
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D$a;->uZ()Lmobi/tikl/wire/control/a$D;

    move-result-object v0

    return-object v0
.end method

.method public uZ()Lmobi/tikl/wire/control/a$D;
    .registers 3

    .prologue
    .line 35920
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    if-nez v0, :cond_c

    .line 35921
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35924
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$D;->b(Lmobi/tikl/wire/control/a$D;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 35925
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$D;->b(Lmobi/tikl/wire/control/a$D;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$D;->a(Lmobi/tikl/wire/control/a$D;Ljava/util/List;)Ljava/util/List;

    .line 35928
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    .line 35929
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$D$a;->qV:Lmobi/tikl/wire/control/a$D;

    .line 35930
    return-object v0
.end method
