.class public final Lmobi/tikl/wire/control/a$t$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qs:Lmobi/tikl/wire/control/a$t;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28410
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static sG()Lmobi/tikl/wire/control/a$t$a;
    .registers 3

    .prologue
    .line 28413
    new-instance v0, Lmobi/tikl/wire/control/a$t$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$t$a;-><init>()V

    .line 28414
    new-instance v1, Lmobi/tikl/wire/control/a$t;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$t;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    .line 28415
    return-object v0
.end method

.method static synthetic sL()Lmobi/tikl/wire/control/a$t$a;
    .registers 1

    .prologue
    .line 28405
    invoke-static {}, Lmobi/tikl/wire/control/a$t$a;->sG()Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$t$a;
    .registers 4

    .prologue
    .line 28541
    if-nez p1, :cond_8

    .line 28542
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28544
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$t;->a(Lmobi/tikl/wire/control/a$t;Z)Z

    .line 28545
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$t;->a(Lmobi/tikl/wire/control/a$t;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 28546
    return-object p0
.end method

.method public B(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$t$a;
    .registers 4

    .prologue
    .line 28554
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$t;->sB()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$t;->b(Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 28556
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$t;->b(Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$t;->a(Lmobi/tikl/wire/control/a$t;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 28561
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$t;->a(Lmobi/tikl/wire/control/a$t;Z)Z

    .line 28562
    return-object p0

    .line 28559
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$t;->a(Lmobi/tikl/wire/control/a$t;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public P(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$t$a;
    .registers 6

    .prologue
    .line 28498
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 28502
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 28503
    sparse-switch v1, :sswitch_data_4a

    .line 28508
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$t$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 28510
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$t$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 28511
    :goto_1c
    return-object p0

    .line 28505
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$t$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 28516
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 28517
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t$a;->sB()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 28518
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t$a;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 28520
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 28521
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$t$a;->A(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$t$a;

    goto :goto_8

    .line 28525
    :sswitch_41
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$t$a;->ay(Ljava/lang/String;)Lmobi/tikl/wire/control/a$t$a;

    goto :goto_8

    .line 28503
    nop

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_1d
        0x12 -> :sswitch_25
        0x1a -> :sswitch_41
    .end sparse-switch
.end method

.method public R(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$t$a;
    .registers 3

    .prologue
    .line 28474
    instance-of v0, p1, Lmobi/tikl/wire/control/a$t;

    if-eqz v0, :cond_b

    .line 28475
    check-cast p1, Lmobi/tikl/wire/control/a$t;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$t$a;->c(Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$t$a;

    move-result-object p0

    .line 28478
    :goto_a
    return-object p0

    .line 28477
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 28405
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$t$a;->P(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 28405
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$t$a;->R(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 28437
    invoke-static {}, Lmobi/tikl/wire/control/a$t;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 28405
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t$a;->sH()Lmobi/tikl/wire/control/a$t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 28405
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t$a;->sI()Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 28405
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t$a;->sJ()Lmobi/tikl/wire/control/a$t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 28405
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t$a;->sJ()Lmobi/tikl/wire/control/a$t;

    move-result-object v0

    return-object v0
.end method

.method public ay(Ljava/lang/String;)Lmobi/tikl/wire/control/a$t$a;
    .registers 4

    .prologue
    .line 28578
    if-nez p1, :cond_8

    .line 28579
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28581
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$t;->b(Lmobi/tikl/wire/control/a$t;Z)Z

    .line 28582
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$t;->a(Lmobi/tikl/wire/control/a$t;Ljava/lang/String;)Ljava/lang/String;

    .line 28583
    return-object p0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 28405
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t$a;->sI()Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 28405
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$t$a;->P(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 28405
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t$a;->sI()Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 28405
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$t$a;->P(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$t$a;
    .registers 3

    .prologue
    .line 28483
    invoke-static {}, Lmobi/tikl/wire/control/a$t;->sz()Lmobi/tikl/wire/control/a$t;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 28491
    :goto_6
    return-object p0

    .line 28484
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$t;->sB()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 28485
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$t;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$t$a;->B(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$t$a;

    .line 28487
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$t;->pS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 28488
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$t;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$t$a;->ay(Ljava/lang/String;)Lmobi/tikl/wire/control/a$t$a;

    .line 28490
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$t;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$t$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 28405
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t$a;->sI()Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 28405
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$t$a;->R(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 28445
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$t;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public sB()Z
    .registers 2

    .prologue
    .line 28535
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$t;->sB()Z

    move-result v0

    return v0
.end method

.method public sC()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 28538
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$t;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected sH()Lmobi/tikl/wire/control/a$t;
    .registers 2

    .prologue
    .line 28419
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    return-object v0
.end method

.method public sI()Lmobi/tikl/wire/control/a$t$a;
    .registers 3

    .prologue
    .line 28432
    invoke-static {}, Lmobi/tikl/wire/control/a$t$a;->sG()Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$t$a;->c(Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public sJ()Lmobi/tikl/wire/control/a$t;
    .registers 2

    .prologue
    .line 28448
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 28449
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$t$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 28451
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t$a;->sK()Lmobi/tikl/wire/control/a$t;

    move-result-object v0

    return-object v0
.end method

.method public sK()Lmobi/tikl/wire/control/a$t;
    .registers 3

    .prologue
    .line 28464
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    if-nez v0, :cond_c

    .line 28465
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28468
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    .line 28469
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$t$a;->qs:Lmobi/tikl/wire/control/a$t;

    .line 28470
    return-object v0
.end method
