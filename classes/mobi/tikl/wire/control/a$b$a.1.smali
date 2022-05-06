.class public final Lmobi/tikl/wire/control/a$b$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private ou:Lmobi/tikl/wire/control/a$b;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18435
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static nJ()Lmobi/tikl/wire/control/a$b$a;
    .registers 3

    .prologue
    .line 18438
    new-instance v0, Lmobi/tikl/wire/control/a$b$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$b$a;-><init>()V

    .line 18439
    new-instance v1, Lmobi/tikl/wire/control/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$b;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    .line 18440
    return-object v0
.end method

.method static synthetic nO()Lmobi/tikl/wire/control/a$b$a;
    .registers 1

    .prologue
    .line 18430
    invoke-static {}, Lmobi/tikl/wire/control/a$b$a;->nJ()Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 18430
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$b$a;->x(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 18430
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$b$a;->z(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 18462
    invoke-static {}, Lmobi/tikl/wire/control/a$b;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 18430
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b$a;->nK()Lmobi/tikl/wire/control/a$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 18430
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b$a;->nL()Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 18430
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b$a;->nM()Lmobi/tikl/wire/control/a$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 18430
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b$a;->nM()Lmobi/tikl/wire/control/a$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 18430
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b$a;->nL()Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 18430
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$b$a;->x(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$b$a;
    .registers 4

    .prologue
    .line 18559
    if-nez p1, :cond_8

    .line 18560
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18562
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$b;->a(Lmobi/tikl/wire/control/a$b;Z)Z

    .line 18563
    iget-object v0, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$b;->a(Lmobi/tikl/wire/control/a$b;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 18564
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 18430
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b$a;->nL()Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 18430
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$b$a;->x(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$b$a;
    .registers 4

    .prologue
    .line 18572
    iget-object v0, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$b;->nE()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$b;->b(Lmobi/tikl/wire/control/a$b;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 18574
    iget-object v0, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$b;->b(Lmobi/tikl/wire/control/a$b;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$b;->a(Lmobi/tikl/wire/control/a$b;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 18579
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$b;->a(Lmobi/tikl/wire/control/a$b;Z)Z

    .line 18580
    return-object p0

    .line 18577
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$b;->a(Lmobi/tikl/wire/control/a$b;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public c(Lmobi/tikl/wire/control/a$b;)Lmobi/tikl/wire/control/a$b$a;
    .registers 3

    .prologue
    .line 18508
    invoke-static {}, Lmobi/tikl/wire/control/a$b;->nC()Lmobi/tikl/wire/control/a$b;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 18513
    :goto_6
    return-object p0

    .line 18509
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$b;->nE()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 18510
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$b;->nF()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$b$a;->c(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$b$a;

    .line 18512
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$b;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$b$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 18430
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b$a;->nL()Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 18430
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$b$a;->z(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 18470
    iget-object v0, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$b;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public nE()Z
    .registers 2

    .prologue
    .line 18553
    iget-object v0, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$b;->nE()Z

    move-result v0

    return v0
.end method

.method public nF()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 18556
    iget-object v0, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$b;->nF()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected nK()Lmobi/tikl/wire/control/a$b;
    .registers 2

    .prologue
    .line 18444
    iget-object v0, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    return-object v0
.end method

.method public nL()Lmobi/tikl/wire/control/a$b$a;
    .registers 3

    .prologue
    .line 18457
    invoke-static {}, Lmobi/tikl/wire/control/a$b$a;->nJ()Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$b$a;->c(Lmobi/tikl/wire/control/a$b;)Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public nM()Lmobi/tikl/wire/control/a$b;
    .registers 2

    .prologue
    .line 18473
    iget-object v0, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 18474
    iget-object v0, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$b$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 18476
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b$a;->nN()Lmobi/tikl/wire/control/a$b;

    move-result-object v0

    return-object v0
.end method

.method public nN()Lmobi/tikl/wire/control/a$b;
    .registers 3

    .prologue
    .line 18489
    iget-object v0, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    if-nez v0, :cond_c

    .line 18490
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18493
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    .line 18494
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$b$a;->ou:Lmobi/tikl/wire/control/a$b;

    .line 18495
    return-object v0
.end method

.method public x(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$b$a;
    .registers 6

    .prologue
    .line 18520
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 18524
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 18525
    sparse-switch v1, :sswitch_data_42

    .line 18530
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$b$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 18532
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$b$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 18533
    :goto_1c
    return-object p0

    .line 18527
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$b$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 18538
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 18539
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b$a;->nE()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 18540
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b$a;->nF()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 18542
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 18543
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$b$a;->b(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$b$a;

    goto :goto_8

    .line 18525
    nop

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
    .end sparse-switch
.end method

.method public z(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$b$a;
    .registers 3

    .prologue
    .line 18499
    instance-of v0, p1, Lmobi/tikl/wire/control/a$b;

    if-eqz v0, :cond_b

    .line 18500
    check-cast p1, Lmobi/tikl/wire/control/a$b;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$b$a;->c(Lmobi/tikl/wire/control/a$b;)Lmobi/tikl/wire/control/a$b$a;

    move-result-object p0

    .line 18503
    :goto_a
    return-object p0

    .line 18502
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method
