.class public final Lmobi/tikl/wire/control/a$X$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private tg:Lmobi/tikl/wire/control/a$X;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16083
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method static synthetic AC()Lmobi/tikl/wire/control/a$X$a;
    .registers 1

    .prologue
    .line 16078
    invoke-static {}, Lmobi/tikl/wire/control/a$X$a;->Ax()Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    return-object v0
.end method

.method private static Ax()Lmobi/tikl/wire/control/a$X$a;
    .registers 3

    .prologue
    .line 16086
    new-instance v0, Lmobi/tikl/wire/control/a$X$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$X$a;-><init>()V

    .line 16087
    new-instance v1, Lmobi/tikl/wire/control/a$X;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$X;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    .line 16088
    return-object v0
.end method


# virtual methods
.method public AA()Lmobi/tikl/wire/control/a$X;
    .registers 2

    .prologue
    .line 16121
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 16122
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$X$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 16124
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X$a;->AB()Lmobi/tikl/wire/control/a$X;

    move-result-object v0

    return-object v0
.end method

.method public AB()Lmobi/tikl/wire/control/a$X;
    .registers 3

    .prologue
    .line 16137
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    if-nez v0, :cond_c

    .line 16138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16141
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    .line 16142
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    .line 16143
    return-object v0
.end method

.method protected Ay()Lmobi/tikl/wire/control/a$X;
    .registers 2

    .prologue
    .line 16092
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    return-object v0
.end method

.method public Az()Lmobi/tikl/wire/control/a$X$a;
    .registers 3

    .prologue
    .line 16105
    invoke-static {}, Lmobi/tikl/wire/control/a$X$a;->Ax()Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$X$a;->c(Lmobi/tikl/wire/control/a$X;)Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 16078
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$X$a;->at(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 16078
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$X$a;->av(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 16110
    invoke-static {}, Lmobi/tikl/wire/control/a$X;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 16078
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X$a;->Ay()Lmobi/tikl/wire/control/a$X;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 16078
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X$a;->Az()Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 16078
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X$a;->AA()Lmobi/tikl/wire/control/a$X;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 16078
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X$a;->AA()Lmobi/tikl/wire/control/a$X;

    move-result-object v0

    return-object v0
.end method

.method public aZ(Ljava/lang/String;)Lmobi/tikl/wire/control/a$X$a;
    .registers 4

    .prologue
    .line 16258
    if-nez p1, :cond_8

    .line 16259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16261
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$X;->b(Lmobi/tikl/wire/control/a$X;Z)Z

    .line 16262
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$X;->a(Lmobi/tikl/wire/control/a$X;Ljava/lang/String;)Ljava/lang/String;

    .line 16263
    return-object p0
.end method

.method public ai(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$X$a;
    .registers 4

    .prologue
    .line 16221
    if-nez p1, :cond_8

    .line 16222
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16224
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$X;->a(Lmobi/tikl/wire/control/a$X;Z)Z

    .line 16225
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$X;->a(Lmobi/tikl/wire/control/a$X;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 16226
    return-object p0
.end method

.method public aj(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$X$a;
    .registers 4

    .prologue
    .line 16234
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$X;->zF()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$X;->b(Lmobi/tikl/wire/control/a$X;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 16236
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$X;->b(Lmobi/tikl/wire/control/a$X;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$X;->a(Lmobi/tikl/wire/control/a$X;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 16241
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$X;->a(Lmobi/tikl/wire/control/a$X;Z)Z

    .line 16242
    return-object p0

    .line 16239
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$X;->a(Lmobi/tikl/wire/control/a$X;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public at(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$X$a;
    .registers 6

    .prologue
    .line 16174
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 16178
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 16179
    sparse-switch v1, :sswitch_data_52

    .line 16184
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$X$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 16186
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$X$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 16187
    :goto_1c
    return-object p0

    .line 16181
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$X$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 16192
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 16193
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X$a;->zF()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 16194
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X$a;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 16196
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 16197
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$X$a;->ai(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$X$a;

    goto :goto_8

    .line 16201
    :sswitch_41
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$X$a;->aZ(Ljava/lang/String;)Lmobi/tikl/wire/control/a$X$a;

    goto :goto_8

    .line 16205
    :sswitch_49
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$X$a;->ba(Ljava/lang/String;)Lmobi/tikl/wire/control/a$X$a;

    goto :goto_8

    .line 16179
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x52 -> :sswitch_41
        0x5a -> :sswitch_49
    .end sparse-switch
.end method

.method public av(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$X$a;
    .registers 3

    .prologue
    .line 16147
    instance-of v0, p1, Lmobi/tikl/wire/control/a$X;

    if-eqz v0, :cond_b

    .line 16148
    check-cast p1, Lmobi/tikl/wire/control/a$X;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$X$a;->c(Lmobi/tikl/wire/control/a$X;)Lmobi/tikl/wire/control/a$X$a;

    move-result-object p0

    .line 16151
    :goto_a
    return-object p0

    .line 16150
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 16078
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X$a;->Az()Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 16078
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$X$a;->at(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    return-object v0
.end method

.method public ba(Ljava/lang/String;)Lmobi/tikl/wire/control/a$X$a;
    .registers 4

    .prologue
    .line 16279
    if-nez p1, :cond_8

    .line 16280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16282
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$X;->c(Lmobi/tikl/wire/control/a$X;Z)Z

    .line 16283
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$X;->b(Lmobi/tikl/wire/control/a$X;Ljava/lang/String;)Ljava/lang/String;

    .line 16284
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 16078
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X$a;->Az()Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 16078
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$X$a;->at(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$X;)Lmobi/tikl/wire/control/a$X$a;
    .registers 3

    .prologue
    .line 16156
    invoke-static {}, Lmobi/tikl/wire/control/a$X;->Ao()Lmobi/tikl/wire/control/a$X;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 16167
    :goto_6
    return-object p0

    .line 16157
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$X;->zF()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 16158
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$X;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$X$a;->aj(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$X$a;

    .line 16160
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$X;->Aq()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 16161
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$X;->Ar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$X$a;->aZ(Ljava/lang/String;)Lmobi/tikl/wire/control/a$X$a;

    .line 16163
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$X;->As()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 16164
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$X;->At()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$X$a;->ba(Ljava/lang/String;)Lmobi/tikl/wire/control/a$X$a;

    .line 16166
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$X;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$X$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 16078
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X$a;->Az()Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 16078
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$X$a;->av(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 16118
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$X;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public zF()Z
    .registers 2

    .prologue
    .line 16215
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$X;->zF()Z

    move-result v0

    return v0
.end method

.method public zG()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 16218
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X$a;->tg:Lmobi/tikl/wire/control/a$X;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$X;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method
