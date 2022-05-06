.class public final Lmobi/tikl/wire/control/a$ax$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private ys:Lmobi/tikl/wire/control/a$ax;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30635
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static Kg()Lmobi/tikl/wire/control/a$ax$a;
    .registers 3

    .prologue
    .line 30638
    new-instance v0, Lmobi/tikl/wire/control/a$ax$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ax$a;-><init>()V

    .line 30639
    new-instance v1, Lmobi/tikl/wire/control/a$ax;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$ax;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    .line 30640
    return-object v0
.end method

.method static synthetic Kl()Lmobi/tikl/wire/control/a$ax$a;
    .registers 1

    .prologue
    .line 30630
    invoke-static {}, Lmobi/tikl/wire/control/a$ax$a;->Kg()Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Kb()Z
    .registers 2

    .prologue
    .line 30760
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ax;->Kb()Z

    move-result v0

    return v0
.end method

.method public Kc()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 30763
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ax;->Kc()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected Kh()Lmobi/tikl/wire/control/a$ax;
    .registers 2

    .prologue
    .line 30644
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    return-object v0
.end method

.method public Ki()Lmobi/tikl/wire/control/a$ax$a;
    .registers 3

    .prologue
    .line 30657
    invoke-static {}, Lmobi/tikl/wire/control/a$ax$a;->Kg()Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ax$a;->c(Lmobi/tikl/wire/control/a$ax;)Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    return-object v0
.end method

.method public Kj()Lmobi/tikl/wire/control/a$ax;
    .registers 2

    .prologue
    .line 30673
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 30674
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ax$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 30676
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax$a;->Kk()Lmobi/tikl/wire/control/a$ax;

    move-result-object v0

    return-object v0
.end method

.method public Kk()Lmobi/tikl/wire/control/a$ax;
    .registers 3

    .prologue
    .line 30689
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    if-nez v0, :cond_c

    .line 30690
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30693
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    .line 30694
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    .line 30695
    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 30630
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ax$a;->aT(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 30630
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ax$a;->aV(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    return-object v0
.end method

.method public aR(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ax$a;
    .registers 4

    .prologue
    .line 30766
    if-nez p1, :cond_8

    .line 30767
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30769
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ax;->a(Lmobi/tikl/wire/control/a$ax;Z)Z

    .line 30770
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ax;->a(Lmobi/tikl/wire/control/a$ax;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 30771
    return-object p0
.end method

.method public aS(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ax$a;
    .registers 4

    .prologue
    .line 30779
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ax;->Kb()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ax;->b(Lmobi/tikl/wire/control/a$ax;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 30781
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ax;->b(Lmobi/tikl/wire/control/a$ax;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ax;->a(Lmobi/tikl/wire/control/a$ax;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 30786
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ax;->a(Lmobi/tikl/wire/control/a$ax;Z)Z

    .line 30787
    return-object p0

    .line 30784
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ax;->a(Lmobi/tikl/wire/control/a$ax;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 30662
    invoke-static {}, Lmobi/tikl/wire/control/a$ax;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public aT(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ax$a;
    .registers 7

    .prologue
    .line 30723
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 30727
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 30728
    sparse-switch v1, :sswitch_data_4a

    .line 30733
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$ax$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 30735
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ax$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 30736
    :goto_1c
    return-object p0

    .line 30730
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ax$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 30741
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 30742
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax$a;->Kb()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 30743
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax$a;->Kc()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 30745
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 30746
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ax$a;->aR(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ax$a;

    goto :goto_8

    .line 30750
    :sswitch_41
    invoke-virtual {p1}, Lcom/google/protobuf/d;->h()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmobi/tikl/wire/control/a$ax$a;->y(J)Lmobi/tikl/wire/control/a$ax$a;

    goto :goto_8

    .line 30728
    nop

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_1d
        0x1a -> :sswitch_25
        0x20 -> :sswitch_41
    .end sparse-switch
.end method

.method public aV(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ax$a;
    .registers 3

    .prologue
    .line 30699
    instance-of v0, p1, Lmobi/tikl/wire/control/a$ax;

    if-eqz v0, :cond_b

    .line 30700
    check-cast p1, Lmobi/tikl/wire/control/a$ax;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ax$a;->c(Lmobi/tikl/wire/control/a$ax;)Lmobi/tikl/wire/control/a$ax$a;

    move-result-object p0

    .line 30703
    :goto_a
    return-object p0

    .line 30702
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 30630
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax$a;->Kh()Lmobi/tikl/wire/control/a$ax;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 30630
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax$a;->Ki()Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 30630
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax$a;->Kj()Lmobi/tikl/wire/control/a$ax;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 30630
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax$a;->Kj()Lmobi/tikl/wire/control/a$ax;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 30630
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax$a;->Ki()Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 30630
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ax$a;->aT(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 30630
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax$a;->Ki()Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 30630
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ax$a;->aT(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$ax;)Lmobi/tikl/wire/control/a$ax$a;
    .registers 4

    .prologue
    .line 30708
    invoke-static {}, Lmobi/tikl/wire/control/a$ax;->JZ()Lmobi/tikl/wire/control/a$ax;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 30716
    :goto_6
    return-object p0

    .line 30709
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ax;->Kb()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 30710
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ax;->Kc()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ax$a;->aS(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ax$a;

    .line 30712
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ax;->HM()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 30713
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ax;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmobi/tikl/wire/control/a$ax$a;->y(J)Lmobi/tikl/wire/control/a$ax$a;

    .line 30715
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ax;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ax$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 30630
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax$a;->Ki()Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 30630
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ax$a;->aV(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 30670
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ax;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public y(J)Lmobi/tikl/wire/control/a$ax$a;
    .registers 6

    .prologue
    .line 30803
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ax;->b(Lmobi/tikl/wire/control/a$ax;Z)Z

    .line 30804
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax$a;->ys:Lmobi/tikl/wire/control/a$ax;

    invoke-static {v0, p1, p2}, Lmobi/tikl/wire/control/a$ax;->a(Lmobi/tikl/wire/control/a$ax;J)J

    .line 30805
    return-object p0
.end method
