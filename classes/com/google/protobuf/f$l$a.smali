.class public final Lcom/google/protobuf/f$l$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private cq:Lcom/google/protobuf/f$l;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4547
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static eE()Lcom/google/protobuf/f$l$a;
    .registers 3

    .prologue
    .line 4550
    new-instance v0, Lcom/google/protobuf/f$l$a;

    invoke-direct {v0}, Lcom/google/protobuf/f$l$a;-><init>()V

    .line 4551
    new-instance v1, Lcom/google/protobuf/f$l;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/f$l;-><init>(Lcom/google/protobuf/g;)V

    iput-object v1, v0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    .line 4552
    return-object v0
.end method

.method static synthetic eJ()Lcom/google/protobuf/f$l$a;
    .registers 1

    .prologue
    .line 4542
    invoke-static {}, Lcom/google/protobuf/f$l$a;->eE()Lcom/google/protobuf/f$l$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 4542
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$l$a;->p(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$l$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 4542
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$l$a;->r(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$l$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/f$m;)Lcom/google/protobuf/f$l$a;
    .registers 4

    .prologue
    .line 4755
    if-nez p1, :cond_8

    .line 4756
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4758
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$l;->d(Lcom/google/protobuf/f$l;Z)Z

    .line 4759
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$l;->a(Lcom/google/protobuf/f$l;Lcom/google/protobuf/f$m;)Lcom/google/protobuf/f$m;

    .line 4760
    return-object p0
.end method

.method public aH()Z
    .registers 2

    .prologue
    .line 4749
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    invoke-virtual {v0}, Lcom/google/protobuf/f$l;->aH()Z

    move-result v0

    return v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 4574
    invoke-static {}, Lcom/google/protobuf/f$l;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 4542
    invoke-virtual {p0}, Lcom/google/protobuf/f$l$a;->eF()Lcom/google/protobuf/f$l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 4542
    invoke-virtual {p0}, Lcom/google/protobuf/f$l$a;->eG()Lcom/google/protobuf/f$l$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 4542
    invoke-virtual {p0}, Lcom/google/protobuf/f$l$a;->eH()Lcom/google/protobuf/f$l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 4542
    invoke-virtual {p0}, Lcom/google/protobuf/f$l$a;->eH()Lcom/google/protobuf/f$l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 4542
    invoke-virtual {p0}, Lcom/google/protobuf/f$l$a;->eG()Lcom/google/protobuf/f$l$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 4542
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$l$a;->p(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$l$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/protobuf/f$m;)Lcom/google/protobuf/f$l$a;
    .registers 4

    .prologue
    .line 4768
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    invoke-virtual {v0}, Lcom/google/protobuf/f$l;->aH()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    invoke-static {v0}, Lcom/google/protobuf/f$l;->b(Lcom/google/protobuf/f$l;)Lcom/google/protobuf/f$m;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/f$m;->eK()Lcom/google/protobuf/f$m;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 4770
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    iget-object v1, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    invoke-static {v1}, Lcom/google/protobuf/f$l;->b(Lcom/google/protobuf/f$l;)Lcom/google/protobuf/f$m;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/f$m;->c(Lcom/google/protobuf/f$m;)Lcom/google/protobuf/f$m$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/f$m$a;->e(Lcom/google/protobuf/f$m;)Lcom/google/protobuf/f$m$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/f$m$a;->eT()Lcom/google/protobuf/f$m;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$l;->a(Lcom/google/protobuf/f$l;Lcom/google/protobuf/f$m;)Lcom/google/protobuf/f$m;

    .line 4775
    :goto_2b
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$l;->d(Lcom/google/protobuf/f$l;Z)Z

    .line 4776
    return-object p0

    .line 4773
    :cond_32
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$l;->a(Lcom/google/protobuf/f$l;Lcom/google/protobuf/f$m;)Lcom/google/protobuf/f$m;

    goto :goto_2b
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 4542
    invoke-virtual {p0}, Lcom/google/protobuf/f$l$a;->eG()Lcom/google/protobuf/f$l$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/protobuf/f$l;)Lcom/google/protobuf/f$l$a;
    .registers 3

    .prologue
    .line 4620
    invoke-static {}, Lcom/google/protobuf/f$l;->eu()Lcom/google/protobuf/f$l;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4634
    :goto_6
    return-object p0

    .line 4621
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/f$l;->hasName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4622
    invoke-virtual {p1}, Lcom/google/protobuf/f$l;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$l$a;->w(Ljava/lang/String;)Lcom/google/protobuf/f$l$a;

    .line 4624
    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/f$l;->ew()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4625
    invoke-virtual {p1}, Lcom/google/protobuf/f$l;->ex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$l$a;->x(Ljava/lang/String;)Lcom/google/protobuf/f$l$a;

    .line 4627
    :cond_21
    invoke-virtual {p1}, Lcom/google/protobuf/f$l;->ey()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4628
    invoke-virtual {p1}, Lcom/google/protobuf/f$l;->ez()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$l$a;->y(Ljava/lang/String;)Lcom/google/protobuf/f$l$a;

    .line 4630
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protobuf/f$l;->aH()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4631
    invoke-virtual {p1}, Lcom/google/protobuf/f$l;->eA()Lcom/google/protobuf/f$m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$l$a;->b(Lcom/google/protobuf/f$m;)Lcom/google/protobuf/f$l$a;

    .line 4633
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protobuf/f$l;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$l$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 4542
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$l$a;->p(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$l$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 4542
    invoke-virtual {p0}, Lcom/google/protobuf/f$l$a;->eG()Lcom/google/protobuf/f$l$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 4542
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$l$a;->r(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$l$a;

    move-result-object v0

    return-object v0
.end method

.method public eA()Lcom/google/protobuf/f$m;
    .registers 2

    .prologue
    .line 4752
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    invoke-virtual {v0}, Lcom/google/protobuf/f$l;->eA()Lcom/google/protobuf/f$m;

    move-result-object v0

    return-object v0
.end method

.method protected eF()Lcom/google/protobuf/f$l;
    .registers 2

    .prologue
    .line 4556
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    return-object v0
.end method

.method public eG()Lcom/google/protobuf/f$l$a;
    .registers 3

    .prologue
    .line 4569
    invoke-static {}, Lcom/google/protobuf/f$l$a;->eE()Lcom/google/protobuf/f$l$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/f$l$a;->c(Lcom/google/protobuf/f$l;)Lcom/google/protobuf/f$l$a;

    move-result-object v0

    return-object v0
.end method

.method public eH()Lcom/google/protobuf/f$l;
    .registers 2

    .prologue
    .line 4585
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/f$l$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 4586
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    invoke-static {v0}, Lcom/google/protobuf/f$l$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 4588
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$l$a;->eI()Lcom/google/protobuf/f$l;

    move-result-object v0

    return-object v0
.end method

.method public eI()Lcom/google/protobuf/f$l;
    .registers 3

    .prologue
    .line 4601
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    if-nez v0, :cond_c

    .line 4602
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4605
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    .line 4606
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    .line 4607
    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 4582
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    invoke-virtual {v0}, Lcom/google/protobuf/f$l;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public p(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$l$a;
    .registers 6

    .prologue
    .line 4641
    invoke-virtual {p0}, Lcom/google/protobuf/f$l$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 4645
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 4646
    sparse-switch v1, :sswitch_data_5a

    .line 4651
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/protobuf/f$l$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 4653
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$l$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 4654
    :goto_1c
    return-object p0

    .line 4648
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$l$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 4659
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$l$a;->w(Ljava/lang/String;)Lcom/google/protobuf/f$l$a;

    goto :goto_8

    .line 4663
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$l$a;->x(Ljava/lang/String;)Lcom/google/protobuf/f$l$a;

    goto :goto_8

    .line 4667
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$l$a;->y(Ljava/lang/String;)Lcom/google/protobuf/f$l$a;

    goto :goto_8

    .line 4671
    :sswitch_3d
    invoke-static {}, Lcom/google/protobuf/f$m;->eM()Lcom/google/protobuf/f$m$a;

    move-result-object v1

    .line 4672
    invoke-virtual {p0}, Lcom/google/protobuf/f$l$a;->aH()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 4673
    invoke-virtual {p0}, Lcom/google/protobuf/f$l$a;->eA()Lcom/google/protobuf/f$m;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/f$m$a;->e(Lcom/google/protobuf/f$m;)Lcom/google/protobuf/f$m$a;

    .line 4675
    :cond_4e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 4676
    invoke-virtual {v1}, Lcom/google/protobuf/f$m$a;->eT()Lcom/google/protobuf/f$m;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$l$a;->a(Lcom/google/protobuf/f$m;)Lcom/google/protobuf/f$l$a;

    goto :goto_8

    .line 4646
    nop

    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_35
        0x22 -> :sswitch_3d
    .end sparse-switch
.end method

.method public r(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$l$a;
    .registers 3

    .prologue
    .line 4611
    instance-of v0, p1, Lcom/google/protobuf/f$l;

    if-eqz v0, :cond_b

    .line 4612
    check-cast p1, Lcom/google/protobuf/f$l;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$l$a;->c(Lcom/google/protobuf/f$l;)Lcom/google/protobuf/f$l$a;

    move-result-object p0

    .line 4615
    :goto_a
    return-object p0

    .line 4614
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public w(Ljava/lang/String;)Lcom/google/protobuf/f$l$a;
    .registers 4

    .prologue
    .line 4692
    if-nez p1, :cond_8

    .line 4693
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4695
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$l;->a(Lcom/google/protobuf/f$l;Z)Z

    .line 4696
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$l;->a(Lcom/google/protobuf/f$l;Ljava/lang/String;)Ljava/lang/String;

    .line 4697
    return-object p0
.end method

.method public x(Ljava/lang/String;)Lcom/google/protobuf/f$l$a;
    .registers 4

    .prologue
    .line 4713
    if-nez p1, :cond_8

    .line 4714
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4716
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$l;->b(Lcom/google/protobuf/f$l;Z)Z

    .line 4717
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$l;->b(Lcom/google/protobuf/f$l;Ljava/lang/String;)Ljava/lang/String;

    .line 4718
    return-object p0
.end method

.method public y(Ljava/lang/String;)Lcom/google/protobuf/f$l$a;
    .registers 4

    .prologue
    .line 4734
    if-nez p1, :cond_8

    .line 4735
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4737
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$l;->c(Lcom/google/protobuf/f$l;Z)Z

    .line 4738
    iget-object v0, p0, Lcom/google/protobuf/f$l$a;->cq:Lcom/google/protobuf/f$l;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$l;->c(Lcom/google/protobuf/f$l;Ljava/lang/String;)Ljava/lang/String;

    .line 4739
    return-object p0
.end method
