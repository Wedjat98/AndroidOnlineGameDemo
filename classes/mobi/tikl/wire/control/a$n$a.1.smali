.class public final Lmobi/tikl/wire/control/a$n$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qc:Lmobi/tikl/wire/control/a$n;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9288
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static ro()Lmobi/tikl/wire/control/a$n$a;
    .registers 3

    .prologue
    .line 9291
    new-instance v0, Lmobi/tikl/wire/control/a$n$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$n$a;-><init>()V

    .line 9292
    new-instance v1, Lmobi/tikl/wire/control/a$n;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$n;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    .line 9293
    return-object v0
.end method

.method static synthetic rt()Lmobi/tikl/wire/control/a$n$a;
    .registers 1

    .prologue
    .line 9283
    invoke-static {}, Lmobi/tikl/wire/control/a$n$a;->ro()Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public J(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$n$a;
    .registers 6

    .prologue
    .line 9391
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 9395
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 9396
    sparse-switch v1, :sswitch_data_72

    .line 9401
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$n$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 9403
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$n$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 9404
    :goto_1c
    return-object p0

    .line 9398
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$n$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 9409
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$n$a;->aQ(I)Lmobi/tikl/wire/control/a$n$a;

    goto :goto_8

    .line 9413
    :sswitch_2d
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 9414
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n$a;->rd()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 9415
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n$a;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 9417
    :cond_3e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 9418
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$n$a;->s(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$n$a;

    goto :goto_8

    .line 9422
    :sswitch_49
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$n$a;->aq(Ljava/lang/String;)Lmobi/tikl/wire/control/a$n$a;

    goto :goto_8

    .line 9426
    :sswitch_51
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$n$a;->ar(Ljava/lang/String;)Lmobi/tikl/wire/control/a$n$a;

    goto :goto_8

    .line 9430
    :sswitch_59
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$n$a;->as(Ljava/lang/String;)Lmobi/tikl/wire/control/a$n$a;

    goto :goto_8

    .line 9434
    :sswitch_61
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$n$a;->aR(I)Lmobi/tikl/wire/control/a$n$a;

    goto :goto_8

    .line 9438
    :sswitch_69
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$n$a;->aS(I)Lmobi/tikl/wire/control/a$n$a;

    goto :goto_8

    .line 9396
    nop

    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_49
        0x22 -> :sswitch_51
        0x2a -> :sswitch_59
        0x30 -> :sswitch_61
        0x38 -> :sswitch_69
    .end sparse-switch
.end method

.method public L(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$n$a;
    .registers 3

    .prologue
    .line 9352
    instance-of v0, p1, Lmobi/tikl/wire/control/a$n;

    if-eqz v0, :cond_b

    .line 9353
    check-cast p1, Lmobi/tikl/wire/control/a$n;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$n$a;->d(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$n$a;

    move-result-object p0

    .line 9356
    :goto_a
    return-object p0

    .line 9355
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 9283
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$n$a;->J(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 9283
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$n$a;->L(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public aQ(I)Lmobi/tikl/wire/control/a$n$a;
    .registers 4

    .prologue
    .line 9454
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$n;->a(Lmobi/tikl/wire/control/a$n;Z)Z

    .line 9455
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$n;->a(Lmobi/tikl/wire/control/a$n;I)I

    .line 9456
    return-object p0
.end method

.method public aR(I)Lmobi/tikl/wire/control/a$n$a;
    .registers 4

    .prologue
    .line 9572
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$n;->f(Lmobi/tikl/wire/control/a$n;Z)Z

    .line 9573
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$n;->b(Lmobi/tikl/wire/control/a$n;I)I

    .line 9574
    return-object p0
.end method

.method public aS(I)Lmobi/tikl/wire/control/a$n$a;
    .registers 4

    .prologue
    .line 9590
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$n;->g(Lmobi/tikl/wire/control/a$n;Z)Z

    .line 9591
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$n;->c(Lmobi/tikl/wire/control/a$n;I)I

    .line 9592
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 9315
    invoke-static {}, Lmobi/tikl/wire/control/a$n;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 9283
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n$a;->rp()Lmobi/tikl/wire/control/a$n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 9283
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n$a;->rq()Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 9283
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n$a;->rr()Lmobi/tikl/wire/control/a$n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 9283
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n$a;->rr()Lmobi/tikl/wire/control/a$n;

    move-result-object v0

    return-object v0
.end method

.method public aq(Ljava/lang/String;)Lmobi/tikl/wire/control/a$n$a;
    .registers 4

    .prologue
    .line 9509
    if-nez p1, :cond_8

    .line 9510
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9512
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$n;->c(Lmobi/tikl/wire/control/a$n;Z)Z

    .line 9513
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$n;->a(Lmobi/tikl/wire/control/a$n;Ljava/lang/String;)Ljava/lang/String;

    .line 9514
    return-object p0
.end method

.method public ar(Ljava/lang/String;)Lmobi/tikl/wire/control/a$n$a;
    .registers 4

    .prologue
    .line 9530
    if-nez p1, :cond_8

    .line 9531
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9533
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$n;->d(Lmobi/tikl/wire/control/a$n;Z)Z

    .line 9534
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$n;->b(Lmobi/tikl/wire/control/a$n;Ljava/lang/String;)Ljava/lang/String;

    .line 9535
    return-object p0
.end method

.method public as(Ljava/lang/String;)Lmobi/tikl/wire/control/a$n$a;
    .registers 4

    .prologue
    .line 9551
    if-nez p1, :cond_8

    .line 9552
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9554
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$n;->e(Lmobi/tikl/wire/control/a$n;Z)Z

    .line 9555
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$n;->c(Lmobi/tikl/wire/control/a$n;Ljava/lang/String;)Ljava/lang/String;

    .line 9556
    return-object p0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 9283
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n$a;->rq()Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 9283
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$n$a;->J(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 9283
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n$a;->rq()Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 9283
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$n$a;->J(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 9283
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n$a;->rq()Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 9283
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$n$a;->L(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$n$a;
    .registers 3

    .prologue
    .line 9361
    invoke-static {}, Lmobi/tikl/wire/control/a$n;->ra()Lmobi/tikl/wire/control/a$n;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 9384
    :goto_6
    return-object p0

    .line 9362
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$n;->rc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 9363
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$n;->jQ()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$n$a;->aQ(I)Lmobi/tikl/wire/control/a$n$a;

    .line 9365
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$n;->rd()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 9366
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$n;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$n$a;->t(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$n$a;

    .line 9368
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$n;->pS()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 9369
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$n;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$n$a;->aq(Ljava/lang/String;)Lmobi/tikl/wire/control/a$n$a;

    .line 9371
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$n;->rf()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 9372
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$n;->rg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$n$a;->ar(Ljava/lang/String;)Lmobi/tikl/wire/control/a$n$a;

    .line 9374
    :cond_3b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$n;->rh()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 9375
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$n;->jk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$n$a;->as(Ljava/lang/String;)Lmobi/tikl/wire/control/a$n$a;

    .line 9377
    :cond_48
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$n;->ri()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 9378
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$n;->jl()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$n$a;->aR(I)Lmobi/tikl/wire/control/a$n$a;

    .line 9380
    :cond_55
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$n;->rj()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 9381
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$n;->rk()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$n$a;->aS(I)Lmobi/tikl/wire/control/a$n$a;

    .line 9383
    :cond_62
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$n;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$n$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 9323
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$n;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public rd()Z
    .registers 2

    .prologue
    .line 9466
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$n;->rd()Z

    move-result v0

    return v0
.end method

.method public re()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 9469
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$n;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected rp()Lmobi/tikl/wire/control/a$n;
    .registers 2

    .prologue
    .line 9297
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    return-object v0
.end method

.method public rq()Lmobi/tikl/wire/control/a$n$a;
    .registers 3

    .prologue
    .line 9310
    invoke-static {}, Lmobi/tikl/wire/control/a$n$a;->ro()Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$n$a;->d(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public rr()Lmobi/tikl/wire/control/a$n;
    .registers 2

    .prologue
    .line 9326
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 9327
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$n$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 9329
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n$a;->rs()Lmobi/tikl/wire/control/a$n;

    move-result-object v0

    return-object v0
.end method

.method public rs()Lmobi/tikl/wire/control/a$n;
    .registers 3

    .prologue
    .line 9342
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    if-nez v0, :cond_c

    .line 9343
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9346
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    .line 9347
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    .line 9348
    return-object v0
.end method

.method public s(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$n$a;
    .registers 4

    .prologue
    .line 9472
    if-nez p1, :cond_8

    .line 9473
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9475
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$n;->b(Lmobi/tikl/wire/control/a$n;Z)Z

    .line 9476
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$n;->a(Lmobi/tikl/wire/control/a$n;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 9477
    return-object p0
.end method

.method public t(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$n$a;
    .registers 4

    .prologue
    .line 9485
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$n;->rd()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$n;->c(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 9487
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$n;->c(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$n;->a(Lmobi/tikl/wire/control/a$n;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 9492
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$n;->b(Lmobi/tikl/wire/control/a$n;Z)Z

    .line 9493
    return-object p0

    .line 9490
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n$a;->qc:Lmobi/tikl/wire/control/a$n;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$n;->a(Lmobi/tikl/wire/control/a$n;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method
