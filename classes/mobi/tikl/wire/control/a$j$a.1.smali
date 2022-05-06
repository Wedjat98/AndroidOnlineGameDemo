.class public final Lmobi/tikl/wire/control/a$j$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private pG:Lmobi/tikl/wire/control/a$j;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32493
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static qi()Lmobi/tikl/wire/control/a$j$a;
    .registers 3

    .prologue
    .line 32496
    new-instance v0, Lmobi/tikl/wire/control/a$j$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$j$a;-><init>()V

    .line 32497
    new-instance v1, Lmobi/tikl/wire/control/a$j;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$j;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$j$a;->pG:Lmobi/tikl/wire/control/a$j;

    .line 32498
    return-object v0
.end method

.method static synthetic qn()Lmobi/tikl/wire/control/a$j$a;
    .registers 1

    .prologue
    .line 32488
    invoke-static {}, Lmobi/tikl/wire/control/a$j$a;->qi()Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public F(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$j$a;
    .registers 5

    .prologue
    .line 32581
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 32585
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 32586
    sparse-switch v1, :sswitch_data_36

    .line 32591
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$j$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 32593
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$j$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 32594
    :goto_1c
    return-object p0

    .line 32588
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$j$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 32599
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$j$a;->aL(I)Lmobi/tikl/wire/control/a$j$a;

    goto :goto_8

    .line 32603
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$j$a;->al(Ljava/lang/String;)Lmobi/tikl/wire/control/a$j$a;

    goto :goto_8

    .line 32586
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
    .end sparse-switch
.end method

.method public H(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$j$a;
    .registers 3

    .prologue
    .line 32557
    instance-of v0, p1, Lmobi/tikl/wire/control/a$j;

    if-eqz v0, :cond_b

    .line 32558
    check-cast p1, Lmobi/tikl/wire/control/a$j;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$j$a;->b(Lmobi/tikl/wire/control/a$j;)Lmobi/tikl/wire/control/a$j$a;

    move-result-object p0

    .line 32561
    :goto_a
    return-object p0

    .line 32560
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 32488
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$j$a;->F(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 32488
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$j$a;->H(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public aL(I)Lmobi/tikl/wire/control/a$j$a;
    .registers 4

    .prologue
    .line 32619
    iget-object v0, p0, Lmobi/tikl/wire/control/a$j$a;->pG:Lmobi/tikl/wire/control/a$j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$j;->a(Lmobi/tikl/wire/control/a$j;Z)Z

    .line 32620
    iget-object v0, p0, Lmobi/tikl/wire/control/a$j$a;->pG:Lmobi/tikl/wire/control/a$j;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$j;->a(Lmobi/tikl/wire/control/a$j;I)I

    .line 32621
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 32520
    invoke-static {}, Lmobi/tikl/wire/control/a$j;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 32488
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j$a;->qj()Lmobi/tikl/wire/control/a$j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 32488
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j$a;->qk()Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 32488
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j$a;->ql()Lmobi/tikl/wire/control/a$j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 32488
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j$a;->ql()Lmobi/tikl/wire/control/a$j;

    move-result-object v0

    return-object v0
.end method

.method public al(Ljava/lang/String;)Lmobi/tikl/wire/control/a$j$a;
    .registers 4

    .prologue
    .line 32637
    if-nez p1, :cond_8

    .line 32638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32640
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$j$a;->pG:Lmobi/tikl/wire/control/a$j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$j;->b(Lmobi/tikl/wire/control/a$j;Z)Z

    .line 32641
    iget-object v0, p0, Lmobi/tikl/wire/control/a$j$a;->pG:Lmobi/tikl/wire/control/a$j;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$j;->a(Lmobi/tikl/wire/control/a$j;Ljava/lang/String;)Ljava/lang/String;

    .line 32642
    return-object p0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 32488
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j$a;->qk()Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 32488
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$j$a;->F(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$j;)Lmobi/tikl/wire/control/a$j$a;
    .registers 3

    .prologue
    .line 32566
    invoke-static {}, Lmobi/tikl/wire/control/a$j;->qd()Lmobi/tikl/wire/control/a$j;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 32574
    :goto_6
    return-object p0

    .line 32567
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$j;->oc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 32568
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$j;->getMsgId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$j$a;->aL(I)Lmobi/tikl/wire/control/a$j$a;

    .line 32570
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$j;->pS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 32571
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$j;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$j$a;->al(Ljava/lang/String;)Lmobi/tikl/wire/control/a$j$a;

    .line 32573
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$j;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$j$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 32488
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j$a;->qk()Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 32488
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$j$a;->F(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 32488
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j$a;->qk()Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 32488
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$j$a;->H(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 32528
    iget-object v0, p0, Lmobi/tikl/wire/control/a$j$a;->pG:Lmobi/tikl/wire/control/a$j;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$j;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected qj()Lmobi/tikl/wire/control/a$j;
    .registers 2

    .prologue
    .line 32502
    iget-object v0, p0, Lmobi/tikl/wire/control/a$j$a;->pG:Lmobi/tikl/wire/control/a$j;

    return-object v0
.end method

.method public qk()Lmobi/tikl/wire/control/a$j$a;
    .registers 3

    .prologue
    .line 32515
    invoke-static {}, Lmobi/tikl/wire/control/a$j$a;->qi()Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$j$a;->pG:Lmobi/tikl/wire/control/a$j;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$j$a;->b(Lmobi/tikl/wire/control/a$j;)Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public ql()Lmobi/tikl/wire/control/a$j;
    .registers 2

    .prologue
    .line 32531
    iget-object v0, p0, Lmobi/tikl/wire/control/a$j$a;->pG:Lmobi/tikl/wire/control/a$j;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 32532
    iget-object v0, p0, Lmobi/tikl/wire/control/a$j$a;->pG:Lmobi/tikl/wire/control/a$j;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$j$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 32534
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j$a;->qm()Lmobi/tikl/wire/control/a$j;

    move-result-object v0

    return-object v0
.end method

.method public qm()Lmobi/tikl/wire/control/a$j;
    .registers 3

    .prologue
    .line 32547
    iget-object v0, p0, Lmobi/tikl/wire/control/a$j$a;->pG:Lmobi/tikl/wire/control/a$j;

    if-nez v0, :cond_c

    .line 32548
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32551
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$j$a;->pG:Lmobi/tikl/wire/control/a$j;

    .line 32552
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$j$a;->pG:Lmobi/tikl/wire/control/a$j;

    .line 32553
    return-object v0
.end method
