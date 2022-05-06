.class public final Lmobi/tikl/wire/control/a$W$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private ta:Lmobi/tikl/wire/control/a$W;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15744
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static Ai()Lmobi/tikl/wire/control/a$W$a;
    .registers 3

    .prologue
    .line 15747
    new-instance v0, Lmobi/tikl/wire/control/a$W$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$W$a;-><init>()V

    .line 15748
    new-instance v1, Lmobi/tikl/wire/control/a$W;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$W;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    .line 15749
    return-object v0
.end method

.method static synthetic An()Lmobi/tikl/wire/control/a$W$a;
    .registers 1

    .prologue
    .line 15739
    invoke-static {}, Lmobi/tikl/wire/control/a$W$a;->Ai()Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected Aj()Lmobi/tikl/wire/control/a$W;
    .registers 2

    .prologue
    .line 15753
    iget-object v0, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    return-object v0
.end method

.method public Ak()Lmobi/tikl/wire/control/a$W$a;
    .registers 3

    .prologue
    .line 15766
    invoke-static {}, Lmobi/tikl/wire/control/a$W$a;->Ai()Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$W$a;->c(Lmobi/tikl/wire/control/a$W;)Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    return-object v0
.end method

.method public Al()Lmobi/tikl/wire/control/a$W;
    .registers 2

    .prologue
    .line 15782
    iget-object v0, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 15783
    iget-object v0, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$W$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 15785
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W$a;->Am()Lmobi/tikl/wire/control/a$W;

    move-result-object v0

    return-object v0
.end method

.method public Am()Lmobi/tikl/wire/control/a$W;
    .registers 3

    .prologue
    .line 15798
    iget-object v0, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    if-nez v0, :cond_c

    .line 15799
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15802
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    .line 15803
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    .line 15804
    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 15739
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$W$a;->as(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 15739
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$W$a;->au(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 15771
    invoke-static {}, Lmobi/tikl/wire/control/a$W;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 15739
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W$a;->Aj()Lmobi/tikl/wire/control/a$W;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 15739
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W$a;->Ak()Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 15739
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W$a;->Al()Lmobi/tikl/wire/control/a$W;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 15739
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W$a;->Al()Lmobi/tikl/wire/control/a$W;

    move-result-object v0

    return-object v0
.end method

.method public ag(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$W$a;
    .registers 4

    .prologue
    .line 15868
    if-nez p1, :cond_8

    .line 15869
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15871
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$W;->a(Lmobi/tikl/wire/control/a$W;Z)Z

    .line 15872
    iget-object v0, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$W;->a(Lmobi/tikl/wire/control/a$W;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 15873
    return-object p0
.end method

.method public ah(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$W$a;
    .registers 4

    .prologue
    .line 15881
    iget-object v0, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$W;->zF()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$W;->b(Lmobi/tikl/wire/control/a$W;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 15883
    iget-object v0, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$W;->b(Lmobi/tikl/wire/control/a$W;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$W;->a(Lmobi/tikl/wire/control/a$W;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 15888
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$W;->a(Lmobi/tikl/wire/control/a$W;Z)Z

    .line 15889
    return-object p0

    .line 15886
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$W;->a(Lmobi/tikl/wire/control/a$W;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public as(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$W$a;
    .registers 6

    .prologue
    .line 15829
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 15833
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 15834
    sparse-switch v1, :sswitch_data_42

    .line 15839
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$W$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 15841
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$W$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 15842
    :goto_1c
    return-object p0

    .line 15836
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$W$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 15847
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 15848
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W$a;->zF()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 15849
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W$a;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 15851
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 15852
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$W$a;->ag(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$W$a;

    goto :goto_8

    .line 15834
    nop

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
    .end sparse-switch
.end method

.method public au(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$W$a;
    .registers 3

    .prologue
    .line 15808
    instance-of v0, p1, Lmobi/tikl/wire/control/a$W;

    if-eqz v0, :cond_b

    .line 15809
    check-cast p1, Lmobi/tikl/wire/control/a$W;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$W$a;->c(Lmobi/tikl/wire/control/a$W;)Lmobi/tikl/wire/control/a$W$a;

    move-result-object p0

    .line 15812
    :goto_a
    return-object p0

    .line 15811
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 15739
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W$a;->Ak()Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 15739
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$W$a;->as(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 15739
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W$a;->Ak()Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 15739
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$W$a;->as(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$W;)Lmobi/tikl/wire/control/a$W$a;
    .registers 3

    .prologue
    .line 15817
    invoke-static {}, Lmobi/tikl/wire/control/a$W;->Ad()Lmobi/tikl/wire/control/a$W;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 15822
    :goto_6
    return-object p0

    .line 15818
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$W;->zF()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 15819
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$W;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$W$a;->ah(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$W$a;

    .line 15821
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$W;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$W$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 15739
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W$a;->Ak()Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 15739
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$W$a;->au(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 15779
    iget-object v0, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$W;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public zF()Z
    .registers 2

    .prologue
    .line 15862
    iget-object v0, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$W;->zF()Z

    move-result v0

    return v0
.end method

.method public zG()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 15865
    iget-object v0, p0, Lmobi/tikl/wire/control/a$W$a;->ta:Lmobi/tikl/wire/control/a$W;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$W;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method
