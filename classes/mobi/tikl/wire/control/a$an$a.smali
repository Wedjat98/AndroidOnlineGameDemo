.class public final Lmobi/tikl/wire/control/a$an$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private vH:Lmobi/tikl/wire/control/a$an;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23398
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static FK()Lmobi/tikl/wire/control/a$an$a;
    .registers 3

    .prologue
    .line 23401
    new-instance v0, Lmobi/tikl/wire/control/a$an$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$an$a;-><init>()V

    .line 23402
    new-instance v1, Lmobi/tikl/wire/control/a$an;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$an;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    .line 23403
    return-object v0
.end method

.method static synthetic FP()Lmobi/tikl/wire/control/a$an$a;
    .registers 1

    .prologue
    .line 23393
    invoke-static {}, Lmobi/tikl/wire/control/a$an$a;->FK()Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public FF()Z
    .registers 2

    .prologue
    .line 23523
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$an;->FF()Z

    move-result v0

    return v0
.end method

.method public FG()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 23526
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$an;->FG()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected FL()Lmobi/tikl/wire/control/a$an;
    .registers 2

    .prologue
    .line 23407
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    return-object v0
.end method

.method public FM()Lmobi/tikl/wire/control/a$an$a;
    .registers 3

    .prologue
    .line 23420
    invoke-static {}, Lmobi/tikl/wire/control/a$an$a;->FK()Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$an$a;->c(Lmobi/tikl/wire/control/a$an;)Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    return-object v0
.end method

.method public FN()Lmobi/tikl/wire/control/a$an;
    .registers 2

    .prologue
    .line 23436
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 23437
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$an$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 23439
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an$a;->FO()Lmobi/tikl/wire/control/a$an;

    move-result-object v0

    return-object v0
.end method

.method public FO()Lmobi/tikl/wire/control/a$an;
    .registers 3

    .prologue
    .line 23452
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    if-nez v0, :cond_c

    .line 23453
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23456
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    .line 23457
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    .line 23458
    return-object v0
.end method

.method public K(Z)Lmobi/tikl/wire/control/a$an$a;
    .registers 4

    .prologue
    .line 23566
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$an;->b(Lmobi/tikl/wire/control/a$an;Z)Z

    .line 23567
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$an;->c(Lmobi/tikl/wire/control/a$an;Z)Z

    .line 23568
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 23393
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$an$a;->aJ(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 23393
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$an$a;->aL(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    return-object v0
.end method

.method public aH(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$an$a;
    .registers 4

    .prologue
    .line 23529
    if-nez p1, :cond_8

    .line 23530
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23532
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$an;->a(Lmobi/tikl/wire/control/a$an;Z)Z

    .line 23533
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$an;->a(Lmobi/tikl/wire/control/a$an;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 23534
    return-object p0
.end method

.method public aI(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$an$a;
    .registers 4

    .prologue
    .line 23542
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$an;->FF()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$an;->b(Lmobi/tikl/wire/control/a$an;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 23544
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$an;->b(Lmobi/tikl/wire/control/a$an;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$an;->a(Lmobi/tikl/wire/control/a$an;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 23549
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$an;->a(Lmobi/tikl/wire/control/a$an;Z)Z

    .line 23550
    return-object p0

    .line 23547
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$an;->a(Lmobi/tikl/wire/control/a$an;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public aJ(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$an$a;
    .registers 6

    .prologue
    .line 23486
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 23490
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 23491
    sparse-switch v1, :sswitch_data_4a

    .line 23496
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$an$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 23498
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$an$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 23499
    :goto_1c
    return-object p0

    .line 23493
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$an$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 23504
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 23505
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an$a;->FF()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 23506
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an$a;->FG()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 23508
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 23509
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$an$a;->aH(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$an$a;

    goto :goto_8

    .line 23513
    :sswitch_41
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$an$a;->K(Z)Lmobi/tikl/wire/control/a$an$a;

    goto :goto_8

    .line 23491
    nop

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x10 -> :sswitch_41
    .end sparse-switch
.end method

.method public aL(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$an$a;
    .registers 3

    .prologue
    .line 23462
    instance-of v0, p1, Lmobi/tikl/wire/control/a$an;

    if-eqz v0, :cond_b

    .line 23463
    check-cast p1, Lmobi/tikl/wire/control/a$an;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$an$a;->c(Lmobi/tikl/wire/control/a$an;)Lmobi/tikl/wire/control/a$an$a;

    move-result-object p0

    .line 23466
    :goto_a
    return-object p0

    .line 23465
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 23425
    invoke-static {}, Lmobi/tikl/wire/control/a$an;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 23393
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an$a;->FL()Lmobi/tikl/wire/control/a$an;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 23393
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an$a;->FM()Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 23393
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an$a;->FN()Lmobi/tikl/wire/control/a$an;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 23393
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an$a;->FN()Lmobi/tikl/wire/control/a$an;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 23393
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an$a;->FM()Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 23393
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$an$a;->aJ(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 23393
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an$a;->FM()Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 23393
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$an$a;->aJ(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$an;)Lmobi/tikl/wire/control/a$an$a;
    .registers 3

    .prologue
    .line 23471
    invoke-static {}, Lmobi/tikl/wire/control/a$an;->FD()Lmobi/tikl/wire/control/a$an;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 23479
    :goto_6
    return-object p0

    .line 23472
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$an;->FF()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 23473
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$an;->FG()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$an$a;->aI(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$an$a;

    .line 23475
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$an;->Er()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 23476
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$an;->Es()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$an$a;->K(Z)Lmobi/tikl/wire/control/a$an$a;

    .line 23478
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$an;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$an$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 23393
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an$a;->FM()Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 23393
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$an$a;->aL(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 23433
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an$a;->vH:Lmobi/tikl/wire/control/a$an;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$an;->isInitialized()Z

    move-result v0

    return v0
.end method
