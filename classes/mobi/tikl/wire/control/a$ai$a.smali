.class public final Lmobi/tikl/wire/control/a$ai$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private va:Lmobi/tikl/wire/control/a$ai;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22671
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static Ej()Lmobi/tikl/wire/control/a$ai$a;
    .registers 3

    .prologue
    .line 22674
    new-instance v0, Lmobi/tikl/wire/control/a$ai$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ai$a;-><init>()V

    .line 22675
    new-instance v1, Lmobi/tikl/wire/control/a$ai;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$ai;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    .line 22676
    return-object v0
.end method

.method static synthetic Eo()Lmobi/tikl/wire/control/a$ai$a;
    .registers 1

    .prologue
    .line 22666
    invoke-static {}, Lmobi/tikl/wire/control/a$ai$a;->Ej()Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected Ek()Lmobi/tikl/wire/control/a$ai;
    .registers 2

    .prologue
    .line 22680
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    return-object v0
.end method

.method public El()Lmobi/tikl/wire/control/a$ai$a;
    .registers 3

    .prologue
    .line 22693
    invoke-static {}, Lmobi/tikl/wire/control/a$ai$a;->Ej()Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ai$a;->c(Lmobi/tikl/wire/control/a$ai;)Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    return-object v0
.end method

.method public Em()Lmobi/tikl/wire/control/a$ai;
    .registers 2

    .prologue
    .line 22709
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 22710
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ai$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 22712
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai$a;->En()Lmobi/tikl/wire/control/a$ai;

    move-result-object v0

    return-object v0
.end method

.method public En()Lmobi/tikl/wire/control/a$ai;
    .registers 3

    .prologue
    .line 22725
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    if-nez v0, :cond_c

    .line 22726
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22729
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    .line 22730
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    .line 22731
    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 22666
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ai$a;->aE(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 22666
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ai$a;->aG(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    return-object v0
.end method

.method public aC(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ai$a;
    .registers 4

    .prologue
    .line 22795
    if-nez p1, :cond_8

    .line 22796
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22798
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ai;->a(Lmobi/tikl/wire/control/a$ai;Z)Z

    .line 22799
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ai;->a(Lmobi/tikl/wire/control/a$ai;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 22800
    return-object p0
.end method

.method public aD(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ai$a;
    .registers 4

    .prologue
    .line 22808
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ai;->zF()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ai;->b(Lmobi/tikl/wire/control/a$ai;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 22810
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ai;->b(Lmobi/tikl/wire/control/a$ai;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ai;->a(Lmobi/tikl/wire/control/a$ai;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 22815
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ai;->a(Lmobi/tikl/wire/control/a$ai;Z)Z

    .line 22816
    return-object p0

    .line 22813
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ai;->a(Lmobi/tikl/wire/control/a$ai;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public aE(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ai$a;
    .registers 6

    .prologue
    .line 22756
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 22760
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 22761
    sparse-switch v1, :sswitch_data_42

    .line 22766
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$ai$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 22768
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ai$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 22769
    :goto_1c
    return-object p0

    .line 22763
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ai$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 22774
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 22775
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai$a;->zF()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 22776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai$a;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 22778
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 22779
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ai$a;->aC(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ai$a;

    goto :goto_8

    .line 22761
    nop

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
    .end sparse-switch
.end method

.method public aG(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ai$a;
    .registers 3

    .prologue
    .line 22735
    instance-of v0, p1, Lmobi/tikl/wire/control/a$ai;

    if-eqz v0, :cond_b

    .line 22736
    check-cast p1, Lmobi/tikl/wire/control/a$ai;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ai$a;->c(Lmobi/tikl/wire/control/a$ai;)Lmobi/tikl/wire/control/a$ai$a;

    move-result-object p0

    .line 22739
    :goto_a
    return-object p0

    .line 22738
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 22698
    invoke-static {}, Lmobi/tikl/wire/control/a$ai;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 22666
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai$a;->Ek()Lmobi/tikl/wire/control/a$ai;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 22666
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai$a;->El()Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 22666
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai$a;->Em()Lmobi/tikl/wire/control/a$ai;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 22666
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai$a;->Em()Lmobi/tikl/wire/control/a$ai;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 22666
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai$a;->El()Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 22666
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ai$a;->aE(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 22666
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai$a;->El()Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 22666
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ai$a;->aE(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$ai;)Lmobi/tikl/wire/control/a$ai$a;
    .registers 3

    .prologue
    .line 22744
    invoke-static {}, Lmobi/tikl/wire/control/a$ai;->Ee()Lmobi/tikl/wire/control/a$ai;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 22749
    :goto_6
    return-object p0

    .line 22745
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ai;->zF()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 22746
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ai;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ai$a;->aD(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ai$a;

    .line 22748
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ai;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ai$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 22666
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai$a;->El()Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 22666
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ai$a;->aG(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 22706
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ai;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public zF()Z
    .registers 2

    .prologue
    .line 22789
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ai;->zF()Z

    move-result v0

    return v0
.end method

.method public zG()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 22792
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ai$a;->va:Lmobi/tikl/wire/control/a$ai;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ai;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method
