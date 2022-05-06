.class public final Lmobi/tikl/wire/control/a$ao$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private vL:Lmobi/tikl/wire/control/a$ao;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 3781
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static FX()Lmobi/tikl/wire/control/a$ao$a;
    .registers 3

    .prologue
    .line 3784
    new-instance v0, Lmobi/tikl/wire/control/a$ao$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ao$a;-><init>()V

    .line 3785
    new-instance v1, Lmobi/tikl/wire/control/a$ao;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$ao;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    .line 3786
    return-object v0
.end method

.method static synthetic Gc()Lmobi/tikl/wire/control/a$ao$a;
    .registers 1

    .prologue
    .line 3776
    invoke-static {}, Lmobi/tikl/wire/control/a$ao$a;->FX()Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected FY()Lmobi/tikl/wire/control/a$ao;
    .registers 2

    .prologue
    .line 3790
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    return-object v0
.end method

.method public FZ()Lmobi/tikl/wire/control/a$ao$a;
    .registers 3

    .prologue
    .line 3803
    invoke-static {}, Lmobi/tikl/wire/control/a$ao$a;->FX()Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ao$a;->e(Lmobi/tikl/wire/control/a$ao;)Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    return-object v0
.end method

.method public Ga()Lmobi/tikl/wire/control/a$ao;
    .registers 2

    .prologue
    .line 3819
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3820
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ao$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 3822
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao$a;->Gb()Lmobi/tikl/wire/control/a$ao;

    move-result-object v0

    return-object v0
.end method

.method public Gb()Lmobi/tikl/wire/control/a$ao;
    .registers 3

    .prologue
    .line 3835
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    if-nez v0, :cond_c

    .line 3836
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3839
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ao;->b(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 3840
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ao;->b(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ao;->a(Lmobi/tikl/wire/control/a$ao;Ljava/util/List;)Ljava/util/List;

    .line 3843
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ao;->c(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_3e

    .line 3844
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ao;->c(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ao;->b(Lmobi/tikl/wire/control/a$ao;Ljava/util/List;)Ljava/util/List;

    .line 3847
    :cond_3e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    .line 3848
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    .line 3849
    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 3776
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ao$a;->aK(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 3776
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ao$a;->aM(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    return-object v0
.end method

.method public aJ(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ao$a;
    .registers 4

    .prologue
    .line 3935
    if-nez p1, :cond_8

    .line 3936
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3938
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ao;->a(Lmobi/tikl/wire/control/a$ao;Z)Z

    .line 3939
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ao;->a(Lmobi/tikl/wire/control/a$ao;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 3940
    return-object p0
.end method

.method public aK(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ao$a;
    .registers 6

    .prologue
    .line 3886
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 3890
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 3891
    sparse-switch v1, :sswitch_data_58

    .line 3896
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$ao$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3898
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ao$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 3899
    :goto_1c
    return-object p0

    .line 3893
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ao$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 3904
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 3905
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao$a;->sO()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 3906
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao$a;->sP()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 3908
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 3909
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ao$a;->aJ(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ao$a;

    goto :goto_8

    .line 3913
    :sswitch_41
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ao$a;->bH(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ao$a;

    goto :goto_8

    .line 3917
    :sswitch_49
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 3918
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 3919
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ao$a;->aL(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ao$a;

    goto :goto_8

    .line 3891
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x12 -> :sswitch_41
        0x1a -> :sswitch_49
    .end sparse-switch
.end method

.method public aK(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ao$a;
    .registers 4

    .prologue
    .line 3948
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ao;->sO()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ao;->d(Lmobi/tikl/wire/control/a$ao;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 3950
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ao;->d(Lmobi/tikl/wire/control/a$ao;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ao;->a(Lmobi/tikl/wire/control/a$ao;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 3955
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ao;->a(Lmobi/tikl/wire/control/a$ao;Z)Z

    .line 3956
    return-object p0

    .line 3953
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ao;->a(Lmobi/tikl/wire/control/a$ao;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public aL(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ao$a;
    .registers 4

    .prologue
    .line 4026
    if-nez p1, :cond_8

    .line 4027
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4029
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ao;->c(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4030
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ao;->b(Lmobi/tikl/wire/control/a$ao;Ljava/util/List;)Ljava/util/List;

    .line 4032
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ao;->c(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4033
    return-object p0
.end method

.method public aM(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ao$a;
    .registers 3

    .prologue
    .line 3853
    instance-of v0, p1, Lmobi/tikl/wire/control/a$ao;

    if-eqz v0, :cond_b

    .line 3854
    check-cast p1, Lmobi/tikl/wire/control/a$ao;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ao$a;->e(Lmobi/tikl/wire/control/a$ao;)Lmobi/tikl/wire/control/a$ao$a;

    move-result-object p0

    .line 3857
    :goto_a
    return-object p0

    .line 3856
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 3808
    invoke-static {}, Lmobi/tikl/wire/control/a$ao;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 3776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao$a;->FY()Lmobi/tikl/wire/control/a$ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 3776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao$a;->FZ()Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 3776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao$a;->Ga()Lmobi/tikl/wire/control/a$ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 3776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao$a;->Ga()Lmobi/tikl/wire/control/a$ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 3776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao$a;->FZ()Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 3776
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ao$a;->aK(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    return-object v0
.end method

.method public bH(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ao$a;
    .registers 4

    .prologue
    .line 3982
    if-nez p1, :cond_8

    .line 3983
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3985
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ao;->b(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3986
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ao;->a(Lmobi/tikl/wire/control/a$ao;Ljava/util/List;)Ljava/util/List;

    .line 3988
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ao;->b(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3989
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 3776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao$a;->FZ()Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 3776
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ao$a;->aK(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao$a;->FZ()Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 3776
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ao$a;->aM(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Lmobi/tikl/wire/control/a$ao;)Lmobi/tikl/wire/control/a$ao$a;
    .registers 4

    .prologue
    .line 3862
    invoke-static {}, Lmobi/tikl/wire/control/a$ao;->FQ()Lmobi/tikl/wire/control/a$ao;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3879
    :goto_6
    return-object p0

    .line 3863
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ao;->sO()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3864
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ao;->sP()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ao$a;->aK(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ao$a;

    .line 3866
    :cond_14
    invoke-static {p1}, Lmobi/tikl/wire/control/a$ao;->b(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 3867
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ao;->b(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3868
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ao;->a(Lmobi/tikl/wire/control/a$ao;Ljava/util/List;)Ljava/util/List;

    .line 3870
    :cond_34
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ao;->b(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$ao;->b(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3872
    :cond_41
    invoke-static {p1}, Lmobi/tikl/wire/control/a$ao;->c(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 3873
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ao;->c(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 3874
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ao;->b(Lmobi/tikl/wire/control/a$ao;Ljava/util/List;)Ljava/util/List;

    .line 3876
    :cond_61
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ao;->c(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$ao;->c(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3878
    :cond_6e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ao;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ao$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 3816
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ao;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public sO()Z
    .registers 2

    .prologue
    .line 3929
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ao;->sO()Z

    move-result v0

    return v0
.end method

.method public sP()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 3932
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao$a;->vL:Lmobi/tikl/wire/control/a$ao;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ao;->sP()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method
