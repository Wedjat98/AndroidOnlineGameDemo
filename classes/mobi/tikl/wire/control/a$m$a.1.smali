.class public final Lmobi/tikl/wire/control/a$m$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private pR:Lmobi/tikl/wire/control/a$m;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31565
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static qU()Lmobi/tikl/wire/control/a$m$a;
    .registers 3

    .prologue
    .line 31568
    new-instance v0, Lmobi/tikl/wire/control/a$m$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$m$a;-><init>()V

    .line 31569
    new-instance v1, Lmobi/tikl/wire/control/a$m;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$m;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    .line 31570
    return-object v0
.end method

.method static synthetic qZ()Lmobi/tikl/wire/control/a$m$a;
    .registers 1

    .prologue
    .line 31560
    invoke-static {}, Lmobi/tikl/wire/control/a$m$a;->qU()Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public I(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$m$a;
    .registers 6

    .prologue
    .line 31669
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 31673
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 31674
    sparse-switch v1, :sswitch_data_7c

    .line 31679
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$m$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 31681
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$m$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 31682
    :goto_1c
    return-object p0

    .line 31676
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$m$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 31687
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$m$a;->aP(I)Lmobi/tikl/wire/control/a$m$a;

    goto :goto_8

    .line 31691
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$m$a;->ap(Ljava/lang/String;)Lmobi/tikl/wire/control/a$m$a;

    goto :goto_8

    .line 31695
    :sswitch_35
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 31696
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m$a;->od()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 31697
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m$a;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 31699
    :cond_46
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 31700
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$m$a;->p(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$m$a;

    goto :goto_8

    .line 31704
    :sswitch_51
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 31705
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 31706
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$m$a;->r(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$m$a;

    goto :goto_8

    .line 31710
    :sswitch_60
    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tC()Lmobi/tikl/wire/control/a$x$a;

    move-result-object v1

    .line 31711
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m$a;->qs()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 31712
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m$a;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$x$a;->j(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    .line 31714
    :cond_71
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 31715
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$x$a;->tJ()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$m$a;->d(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$m$a;

    goto :goto_8

    .line 31674
    :sswitch_data_7c
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_35
        0x22 -> :sswitch_51
        0x2a -> :sswitch_60
    .end sparse-switch
.end method

.method public K(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$m$a;
    .registers 3

    .prologue
    .line 31633
    instance-of v0, p1, Lmobi/tikl/wire/control/a$m;

    if-eqz v0, :cond_b

    .line 31634
    check-cast p1, Lmobi/tikl/wire/control/a$m;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$m$a;->e(Lmobi/tikl/wire/control/a$m;)Lmobi/tikl/wire/control/a$m$a;

    move-result-object p0

    .line 31637
    :goto_a
    return-object p0

    .line 31636
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 31560
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$m$a;->I(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 31560
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$m$a;->K(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public aP(I)Lmobi/tikl/wire/control/a$m$a;
    .registers 4

    .prologue
    .line 31731
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$m;->a(Lmobi/tikl/wire/control/a$m;Z)Z

    .line 31732
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$m;->a(Lmobi/tikl/wire/control/a$m;I)I

    .line 31733
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 31592
    invoke-static {}, Lmobi/tikl/wire/control/a$m;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 31560
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m$a;->qV()Lmobi/tikl/wire/control/a$m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 31560
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m$a;->qW()Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 31560
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m$a;->qX()Lmobi/tikl/wire/control/a$m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 31560
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m$a;->qX()Lmobi/tikl/wire/control/a$m;

    move-result-object v0

    return-object v0
.end method

.method public ap(Ljava/lang/String;)Lmobi/tikl/wire/control/a$m$a;
    .registers 4

    .prologue
    .line 31749
    if-nez p1, :cond_8

    .line 31750
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31752
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$m;->b(Lmobi/tikl/wire/control/a$m;Z)Z

    .line 31753
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$m;->a(Lmobi/tikl/wire/control/a$m;Ljava/lang/String;)Ljava/lang/String;

    .line 31754
    return-object p0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 31560
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m$a;->qW()Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 31560
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$m$a;->I(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 31560
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m$a;->qW()Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 31560
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$m$a;->I(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 31560
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m$a;->qW()Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 31560
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$m$a;->K(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$m$a;
    .registers 4

    .prologue
    .line 31858
    if-nez p1, :cond_8

    .line 31859
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31861
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$m;->d(Lmobi/tikl/wire/control/a$m;Z)Z

    .line 31862
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$m;->a(Lmobi/tikl/wire/control/a$m;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;

    .line 31863
    return-object p0
.end method

.method public e(Lmobi/tikl/wire/control/a$m;)Lmobi/tikl/wire/control/a$m$a;
    .registers 4

    .prologue
    .line 31642
    invoke-static {}, Lmobi/tikl/wire/control/a$m;->qP()Lmobi/tikl/wire/control/a$m;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 31662
    :goto_6
    return-object p0

    .line 31643
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$m;->oc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 31644
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$m;->getMsgId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$m$a;->aP(I)Lmobi/tikl/wire/control/a$m$a;

    .line 31646
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$m;->pS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 31647
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$m;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$m$a;->ap(Ljava/lang/String;)Lmobi/tikl/wire/control/a$m$a;

    .line 31649
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$m;->od()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 31650
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$m;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$m$a;->q(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$m$a;

    .line 31652
    :cond_2e
    invoke-static {p1}, Lmobi/tikl/wire/control/a$m;->b(Lmobi/tikl/wire/control/a$m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 31653
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$m;->b(Lmobi/tikl/wire/control/a$m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 31654
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$m;->a(Lmobi/tikl/wire/control/a$m;Ljava/util/List;)Ljava/util/List;

    .line 31656
    :cond_4e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$m;->b(Lmobi/tikl/wire/control/a$m;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$m;->b(Lmobi/tikl/wire/control/a$m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31658
    :cond_5b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$m;->qs()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 31659
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$m;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$m$a;->e(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$m$a;

    .line 31661
    :cond_68
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$m;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$m$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public e(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$m$a;
    .registers 4

    .prologue
    .line 31871
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$m;->qs()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$m;->d(Lmobi/tikl/wire/control/a$m;)Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tx()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 31873
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$m;->d(Lmobi/tikl/wire/control/a$m;)Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$x;->h(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$x$a;->j(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$x$a;->tJ()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$m;->a(Lmobi/tikl/wire/control/a$m;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;

    .line 31878
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$m;->d(Lmobi/tikl/wire/control/a$m;Z)Z

    .line 31879
    return-object p0

    .line 31876
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$m;->a(Lmobi/tikl/wire/control/a$m;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;

    goto :goto_2b
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 31600
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$m;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 31764
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$m;->od()Z

    move-result v0

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 31767
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$m;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method public p(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$m$a;
    .registers 4

    .prologue
    .line 31770
    if-nez p1, :cond_8

    .line 31771
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31773
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$m;->c(Lmobi/tikl/wire/control/a$m;Z)Z

    .line 31774
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$m;->a(Lmobi/tikl/wire/control/a$m;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 31775
    return-object p0
.end method

.method public q(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$m$a;
    .registers 4

    .prologue
    .line 31783
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$m;->od()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$m;->c(Lmobi/tikl/wire/control/a$m;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 31785
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$m;->c(Lmobi/tikl/wire/control/a$m;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$m;->a(Lmobi/tikl/wire/control/a$m;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 31790
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$m;->c(Lmobi/tikl/wire/control/a$m;Z)Z

    .line 31791
    return-object p0

    .line 31788
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$m;->a(Lmobi/tikl/wire/control/a$m;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method protected qV()Lmobi/tikl/wire/control/a$m;
    .registers 2

    .prologue
    .line 31574
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    return-object v0
.end method

.method public qW()Lmobi/tikl/wire/control/a$m$a;
    .registers 3

    .prologue
    .line 31587
    invoke-static {}, Lmobi/tikl/wire/control/a$m$a;->qU()Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$m$a;->e(Lmobi/tikl/wire/control/a$m;)Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public qX()Lmobi/tikl/wire/control/a$m;
    .registers 2

    .prologue
    .line 31603
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 31604
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$m$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 31606
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m$a;->qY()Lmobi/tikl/wire/control/a$m;

    move-result-object v0

    return-object v0
.end method

.method public qY()Lmobi/tikl/wire/control/a$m;
    .registers 3

    .prologue
    .line 31619
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    if-nez v0, :cond_c

    .line 31620
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31623
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$m;->b(Lmobi/tikl/wire/control/a$m;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 31624
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$m;->b(Lmobi/tikl/wire/control/a$m;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$m;->a(Lmobi/tikl/wire/control/a$m;Ljava/util/List;)Ljava/util/List;

    .line 31627
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    .line 31628
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    .line 31629
    return-object v0
.end method

.method public qs()Z
    .registers 2

    .prologue
    .line 31852
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$m;->qs()Z

    move-result v0

    return v0
.end method

.method public qt()Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 31855
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$m;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    return-object v0
.end method

.method public r(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$m$a;
    .registers 4

    .prologue
    .line 31821
    if-nez p1, :cond_8

    .line 31822
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31824
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$m;->b(Lmobi/tikl/wire/control/a$m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 31825
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$m;->a(Lmobi/tikl/wire/control/a$m;Ljava/util/List;)Ljava/util/List;

    .line 31827
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m$a;->pR:Lmobi/tikl/wire/control/a$m;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$m;->b(Lmobi/tikl/wire/control/a$m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31828
    return-object p0
.end method
