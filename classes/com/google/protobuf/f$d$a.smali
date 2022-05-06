.class public final Lcom/google/protobuf/f$d$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private aB:Lcom/google/protobuf/f$d;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 3697
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static bW()Lcom/google/protobuf/f$d$a;
    .registers 3

    .prologue
    .line 3700
    new-instance v0, Lcom/google/protobuf/f$d$a;

    invoke-direct {v0}, Lcom/google/protobuf/f$d$a;-><init>()V

    .line 3701
    new-instance v1, Lcom/google/protobuf/f$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/f$d;-><init>(Lcom/google/protobuf/g;)V

    iput-object v1, v0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    .line 3702
    return-object v0
.end method

.method static synthetic cb()Lcom/google/protobuf/f$d$a;
    .registers 1

    .prologue
    .line 3692
    invoke-static {}, Lcom/google/protobuf/f$d$a;->bW()Lcom/google/protobuf/f$d$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public K(I)Lcom/google/protobuf/f$d$a;
    .registers 4

    .prologue
    .line 3856
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$d;->b(Lcom/google/protobuf/f$d;Z)Z

    .line 3857
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$d;->a(Lcom/google/protobuf/f$d;I)I

    .line 3858
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 3692
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$d$a;->h(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$d$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 3692
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$d$a;->j(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$d$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/f$e;)Lcom/google/protobuf/f$d$a;
    .registers 4

    .prologue
    .line 3874
    if-nez p1, :cond_8

    .line 3875
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3877
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$d;->c(Lcom/google/protobuf/f$d;Z)Z

    .line 3878
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$d;->a(Lcom/google/protobuf/f$d;Lcom/google/protobuf/f$e;)Lcom/google/protobuf/f$e;

    .line 3879
    return-object p0
.end method

.method public aH()Z
    .registers 2

    .prologue
    .line 3868
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    invoke-virtual {v0}, Lcom/google/protobuf/f$d;->aH()Z

    move-result v0

    return v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 3724
    invoke-static {}, Lcom/google/protobuf/f$d;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 3692
    invoke-virtual {p0}, Lcom/google/protobuf/f$d$a;->bX()Lcom/google/protobuf/f$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 3692
    invoke-virtual {p0}, Lcom/google/protobuf/f$d$a;->bY()Lcom/google/protobuf/f$d$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 3692
    invoke-virtual {p0}, Lcom/google/protobuf/f$d$a;->bZ()Lcom/google/protobuf/f$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 3692
    invoke-virtual {p0}, Lcom/google/protobuf/f$d$a;->bZ()Lcom/google/protobuf/f$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 3692
    invoke-virtual {p0}, Lcom/google/protobuf/f$d$a;->bY()Lcom/google/protobuf/f$d$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 3692
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$d$a;->h(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$d$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/protobuf/f$e;)Lcom/google/protobuf/f$d$a;
    .registers 4

    .prologue
    .line 3887
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    invoke-virtual {v0}, Lcom/google/protobuf/f$d;->aH()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    invoke-static {v0}, Lcom/google/protobuf/f$d;->c(Lcom/google/protobuf/f$d;)Lcom/google/protobuf/f$e;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/f$e;->cc()Lcom/google/protobuf/f$e;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 3889
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    iget-object v1, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    invoke-static {v1}, Lcom/google/protobuf/f$d;->c(Lcom/google/protobuf/f$d;)Lcom/google/protobuf/f$e;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/f$e;->c(Lcom/google/protobuf/f$e;)Lcom/google/protobuf/f$e$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/f$e$a;->e(Lcom/google/protobuf/f$e;)Lcom/google/protobuf/f$e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/f$e$a;->cl()Lcom/google/protobuf/f$e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$d;->a(Lcom/google/protobuf/f$d;Lcom/google/protobuf/f$e;)Lcom/google/protobuf/f$e;

    .line 3894
    :goto_2b
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$d;->c(Lcom/google/protobuf/f$d;Z)Z

    .line 3895
    return-object p0

    .line 3892
    :cond_32
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$d;->a(Lcom/google/protobuf/f$d;Lcom/google/protobuf/f$e;)Lcom/google/protobuf/f$e;

    goto :goto_2b
.end method

.method public bS()Lcom/google/protobuf/f$e;
    .registers 2

    .prologue
    .line 3871
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    invoke-virtual {v0}, Lcom/google/protobuf/f$d;->bS()Lcom/google/protobuf/f$e;

    move-result-object v0

    return-object v0
.end method

.method protected bX()Lcom/google/protobuf/f$d;
    .registers 2

    .prologue
    .line 3706
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    return-object v0
.end method

.method public bY()Lcom/google/protobuf/f$d$a;
    .registers 3

    .prologue
    .line 3719
    invoke-static {}, Lcom/google/protobuf/f$d$a;->bW()Lcom/google/protobuf/f$d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/f$d$a;->d(Lcom/google/protobuf/f$d;)Lcom/google/protobuf/f$d$a;

    move-result-object v0

    return-object v0
.end method

.method public bZ()Lcom/google/protobuf/f$d;
    .registers 2

    .prologue
    .line 3735
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/f$d$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3736
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    invoke-static {v0}, Lcom/google/protobuf/f$d$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 3738
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$d$a;->ca()Lcom/google/protobuf/f$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 3692
    invoke-virtual {p0}, Lcom/google/protobuf/f$d$a;->bY()Lcom/google/protobuf/f$d$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 3692
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$d$a;->h(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$d$a;

    move-result-object v0

    return-object v0
.end method

.method public ca()Lcom/google/protobuf/f$d;
    .registers 3

    .prologue
    .line 3751
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    if-nez v0, :cond_c

    .line 3752
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3755
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    .line 3756
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    .line 3757
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3692
    invoke-virtual {p0}, Lcom/google/protobuf/f$d$a;->bY()Lcom/google/protobuf/f$d$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/protobuf/f$d;)Lcom/google/protobuf/f$d$a;
    .registers 3

    .prologue
    .line 3770
    invoke-static {}, Lcom/google/protobuf/f$d;->bP()Lcom/google/protobuf/f$d;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3781
    :goto_6
    return-object p0

    .line 3771
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/f$d;->hasName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3772
    invoke-virtual {p1}, Lcom/google/protobuf/f$d;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$d$a;->l(Ljava/lang/String;)Lcom/google/protobuf/f$d$a;

    .line 3774
    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/f$d;->bR()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3775
    invoke-virtual {p1}, Lcom/google/protobuf/f$d;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$d$a;->K(I)Lcom/google/protobuf/f$d$a;

    .line 3777
    :cond_21
    invoke-virtual {p1}, Lcom/google/protobuf/f$d;->aH()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3778
    invoke-virtual {p1}, Lcom/google/protobuf/f$d;->bS()Lcom/google/protobuf/f$e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$d$a;->b(Lcom/google/protobuf/f$e;)Lcom/google/protobuf/f$d$a;

    .line 3780
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protobuf/f$d;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$d$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 3692
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$d$a;->j(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$d$a;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$d$a;
    .registers 6

    .prologue
    .line 3788
    invoke-virtual {p0}, Lcom/google/protobuf/f$d$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 3792
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 3793
    sparse-switch v1, :sswitch_data_52

    .line 3798
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/protobuf/f$d$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3800
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$d$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 3801
    :goto_1c
    return-object p0

    .line 3795
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$d$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 3806
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$d$a;->l(Ljava/lang/String;)Lcom/google/protobuf/f$d$a;

    goto :goto_8

    .line 3810
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$d$a;->K(I)Lcom/google/protobuf/f$d$a;

    goto :goto_8

    .line 3814
    :sswitch_35
    invoke-static {}, Lcom/google/protobuf/f$e;->ce()Lcom/google/protobuf/f$e$a;

    move-result-object v1

    .line 3815
    invoke-virtual {p0}, Lcom/google/protobuf/f$d$a;->aH()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 3816
    invoke-virtual {p0}, Lcom/google/protobuf/f$d$a;->bS()Lcom/google/protobuf/f$e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/f$e$a;->e(Lcom/google/protobuf/f$e;)Lcom/google/protobuf/f$e$a;

    .line 3818
    :cond_46
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 3819
    invoke-virtual {v1}, Lcom/google/protobuf/f$e$a;->cl()Lcom/google/protobuf/f$e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$d$a;->a(Lcom/google/protobuf/f$e;)Lcom/google/protobuf/f$d$a;

    goto :goto_8

    .line 3793
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x10 -> :sswitch_2d
        0x1a -> :sswitch_35
    .end sparse-switch
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 3732
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    invoke-virtual {v0}, Lcom/google/protobuf/f$d;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public j(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$d$a;
    .registers 3

    .prologue
    .line 3761
    instance-of v0, p1, Lcom/google/protobuf/f$d;

    if-eqz v0, :cond_b

    .line 3762
    check-cast p1, Lcom/google/protobuf/f$d;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$d$a;->d(Lcom/google/protobuf/f$d;)Lcom/google/protobuf/f$d$a;

    move-result-object p0

    .line 3765
    :goto_a
    return-object p0

    .line 3764
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public l(Ljava/lang/String;)Lcom/google/protobuf/f$d$a;
    .registers 4

    .prologue
    .line 3835
    if-nez p1, :cond_8

    .line 3836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3838
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$d;->a(Lcom/google/protobuf/f$d;Z)Z

    .line 3839
    iget-object v0, p0, Lcom/google/protobuf/f$d$a;->aB:Lcom/google/protobuf/f$d;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$d;->a(Lcom/google/protobuf/f$d;Ljava/lang/String;)Ljava/lang/String;

    .line 3840
    return-object p0
.end method
