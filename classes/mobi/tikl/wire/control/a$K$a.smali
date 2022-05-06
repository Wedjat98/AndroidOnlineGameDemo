.class public final Lmobi/tikl/wire/control/a$K$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private rC:Lmobi/tikl/wire/control/a$K;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9790
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static wL()Lmobi/tikl/wire/control/a$K$a;
    .registers 3

    .prologue
    .line 9793
    new-instance v0, Lmobi/tikl/wire/control/a$K$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$K$a;-><init>()V

    .line 9794
    new-instance v1, Lmobi/tikl/wire/control/a$K;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$K;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    .line 9795
    return-object v0
.end method

.method static synthetic wQ()Lmobi/tikl/wire/control/a$K$a;
    .registers 1

    .prologue
    .line 9785
    invoke-static {}, Lmobi/tikl/wire/control/a$K$a;->wL()Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public L(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$K$a;
    .registers 4

    .prologue
    .line 9951
    if-nez p1, :cond_8

    .line 9952
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9954
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$K;->b(Lmobi/tikl/wire/control/a$K;Z)Z

    .line 9955
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$K;->a(Lmobi/tikl/wire/control/a$K;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 9956
    return-object p0
.end method

.method public M(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$K$a;
    .registers 4

    .prologue
    .line 9964
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$K;->so()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$K;->b(Lmobi/tikl/wire/control/a$K;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 9966
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$K;->b(Lmobi/tikl/wire/control/a$K;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$K;->a(Lmobi/tikl/wire/control/a$K;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 9971
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$K;->b(Lmobi/tikl/wire/control/a$K;Z)Z

    .line 9972
    return-object p0

    .line 9969
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$K;->a(Lmobi/tikl/wire/control/a$K;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public N(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$K$a;
    .registers 4

    .prologue
    .line 9988
    if-nez p1, :cond_8

    .line 9989
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9991
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$K;->c(Lmobi/tikl/wire/control/a$K;Z)Z

    .line 9992
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$K;->b(Lmobi/tikl/wire/control/a$K;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 9993
    return-object p0
.end method

.method public O(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$K$a;
    .registers 4

    .prologue
    .line 10001
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$K;->wG()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$K;->c(Lmobi/tikl/wire/control/a$K;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 10003
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$K;->c(Lmobi/tikl/wire/control/a$K;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$K;->b(Lmobi/tikl/wire/control/a$K;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 10008
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$K;->c(Lmobi/tikl/wire/control/a$K;Z)Z

    .line 10009
    return-object p0

    .line 10006
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$K;->b(Lmobi/tikl/wire/control/a$K;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 9785
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$K$a;->ag(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 9785
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$K$a;->ai(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 9817
    invoke-static {}, Lmobi/tikl/wire/control/a$K;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 9785
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K$a;->wM()Lmobi/tikl/wire/control/a$K;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 9785
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K$a;->wN()Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 9785
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K$a;->wO()Lmobi/tikl/wire/control/a$K;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 9785
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K$a;->wO()Lmobi/tikl/wire/control/a$K;

    move-result-object v0

    return-object v0
.end method

.method public ag(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$K$a;
    .registers 6

    .prologue
    .line 9881
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 9885
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 9886
    sparse-switch v1, :sswitch_data_66

    .line 9891
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$K$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 9893
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$K$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 9894
    :goto_1c
    return-object p0

    .line 9888
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$K$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 9899
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$K$a;->bh(I)Lmobi/tikl/wire/control/a$K$a;

    goto :goto_8

    .line 9903
    :sswitch_2d
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 9904
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K$a;->so()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 9905
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K$a;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 9907
    :cond_3e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 9908
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$K$a;->L(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$K$a;

    goto :goto_8

    .line 9912
    :sswitch_49
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 9913
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K$a;->wG()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 9914
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K$a;->wH()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 9916
    :cond_5a
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 9917
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$K$a;->N(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$K$a;

    goto :goto_8

    .line 9886
    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_49
    .end sparse-switch
.end method

.method public ai(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$K$a;
    .registers 3

    .prologue
    .line 9854
    instance-of v0, p1, Lmobi/tikl/wire/control/a$K;

    if-eqz v0, :cond_b

    .line 9855
    check-cast p1, Lmobi/tikl/wire/control/a$K;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$K$a;->d(Lmobi/tikl/wire/control/a$K;)Lmobi/tikl/wire/control/a$K$a;

    move-result-object p0

    .line 9858
    :goto_a
    return-object p0

    .line 9857
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 9785
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K$a;->wN()Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 9785
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$K$a;->ag(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    return-object v0
.end method

.method public bh(I)Lmobi/tikl/wire/control/a$K$a;
    .registers 4

    .prologue
    .line 9933
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$K;->a(Lmobi/tikl/wire/control/a$K;Z)Z

    .line 9934
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$K;->a(Lmobi/tikl/wire/control/a$K;I)I

    .line 9935
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 9785
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K$a;->wN()Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 9785
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$K$a;->ag(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 9785
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K$a;->wN()Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 9785
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$K$a;->ai(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$K;)Lmobi/tikl/wire/control/a$K$a;
    .registers 3

    .prologue
    .line 9863
    invoke-static {}, Lmobi/tikl/wire/control/a$K;->wE()Lmobi/tikl/wire/control/a$K;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 9874
    :goto_6
    return-object p0

    .line 9864
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$K;->rc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 9865
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$K;->jQ()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$K$a;->bh(I)Lmobi/tikl/wire/control/a$K$a;

    .line 9867
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$K;->so()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 9868
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$K;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$K$a;->M(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$K$a;

    .line 9870
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$K;->wG()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 9871
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$K;->wH()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$K$a;->O(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$K$a;

    .line 9873
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$K;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$K$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 9825
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$K;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public so()Z
    .registers 2

    .prologue
    .line 9945
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$K;->so()Z

    move-result v0

    return v0
.end method

.method public sp()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 9948
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$K;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method public wG()Z
    .registers 2

    .prologue
    .line 9982
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$K;->wG()Z

    move-result v0

    return v0
.end method

.method public wH()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 9985
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$K;->wH()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected wM()Lmobi/tikl/wire/control/a$K;
    .registers 2

    .prologue
    .line 9799
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    return-object v0
.end method

.method public wN()Lmobi/tikl/wire/control/a$K$a;
    .registers 3

    .prologue
    .line 9812
    invoke-static {}, Lmobi/tikl/wire/control/a$K$a;->wL()Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$K$a;->d(Lmobi/tikl/wire/control/a$K;)Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    return-object v0
.end method

.method public wO()Lmobi/tikl/wire/control/a$K;
    .registers 2

    .prologue
    .line 9828
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 9829
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$K$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 9831
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K$a;->wP()Lmobi/tikl/wire/control/a$K;

    move-result-object v0

    return-object v0
.end method

.method public wP()Lmobi/tikl/wire/control/a$K;
    .registers 3

    .prologue
    .line 9844
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    if-nez v0, :cond_c

    .line 9845
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9848
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    .line 9849
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$K$a;->rC:Lmobi/tikl/wire/control/a$K;

    .line 9850
    return-object v0
.end method
