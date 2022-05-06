.class public final Lmobi/tikl/wire/control/a$O$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private sn:Lmobi/tikl/wire/control/a$O;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 8232
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static yg()Lmobi/tikl/wire/control/a$O$a;
    .registers 3

    .prologue
    .line 8235
    new-instance v0, Lmobi/tikl/wire/control/a$O$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$O$a;-><init>()V

    .line 8236
    new-instance v1, Lmobi/tikl/wire/control/a$O;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$O;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$O$a;->sn:Lmobi/tikl/wire/control/a$O;

    .line 8237
    return-object v0
.end method

.method static synthetic yl()Lmobi/tikl/wire/control/a$O$a;
    .registers 1

    .prologue
    .line 8227
    invoke-static {}, Lmobi/tikl/wire/control/a$O$a;->yg()Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public B(Z)Lmobi/tikl/wire/control/a$O$a;
    .registers 4

    .prologue
    .line 8372
    iget-object v0, p0, Lmobi/tikl/wire/control/a$O$a;->sn:Lmobi/tikl/wire/control/a$O;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$O;->a(Lmobi/tikl/wire/control/a$O;Z)Z

    .line 8373
    iget-object v0, p0, Lmobi/tikl/wire/control/a$O$a;->sn:Lmobi/tikl/wire/control/a$O;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$O;->b(Lmobi/tikl/wire/control/a$O;Z)Z

    .line 8374
    return-object p0
.end method

.method public C(Z)Lmobi/tikl/wire/control/a$O$a;
    .registers 4

    .prologue
    .line 8408
    iget-object v0, p0, Lmobi/tikl/wire/control/a$O$a;->sn:Lmobi/tikl/wire/control/a$O;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$O;->d(Lmobi/tikl/wire/control/a$O;Z)Z

    .line 8409
    iget-object v0, p0, Lmobi/tikl/wire/control/a$O$a;->sn:Lmobi/tikl/wire/control/a$O;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$O;->e(Lmobi/tikl/wire/control/a$O;Z)Z

    .line 8410
    return-object p0
.end method

.method public D(Z)Lmobi/tikl/wire/control/a$O$a;
    .registers 4

    .prologue
    .line 8426
    iget-object v0, p0, Lmobi/tikl/wire/control/a$O$a;->sn:Lmobi/tikl/wire/control/a$O;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$O;->f(Lmobi/tikl/wire/control/a$O;Z)Z

    .line 8427
    iget-object v0, p0, Lmobi/tikl/wire/control/a$O$a;->sn:Lmobi/tikl/wire/control/a$O;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$O;->g(Lmobi/tikl/wire/control/a$O;Z)Z

    .line 8428
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 8227
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$O$a;->ak(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 8227
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$O$a;->am(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 8259
    invoke-static {}, Lmobi/tikl/wire/control/a$O;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 8227
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O$a;->yh()Lmobi/tikl/wire/control/a$O;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 8227
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O$a;->yi()Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 8227
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O$a;->yj()Lmobi/tikl/wire/control/a$O;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 8227
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O$a;->yj()Lmobi/tikl/wire/control/a$O;

    move-result-object v0

    return-object v0
.end method

.method public ak(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$O$a;
    .registers 5

    .prologue
    .line 8326
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 8330
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 8331
    sparse-switch v1, :sswitch_data_46

    .line 8336
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$O$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 8338
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$O$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 8339
    :goto_1c
    return-object p0

    .line 8333
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$O$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 8344
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$O$a;->B(Z)Lmobi/tikl/wire/control/a$O$a;

    goto :goto_8

    .line 8348
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$O$a;->bx(I)Lmobi/tikl/wire/control/a$O$a;

    goto :goto_8

    .line 8352
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$O$a;->C(Z)Lmobi/tikl/wire/control/a$O$a;

    goto :goto_8

    .line 8356
    :sswitch_3d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$O$a;->D(Z)Lmobi/tikl/wire/control/a$O$a;

    goto :goto_8

    .line 8331
    nop

    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x10 -> :sswitch_2d
        0x18 -> :sswitch_35
        0x20 -> :sswitch_3d
    .end sparse-switch
.end method

.method public am(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$O$a;
    .registers 3

    .prologue
    .line 8296
    instance-of v0, p1, Lmobi/tikl/wire/control/a$O;

    if-eqz v0, :cond_b

    .line 8297
    check-cast p1, Lmobi/tikl/wire/control/a$O;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$O$a;->c(Lmobi/tikl/wire/control/a$O;)Lmobi/tikl/wire/control/a$O$a;

    move-result-object p0

    .line 8300
    :goto_a
    return-object p0

    .line 8299
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 8227
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O$a;->yi()Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 8227
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$O$a;->ak(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    return-object v0
.end method

.method public bx(I)Lmobi/tikl/wire/control/a$O$a;
    .registers 4

    .prologue
    .line 8390
    iget-object v0, p0, Lmobi/tikl/wire/control/a$O$a;->sn:Lmobi/tikl/wire/control/a$O;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$O;->c(Lmobi/tikl/wire/control/a$O;Z)Z

    .line 8391
    iget-object v0, p0, Lmobi/tikl/wire/control/a$O$a;->sn:Lmobi/tikl/wire/control/a$O;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$O;->a(Lmobi/tikl/wire/control/a$O;I)I

    .line 8392
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 8227
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O$a;->yi()Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 8227
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$O$a;->ak(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$O;)Lmobi/tikl/wire/control/a$O$a;
    .registers 3

    .prologue
    .line 8305
    invoke-static {}, Lmobi/tikl/wire/control/a$O;->xV()Lmobi/tikl/wire/control/a$O;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 8319
    :goto_6
    return-object p0

    .line 8306
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$O;->xs()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8307
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$O;->xt()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$O$a;->B(Z)Lmobi/tikl/wire/control/a$O$a;

    .line 8309
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$O;->xX()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 8310
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$O;->xY()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$O$a;->bx(I)Lmobi/tikl/wire/control/a$O$a;

    .line 8312
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$O;->xZ()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 8313
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$O;->ya()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$O$a;->C(Z)Lmobi/tikl/wire/control/a$O$a;

    .line 8315
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$O;->yb()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 8316
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$O;->yc()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$O$a;->D(Z)Lmobi/tikl/wire/control/a$O$a;

    .line 8318
    :cond_3b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$O;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$O$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 8227
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O$a;->yi()Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 8227
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$O$a;->am(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 8267
    iget-object v0, p0, Lmobi/tikl/wire/control/a$O$a;->sn:Lmobi/tikl/wire/control/a$O;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$O;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected yh()Lmobi/tikl/wire/control/a$O;
    .registers 2

    .prologue
    .line 8241
    iget-object v0, p0, Lmobi/tikl/wire/control/a$O$a;->sn:Lmobi/tikl/wire/control/a$O;

    return-object v0
.end method

.method public yi()Lmobi/tikl/wire/control/a$O$a;
    .registers 3

    .prologue
    .line 8254
    invoke-static {}, Lmobi/tikl/wire/control/a$O$a;->yg()Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$O$a;->sn:Lmobi/tikl/wire/control/a$O;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$O$a;->c(Lmobi/tikl/wire/control/a$O;)Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    return-object v0
.end method

.method public yj()Lmobi/tikl/wire/control/a$O;
    .registers 2

    .prologue
    .line 8270
    iget-object v0, p0, Lmobi/tikl/wire/control/a$O$a;->sn:Lmobi/tikl/wire/control/a$O;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 8271
    iget-object v0, p0, Lmobi/tikl/wire/control/a$O$a;->sn:Lmobi/tikl/wire/control/a$O;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$O$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 8273
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O$a;->yk()Lmobi/tikl/wire/control/a$O;

    move-result-object v0

    return-object v0
.end method

.method public yk()Lmobi/tikl/wire/control/a$O;
    .registers 3

    .prologue
    .line 8286
    iget-object v0, p0, Lmobi/tikl/wire/control/a$O$a;->sn:Lmobi/tikl/wire/control/a$O;

    if-nez v0, :cond_c

    .line 8287
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8290
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$O$a;->sn:Lmobi/tikl/wire/control/a$O;

    .line 8291
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$O$a;->sn:Lmobi/tikl/wire/control/a$O;

    .line 8292
    return-object v0
.end method
