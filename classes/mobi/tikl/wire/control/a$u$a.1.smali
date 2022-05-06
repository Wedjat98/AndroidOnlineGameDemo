.class public final Lmobi/tikl/wire/control/a$u$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qw:Lmobi/tikl/wire/control/a$u;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4228
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static sT()Lmobi/tikl/wire/control/a$u$a;
    .registers 3

    .prologue
    .line 4231
    new-instance v0, Lmobi/tikl/wire/control/a$u$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$u$a;-><init>()V

    .line 4232
    new-instance v1, Lmobi/tikl/wire/control/a$u;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$u;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    .line 4233
    return-object v0
.end method

.method static synthetic sY()Lmobi/tikl/wire/control/a$u$a;
    .registers 1

    .prologue
    .line 4223
    invoke-static {}, Lmobi/tikl/wire/control/a$u$a;->sT()Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public C(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$u$a;
    .registers 4

    .prologue
    .line 4359
    if-nez p1, :cond_8

    .line 4360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4362
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$u;->a(Lmobi/tikl/wire/control/a$u;Z)Z

    .line 4363
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$u;->a(Lmobi/tikl/wire/control/a$u;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 4364
    return-object p0
.end method

.method public D(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$u$a;
    .registers 4

    .prologue
    .line 4372
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$u;->sO()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$u;->b(Lmobi/tikl/wire/control/a$u;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 4374
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$u;->b(Lmobi/tikl/wire/control/a$u;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$u;->a(Lmobi/tikl/wire/control/a$u;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 4379
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$u;->a(Lmobi/tikl/wire/control/a$u;Z)Z

    .line 4380
    return-object p0

    .line 4377
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$u;->a(Lmobi/tikl/wire/control/a$u;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public Q(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$u$a;
    .registers 6

    .prologue
    .line 4316
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 4320
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 4321
    sparse-switch v1, :sswitch_data_4a

    .line 4326
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$u$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 4328
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$u$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 4329
    :goto_1c
    return-object p0

    .line 4323
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$u$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 4334
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 4335
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u$a;->sO()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 4336
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u$a;->sP()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 4338
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 4339
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$u$a;->C(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$u$a;

    goto :goto_8

    .line 4343
    :sswitch_41
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$u$a;->az(Ljava/lang/String;)Lmobi/tikl/wire/control/a$u$a;

    goto :goto_8

    .line 4321
    nop

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x12 -> :sswitch_41
    .end sparse-switch
.end method

.method public S(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$u$a;
    .registers 3

    .prologue
    .line 4292
    instance-of v0, p1, Lmobi/tikl/wire/control/a$u;

    if-eqz v0, :cond_b

    .line 4293
    check-cast p1, Lmobi/tikl/wire/control/a$u;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$u$a;->c(Lmobi/tikl/wire/control/a$u;)Lmobi/tikl/wire/control/a$u$a;

    move-result-object p0

    .line 4296
    :goto_a
    return-object p0

    .line 4295
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 4223
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$u$a;->Q(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 4223
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$u$a;->S(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 4255
    invoke-static {}, Lmobi/tikl/wire/control/a$u;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 4223
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u$a;->sU()Lmobi/tikl/wire/control/a$u;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 4223
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u$a;->sV()Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 4223
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u$a;->sW()Lmobi/tikl/wire/control/a$u;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 4223
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u$a;->sW()Lmobi/tikl/wire/control/a$u;

    move-result-object v0

    return-object v0
.end method

.method public az(Ljava/lang/String;)Lmobi/tikl/wire/control/a$u$a;
    .registers 4

    .prologue
    .line 4396
    if-nez p1, :cond_8

    .line 4397
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4399
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$u;->b(Lmobi/tikl/wire/control/a$u;Z)Z

    .line 4400
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$u;->a(Lmobi/tikl/wire/control/a$u;Ljava/lang/String;)Ljava/lang/String;

    .line 4401
    return-object p0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 4223
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u$a;->sV()Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 4223
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$u$a;->Q(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 4223
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u$a;->sV()Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 4223
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$u$a;->Q(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$u;)Lmobi/tikl/wire/control/a$u$a;
    .registers 3

    .prologue
    .line 4301
    invoke-static {}, Lmobi/tikl/wire/control/a$u;->sM()Lmobi/tikl/wire/control/a$u;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4309
    :goto_6
    return-object p0

    .line 4302
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$u;->sO()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4303
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$u;->sP()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$u$a;->D(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$u$a;

    .line 4305
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$u;->pS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4306
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$u;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$u$a;->az(Ljava/lang/String;)Lmobi/tikl/wire/control/a$u$a;

    .line 4308
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$u;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$u$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 4223
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u$a;->sV()Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 4223
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$u$a;->S(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 4263
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$u;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public sO()Z
    .registers 2

    .prologue
    .line 4353
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$u;->sO()Z

    move-result v0

    return v0
.end method

.method public sP()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 4356
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$u;->sP()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected sU()Lmobi/tikl/wire/control/a$u;
    .registers 2

    .prologue
    .line 4237
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    return-object v0
.end method

.method public sV()Lmobi/tikl/wire/control/a$u$a;
    .registers 3

    .prologue
    .line 4250
    invoke-static {}, Lmobi/tikl/wire/control/a$u$a;->sT()Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$u$a;->c(Lmobi/tikl/wire/control/a$u;)Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method public sW()Lmobi/tikl/wire/control/a$u;
    .registers 2

    .prologue
    .line 4266
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 4267
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$u$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 4269
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u$a;->sX()Lmobi/tikl/wire/control/a$u;

    move-result-object v0

    return-object v0
.end method

.method public sX()Lmobi/tikl/wire/control/a$u;
    .registers 3

    .prologue
    .line 4282
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    if-nez v0, :cond_c

    .line 4283
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4286
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    .line 4287
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$u$a;->qw:Lmobi/tikl/wire/control/a$u;

    .line 4288
    return-object v0
.end method
