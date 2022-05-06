.class public final Lmobi/tikl/wire/control/a$ah$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private uY:Lmobi/tikl/wire/control/a$ah;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 6449
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static DY()Lmobi/tikl/wire/control/a$ah$a;
    .registers 3

    .prologue
    .line 6452
    new-instance v0, Lmobi/tikl/wire/control/a$ah$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ah$a;-><init>()V

    .line 6453
    new-instance v1, Lmobi/tikl/wire/control/a$ah;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$ah;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$ah$a;->uY:Lmobi/tikl/wire/control/a$ah;

    .line 6454
    return-object v0
.end method

.method static synthetic Ed()Lmobi/tikl/wire/control/a$ah$a;
    .registers 1

    .prologue
    .line 6444
    invoke-static {}, Lmobi/tikl/wire/control/a$ah$a;->DY()Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected DZ()Lmobi/tikl/wire/control/a$ah;
    .registers 2

    .prologue
    .line 6458
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ah$a;->uY:Lmobi/tikl/wire/control/a$ah;

    return-object v0
.end method

.method public Ea()Lmobi/tikl/wire/control/a$ah$a;
    .registers 3

    .prologue
    .line 6471
    invoke-static {}, Lmobi/tikl/wire/control/a$ah$a;->DY()Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ah$a;->uY:Lmobi/tikl/wire/control/a$ah;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ah$a;->c(Lmobi/tikl/wire/control/a$ah;)Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    return-object v0
.end method

.method public Eb()Lmobi/tikl/wire/control/a$ah;
    .registers 2

    .prologue
    .line 6487
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ah$a;->uY:Lmobi/tikl/wire/control/a$ah;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 6488
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ah$a;->uY:Lmobi/tikl/wire/control/a$ah;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ah$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 6490
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah$a;->Ec()Lmobi/tikl/wire/control/a$ah;

    move-result-object v0

    return-object v0
.end method

.method public Ec()Lmobi/tikl/wire/control/a$ah;
    .registers 3

    .prologue
    .line 6503
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ah$a;->uY:Lmobi/tikl/wire/control/a$ah;

    if-nez v0, :cond_c

    .line 6504
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6507
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ah$a;->uY:Lmobi/tikl/wire/control/a$ah;

    .line 6508
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$ah$a;->uY:Lmobi/tikl/wire/control/a$ah;

    .line 6509
    return-object v0
.end method

.method public I(Z)Lmobi/tikl/wire/control/a$ah$a;
    .registers 4

    .prologue
    .line 6575
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ah$a;->uY:Lmobi/tikl/wire/control/a$ah;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ah;->a(Lmobi/tikl/wire/control/a$ah;Z)Z

    .line 6576
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ah$a;->uY:Lmobi/tikl/wire/control/a$ah;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ah;->b(Lmobi/tikl/wire/control/a$ah;Z)Z

    .line 6577
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 6444
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ah$a;->aD(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 6444
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ah$a;->aF(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    return-object v0
.end method

.method public aD(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ah$a;
    .registers 5

    .prologue
    .line 6537
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 6541
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 6542
    sparse-switch v1, :sswitch_data_36

    .line 6547
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$ah$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 6549
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ah$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 6550
    :goto_1c
    return-object p0

    .line 6544
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ah$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 6555
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ah$a;->I(Z)Lmobi/tikl/wire/control/a$ah$a;

    goto :goto_8

    .line 6559
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ah$a;->bw(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ah$a;

    goto :goto_8

    .line 6542
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
    .end sparse-switch
.end method

.method public aF(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ah$a;
    .registers 3

    .prologue
    .line 6513
    instance-of v0, p1, Lmobi/tikl/wire/control/a$ah;

    if-eqz v0, :cond_b

    .line 6514
    check-cast p1, Lmobi/tikl/wire/control/a$ah;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ah$a;->c(Lmobi/tikl/wire/control/a$ah;)Lmobi/tikl/wire/control/a$ah$a;

    move-result-object p0

    .line 6517
    :goto_a
    return-object p0

    .line 6516
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 6476
    invoke-static {}, Lmobi/tikl/wire/control/a$ah;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 6444
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah$a;->DZ()Lmobi/tikl/wire/control/a$ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 6444
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah$a;->Ea()Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 6444
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah$a;->Eb()Lmobi/tikl/wire/control/a$ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 6444
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah$a;->Eb()Lmobi/tikl/wire/control/a$ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 6444
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah$a;->Ea()Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 6444
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ah$a;->aD(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    return-object v0
.end method

.method public bw(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ah$a;
    .registers 4

    .prologue
    .line 6593
    if-nez p1, :cond_8

    .line 6594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6596
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ah$a;->uY:Lmobi/tikl/wire/control/a$ah;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ah;->c(Lmobi/tikl/wire/control/a$ah;Z)Z

    .line 6597
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ah$a;->uY:Lmobi/tikl/wire/control/a$ah;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ah;->a(Lmobi/tikl/wire/control/a$ah;Ljava/lang/String;)Ljava/lang/String;

    .line 6598
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 6444
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah$a;->Ea()Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 6444
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ah$a;->aD(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$ah;)Lmobi/tikl/wire/control/a$ah$a;
    .registers 3

    .prologue
    .line 6522
    invoke-static {}, Lmobi/tikl/wire/control/a$ah;->DR()Lmobi/tikl/wire/control/a$ah;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 6530
    :goto_6
    return-object p0

    .line 6523
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ah;->zs()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6524
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ah;->zt()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ah$a;->I(Z)Lmobi/tikl/wire/control/a$ah$a;

    .line 6526
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ah;->DT()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6527
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ah;->DU()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ah$a;->bw(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ah$a;

    .line 6529
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ah;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ah$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 6444
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah$a;->Ea()Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 6444
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ah$a;->aF(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 6484
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ah$a;->uY:Lmobi/tikl/wire/control/a$ah;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ah;->isInitialized()Z

    move-result v0

    return v0
.end method
