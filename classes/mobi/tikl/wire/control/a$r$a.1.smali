.class public final Lmobi/tikl/wire/control/a$r$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qk:Lmobi/tikl/wire/control/a$r;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33249
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static sg()Lmobi/tikl/wire/control/a$r$a;
    .registers 3

    .prologue
    .line 33252
    new-instance v0, Lmobi/tikl/wire/control/a$r$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$r$a;-><init>()V

    .line 33253
    new-instance v1, Lmobi/tikl/wire/control/a$r;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$r;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    .line 33254
    return-object v0
.end method

.method static synthetic sl()Lmobi/tikl/wire/control/a$r$a;
    .registers 1

    .prologue
    .line 33244
    invoke-static {}, Lmobi/tikl/wire/control/a$r$a;->sg()Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public N(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$r$a;
    .registers 6

    .prologue
    .line 33343
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 33347
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 33348
    sparse-switch v1, :sswitch_data_6e

    .line 33353
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$r$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 33355
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$r$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 33356
    :goto_1c
    return-object p0

    .line 33350
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$r$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 33361
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$r$a;->aX(I)Lmobi/tikl/wire/control/a$r$a;

    goto :goto_8

    .line 33365
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$r$a;->aw(Ljava/lang/String;)Lmobi/tikl/wire/control/a$r$a;

    goto :goto_8

    .line 33369
    :sswitch_35
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 33370
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r$a;->od()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 33371
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r$a;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 33373
    :cond_46
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 33374
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$r$a;->w(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$r$a;

    goto :goto_8

    .line 33378
    :sswitch_51
    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tC()Lmobi/tikl/wire/control/a$x$a;

    move-result-object v1

    .line 33379
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r$a;->qs()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 33380
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r$a;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$x$a;->j(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    .line 33382
    :cond_62
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 33383
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$x$a;->tJ()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$r$a;->f(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$r$a;

    goto :goto_8

    .line 33348
    nop

    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_35
        0x22 -> :sswitch_51
    .end sparse-switch
.end method

.method public P(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$r$a;
    .registers 3

    .prologue
    .line 33313
    instance-of v0, p1, Lmobi/tikl/wire/control/a$r;

    if-eqz v0, :cond_b

    .line 33314
    check-cast p1, Lmobi/tikl/wire/control/a$r;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$r$a;->d(Lmobi/tikl/wire/control/a$r;)Lmobi/tikl/wire/control/a$r$a;

    move-result-object p0

    .line 33317
    :goto_a
    return-object p0

    .line 33316
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 33244
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$r$a;->N(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 33244
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$r$a;->P(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 33276
    invoke-static {}, Lmobi/tikl/wire/control/a$r;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 33244
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r$a;->sh()Lmobi/tikl/wire/control/a$r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 33244
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r$a;->si()Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public aX(I)Lmobi/tikl/wire/control/a$r$a;
    .registers 4

    .prologue
    .line 33399
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$r;->a(Lmobi/tikl/wire/control/a$r;Z)Z

    .line 33400
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$r;->a(Lmobi/tikl/wire/control/a$r;I)I

    .line 33401
    return-object p0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 33244
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r$a;->sj()Lmobi/tikl/wire/control/a$r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 33244
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r$a;->sj()Lmobi/tikl/wire/control/a$r;

    move-result-object v0

    return-object v0
.end method

.method public aw(Ljava/lang/String;)Lmobi/tikl/wire/control/a$r$a;
    .registers 4

    .prologue
    .line 33417
    if-nez p1, :cond_8

    .line 33418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33420
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$r;->b(Lmobi/tikl/wire/control/a$r;Z)Z

    .line 33421
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$r;->a(Lmobi/tikl/wire/control/a$r;Ljava/lang/String;)Ljava/lang/String;

    .line 33422
    return-object p0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 33244
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r$a;->si()Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 33244
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$r$a;->N(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 33244
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r$a;->si()Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 33244
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$r$a;->N(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 33244
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r$a;->si()Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 33244
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$r$a;->P(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$r;)Lmobi/tikl/wire/control/a$r$a;
    .registers 3

    .prologue
    .line 33322
    invoke-static {}, Lmobi/tikl/wire/control/a$r;->sb()Lmobi/tikl/wire/control/a$r;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 33336
    :goto_6
    return-object p0

    .line 33323
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$r;->oc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 33324
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$r;->getMsgId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$r$a;->aX(I)Lmobi/tikl/wire/control/a$r$a;

    .line 33326
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$r;->pS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 33327
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$r;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$r$a;->aw(Ljava/lang/String;)Lmobi/tikl/wire/control/a$r$a;

    .line 33329
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$r;->od()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 33330
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$r;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$r$a;->x(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$r$a;

    .line 33332
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$r;->qs()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 33333
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$r;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$r$a;->g(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$r$a;

    .line 33335
    :cond_3b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$r;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$r$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public f(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$r$a;
    .registers 4

    .prologue
    .line 33475
    if-nez p1, :cond_8

    .line 33476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33478
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$r;->d(Lmobi/tikl/wire/control/a$r;Z)Z

    .line 33479
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$r;->a(Lmobi/tikl/wire/control/a$r;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;

    .line 33480
    return-object p0
.end method

.method public g(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$r$a;
    .registers 4

    .prologue
    .line 33488
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$r;->qs()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$r;->c(Lmobi/tikl/wire/control/a$r;)Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tx()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 33490
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$r;->c(Lmobi/tikl/wire/control/a$r;)Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$x;->h(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$x$a;->j(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$x$a;->tJ()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$r;->a(Lmobi/tikl/wire/control/a$r;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;

    .line 33495
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$r;->d(Lmobi/tikl/wire/control/a$r;Z)Z

    .line 33496
    return-object p0

    .line 33493
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$r;->a(Lmobi/tikl/wire/control/a$r;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;

    goto :goto_2b
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 33284
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$r;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 33432
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$r;->od()Z

    move-result v0

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 33435
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$r;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method public qs()Z
    .registers 2

    .prologue
    .line 33469
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$r;->qs()Z

    move-result v0

    return v0
.end method

.method public qt()Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 33472
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$r;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    return-object v0
.end method

.method protected sh()Lmobi/tikl/wire/control/a$r;
    .registers 2

    .prologue
    .line 33258
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    return-object v0
.end method

.method public si()Lmobi/tikl/wire/control/a$r$a;
    .registers 3

    .prologue
    .line 33271
    invoke-static {}, Lmobi/tikl/wire/control/a$r$a;->sg()Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$r$a;->d(Lmobi/tikl/wire/control/a$r;)Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public sj()Lmobi/tikl/wire/control/a$r;
    .registers 2

    .prologue
    .line 33287
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 33288
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$r$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 33290
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r$a;->sk()Lmobi/tikl/wire/control/a$r;

    move-result-object v0

    return-object v0
.end method

.method public sk()Lmobi/tikl/wire/control/a$r;
    .registers 3

    .prologue
    .line 33303
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    if-nez v0, :cond_c

    .line 33304
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33307
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    .line 33308
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    .line 33309
    return-object v0
.end method

.method public w(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$r$a;
    .registers 4

    .prologue
    .line 33438
    if-nez p1, :cond_8

    .line 33439
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33441
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$r;->c(Lmobi/tikl/wire/control/a$r;Z)Z

    .line 33442
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$r;->a(Lmobi/tikl/wire/control/a$r;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 33443
    return-object p0
.end method

.method public x(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$r$a;
    .registers 4

    .prologue
    .line 33451
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$r;->od()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$r;->b(Lmobi/tikl/wire/control/a$r;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 33453
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$r;->b(Lmobi/tikl/wire/control/a$r;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$r;->a(Lmobi/tikl/wire/control/a$r;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 33458
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$r;->c(Lmobi/tikl/wire/control/a$r;Z)Z

    .line 33459
    return-object p0

    .line 33456
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r$a;->qk:Lmobi/tikl/wire/control/a$r;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$r;->a(Lmobi/tikl/wire/control/a$r;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method
