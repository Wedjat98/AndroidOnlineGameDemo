.class public final Lmobi/tikl/wire/control/a$aj$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private ve:Lmobi/tikl/wire/control/a$aj;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22335
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method static synthetic EB()Lmobi/tikl/wire/control/a$aj$a;
    .registers 1

    .prologue
    .line 22330
    invoke-static {}, Lmobi/tikl/wire/control/a$aj$a;->Ew()Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    return-object v0
.end method

.method private static Ew()Lmobi/tikl/wire/control/a$aj$a;
    .registers 3

    .prologue
    .line 22338
    new-instance v0, Lmobi/tikl/wire/control/a$aj$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$aj$a;-><init>()V

    .line 22339
    new-instance v1, Lmobi/tikl/wire/control/a$aj;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$aj;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    .line 22340
    return-object v0
.end method


# virtual methods
.method public EA()Lmobi/tikl/wire/control/a$aj;
    .registers 3

    .prologue
    .line 22389
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    if-nez v0, :cond_c

    .line 22390
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22393
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    .line 22394
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    .line 22395
    return-object v0
.end method

.method protected Ex()Lmobi/tikl/wire/control/a$aj;
    .registers 2

    .prologue
    .line 22344
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    return-object v0
.end method

.method public Ey()Lmobi/tikl/wire/control/a$aj$a;
    .registers 3

    .prologue
    .line 22357
    invoke-static {}, Lmobi/tikl/wire/control/a$aj$a;->Ew()Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$aj$a;->c(Lmobi/tikl/wire/control/a$aj;)Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    return-object v0
.end method

.method public Ez()Lmobi/tikl/wire/control/a$aj;
    .registers 2

    .prologue
    .line 22373
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 22374
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aj$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 22376
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj$a;->EA()Lmobi/tikl/wire/control/a$aj;

    move-result-object v0

    return-object v0
.end method

.method public J(Z)Lmobi/tikl/wire/control/a$aj$a;
    .registers 4

    .prologue
    .line 22503
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aj;->b(Lmobi/tikl/wire/control/a$aj;Z)Z

    .line 22504
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$aj;->c(Lmobi/tikl/wire/control/a$aj;Z)Z

    .line 22505
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 22330
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$aj$a;->aF(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 22330
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$aj$a;->aH(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    return-object v0
.end method

.method public aE(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aj$a;
    .registers 4

    .prologue
    .line 22466
    if-nez p1, :cond_8

    .line 22467
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22469
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aj;->a(Lmobi/tikl/wire/control/a$aj;Z)Z

    .line 22470
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$aj;->a(Lmobi/tikl/wire/control/a$aj;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 22471
    return-object p0
.end method

.method public aF(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$aj$a;
    .registers 6

    .prologue
    .line 22423
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 22427
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 22428
    sparse-switch v1, :sswitch_data_4a

    .line 22433
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$aj$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 22435
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$aj$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 22436
    :goto_1c
    return-object p0

    .line 22430
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$aj$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 22441
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 22442
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj$a;->zF()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 22443
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj$a;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 22445
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 22446
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$aj$a;->aE(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aj$a;

    goto :goto_8

    .line 22450
    :sswitch_41
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$aj$a;->J(Z)Lmobi/tikl/wire/control/a$aj$a;

    goto :goto_8

    .line 22428
    nop

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x10 -> :sswitch_41
    .end sparse-switch
.end method

.method public aF(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aj$a;
    .registers 4

    .prologue
    .line 22479
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$aj;->zF()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aj;->b(Lmobi/tikl/wire/control/a$aj;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 22481
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$aj;->b(Lmobi/tikl/wire/control/a$aj;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aj;->a(Lmobi/tikl/wire/control/a$aj;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 22486
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aj;->a(Lmobi/tikl/wire/control/a$aj;Z)Z

    .line 22487
    return-object p0

    .line 22484
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$aj;->a(Lmobi/tikl/wire/control/a$aj;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public aH(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$aj$a;
    .registers 3

    .prologue
    .line 22399
    instance-of v0, p1, Lmobi/tikl/wire/control/a$aj;

    if-eqz v0, :cond_b

    .line 22400
    check-cast p1, Lmobi/tikl/wire/control/a$aj;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$aj$a;->c(Lmobi/tikl/wire/control/a$aj;)Lmobi/tikl/wire/control/a$aj$a;

    move-result-object p0

    .line 22403
    :goto_a
    return-object p0

    .line 22402
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 22362
    invoke-static {}, Lmobi/tikl/wire/control/a$aj;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 22330
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj$a;->Ex()Lmobi/tikl/wire/control/a$aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 22330
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj$a;->Ey()Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 22330
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj$a;->Ez()Lmobi/tikl/wire/control/a$aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 22330
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj$a;->Ez()Lmobi/tikl/wire/control/a$aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 22330
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj$a;->Ey()Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 22330
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$aj$a;->aF(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 22330
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj$a;->Ey()Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 22330
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$aj$a;->aF(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$aj;)Lmobi/tikl/wire/control/a$aj$a;
    .registers 3

    .prologue
    .line 22408
    invoke-static {}, Lmobi/tikl/wire/control/a$aj;->Ep()Lmobi/tikl/wire/control/a$aj;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 22416
    :goto_6
    return-object p0

    .line 22409
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$aj;->zF()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 22410
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$aj;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$aj$a;->aF(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aj$a;

    .line 22412
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$aj;->Er()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 22413
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$aj;->Es()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$aj$a;->J(Z)Lmobi/tikl/wire/control/a$aj$a;

    .line 22415
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$aj;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$aj$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 22330
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj$a;->Ey()Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 22330
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$aj$a;->aH(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 22370
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$aj;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public zF()Z
    .registers 2

    .prologue
    .line 22460
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$aj;->zF()Z

    move-result v0

    return v0
.end method

.method public zG()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 22463
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj$a;->ve:Lmobi/tikl/wire/control/a$aj;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$aj;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method
