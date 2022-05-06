.class public final Lmobi/tikl/wire/control/a$C$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qT:Lmobi/tikl/wire/control/a$C;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36282
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static uK()Lmobi/tikl/wire/control/a$C$a;
    .registers 3

    .prologue
    .line 36285
    new-instance v0, Lmobi/tikl/wire/control/a$C$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$C$a;-><init>()V

    .line 36286
    new-instance v1, Lmobi/tikl/wire/control/a$C;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$C;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    .line 36287
    return-object v0
.end method

.method static synthetic uP()Lmobi/tikl/wire/control/a$C$a;
    .registers 1

    .prologue
    .line 36277
    invoke-static {}, Lmobi/tikl/wire/control/a$C$a;->uK()Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Y(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$C$a;
    .registers 6

    .prologue
    .line 36373
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 36377
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 36378
    sparse-switch v1, :sswitch_data_52

    .line 36383
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$C$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 36385
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$C$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 36386
    :goto_1c
    return-object p0

    .line 36380
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$C$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 36391
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$C$a;->aJ(Ljava/lang/String;)Lmobi/tikl/wire/control/a$C$a;

    goto :goto_8

    .line 36395
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$C$a;->aZ(I)Lmobi/tikl/wire/control/a$C$a;

    goto :goto_8

    .line 36399
    :sswitch_35
    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tC()Lmobi/tikl/wire/control/a$x$a;

    move-result-object v1

    .line 36400
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C$a;->qs()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 36401
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C$a;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$x$a;->j(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    .line 36403
    :cond_46
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 36404
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$x$a;->tJ()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$C$a;->m(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$C$a;

    goto :goto_8

    .line 36378
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x10 -> :sswitch_2d
        0x1a -> :sswitch_35
    .end sparse-switch
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 36277
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$C$a;->Y(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 36277
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$C$a;->aa(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    return-object v0
.end method

.method public aJ(Ljava/lang/String;)Lmobi/tikl/wire/control/a$C$a;
    .registers 4

    .prologue
    .line 36420
    if-nez p1, :cond_8

    .line 36421
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36423
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$C;->a(Lmobi/tikl/wire/control/a$C;Z)Z

    .line 36424
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$C;->a(Lmobi/tikl/wire/control/a$C;Ljava/lang/String;)Ljava/lang/String;

    .line 36425
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 36309
    invoke-static {}, Lmobi/tikl/wire/control/a$C;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 36277
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C$a;->uL()Lmobi/tikl/wire/control/a$C;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 36277
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C$a;->uM()Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 36277
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C$a;->uN()Lmobi/tikl/wire/control/a$C;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 36277
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C$a;->uN()Lmobi/tikl/wire/control/a$C;

    move-result-object v0

    return-object v0
.end method

.method public aZ(I)Lmobi/tikl/wire/control/a$C$a;
    .registers 4

    .prologue
    .line 36441
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$C;->b(Lmobi/tikl/wire/control/a$C;Z)Z

    .line 36442
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$C;->a(Lmobi/tikl/wire/control/a$C;I)I

    .line 36443
    return-object p0
.end method

.method public aa(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$C$a;
    .registers 3

    .prologue
    .line 36346
    instance-of v0, p1, Lmobi/tikl/wire/control/a$C;

    if-eqz v0, :cond_b

    .line 36347
    check-cast p1, Lmobi/tikl/wire/control/a$C;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$C$a;->c(Lmobi/tikl/wire/control/a$C;)Lmobi/tikl/wire/control/a$C$a;

    move-result-object p0

    .line 36350
    :goto_a
    return-object p0

    .line 36349
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 36277
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C$a;->uM()Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 36277
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$C$a;->Y(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 36277
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C$a;->uM()Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 36277
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$C$a;->Y(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$C;)Lmobi/tikl/wire/control/a$C$a;
    .registers 3

    .prologue
    .line 36355
    invoke-static {}, Lmobi/tikl/wire/control/a$C;->uF()Lmobi/tikl/wire/control/a$C;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 36366
    :goto_6
    return-object p0

    .line 36356
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$C;->pS()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 36357
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$C;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$C$a;->aJ(Ljava/lang/String;)Lmobi/tikl/wire/control/a$C$a;

    .line 36359
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$C;->qq()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 36360
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$C;->qr()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$C$a;->aZ(I)Lmobi/tikl/wire/control/a$C$a;

    .line 36362
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$C;->qs()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 36363
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$C;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$C$a;->n(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$C$a;

    .line 36365
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$C;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$C$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 36277
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C$a;->uM()Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 36277
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$C$a;->aa(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 36317
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$C;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public m(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$C$a;
    .registers 4

    .prologue
    .line 36459
    if-nez p1, :cond_8

    .line 36460
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36462
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$C;->c(Lmobi/tikl/wire/control/a$C;Z)Z

    .line 36463
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$C;->a(Lmobi/tikl/wire/control/a$C;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;

    .line 36464
    return-object p0
.end method

.method public n(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$C$a;
    .registers 4

    .prologue
    .line 36472
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$C;->qs()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$C;->b(Lmobi/tikl/wire/control/a$C;)Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tx()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 36474
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$C;->b(Lmobi/tikl/wire/control/a$C;)Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$x;->h(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$x$a;->j(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$x$a;->tJ()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$C;->a(Lmobi/tikl/wire/control/a$C;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;

    .line 36479
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$C;->c(Lmobi/tikl/wire/control/a$C;Z)Z

    .line 36480
    return-object p0

    .line 36477
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$C;->a(Lmobi/tikl/wire/control/a$C;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;

    goto :goto_2b
.end method

.method public qs()Z
    .registers 2

    .prologue
    .line 36453
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$C;->qs()Z

    move-result v0

    return v0
.end method

.method public qt()Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 36456
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$C;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    return-object v0
.end method

.method protected uL()Lmobi/tikl/wire/control/a$C;
    .registers 2

    .prologue
    .line 36291
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    return-object v0
.end method

.method public uM()Lmobi/tikl/wire/control/a$C$a;
    .registers 3

    .prologue
    .line 36304
    invoke-static {}, Lmobi/tikl/wire/control/a$C$a;->uK()Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$C$a;->c(Lmobi/tikl/wire/control/a$C;)Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    return-object v0
.end method

.method public uN()Lmobi/tikl/wire/control/a$C;
    .registers 2

    .prologue
    .line 36320
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 36321
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$C$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 36323
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C$a;->uO()Lmobi/tikl/wire/control/a$C;

    move-result-object v0

    return-object v0
.end method

.method public uO()Lmobi/tikl/wire/control/a$C;
    .registers 3

    .prologue
    .line 36336
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    if-nez v0, :cond_c

    .line 36337
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36340
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    .line 36341
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$C$a;->qT:Lmobi/tikl/wire/control/a$C;

    .line 36342
    return-object v0
.end method
