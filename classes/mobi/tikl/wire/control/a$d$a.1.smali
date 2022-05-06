.class public final Lmobi/tikl/wire/control/a$d$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private pp:Lmobi/tikl/wire/control/a$d;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 10768
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static oP()Lmobi/tikl/wire/control/a$d$a;
    .registers 3

    .prologue
    .line 10771
    new-instance v0, Lmobi/tikl/wire/control/a$d$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$d$a;-><init>()V

    .line 10772
    new-instance v1, Lmobi/tikl/wire/control/a$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$d;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    .line 10773
    return-object v0
.end method

.method static synthetic oU()Lmobi/tikl/wire/control/a$d$a;
    .registers 1

    .prologue
    .line 10763
    invoke-static {}, Lmobi/tikl/wire/control/a$d$a;->oP()Lmobi/tikl/wire/control/a$d$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public B(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$d$a;
    .registers 3

    .prologue
    .line 10836
    instance-of v0, p1, Lmobi/tikl/wire/control/a$d;

    if-eqz v0, :cond_b

    .line 10837
    check-cast p1, Lmobi/tikl/wire/control/a$d;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$d$a;->f(Lmobi/tikl/wire/control/a$d;)Lmobi/tikl/wire/control/a$d$a;

    move-result-object p0

    .line 10840
    :goto_a
    return-object p0

    .line 10839
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public R(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11159
    if-nez p1, :cond_8

    .line 11160
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11162
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->c(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11163
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->a(Lmobi/tikl/wire/control/a$d;Ljava/lang/String;)Ljava/lang/String;

    .line 11164
    return-object p0
.end method

.method public S(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11198
    if-nez p1, :cond_8

    .line 11199
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11201
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->e(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11202
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->b(Lmobi/tikl/wire/control/a$d;Ljava/lang/String;)Ljava/lang/String;

    .line 11203
    return-object p0
.end method

.method public T(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11219
    if-nez p1, :cond_8

    .line 11220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11222
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->f(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11223
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->c(Lmobi/tikl/wire/control/a$d;Ljava/lang/String;)Ljava/lang/String;

    .line 11224
    return-object p0
.end method

.method public U(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11294
    if-nez p1, :cond_8

    .line 11295
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11297
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->j(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11298
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->d(Lmobi/tikl/wire/control/a$d;Ljava/lang/String;)Ljava/lang/String;

    .line 11299
    return-object p0
.end method

.method public V(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11315
    if-nez p1, :cond_8

    .line 11316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11318
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->k(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11319
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->e(Lmobi/tikl/wire/control/a$d;Ljava/lang/String;)Ljava/lang/String;

    .line 11320
    return-object p0
.end method

.method public W(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11373
    if-nez p1, :cond_8

    .line 11374
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11376
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->m(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11377
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->f(Lmobi/tikl/wire/control/a$d;Ljava/lang/String;)Ljava/lang/String;

    .line 11378
    return-object p0
.end method

.method public X(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11394
    if-nez p1, :cond_8

    .line 11395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11397
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->n(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11398
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->g(Lmobi/tikl/wire/control/a$d;Ljava/lang/String;)Ljava/lang/String;

    .line 11399
    return-object p0
.end method

.method public Y(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11415
    if-nez p1, :cond_8

    .line 11416
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11418
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->o(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11419
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->h(Lmobi/tikl/wire/control/a$d;Ljava/lang/String;)Ljava/lang/String;

    .line 11420
    return-object p0
.end method

.method public Z(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11490
    if-nez p1, :cond_8

    .line 11491
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11493
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->u(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11494
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->i(Lmobi/tikl/wire/control/a$d;Ljava/lang/String;)Ljava/lang/String;

    .line 11495
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 10763
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$d$a;->z(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 10763
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$d$a;->B(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11336
    if-nez p1, :cond_8

    .line 11337
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11339
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->l(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11340
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->a(Lmobi/tikl/wire/control/a$d;Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P;

    .line 11341
    return-object p0
.end method

.method public aA(I)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11511
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->v(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11512
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->g(Lmobi/tikl/wire/control/a$d;I)I

    .line 11513
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 10795
    invoke-static {}, Lmobi/tikl/wire/control/a$d;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 10763
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d$a;->oQ()Lmobi/tikl/wire/control/a$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 10763
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d$a;->oR()Lmobi/tikl/wire/control/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 10763
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d$a;->oS()Lmobi/tikl/wire/control/a$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 10763
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d$a;->oS()Lmobi/tikl/wire/control/a$d;

    move-result-object v0

    return-object v0
.end method

.method public au(I)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11053
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->a(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11054
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->a(Lmobi/tikl/wire/control/a$d;I)I

    .line 11055
    return-object p0
.end method

.method public av(I)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11180
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->d(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11181
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->b(Lmobi/tikl/wire/control/a$d;I)I

    .line 11182
    return-object p0
.end method

.method public aw(I)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11240
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->g(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11241
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->c(Lmobi/tikl/wire/control/a$d;I)I

    .line 11242
    return-object p0
.end method

.method public ax(I)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11258
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->h(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11259
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->d(Lmobi/tikl/wire/control/a$d;I)I

    .line 11260
    return-object p0
.end method

.method public ay(I)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11276
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->i(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11277
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->e(Lmobi/tikl/wire/control/a$d;I)I

    .line 11278
    return-object p0
.end method

.method public az(I)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11436
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->p(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11437
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->f(Lmobi/tikl/wire/control/a$d;I)I

    .line 11438
    return-object p0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 10763
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d$a;->oR()Lmobi/tikl/wire/control/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 10763
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$d$a;->z(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11349
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$d;->ot()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$d;->e(Lmobi/tikl/wire/control/a$d;)Lmobi/tikl/wire/control/a$P;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$P;->ym()Lmobi/tikl/wire/control/a$P;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 11351
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$d;->e(Lmobi/tikl/wire/control/a$d;)Lmobi/tikl/wire/control/a$P;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$P;->e(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$P$a;->f(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$P$a;->yv()Lmobi/tikl/wire/control/a$P;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->a(Lmobi/tikl/wire/control/a$d;Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P;

    .line 11356
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->l(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11357
    return-object p0

    .line 11354
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->a(Lmobi/tikl/wire/control/a$d;Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P;

    goto :goto_2b
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 10763
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d$a;->oR()Lmobi/tikl/wire/control/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 10763
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$d$a;->z(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 10763
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d$a;->oR()Lmobi/tikl/wire/control/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 10763
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$d$a;->B(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11071
    if-nez p1, :cond_8

    .line 11072
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11074
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->b(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11075
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->a(Lmobi/tikl/wire/control/a$d;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 11076
    return-object p0
.end method

.method public e(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11084
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$d;->od()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$d;->d(Lmobi/tikl/wire/control/a$d;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 11086
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$d;->d(Lmobi/tikl/wire/control/a$d;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->a(Lmobi/tikl/wire/control/a$d;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 11091
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->b(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11092
    return-object p0

    .line 11089
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->a(Lmobi/tikl/wire/control/a$d;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public f(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11122
    if-nez p1, :cond_8

    .line 11123
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11125
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$d;->c(Lmobi/tikl/wire/control/a$d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 11126
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->a(Lmobi/tikl/wire/control/a$d;Ljava/util/List;)Ljava/util/List;

    .line 11128
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$d;->c(Lmobi/tikl/wire/control/a$d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11129
    return-object p0
.end method

.method public f(Lmobi/tikl/wire/control/a$d;)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 10845
    invoke-static {}, Lmobi/tikl/wire/control/a$d;->oa()Lmobi/tikl/wire/control/a$d;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 10916
    :goto_6
    return-object p0

    .line 10846
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 10847
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->getMsgId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->au(I)Lmobi/tikl/wire/control/a$d$a;

    .line 10849
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->od()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 10850
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->e(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$d$a;

    .line 10852
    :cond_21
    invoke-static {p1}, Lmobi/tikl/wire/control/a$d;->c(Lmobi/tikl/wire/control/a$d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 10853
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$d;->c(Lmobi/tikl/wire/control/a$d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 10854
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->a(Lmobi/tikl/wire/control/a$d;Ljava/util/List;)Ljava/util/List;

    .line 10856
    :cond_41
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$d;->c(Lmobi/tikl/wire/control/a$d;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$d;->c(Lmobi/tikl/wire/control/a$d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10858
    :cond_4e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oh()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 10859
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->R(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 10861
    :cond_5b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oi()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 10862
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->jr()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->av(I)Lmobi/tikl/wire/control/a$d$a;

    .line 10864
    :cond_68
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oj()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 10865
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->S(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 10867
    :cond_75
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->ok()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 10868
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->js()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->T(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 10870
    :cond_82
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->ol()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 10871
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->getLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->aw(I)Lmobi/tikl/wire/control/a$d$a;

    .line 10873
    :cond_8f
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->om()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 10874
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->on()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->ax(I)Lmobi/tikl/wire/control/a$d$a;

    .line 10876
    :cond_9c
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oo()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 10877
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->op()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->ay(I)Lmobi/tikl/wire/control/a$d$a;

    .line 10879
    :cond_a9
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oq()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 10880
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->or()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->U(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 10882
    :cond_b6
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->os()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 10883
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->jt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->V(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 10885
    :cond_c3
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->ot()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 10886
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->ou()Lmobi/tikl/wire/control/a$P;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->b(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$d$a;

    .line 10888
    :cond_d0
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->ov()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 10889
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->ow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->W(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 10891
    :cond_dd
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->ox()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 10892
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->X(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 10894
    :cond_ea
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oz()Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 10895
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->Y(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 10897
    :cond_f7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oB()Z

    move-result v0

    if-eqz v0, :cond_104

    .line 10898
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oC()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->az(I)Lmobi/tikl/wire/control/a$d$a;

    .line 10900
    :cond_104
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oD()Z

    move-result v0

    if-eqz v0, :cond_111

    .line 10901
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oE()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->t(Z)Lmobi/tikl/wire/control/a$d$a;

    .line 10903
    :cond_111
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oF()Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 10904
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oG()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->u(Z)Lmobi/tikl/wire/control/a$d$a;

    .line 10906
    :cond_11e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oH()Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 10907
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->jv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->Z(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    .line 10909
    :cond_12b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oI()Z

    move-result v0

    if-eqz v0, :cond_138

    .line 10910
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oJ()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->aA(I)Lmobi/tikl/wire/control/a$d$a;

    .line 10912
    :cond_138
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oK()Z

    move-result v0

    if-eqz v0, :cond_145

    .line 10913
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->oL()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->v(Z)Lmobi/tikl/wire/control/a$d$a;

    .line 10915
    :cond_145
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$d;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto/16 :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 10803
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$d;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected oQ()Lmobi/tikl/wire/control/a$d;
    .registers 2

    .prologue
    .line 10777
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    return-object v0
.end method

.method public oR()Lmobi/tikl/wire/control/a$d$a;
    .registers 3

    .prologue
    .line 10790
    invoke-static {}, Lmobi/tikl/wire/control/a$d$a;->oP()Lmobi/tikl/wire/control/a$d$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$d$a;->f(Lmobi/tikl/wire/control/a$d;)Lmobi/tikl/wire/control/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public oS()Lmobi/tikl/wire/control/a$d;
    .registers 2

    .prologue
    .line 10806
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 10807
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$d$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 10809
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d$a;->oT()Lmobi/tikl/wire/control/a$d;

    move-result-object v0

    return-object v0
.end method

.method public oT()Lmobi/tikl/wire/control/a$d;
    .registers 3

    .prologue
    .line 10822
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    if-nez v0, :cond_c

    .line 10823
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10826
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$d;->c(Lmobi/tikl/wire/control/a$d;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 10827
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$d;->c(Lmobi/tikl/wire/control/a$d;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->a(Lmobi/tikl/wire/control/a$d;Ljava/util/List;)Ljava/util/List;

    .line 10830
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    .line 10831
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    .line 10832
    return-object v0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 11065
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$d;->od()Z

    move-result v0

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 11068
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$d;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method public ot()Z
    .registers 2

    .prologue
    .line 11330
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$d;->ot()Z

    move-result v0

    return v0
.end method

.method public ou()Lmobi/tikl/wire/control/a$P;
    .registers 2

    .prologue
    .line 11333
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$d;->ou()Lmobi/tikl/wire/control/a$P;

    move-result-object v0

    return-object v0
.end method

.method public t(Z)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11454
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->q(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11455
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->r(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11456
    return-object p0
.end method

.method public u(Z)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11472
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->s(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11473
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->t(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11474
    return-object p0
.end method

.method public v(Z)Lmobi/tikl/wire/control/a$d$a;
    .registers 4

    .prologue
    .line 11529
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$d;->w(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11530
    iget-object v0, p0, Lmobi/tikl/wire/control/a$d$a;->pp:Lmobi/tikl/wire/control/a$d;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$d;->x(Lmobi/tikl/wire/control/a$d;Z)Z

    .line 11531
    return-object p0
.end method

.method public z(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$d$a;
    .registers 6

    .prologue
    .line 10923
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 10927
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 10928
    sparse-switch v1, :sswitch_data_112

    .line 10933
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$d$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 10935
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 10936
    :goto_1c
    return-object p0

    .line 10930
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$d$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 10941
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->au(I)Lmobi/tikl/wire/control/a$d$a;

    goto :goto_8

    .line 10945
    :sswitch_2d
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 10946
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d$a;->od()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 10947
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d$a;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 10949
    :cond_3e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 10950
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->d(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$d$a;

    goto :goto_8

    .line 10954
    :sswitch_49
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 10955
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 10956
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->f(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$d$a;

    goto :goto_8

    .line 10960
    :sswitch_58
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->R(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    goto :goto_8

    .line 10964
    :sswitch_60
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->av(I)Lmobi/tikl/wire/control/a$d$a;

    goto :goto_8

    .line 10968
    :sswitch_68
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->S(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    goto :goto_8

    .line 10972
    :sswitch_70
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->T(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    goto :goto_8

    .line 10976
    :sswitch_78
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->aw(I)Lmobi/tikl/wire/control/a$d$a;

    goto :goto_8

    .line 10980
    :sswitch_80
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->ax(I)Lmobi/tikl/wire/control/a$d$a;

    goto :goto_8

    .line 10984
    :sswitch_88
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->ay(I)Lmobi/tikl/wire/control/a$d$a;

    goto/16 :goto_8

    .line 10988
    :sswitch_91
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->U(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    goto/16 :goto_8

    .line 10992
    :sswitch_9a
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->V(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    goto/16 :goto_8

    .line 10996
    :sswitch_a3
    invoke-static {}, Lmobi/tikl/wire/control/a$P;->yo()Lmobi/tikl/wire/control/a$P$a;

    move-result-object v1

    .line 10997
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d$a;->ot()Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 10998
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$d$a;->ou()Lmobi/tikl/wire/control/a$P;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$P$a;->f(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P$a;

    .line 11000
    :cond_b4
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 11001
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$P$a;->yv()Lmobi/tikl/wire/control/a$P;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->a(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$d$a;

    goto/16 :goto_8

    .line 11005
    :sswitch_c0
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->W(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    goto/16 :goto_8

    .line 11009
    :sswitch_c9
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->X(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    goto/16 :goto_8

    .line 11013
    :sswitch_d2
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->Y(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    goto/16 :goto_8

    .line 11017
    :sswitch_db
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->az(I)Lmobi/tikl/wire/control/a$d$a;

    goto/16 :goto_8

    .line 11021
    :sswitch_e4
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->t(Z)Lmobi/tikl/wire/control/a$d$a;

    goto/16 :goto_8

    .line 11025
    :sswitch_ed
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->u(Z)Lmobi/tikl/wire/control/a$d$a;

    goto/16 :goto_8

    .line 11029
    :sswitch_f6
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->Z(Ljava/lang/String;)Lmobi/tikl/wire/control/a$d$a;

    goto/16 :goto_8

    .line 11033
    :sswitch_ff
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->aA(I)Lmobi/tikl/wire/control/a$d$a;

    goto/16 :goto_8

    .line 11037
    :sswitch_108
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$d$a;->v(Z)Lmobi/tikl/wire/control/a$d$a;

    goto/16 :goto_8

    .line 10928
    nop

    :sswitch_data_112
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_49
        0x22 -> :sswitch_58
        0x28 -> :sswitch_60
        0x32 -> :sswitch_68
        0x3a -> :sswitch_70
        0x40 -> :sswitch_78
        0x48 -> :sswitch_80
        0x50 -> :sswitch_88
        0x5a -> :sswitch_91
        0x62 -> :sswitch_9a
        0xa2 -> :sswitch_a3
        0xf2 -> :sswitch_c0
        0xfa -> :sswitch_c9
        0x142 -> :sswitch_d2
        0x320 -> :sswitch_db
        0x328 -> :sswitch_e4
        0x330 -> :sswitch_ed
        0x33a -> :sswitch_f6
        0x340 -> :sswitch_ff
        0x3c0 -> :sswitch_108
    .end sparse-switch
.end method
