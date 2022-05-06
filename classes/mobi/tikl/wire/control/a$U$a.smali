.class public final Lmobi/tikl/wire/control/a$U$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private sW:Lmobi/tikl/wire/control/a$U;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16464
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static zM()Lmobi/tikl/wire/control/a$U$a;
    .registers 3

    .prologue
    .line 16467
    new-instance v0, Lmobi/tikl/wire/control/a$U$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$U$a;-><init>()V

    .line 16468
    new-instance v1, Lmobi/tikl/wire/control/a$U;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$U;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    .line 16469
    return-object v0
.end method

.method static synthetic zR()Lmobi/tikl/wire/control/a$U$a;
    .registers 1

    .prologue
    .line 16459
    invoke-static {}, Lmobi/tikl/wire/control/a$U$a;->zM()Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public G(Z)Lmobi/tikl/wire/control/a$U$a;
    .registers 4

    .prologue
    .line 16632
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$U;->b(Lmobi/tikl/wire/control/a$U;Z)Z

    .line 16633
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$U;->c(Lmobi/tikl/wire/control/a$U;Z)Z

    .line 16634
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 16459
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$U$a;->aq(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 16459
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$U$a;->as(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 16491
    invoke-static {}, Lmobi/tikl/wire/control/a$U;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 16459
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U$a;->zN()Lmobi/tikl/wire/control/a$U;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 16459
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U$a;->zO()Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 16459
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U$a;->zP()Lmobi/tikl/wire/control/a$U;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 16459
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U$a;->zP()Lmobi/tikl/wire/control/a$U;

    move-result-object v0

    return-object v0
.end method

.method public ac(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$U$a;
    .registers 4

    .prologue
    .line 16595
    if-nez p1, :cond_8

    .line 16596
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16598
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$U;->a(Lmobi/tikl/wire/control/a$U;Z)Z

    .line 16599
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$U;->a(Lmobi/tikl/wire/control/a$U;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 16600
    return-object p0
.end method

.method public ad(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$U$a;
    .registers 4

    .prologue
    .line 16608
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$U;->zF()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$U;->b(Lmobi/tikl/wire/control/a$U;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 16610
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$U;->b(Lmobi/tikl/wire/control/a$U;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$U;->a(Lmobi/tikl/wire/control/a$U;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 16615
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$U;->a(Lmobi/tikl/wire/control/a$U;Z)Z

    .line 16616
    return-object p0

    .line 16613
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$U;->a(Lmobi/tikl/wire/control/a$U;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public aq(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$U$a;
    .registers 6

    .prologue
    .line 16552
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 16556
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 16557
    sparse-switch v1, :sswitch_data_4a

    .line 16562
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$U$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 16564
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$U$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 16565
    :goto_1c
    return-object p0

    .line 16559
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$U$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 16570
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 16571
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U$a;->zF()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 16572
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U$a;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 16574
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 16575
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$U$a;->ac(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$U$a;

    goto :goto_8

    .line 16579
    :sswitch_41
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$U$a;->G(Z)Lmobi/tikl/wire/control/a$U$a;

    goto :goto_8

    .line 16557
    nop

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x50 -> :sswitch_41
    .end sparse-switch
.end method

.method public as(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$U$a;
    .registers 3

    .prologue
    .line 16528
    instance-of v0, p1, Lmobi/tikl/wire/control/a$U;

    if-eqz v0, :cond_b

    .line 16529
    check-cast p1, Lmobi/tikl/wire/control/a$U;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$U$a;->c(Lmobi/tikl/wire/control/a$U;)Lmobi/tikl/wire/control/a$U$a;

    move-result-object p0

    .line 16532
    :goto_a
    return-object p0

    .line 16531
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 16459
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U$a;->zO()Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 16459
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$U$a;->aq(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 16459
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U$a;->zO()Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 16459
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$U$a;->aq(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$U;)Lmobi/tikl/wire/control/a$U$a;
    .registers 3

    .prologue
    .line 16537
    invoke-static {}, Lmobi/tikl/wire/control/a$U;->zD()Lmobi/tikl/wire/control/a$U;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 16545
    :goto_6
    return-object p0

    .line 16538
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$U;->zF()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 16539
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$U;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$U$a;->ad(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$U$a;

    .line 16541
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$U;->zH()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 16542
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$U;->zI()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$U$a;->G(Z)Lmobi/tikl/wire/control/a$U$a;

    .line 16544
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$U;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$U$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 16459
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U$a;->zO()Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 16459
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$U$a;->as(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 16499
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$U;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public zF()Z
    .registers 2

    .prologue
    .line 16589
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$U;->zF()Z

    move-result v0

    return v0
.end method

.method public zG()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 16592
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$U;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected zN()Lmobi/tikl/wire/control/a$U;
    .registers 2

    .prologue
    .line 16473
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    return-object v0
.end method

.method public zO()Lmobi/tikl/wire/control/a$U$a;
    .registers 3

    .prologue
    .line 16486
    invoke-static {}, Lmobi/tikl/wire/control/a$U$a;->zM()Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$U$a;->c(Lmobi/tikl/wire/control/a$U;)Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    return-object v0
.end method

.method public zP()Lmobi/tikl/wire/control/a$U;
    .registers 2

    .prologue
    .line 16502
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 16503
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$U$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 16505
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U$a;->zQ()Lmobi/tikl/wire/control/a$U;

    move-result-object v0

    return-object v0
.end method

.method public zQ()Lmobi/tikl/wire/control/a$U;
    .registers 3

    .prologue
    .line 16518
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    if-nez v0, :cond_c

    .line 16519
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16522
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    .line 16523
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$U$a;->sW:Lmobi/tikl/wire/control/a$U;

    .line 16524
    return-object v0
.end method
