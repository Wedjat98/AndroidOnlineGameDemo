.class public final Lmobi/tikl/wire/control/a$T$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private sQ:Lmobi/tikl/wire/control/a$T;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 7173
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method static synthetic zC()Lmobi/tikl/wire/control/a$T$a;
    .registers 1

    .prologue
    .line 7168
    invoke-static {}, Lmobi/tikl/wire/control/a$T$a;->zx()Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    return-object v0
.end method

.method private static zx()Lmobi/tikl/wire/control/a$T$a;
    .registers 3

    .prologue
    .line 7176
    new-instance v0, Lmobi/tikl/wire/control/a$T$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$T$a;-><init>()V

    .line 7177
    new-instance v1, Lmobi/tikl/wire/control/a$T;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$T;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    .line 7178
    return-object v0
.end method


# virtual methods
.method public F(Z)Lmobi/tikl/wire/control/a$T$a;
    .registers 4

    .prologue
    .line 7390
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$T;->c(Lmobi/tikl/wire/control/a$T;Z)Z

    .line 7391
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$T;->d(Lmobi/tikl/wire/control/a$T;Z)Z

    .line 7392
    return-object p0
.end method

.method public Y(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$T$a;
    .registers 4

    .prologue
    .line 7316
    if-nez p1, :cond_8

    .line 7317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7319
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$T;->a(Lmobi/tikl/wire/control/a$T;Z)Z

    .line 7320
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$T;->a(Lmobi/tikl/wire/control/a$T;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 7321
    return-object p0
.end method

.method public Z(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$T$a;
    .registers 4

    .prologue
    .line 7329
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$T;->rd()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$T;->b(Lmobi/tikl/wire/control/a$T;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 7331
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$T;->b(Lmobi/tikl/wire/control/a$T;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$T;->a(Lmobi/tikl/wire/control/a$T;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 7336
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$T;->a(Lmobi/tikl/wire/control/a$T;Z)Z

    .line 7337
    return-object p0

    .line 7334
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$T;->a(Lmobi/tikl/wire/control/a$T;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 7168
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$T$a;->ap(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 7168
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$T$a;->ar(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 7200
    invoke-static {}, Lmobi/tikl/wire/control/a$T;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 7168
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T$a;->zy()Lmobi/tikl/wire/control/a$T;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 7168
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T$a;->zz()Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 7168
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T$a;->zA()Lmobi/tikl/wire/control/a$T;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 7168
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T$a;->zA()Lmobi/tikl/wire/control/a$T;

    move-result-object v0

    return-object v0
.end method

.method public aa(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$T$a;
    .registers 4

    .prologue
    .line 7353
    if-nez p1, :cond_8

    .line 7354
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7356
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$T;->b(Lmobi/tikl/wire/control/a$T;Z)Z

    .line 7357
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$T;->b(Lmobi/tikl/wire/control/a$T;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 7358
    return-object p0
.end method

.method public ab(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$T$a;
    .registers 4

    .prologue
    .line 7366
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$T;->zf()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$T;->c(Lmobi/tikl/wire/control/a$T;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 7368
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$T;->c(Lmobi/tikl/wire/control/a$T;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$T;->b(Lmobi/tikl/wire/control/a$T;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 7373
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$T;->b(Lmobi/tikl/wire/control/a$T;Z)Z

    .line 7374
    return-object p0

    .line 7371
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$T;->b(Lmobi/tikl/wire/control/a$T;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public ap(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$T$a;
    .registers 6

    .prologue
    .line 7264
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 7268
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 7269
    sparse-switch v1, :sswitch_data_66

    .line 7274
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$T$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 7276
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$T$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 7277
    :goto_1c
    return-object p0

    .line 7271
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$T$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 7282
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 7283
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T$a;->rd()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 7284
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T$a;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 7286
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 7287
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$T$a;->Y(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$T$a;

    goto :goto_8

    .line 7291
    :sswitch_41
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 7292
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T$a;->zf()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 7293
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T$a;->zg()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 7295
    :cond_52
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 7296
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$T$a;->aa(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$T$a;

    goto :goto_8

    .line 7300
    :sswitch_5d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$T$a;->F(Z)Lmobi/tikl/wire/control/a$T$a;

    goto :goto_8

    .line 7269
    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_1d
        0x12 -> :sswitch_25
        0x1a -> :sswitch_41
        0x50 -> :sswitch_5d
    .end sparse-switch
.end method

.method public ar(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$T$a;
    .registers 3

    .prologue
    .line 7237
    instance-of v0, p1, Lmobi/tikl/wire/control/a$T;

    if-eqz v0, :cond_b

    .line 7238
    check-cast p1, Lmobi/tikl/wire/control/a$T;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$T$a;->d(Lmobi/tikl/wire/control/a$T;)Lmobi/tikl/wire/control/a$T$a;

    move-result-object p0

    .line 7241
    :goto_a
    return-object p0

    .line 7240
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 7168
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T$a;->zz()Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 7168
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$T$a;->ap(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 7168
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T$a;->zz()Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 7168
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$T$a;->ap(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 7168
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T$a;->zz()Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 7168
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$T$a;->ar(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$T;)Lmobi/tikl/wire/control/a$T$a;
    .registers 3

    .prologue
    .line 7246
    invoke-static {}, Lmobi/tikl/wire/control/a$T;->zq()Lmobi/tikl/wire/control/a$T;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7257
    :goto_6
    return-object p0

    .line 7247
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$T;->rd()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7248
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$T;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$T$a;->Z(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$T$a;

    .line 7250
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$T;->zf()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7251
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$T;->zg()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$T$a;->ab(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$T$a;

    .line 7253
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$T;->zs()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 7254
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$T;->zt()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$T$a;->F(Z)Lmobi/tikl/wire/control/a$T$a;

    .line 7256
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$T;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$T$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 7208
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$T;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public rd()Z
    .registers 2

    .prologue
    .line 7310
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$T;->rd()Z

    move-result v0

    return v0
.end method

.method public re()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 7313
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$T;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method public zA()Lmobi/tikl/wire/control/a$T;
    .registers 2

    .prologue
    .line 7211
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 7212
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$T$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 7214
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T$a;->zB()Lmobi/tikl/wire/control/a$T;

    move-result-object v0

    return-object v0
.end method

.method public zB()Lmobi/tikl/wire/control/a$T;
    .registers 3

    .prologue
    .line 7227
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    if-nez v0, :cond_c

    .line 7228
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7231
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    .line 7232
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    .line 7233
    return-object v0
.end method

.method public zf()Z
    .registers 2

    .prologue
    .line 7347
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$T;->zf()Z

    move-result v0

    return v0
.end method

.method public zg()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 7350
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$T;->zg()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected zy()Lmobi/tikl/wire/control/a$T;
    .registers 2

    .prologue
    .line 7182
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    return-object v0
.end method

.method public zz()Lmobi/tikl/wire/control/a$T$a;
    .registers 3

    .prologue
    .line 7195
    invoke-static {}, Lmobi/tikl/wire/control/a$T$a;->zx()Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$T$a;->sQ:Lmobi/tikl/wire/control/a$T;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$T$a;->d(Lmobi/tikl/wire/control/a$T;)Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    return-object v0
.end method
