.class public final Lmobi/tikl/wire/control/a$A$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qP:Lmobi/tikl/wire/control/a$A;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13628
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static uo()Lmobi/tikl/wire/control/a$A$a;
    .registers 3

    .prologue
    .line 13631
    new-instance v0, Lmobi/tikl/wire/control/a$A$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$A$a;-><init>()V

    .line 13632
    new-instance v1, Lmobi/tikl/wire/control/a$A;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$A;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    .line 13633
    return-object v0
.end method

.method static synthetic ut()Lmobi/tikl/wire/control/a$A$a;
    .registers 1

    .prologue
    .line 13623
    invoke-static {}, Lmobi/tikl/wire/control/a$A$a;->uo()Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public F(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$A$a;
    .registers 4

    .prologue
    .line 13759
    if-nez p1, :cond_8

    .line 13760
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13762
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$A;->a(Lmobi/tikl/wire/control/a$A;Z)Z

    .line 13763
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$A;->a(Lmobi/tikl/wire/control/a$A;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 13764
    return-object p0
.end method

.method public G(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$A$a;
    .registers 4

    .prologue
    .line 13772
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$A;->od()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$A;->b(Lmobi/tikl/wire/control/a$A;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 13774
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$A;->b(Lmobi/tikl/wire/control/a$A;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$A;->a(Lmobi/tikl/wire/control/a$A;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 13779
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$A;->a(Lmobi/tikl/wire/control/a$A;Z)Z

    .line 13780
    return-object p0

    .line 13777
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$A;->a(Lmobi/tikl/wire/control/a$A;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public W(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$A$a;
    .registers 6

    .prologue
    .line 13716
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 13720
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 13721
    sparse-switch v1, :sswitch_data_4a

    .line 13726
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$A$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 13728
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$A$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 13729
    :goto_1c
    return-object p0

    .line 13723
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$A$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 13734
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 13735
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A$a;->od()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 13736
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A$a;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 13738
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 13739
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$A$a;->F(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$A$a;

    goto :goto_8

    .line 13743
    :sswitch_41
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$A$a;->aG(Ljava/lang/String;)Lmobi/tikl/wire/control/a$A$a;

    goto :goto_8

    .line 13721
    nop

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_1d
        0x12 -> :sswitch_25
        0x1a -> :sswitch_41
    .end sparse-switch
.end method

.method public Y(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$A$a;
    .registers 3

    .prologue
    .line 13692
    instance-of v0, p1, Lmobi/tikl/wire/control/a$A;

    if-eqz v0, :cond_b

    .line 13693
    check-cast p1, Lmobi/tikl/wire/control/a$A;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$A$a;->c(Lmobi/tikl/wire/control/a$A;)Lmobi/tikl/wire/control/a$A$a;

    move-result-object p0

    .line 13696
    :goto_a
    return-object p0

    .line 13695
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 13623
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$A$a;->W(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 13623
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$A$a;->Y(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    return-object v0
.end method

.method public aG(Ljava/lang/String;)Lmobi/tikl/wire/control/a$A$a;
    .registers 4

    .prologue
    .line 13796
    if-nez p1, :cond_8

    .line 13797
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13799
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$A;->b(Lmobi/tikl/wire/control/a$A;Z)Z

    .line 13800
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$A;->a(Lmobi/tikl/wire/control/a$A;Ljava/lang/String;)Ljava/lang/String;

    .line 13801
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 13655
    invoke-static {}, Lmobi/tikl/wire/control/a$A;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 13623
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A$a;->up()Lmobi/tikl/wire/control/a$A;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 13623
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A$a;->uq()Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 13623
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A$a;->ur()Lmobi/tikl/wire/control/a$A;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 13623
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A$a;->ur()Lmobi/tikl/wire/control/a$A;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 13623
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A$a;->uq()Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 13623
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$A$a;->W(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 13623
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A$a;->uq()Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 13623
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$A$a;->W(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$A;)Lmobi/tikl/wire/control/a$A$a;
    .registers 3

    .prologue
    .line 13701
    invoke-static {}, Lmobi/tikl/wire/control/a$A;->uj()Lmobi/tikl/wire/control/a$A;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 13709
    :goto_6
    return-object p0

    .line 13702
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$A;->od()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 13703
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$A;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$A$a;->G(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$A$a;

    .line 13705
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$A;->pS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 13706
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$A;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$A$a;->aG(Ljava/lang/String;)Lmobi/tikl/wire/control/a$A$a;

    .line 13708
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$A;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$A$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 13623
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A$a;->uq()Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 13623
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$A$a;->Y(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 13663
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$A;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 13753
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$A;->od()Z

    move-result v0

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 13756
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$A;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected up()Lmobi/tikl/wire/control/a$A;
    .registers 2

    .prologue
    .line 13637
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    return-object v0
.end method

.method public uq()Lmobi/tikl/wire/control/a$A$a;
    .registers 3

    .prologue
    .line 13650
    invoke-static {}, Lmobi/tikl/wire/control/a$A$a;->uo()Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$A$a;->c(Lmobi/tikl/wire/control/a$A;)Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    return-object v0
.end method

.method public ur()Lmobi/tikl/wire/control/a$A;
    .registers 2

    .prologue
    .line 13666
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 13667
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$A$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 13669
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A$a;->us()Lmobi/tikl/wire/control/a$A;

    move-result-object v0

    return-object v0
.end method

.method public us()Lmobi/tikl/wire/control/a$A;
    .registers 3

    .prologue
    .line 13682
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    if-nez v0, :cond_c

    .line 13683
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13686
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    .line 13687
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$A$a;->qP:Lmobi/tikl/wire/control/a$A;

    .line 13688
    return-object v0
.end method
