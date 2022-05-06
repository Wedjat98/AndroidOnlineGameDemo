.class public final Lmobi/tikl/wire/control/a$Y$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$Y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private to:Lmobi/tikl/wire/control/a$Y;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36721
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static AO()Lmobi/tikl/wire/control/a$Y$a;
    .registers 3

    .prologue
    .line 36724
    new-instance v0, Lmobi/tikl/wire/control/a$Y$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$Y$a;-><init>()V

    .line 36725
    new-instance v1, Lmobi/tikl/wire/control/a$Y;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$Y;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    .line 36726
    return-object v0
.end method

.method static synthetic AT()Lmobi/tikl/wire/control/a$Y$a;
    .registers 1

    .prologue
    .line 36716
    invoke-static {}, Lmobi/tikl/wire/control/a$Y$a;->AO()Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected AP()Lmobi/tikl/wire/control/a$Y;
    .registers 2

    .prologue
    .line 36730
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    return-object v0
.end method

.method public AQ()Lmobi/tikl/wire/control/a$Y$a;
    .registers 3

    .prologue
    .line 36743
    invoke-static {}, Lmobi/tikl/wire/control/a$Y$a;->AO()Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$Y$a;->c(Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    return-object v0
.end method

.method public AR()Lmobi/tikl/wire/control/a$Y;
    .registers 2

    .prologue
    .line 36759
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 36760
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$Y$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 36762
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y$a;->AS()Lmobi/tikl/wire/control/a$Y;

    move-result-object v0

    return-object v0
.end method

.method public AS()Lmobi/tikl/wire/control/a$Y;
    .registers 3

    .prologue
    .line 36775
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    if-nez v0, :cond_c

    .line 36776
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36779
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    .line 36780
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    .line 36781
    return-object v0
.end method

.method public H(Z)Lmobi/tikl/wire/control/a$Y$a;
    .registers 4

    .prologue
    .line 36998
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Y;->f(Lmobi/tikl/wire/control/a$Y;Z)Z

    .line 36999
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$Y;->g(Lmobi/tikl/wire/control/a$Y;Z)Z

    .line 37000
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 36716
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$Y$a;->au(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 36716
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$Y$a;->aw(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 36748
    invoke-static {}, Lmobi/tikl/wire/control/a$Y;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 36716
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y$a;->AP()Lmobi/tikl/wire/control/a$Y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 36716
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y$a;->AQ()Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 36716
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y$a;->AR()Lmobi/tikl/wire/control/a$Y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 36716
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y$a;->AR()Lmobi/tikl/wire/control/a$Y;

    move-result-object v0

    return-object v0
.end method

.method public ak(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$Y$a;
    .registers 4

    .prologue
    .line 36919
    if-nez p1, :cond_8

    .line 36920
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36922
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Y;->c(Lmobi/tikl/wire/control/a$Y;Z)Z

    .line 36923
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$Y;->a(Lmobi/tikl/wire/control/a$Y;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 36924
    return-object p0
.end method

.method public al(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$Y$a;
    .registers 4

    .prologue
    .line 36932
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$Y;->od()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$Y;->b(Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 36934
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$Y;->b(Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Y;->a(Lmobi/tikl/wire/control/a$Y;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 36939
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Y;->c(Lmobi/tikl/wire/control/a$Y;Z)Z

    .line 36940
    return-object p0

    .line 36937
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$Y;->a(Lmobi/tikl/wire/control/a$Y;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public au(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$Y$a;
    .registers 6

    .prologue
    .line 36821
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 36825
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 36826
    sparse-switch v1, :sswitch_data_6a

    .line 36831
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$Y$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 36833
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Y$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 36834
    :goto_1c
    return-object p0

    .line 36828
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Y$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 36839
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$Y$a;->bB(I)Lmobi/tikl/wire/control/a$Y$a;

    goto :goto_8

    .line 36843
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$Y$a;->bb(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Y$a;

    goto :goto_8

    .line 36847
    :sswitch_35
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 36848
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y$a;->od()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 36849
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y$a;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 36851
    :cond_46
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 36852
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$Y$a;->ak(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$Y$a;

    goto :goto_8

    .line 36856
    :sswitch_51
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$Y$a;->bc(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Y$a;

    goto :goto_8

    .line 36860
    :sswitch_59
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$Y$a;->bd(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Y$a;

    goto :goto_8

    .line 36864
    :sswitch_61
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$Y$a;->H(Z)Lmobi/tikl/wire/control/a$Y$a;

    goto :goto_8

    .line 36826
    nop

    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_35
        0x22 -> :sswitch_51
        0x2a -> :sswitch_59
        0x30 -> :sswitch_61
    .end sparse-switch
.end method

.method public aw(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$Y$a;
    .registers 3

    .prologue
    .line 36785
    instance-of v0, p1, Lmobi/tikl/wire/control/a$Y;

    if-eqz v0, :cond_b

    .line 36786
    check-cast p1, Lmobi/tikl/wire/control/a$Y;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$Y$a;->c(Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$Y$a;

    move-result-object p0

    .line 36789
    :goto_a
    return-object p0

    .line 36788
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 36716
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y$a;->AQ()Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 36716
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$Y$a;->au(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    return-object v0
.end method

.method public bB(I)Lmobi/tikl/wire/control/a$Y$a;
    .registers 4

    .prologue
    .line 36880
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Y;->a(Lmobi/tikl/wire/control/a$Y;Z)Z

    .line 36881
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$Y;->a(Lmobi/tikl/wire/control/a$Y;I)I

    .line 36882
    return-object p0
.end method

.method public bb(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Y$a;
    .registers 4

    .prologue
    .line 36898
    if-nez p1, :cond_8

    .line 36899
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36901
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Y;->b(Lmobi/tikl/wire/control/a$Y;Z)Z

    .line 36902
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$Y;->a(Lmobi/tikl/wire/control/a$Y;Ljava/lang/String;)Ljava/lang/String;

    .line 36903
    return-object p0
.end method

.method public bc(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Y$a;
    .registers 4

    .prologue
    .line 36956
    if-nez p1, :cond_8

    .line 36957
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36959
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Y;->d(Lmobi/tikl/wire/control/a$Y;Z)Z

    .line 36960
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$Y;->b(Lmobi/tikl/wire/control/a$Y;Ljava/lang/String;)Ljava/lang/String;

    .line 36961
    return-object p0
.end method

.method public bd(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Y$a;
    .registers 4

    .prologue
    .line 36977
    if-nez p1, :cond_8

    .line 36978
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36980
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Y;->e(Lmobi/tikl/wire/control/a$Y;Z)Z

    .line 36981
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$Y;->c(Lmobi/tikl/wire/control/a$Y;Ljava/lang/String;)Ljava/lang/String;

    .line 36982
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 36716
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y$a;->AQ()Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 36716
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$Y$a;->au(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$Y$a;
    .registers 3

    .prologue
    .line 36794
    invoke-static {}, Lmobi/tikl/wire/control/a$Y;->AD()Lmobi/tikl/wire/control/a$Y;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 36814
    :goto_6
    return-object p0

    .line 36795
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Y;->oc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 36796
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Y;->getMsgId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Y$a;->bB(I)Lmobi/tikl/wire/control/a$Y$a;

    .line 36798
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Y;->pS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 36799
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Y;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Y$a;->bb(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Y$a;

    .line 36801
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Y;->od()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 36802
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Y;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Y$a;->al(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$Y$a;

    .line 36804
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Y;->AF()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 36805
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Y;->AG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Y$a;->bc(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Y$a;

    .line 36807
    :cond_3b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Y;->AH()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 36808
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Y;->AI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Y$a;->bd(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Y$a;

    .line 36810
    :cond_48
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Y;->AJ()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 36811
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Y;->AK()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Y$a;->H(Z)Lmobi/tikl/wire/control/a$Y$a;

    .line 36813
    :cond_55
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Y;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Y$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 36716
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y$a;->AQ()Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 36716
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$Y$a;->aw(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 36756
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$Y;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 36913
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$Y;->od()Z

    move-result v0

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 36916
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y$a;->to:Lmobi/tikl/wire/control/a$Y;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$Y;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method
