.class public final Lmobi/tikl/wire/control/a$y$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qJ:Lmobi/tikl/wire/control/a$y;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34356
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static tQ()Lmobi/tikl/wire/control/a$y$a;
    .registers 3

    .prologue
    .line 34359
    new-instance v0, Lmobi/tikl/wire/control/a$y$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$y$a;-><init>()V

    .line 34360
    new-instance v1, Lmobi/tikl/wire/control/a$y;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$y;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$y$a;->qJ:Lmobi/tikl/wire/control/a$y;

    .line 34361
    return-object v0
.end method

.method static synthetic tV()Lmobi/tikl/wire/control/a$y$a;
    .registers 1

    .prologue
    .line 34351
    invoke-static {}, Lmobi/tikl/wire/control/a$y$a;->tQ()Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public U(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$y$a;
    .registers 5

    .prologue
    .line 34441
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 34445
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 34446
    sparse-switch v1, :sswitch_data_2e

    .line 34451
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$y$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 34453
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$y$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 34454
    :goto_1c
    return-object p0

    .line 34448
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$y$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 34459
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$y$a;->aE(Ljava/lang/String;)Lmobi/tikl/wire/control/a$y$a;

    goto :goto_8

    .line 34446
    nop

    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
    .end sparse-switch
.end method

.method public W(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$y$a;
    .registers 3

    .prologue
    .line 34420
    instance-of v0, p1, Lmobi/tikl/wire/control/a$y;

    if-eqz v0, :cond_b

    .line 34421
    check-cast p1, Lmobi/tikl/wire/control/a$y;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$y$a;->b(Lmobi/tikl/wire/control/a$y;)Lmobi/tikl/wire/control/a$y$a;

    move-result-object p0

    .line 34424
    :goto_a
    return-object p0

    .line 34423
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 34351
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$y$a;->U(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 34351
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$y$a;->W(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    return-object v0
.end method

.method public aE(Ljava/lang/String;)Lmobi/tikl/wire/control/a$y$a;
    .registers 4

    .prologue
    .line 34475
    if-nez p1, :cond_8

    .line 34476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34478
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$y$a;->qJ:Lmobi/tikl/wire/control/a$y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$y;->a(Lmobi/tikl/wire/control/a$y;Z)Z

    .line 34479
    iget-object v0, p0, Lmobi/tikl/wire/control/a$y$a;->qJ:Lmobi/tikl/wire/control/a$y;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$y;->a(Lmobi/tikl/wire/control/a$y;Ljava/lang/String;)Ljava/lang/String;

    .line 34480
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 34383
    invoke-static {}, Lmobi/tikl/wire/control/a$y;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 34351
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y$a;->tR()Lmobi/tikl/wire/control/a$y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 34351
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y$a;->tS()Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 34351
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y$a;->tT()Lmobi/tikl/wire/control/a$y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 34351
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y$a;->tT()Lmobi/tikl/wire/control/a$y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 34351
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y$a;->tS()Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 34351
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$y$a;->U(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$y;)Lmobi/tikl/wire/control/a$y$a;
    .registers 3

    .prologue
    .line 34429
    invoke-static {}, Lmobi/tikl/wire/control/a$y;->tL()Lmobi/tikl/wire/control/a$y;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 34434
    :goto_6
    return-object p0

    .line 34430
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$y;->pS()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 34431
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$y;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$y$a;->aE(Ljava/lang/String;)Lmobi/tikl/wire/control/a$y$a;

    .line 34433
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$y;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$y$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 34351
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y$a;->tS()Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 34351
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$y$a;->U(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 34351
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y$a;->tS()Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 34351
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$y$a;->W(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 34391
    iget-object v0, p0, Lmobi/tikl/wire/control/a$y$a;->qJ:Lmobi/tikl/wire/control/a$y;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$y;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected tR()Lmobi/tikl/wire/control/a$y;
    .registers 2

    .prologue
    .line 34365
    iget-object v0, p0, Lmobi/tikl/wire/control/a$y$a;->qJ:Lmobi/tikl/wire/control/a$y;

    return-object v0
.end method

.method public tS()Lmobi/tikl/wire/control/a$y$a;
    .registers 3

    .prologue
    .line 34378
    invoke-static {}, Lmobi/tikl/wire/control/a$y$a;->tQ()Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$y$a;->qJ:Lmobi/tikl/wire/control/a$y;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$y$a;->b(Lmobi/tikl/wire/control/a$y;)Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    return-object v0
.end method

.method public tT()Lmobi/tikl/wire/control/a$y;
    .registers 2

    .prologue
    .line 34394
    iget-object v0, p0, Lmobi/tikl/wire/control/a$y$a;->qJ:Lmobi/tikl/wire/control/a$y;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 34395
    iget-object v0, p0, Lmobi/tikl/wire/control/a$y$a;->qJ:Lmobi/tikl/wire/control/a$y;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$y$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 34397
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y$a;->tU()Lmobi/tikl/wire/control/a$y;

    move-result-object v0

    return-object v0
.end method

.method public tU()Lmobi/tikl/wire/control/a$y;
    .registers 3

    .prologue
    .line 34410
    iget-object v0, p0, Lmobi/tikl/wire/control/a$y$a;->qJ:Lmobi/tikl/wire/control/a$y;

    if-nez v0, :cond_c

    .line 34411
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34414
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$y$a;->qJ:Lmobi/tikl/wire/control/a$y;

    .line 34415
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$y$a;->qJ:Lmobi/tikl/wire/control/a$y;

    .line 34416
    return-object v0
.end method
