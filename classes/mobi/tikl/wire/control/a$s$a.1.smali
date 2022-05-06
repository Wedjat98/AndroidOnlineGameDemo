.class public final Lmobi/tikl/wire/control/a$s$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qo:Lmobi/tikl/wire/control/a$s;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27263
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static st()Lmobi/tikl/wire/control/a$s$a;
    .registers 3

    .prologue
    .line 27266
    new-instance v0, Lmobi/tikl/wire/control/a$s$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$s$a;-><init>()V

    .line 27267
    new-instance v1, Lmobi/tikl/wire/control/a$s;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$s;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    .line 27268
    return-object v0
.end method

.method static synthetic sy()Lmobi/tikl/wire/control/a$s$a;
    .registers 1

    .prologue
    .line 27258
    invoke-static {}, Lmobi/tikl/wire/control/a$s$a;->st()Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public O(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$s$a;
    .registers 6

    .prologue
    .line 27351
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 27355
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 27356
    sparse-switch v1, :sswitch_data_4a

    .line 27361
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$s$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 27363
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$s$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 27364
    :goto_1c
    return-object p0

    .line 27358
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$s$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 27369
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 27370
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s$a;->so()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 27371
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s$a;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 27373
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 27374
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$s$a;->y(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$s$a;

    goto :goto_8

    .line 27378
    :sswitch_41
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$s$a;->ax(Ljava/lang/String;)Lmobi/tikl/wire/control/a$s$a;

    goto :goto_8

    .line 27356
    nop

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_1d
        0x12 -> :sswitch_25
        0x1a -> :sswitch_41
    .end sparse-switch
.end method

.method public Q(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$s$a;
    .registers 3

    .prologue
    .line 27327
    instance-of v0, p1, Lmobi/tikl/wire/control/a$s;

    if-eqz v0, :cond_b

    .line 27328
    check-cast p1, Lmobi/tikl/wire/control/a$s;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$s$a;->c(Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$s$a;

    move-result-object p0

    .line 27331
    :goto_a
    return-object p0

    .line 27330
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 27258
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$s$a;->O(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 27258
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$s$a;->Q(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 27290
    invoke-static {}, Lmobi/tikl/wire/control/a$s;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 27258
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s$a;->su()Lmobi/tikl/wire/control/a$s;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 27258
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s$a;->sv()Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 27258
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s$a;->sw()Lmobi/tikl/wire/control/a$s;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 27258
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s$a;->sw()Lmobi/tikl/wire/control/a$s;

    move-result-object v0

    return-object v0
.end method

.method public ax(Ljava/lang/String;)Lmobi/tikl/wire/control/a$s$a;
    .registers 4

    .prologue
    .line 27431
    if-nez p1, :cond_8

    .line 27432
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27434
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$s;->b(Lmobi/tikl/wire/control/a$s;Z)Z

    .line 27435
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$s;->a(Lmobi/tikl/wire/control/a$s;Ljava/lang/String;)Ljava/lang/String;

    .line 27436
    return-object p0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 27258
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s$a;->sv()Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 27258
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$s$a;->O(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 27258
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s$a;->sv()Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 27258
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$s$a;->O(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$s$a;
    .registers 3

    .prologue
    .line 27336
    invoke-static {}, Lmobi/tikl/wire/control/a$s;->sm()Lmobi/tikl/wire/control/a$s;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 27344
    :goto_6
    return-object p0

    .line 27337
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$s;->so()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 27338
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$s;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$s$a;->z(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$s$a;

    .line 27340
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$s;->pS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 27341
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$s;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$s$a;->ax(Ljava/lang/String;)Lmobi/tikl/wire/control/a$s$a;

    .line 27343
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$s;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$s$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 27258
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s$a;->sv()Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 27258
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$s$a;->Q(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 27298
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$s;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public so()Z
    .registers 2

    .prologue
    .line 27388
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$s;->so()Z

    move-result v0

    return v0
.end method

.method public sp()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 27391
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$s;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected su()Lmobi/tikl/wire/control/a$s;
    .registers 2

    .prologue
    .line 27272
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    return-object v0
.end method

.method public sv()Lmobi/tikl/wire/control/a$s$a;
    .registers 3

    .prologue
    .line 27285
    invoke-static {}, Lmobi/tikl/wire/control/a$s$a;->st()Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$s$a;->c(Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    return-object v0
.end method

.method public sw()Lmobi/tikl/wire/control/a$s;
    .registers 2

    .prologue
    .line 27301
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 27302
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$s$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 27304
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s$a;->sx()Lmobi/tikl/wire/control/a$s;

    move-result-object v0

    return-object v0
.end method

.method public sx()Lmobi/tikl/wire/control/a$s;
    .registers 3

    .prologue
    .line 27317
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    if-nez v0, :cond_c

    .line 27318
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27321
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    .line 27322
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    .line 27323
    return-object v0
.end method

.method public y(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$s$a;
    .registers 4

    .prologue
    .line 27394
    if-nez p1, :cond_8

    .line 27395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27397
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$s;->a(Lmobi/tikl/wire/control/a$s;Z)Z

    .line 27398
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$s;->a(Lmobi/tikl/wire/control/a$s;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 27399
    return-object p0
.end method

.method public z(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$s$a;
    .registers 4

    .prologue
    .line 27407
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$s;->so()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$s;->b(Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 27409
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$s;->b(Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$s;->a(Lmobi/tikl/wire/control/a$s;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 27414
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$s;->a(Lmobi/tikl/wire/control/a$s;Z)Z

    .line 27415
    return-object p0

    .line 27412
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s$a;->qo:Lmobi/tikl/wire/control/a$s;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$s;->a(Lmobi/tikl/wire/control/a$s;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method
