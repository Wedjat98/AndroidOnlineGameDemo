.class public final Lmobi/tikl/wire/control/a$am$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private vD:Lmobi/tikl/wire/control/a$am;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23768
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method static synthetic FC()Lmobi/tikl/wire/control/a$am$a;
    .registers 1

    .prologue
    .line 23763
    invoke-static {}, Lmobi/tikl/wire/control/a$am$a;->Fx()Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    return-object v0
.end method

.method private static Fx()Lmobi/tikl/wire/control/a$am$a;
    .registers 3

    .prologue
    .line 23771
    new-instance v0, Lmobi/tikl/wire/control/a$am$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$am$a;-><init>()V

    .line 23772
    new-instance v1, Lmobi/tikl/wire/control/a$am;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$am;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    .line 23773
    return-object v0
.end method


# virtual methods
.method public FA()Lmobi/tikl/wire/control/a$am;
    .registers 2

    .prologue
    .line 23806
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 23807
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$am$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 23809
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am$a;->FB()Lmobi/tikl/wire/control/a$am;

    move-result-object v0

    return-object v0
.end method

.method public FB()Lmobi/tikl/wire/control/a$am;
    .registers 3

    .prologue
    .line 23822
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    if-nez v0, :cond_c

    .line 23823
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23826
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$am;->d(Lmobi/tikl/wire/control/a$am;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 23827
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$am;->d(Lmobi/tikl/wire/control/a$am;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$am;->a(Lmobi/tikl/wire/control/a$am;Ljava/util/List;)Ljava/util/List;

    .line 23830
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    .line 23831
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    .line 23832
    return-object v0
.end method

.method protected Fy()Lmobi/tikl/wire/control/a$am;
    .registers 2

    .prologue
    .line 23777
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    return-object v0
.end method

.method public Fz()Lmobi/tikl/wire/control/a$am$a;
    .registers 3

    .prologue
    .line 23790
    invoke-static {}, Lmobi/tikl/wire/control/a$am$a;->Fx()Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$am$a;->e(Lmobi/tikl/wire/control/a$am;)Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 23763
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$am$a;->aI(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 23763
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$am$a;->aK(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    return-object v0
.end method

.method public aG(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$am$a;
    .registers 4

    .prologue
    .line 23942
    if-nez p1, :cond_8

    .line 23943
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23945
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$am;->d(Lmobi/tikl/wire/control/a$am;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 23946
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$am;->a(Lmobi/tikl/wire/control/a$am;Ljava/util/List;)Ljava/util/List;

    .line 23948
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$am;->d(Lmobi/tikl/wire/control/a$am;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23949
    return-object p0
.end method

.method public aI(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$am$a;
    .registers 5

    .prologue
    .line 23866
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 23870
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 23871
    sparse-switch v1, :sswitch_data_44

    .line 23876
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$am$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 23878
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$am$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 23879
    :goto_1c
    return-object p0

    .line 23873
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$am$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 23884
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$am$a;->bG(I)Lmobi/tikl/wire/control/a$am$a;

    goto :goto_8

    .line 23888
    :sswitch_2d
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 23889
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 23890
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$am$a;->aG(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$am$a;

    goto :goto_8

    .line 23894
    :sswitch_3c
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$am$a;->bG(Ljava/lang/String;)Lmobi/tikl/wire/control/a$am$a;

    goto :goto_8

    .line 23871
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_3c
    .end sparse-switch
.end method

.method public aK(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$am$a;
    .registers 3

    .prologue
    .line 23836
    instance-of v0, p1, Lmobi/tikl/wire/control/a$am;

    if-eqz v0, :cond_b

    .line 23837
    check-cast p1, Lmobi/tikl/wire/control/a$am;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$am$a;->e(Lmobi/tikl/wire/control/a$am;)Lmobi/tikl/wire/control/a$am$a;

    move-result-object p0

    .line 23840
    :goto_a
    return-object p0

    .line 23839
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 23795
    invoke-static {}, Lmobi/tikl/wire/control/a$am;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 23763
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am$a;->Fy()Lmobi/tikl/wire/control/a$am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 23763
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am$a;->Fz()Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 23763
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am$a;->FA()Lmobi/tikl/wire/control/a$am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 23763
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am$a;->FA()Lmobi/tikl/wire/control/a$am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 23763
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am$a;->Fz()Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 23763
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$am$a;->aI(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    return-object v0
.end method

.method public bG(I)Lmobi/tikl/wire/control/a$am$a;
    .registers 4

    .prologue
    .line 23910
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$am;->a(Lmobi/tikl/wire/control/a$am;Z)Z

    .line 23911
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$am;->a(Lmobi/tikl/wire/control/a$am;I)I

    .line 23912
    return-object p0
.end method

.method public bG(Ljava/lang/String;)Lmobi/tikl/wire/control/a$am$a;
    .registers 4

    .prologue
    .line 23979
    if-nez p1, :cond_8

    .line 23980
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23982
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$am;->b(Lmobi/tikl/wire/control/a$am;Z)Z

    .line 23983
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$am;->a(Lmobi/tikl/wire/control/a$am;Ljava/lang/String;)Ljava/lang/String;

    .line 23984
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 23763
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am$a;->Fz()Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 23763
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$am$a;->aI(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 23763
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am$a;->Fz()Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 23763
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$am$a;->aK(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Lmobi/tikl/wire/control/a$am;)Lmobi/tikl/wire/control/a$am$a;
    .registers 4

    .prologue
    .line 23845
    invoke-static {}, Lmobi/tikl/wire/control/a$am;->Fs()Lmobi/tikl/wire/control/a$am;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 23859
    :goto_6
    return-object p0

    .line 23846
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$am;->Db()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 23847
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$am;->Dc()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$am$a;->bG(I)Lmobi/tikl/wire/control/a$am$a;

    .line 23849
    :cond_14
    invoke-static {p1}, Lmobi/tikl/wire/control/a$am;->d(Lmobi/tikl/wire/control/a$am;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 23850
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$am;->d(Lmobi/tikl/wire/control/a$am;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 23851
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$am;->a(Lmobi/tikl/wire/control/a$am;Ljava/util/List;)Ljava/util/List;

    .line 23853
    :cond_34
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$am;->d(Lmobi/tikl/wire/control/a$am;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$am;->d(Lmobi/tikl/wire/control/a$am;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23855
    :cond_41
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$am;->pS()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 23856
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$am;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$am$a;->bG(Ljava/lang/String;)Lmobi/tikl/wire/control/a$am$a;

    .line 23858
    :cond_4e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$am;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$am$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 23803
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am$a;->vD:Lmobi/tikl/wire/control/a$am;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$am;->isInitialized()Z

    move-result v0

    return v0
.end method
