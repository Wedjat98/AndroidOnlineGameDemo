.class public final Lmobi/tikl/wire/control/a$ay$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private yA:Lmobi/tikl/wire/control/a$ay;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29537
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method static synthetic KC()Lmobi/tikl/wire/control/a$ay$a;
    .registers 1

    .prologue
    .line 29532
    invoke-static {}, Lmobi/tikl/wire/control/a$ay$a;->Kx()Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    return-object v0
.end method

.method private static Kx()Lmobi/tikl/wire/control/a$ay$a;
    .registers 3

    .prologue
    .line 29540
    new-instance v0, Lmobi/tikl/wire/control/a$ay$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ay$a;-><init>()V

    .line 29541
    new-instance v1, Lmobi/tikl/wire/control/a$ay;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$ay;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    .line 29542
    return-object v0
.end method


# virtual methods
.method public KA()Lmobi/tikl/wire/control/a$ay;
    .registers 2

    .prologue
    .line 29575
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 29576
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ay$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 29578
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->KB()Lmobi/tikl/wire/control/a$ay;

    move-result-object v0

    return-object v0
.end method

.method public KB()Lmobi/tikl/wire/control/a$ay;
    .registers 3

    .prologue
    .line 29591
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    if-nez v0, :cond_c

    .line 29592
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29595
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    .line 29596
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    .line 29597
    return-object v0
.end method

.method public Kq()Z
    .registers 2

    .prologue
    .line 29818
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ay;->Kq()Z

    move-result v0

    return v0
.end method

.method public Kr()Lmobi/tikl/wire/control/a$g;
    .registers 2

    .prologue
    .line 29821
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ay;->Kr()Lmobi/tikl/wire/control/a$g;

    move-result-object v0

    return-object v0
.end method

.method public Ks()Z
    .registers 2

    .prologue
    .line 29855
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ay;->Ks()Z

    move-result v0

    return v0
.end method

.method public Kt()Lmobi/tikl/wire/control/a$c;
    .registers 2

    .prologue
    .line 29858
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ay;->Kt()Lmobi/tikl/wire/control/a$c;

    move-result-object v0

    return-object v0
.end method

.method protected Ky()Lmobi/tikl/wire/control/a$ay;
    .registers 2

    .prologue
    .line 29546
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    return-object v0
.end method

.method public Kz()Lmobi/tikl/wire/control/a$ay$a;
    .registers 3

    .prologue
    .line 29559
    invoke-static {}, Lmobi/tikl/wire/control/a$ay$a;->Kx()Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ay$a;->f(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 29532
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ay$a;->aU(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 29532
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ay$a;->aW(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 29564
    invoke-static {}, Lmobi/tikl/wire/control/a$ay;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public aT(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ay$a;
    .registers 4

    .prologue
    .line 29732
    if-nez p1, :cond_8

    .line 29733
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29735
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ay;->b(Lmobi/tikl/wire/control/a$ay;Z)Z

    .line 29736
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ay;->a(Lmobi/tikl/wire/control/a$ay;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 29737
    return-object p0
.end method

.method public aU(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ay$a;
    .registers 7

    .prologue
    .line 29637
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 29641
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 29642
    sparse-switch v1, :sswitch_data_a6

    .line 29647
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$ay$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 29649
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ay$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 29650
    :goto_1c
    return-object p0

    .line 29644
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ay$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 29655
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ay$a;->bM(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ay$a;

    goto :goto_8

    .line 29659
    :sswitch_2d
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 29660
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->od()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 29661
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 29663
    :cond_3e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 29664
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ay$a;->aT(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ay$a;

    goto :goto_8

    .line 29668
    :sswitch_49
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 29669
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->oX()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 29670
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->oY()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 29672
    :cond_5a
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 29673
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ay$a;->aV(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ay$a;

    goto :goto_8

    .line 29677
    :sswitch_65
    invoke-virtual {p1}, Lcom/google/protobuf/d;->h()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmobi/tikl/wire/control/a$ay$a;->z(J)Lmobi/tikl/wire/control/a$ay$a;

    goto :goto_8

    .line 29681
    :sswitch_6d
    invoke-static {}, Lmobi/tikl/wire/control/a$g;->pv()Lmobi/tikl/wire/control/a$g$a;

    move-result-object v1

    .line 29682
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->Kq()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 29683
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->Kr()Lmobi/tikl/wire/control/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$g$a;->b(Lmobi/tikl/wire/control/a$g;)Lmobi/tikl/wire/control/a$g$a;

    .line 29685
    :cond_7e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 29686
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$g$a;->pC()Lmobi/tikl/wire/control/a$g;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ay$a;->c(Lmobi/tikl/wire/control/a$g;)Lmobi/tikl/wire/control/a$ay$a;

    goto :goto_8

    .line 29690
    :sswitch_89
    invoke-static {}, Lmobi/tikl/wire/control/a$c;->nR()Lmobi/tikl/wire/control/a$c$a;

    move-result-object v1

    .line 29691
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->Ks()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 29692
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->Kt()Lmobi/tikl/wire/control/a$c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$c$a;->b(Lmobi/tikl/wire/control/a$c;)Lmobi/tikl/wire/control/a$c$a;

    .line 29694
    :cond_9a
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 29695
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$c$a;->nY()Lmobi/tikl/wire/control/a$c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ay$a;->c(Lmobi/tikl/wire/control/a$c;)Lmobi/tikl/wire/control/a$ay$a;

    goto/16 :goto_8

    .line 29642
    :sswitch_data_a6
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_49
        0x20 -> :sswitch_65
        0x52 -> :sswitch_6d
        0x5a -> :sswitch_89
    .end sparse-switch
.end method

.method public aU(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ay$a;
    .registers 4

    .prologue
    .line 29745
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ay;->od()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ay;->b(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 29747
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ay;->b(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ay;->a(Lmobi/tikl/wire/control/a$ay;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 29752
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ay;->b(Lmobi/tikl/wire/control/a$ay;Z)Z

    .line 29753
    return-object p0

    .line 29750
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ay;->a(Lmobi/tikl/wire/control/a$ay;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public aV(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ay$a;
    .registers 4

    .prologue
    .line 29769
    if-nez p1, :cond_8

    .line 29770
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29772
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ay;->c(Lmobi/tikl/wire/control/a$ay;Z)Z

    .line 29773
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ay;->b(Lmobi/tikl/wire/control/a$ay;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 29774
    return-object p0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 29532
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->Ky()Lmobi/tikl/wire/control/a$ay;

    move-result-object v0

    return-object v0
.end method

.method public aW(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ay$a;
    .registers 3

    .prologue
    .line 29601
    instance-of v0, p1, Lmobi/tikl/wire/control/a$ay;

    if-eqz v0, :cond_b

    .line 29602
    check-cast p1, Lmobi/tikl/wire/control/a$ay;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ay$a;->f(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$ay$a;

    move-result-object p0

    .line 29605
    :goto_a
    return-object p0

    .line 29604
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aW(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ay$a;
    .registers 4

    .prologue
    .line 29782
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ay;->oX()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ay;->c(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 29784
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ay;->c(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ay;->b(Lmobi/tikl/wire/control/a$ay;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 29789
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ay;->c(Lmobi/tikl/wire/control/a$ay;Z)Z

    .line 29790
    return-object p0

    .line 29787
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ay;->b(Lmobi/tikl/wire/control/a$ay;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 29532
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->Kz()Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 29532
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->KA()Lmobi/tikl/wire/control/a$ay;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 29532
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->KA()Lmobi/tikl/wire/control/a$ay;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 29532
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->Kz()Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 29532
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ay$a;->aU(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    return-object v0
.end method

.method public bM(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ay$a;
    .registers 4

    .prologue
    .line 29711
    if-nez p1, :cond_8

    .line 29712
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29714
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ay;->a(Lmobi/tikl/wire/control/a$ay;Z)Z

    .line 29715
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ay;->a(Lmobi/tikl/wire/control/a$ay;Ljava/lang/String;)Ljava/lang/String;

    .line 29716
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 29532
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->Kz()Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 29532
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ay$a;->aU(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$c;)Lmobi/tikl/wire/control/a$ay$a;
    .registers 4

    .prologue
    .line 29861
    if-nez p1, :cond_8

    .line 29862
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29864
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ay;->f(Lmobi/tikl/wire/control/a$ay;Z)Z

    .line 29865
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ay;->a(Lmobi/tikl/wire/control/a$ay;Lmobi/tikl/wire/control/a$c;)Lmobi/tikl/wire/control/a$c;

    .line 29866
    return-object p0
.end method

.method public c(Lmobi/tikl/wire/control/a$g;)Lmobi/tikl/wire/control/a$ay$a;
    .registers 4

    .prologue
    .line 29824
    if-nez p1, :cond_8

    .line 29825
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29827
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ay;->e(Lmobi/tikl/wire/control/a$ay;Z)Z

    .line 29828
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ay;->a(Lmobi/tikl/wire/control/a$ay;Lmobi/tikl/wire/control/a$g;)Lmobi/tikl/wire/control/a$g;

    .line 29829
    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 29532
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay$a;->Kz()Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 29532
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ay$a;->aW(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$c;)Lmobi/tikl/wire/control/a$ay$a;
    .registers 4

    .prologue
    .line 29874
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ay;->Ks()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ay;->e(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$c;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$c;->nP()Lmobi/tikl/wire/control/a$c;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 29876
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ay;->e(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$c;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$c;->a(Lmobi/tikl/wire/control/a$c;)Lmobi/tikl/wire/control/a$c$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$c$a;->b(Lmobi/tikl/wire/control/a$c;)Lmobi/tikl/wire/control/a$c$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$c$a;->nY()Lmobi/tikl/wire/control/a$c;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ay;->a(Lmobi/tikl/wire/control/a$ay;Lmobi/tikl/wire/control/a$c;)Lmobi/tikl/wire/control/a$c;

    .line 29881
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ay;->f(Lmobi/tikl/wire/control/a$ay;Z)Z

    .line 29882
    return-object p0

    .line 29879
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ay;->a(Lmobi/tikl/wire/control/a$ay;Lmobi/tikl/wire/control/a$c;)Lmobi/tikl/wire/control/a$c;

    goto :goto_2b
.end method

.method public d(Lmobi/tikl/wire/control/a$g;)Lmobi/tikl/wire/control/a$ay$a;
    .registers 4

    .prologue
    .line 29837
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ay;->Kq()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ay;->d(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$g;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$g;->pt()Lmobi/tikl/wire/control/a$g;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 29839
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ay;->d(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$g;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$g;->a(Lmobi/tikl/wire/control/a$g;)Lmobi/tikl/wire/control/a$g$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$g$a;->b(Lmobi/tikl/wire/control/a$g;)Lmobi/tikl/wire/control/a$g$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$g$a;->pC()Lmobi/tikl/wire/control/a$g;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ay;->a(Lmobi/tikl/wire/control/a$ay;Lmobi/tikl/wire/control/a$g;)Lmobi/tikl/wire/control/a$g;

    .line 29844
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ay;->e(Lmobi/tikl/wire/control/a$ay;Z)Z

    .line 29845
    return-object p0

    .line 29842
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ay;->a(Lmobi/tikl/wire/control/a$ay;Lmobi/tikl/wire/control/a$g;)Lmobi/tikl/wire/control/a$g;

    goto :goto_2b
.end method

.method public f(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$ay$a;
    .registers 4

    .prologue
    .line 29610
    invoke-static {}, Lmobi/tikl/wire/control/a$ay;->Km()Lmobi/tikl/wire/control/a$ay;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 29630
    :goto_6
    return-object p0

    .line 29611
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ay;->Ko()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 29612
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ay;->Kp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ay$a;->bM(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ay$a;

    .line 29614
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ay;->od()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 29615
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ay;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ay$a;->aU(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ay$a;

    .line 29617
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ay;->oX()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 29618
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ay;->oY()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ay$a;->aW(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ay$a;

    .line 29620
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ay;->HM()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 29621
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ay;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmobi/tikl/wire/control/a$ay$a;->z(J)Lmobi/tikl/wire/control/a$ay$a;

    .line 29623
    :cond_3b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ay;->Kq()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 29624
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ay;->Kr()Lmobi/tikl/wire/control/a$g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ay$a;->d(Lmobi/tikl/wire/control/a$g;)Lmobi/tikl/wire/control/a$ay$a;

    .line 29626
    :cond_48
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ay;->Ks()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 29627
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ay;->Kt()Lmobi/tikl/wire/control/a$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ay$a;->d(Lmobi/tikl/wire/control/a$c;)Lmobi/tikl/wire/control/a$ay$a;

    .line 29629
    :cond_55
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ay;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ay$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 29572
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ay;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public oX()Z
    .registers 2

    .prologue
    .line 29763
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ay;->oX()Z

    move-result v0

    return v0
.end method

.method public oY()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 29766
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ay;->oY()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 29726
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ay;->od()Z

    move-result v0

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 29729
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ay;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method public z(J)Lmobi/tikl/wire/control/a$ay$a;
    .registers 6

    .prologue
    .line 29806
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ay;->d(Lmobi/tikl/wire/control/a$ay;Z)Z

    .line 29807
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay$a;->yA:Lmobi/tikl/wire/control/a$ay;

    invoke-static {v0, p1, p2}, Lmobi/tikl/wire/control/a$ay;->a(Lmobi/tikl/wire/control/a$ay;J)J

    .line 29808
    return-object p0
.end method
