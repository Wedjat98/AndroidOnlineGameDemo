.class public final Lmobi/tikl/wire/control/a$I$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private rp:Lmobi/tikl/wire/control/a$I;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24163
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static wi()Lmobi/tikl/wire/control/a$I$a;
    .registers 3

    .prologue
    .line 24166
    new-instance v0, Lmobi/tikl/wire/control/a$I$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$I$a;-><init>()V

    .line 24167
    new-instance v1, Lmobi/tikl/wire/control/a$I;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$I;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$I$a;->rp:Lmobi/tikl/wire/control/a$I;

    .line 24168
    return-object v0
.end method

.method static synthetic wn()Lmobi/tikl/wire/control/a$I$a;
    .registers 1

    .prologue
    .line 24158
    invoke-static {}, Lmobi/tikl/wire/control/a$I$a;->wi()Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 24158
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$I$a;->ae(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 24158
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$I$a;->ag(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    return-object v0
.end method

.method public aP(Ljava/lang/String;)Lmobi/tikl/wire/control/a$I$a;
    .registers 4

    .prologue
    .line 24289
    if-nez p1, :cond_8

    .line 24290
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24292
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$I$a;->rp:Lmobi/tikl/wire/control/a$I;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$I;->a(Lmobi/tikl/wire/control/a$I;Z)Z

    .line 24293
    iget-object v0, p0, Lmobi/tikl/wire/control/a$I$a;->rp:Lmobi/tikl/wire/control/a$I;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$I;->a(Lmobi/tikl/wire/control/a$I;Ljava/lang/String;)Ljava/lang/String;

    .line 24294
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 24190
    invoke-static {}, Lmobi/tikl/wire/control/a$I;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 24158
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I$a;->wj()Lmobi/tikl/wire/control/a$I;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 24158
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I$a;->wk()Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 24158
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I$a;->wl()Lmobi/tikl/wire/control/a$I;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 24158
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I$a;->wl()Lmobi/tikl/wire/control/a$I;

    move-result-object v0

    return-object v0
.end method

.method public ae(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$I$a;
    .registers 5

    .prologue
    .line 24251
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 24255
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 24256
    sparse-switch v1, :sswitch_data_36

    .line 24261
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$I$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 24263
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$I$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 24264
    :goto_1c
    return-object p0

    .line 24258
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$I$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 24269
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$I$a;->aP(Ljava/lang/String;)Lmobi/tikl/wire/control/a$I$a;

    goto :goto_8

    .line 24273
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$I$a;->be(I)Lmobi/tikl/wire/control/a$I$a;

    goto :goto_8

    .line 24256
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x10 -> :sswitch_2d
    .end sparse-switch
.end method

.method public ag(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$I$a;
    .registers 3

    .prologue
    .line 24227
    instance-of v0, p1, Lmobi/tikl/wire/control/a$I;

    if-eqz v0, :cond_b

    .line 24228
    check-cast p1, Lmobi/tikl/wire/control/a$I;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$I$a;->c(Lmobi/tikl/wire/control/a$I;)Lmobi/tikl/wire/control/a$I$a;

    move-result-object p0

    .line 24231
    :goto_a
    return-object p0

    .line 24230
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 24158
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I$a;->wk()Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 24158
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$I$a;->ae(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    return-object v0
.end method

.method public be(I)Lmobi/tikl/wire/control/a$I$a;
    .registers 4

    .prologue
    .line 24310
    iget-object v0, p0, Lmobi/tikl/wire/control/a$I$a;->rp:Lmobi/tikl/wire/control/a$I;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$I;->b(Lmobi/tikl/wire/control/a$I;Z)Z

    .line 24311
    iget-object v0, p0, Lmobi/tikl/wire/control/a$I$a;->rp:Lmobi/tikl/wire/control/a$I;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$I;->a(Lmobi/tikl/wire/control/a$I;I)I

    .line 24312
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 24158
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I$a;->wk()Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 24158
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$I$a;->ae(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$I;)Lmobi/tikl/wire/control/a$I$a;
    .registers 3

    .prologue
    .line 24236
    invoke-static {}, Lmobi/tikl/wire/control/a$I;->wb()Lmobi/tikl/wire/control/a$I;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 24244
    :goto_6
    return-object p0

    .line 24237
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$I;->wd()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 24238
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$I;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$I$a;->aP(Ljava/lang/String;)Lmobi/tikl/wire/control/a$I$a;

    .line 24240
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$I;->we()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 24241
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$I;->getPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$I$a;->be(I)Lmobi/tikl/wire/control/a$I$a;

    .line 24243
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$I;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$I$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 24158
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I$a;->wk()Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 24158
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$I$a;->ag(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 24198
    iget-object v0, p0, Lmobi/tikl/wire/control/a$I$a;->rp:Lmobi/tikl/wire/control/a$I;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$I;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected wj()Lmobi/tikl/wire/control/a$I;
    .registers 2

    .prologue
    .line 24172
    iget-object v0, p0, Lmobi/tikl/wire/control/a$I$a;->rp:Lmobi/tikl/wire/control/a$I;

    return-object v0
.end method

.method public wk()Lmobi/tikl/wire/control/a$I$a;
    .registers 3

    .prologue
    .line 24185
    invoke-static {}, Lmobi/tikl/wire/control/a$I$a;->wi()Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$I$a;->rp:Lmobi/tikl/wire/control/a$I;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$I$a;->c(Lmobi/tikl/wire/control/a$I;)Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    return-object v0
.end method

.method public wl()Lmobi/tikl/wire/control/a$I;
    .registers 2

    .prologue
    .line 24201
    iget-object v0, p0, Lmobi/tikl/wire/control/a$I$a;->rp:Lmobi/tikl/wire/control/a$I;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 24202
    iget-object v0, p0, Lmobi/tikl/wire/control/a$I$a;->rp:Lmobi/tikl/wire/control/a$I;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$I$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 24204
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I$a;->wm()Lmobi/tikl/wire/control/a$I;

    move-result-object v0

    return-object v0
.end method

.method public wm()Lmobi/tikl/wire/control/a$I;
    .registers 3

    .prologue
    .line 24217
    iget-object v0, p0, Lmobi/tikl/wire/control/a$I$a;->rp:Lmobi/tikl/wire/control/a$I;

    if-nez v0, :cond_c

    .line 24218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24221
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$I$a;->rp:Lmobi/tikl/wire/control/a$I;

    .line 24222
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$I$a;->rp:Lmobi/tikl/wire/control/a$I;

    .line 24223
    return-object v0
.end method
