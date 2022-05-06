.class public final Lmobi/tikl/wire/control/a$k$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private pM:Lmobi/tikl/wire/control/a$k;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32091
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method static synthetic qC()Lmobi/tikl/wire/control/a$k$a;
    .registers 1

    .prologue
    .line 32086
    invoke-static {}, Lmobi/tikl/wire/control/a$k$a;->qx()Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method private static qx()Lmobi/tikl/wire/control/a$k$a;
    .registers 3

    .prologue
    .line 32094
    new-instance v0, Lmobi/tikl/wire/control/a$k$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$k$a;-><init>()V

    .line 32095
    new-instance v1, Lmobi/tikl/wire/control/a$k;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$k;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    .line 32096
    return-object v0
.end method


# virtual methods
.method public G(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$k$a;
    .registers 6

    .prologue
    .line 32185
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 32189
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 32190
    sparse-switch v1, :sswitch_data_5a

    .line 32195
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$k$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 32197
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$k$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 32198
    :goto_1c
    return-object p0

    .line 32192
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$k$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 32203
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$k$a;->aM(I)Lmobi/tikl/wire/control/a$k$a;

    goto :goto_8

    .line 32207
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$k$a;->am(Ljava/lang/String;)Lmobi/tikl/wire/control/a$k$a;

    goto :goto_8

    .line 32211
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$k$a;->aN(I)Lmobi/tikl/wire/control/a$k$a;

    goto :goto_8

    .line 32215
    :sswitch_3d
    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tC()Lmobi/tikl/wire/control/a$x$a;

    move-result-object v1

    .line 32216
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k$a;->qs()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 32217
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k$a;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$x$a;->j(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    .line 32219
    :cond_4e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 32220
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$x$a;->tJ()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$k$a;->b(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$k$a;

    goto :goto_8

    .line 32190
    nop

    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x18 -> :sswitch_35
        0x22 -> :sswitch_3d
    .end sparse-switch
.end method

.method public I(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$k$a;
    .registers 3

    .prologue
    .line 32155
    instance-of v0, p1, Lmobi/tikl/wire/control/a$k;

    if-eqz v0, :cond_b

    .line 32156
    check-cast p1, Lmobi/tikl/wire/control/a$k;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$k$a;->d(Lmobi/tikl/wire/control/a$k;)Lmobi/tikl/wire/control/a$k$a;

    move-result-object p0

    .line 32159
    :goto_a
    return-object p0

    .line 32158
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 32086
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$k$a;->G(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 32086
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$k$a;->I(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method public aM(I)Lmobi/tikl/wire/control/a$k$a;
    .registers 4

    .prologue
    .line 32236
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$k;->a(Lmobi/tikl/wire/control/a$k;Z)Z

    .line 32237
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$k;->a(Lmobi/tikl/wire/control/a$k;I)I

    .line 32238
    return-object p0
.end method

.method public aN(I)Lmobi/tikl/wire/control/a$k$a;
    .registers 4

    .prologue
    .line 32275
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$k;->c(Lmobi/tikl/wire/control/a$k;Z)Z

    .line 32276
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$k;->b(Lmobi/tikl/wire/control/a$k;I)I

    .line 32277
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 32118
    invoke-static {}, Lmobi/tikl/wire/control/a$k;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 32086
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k$a;->qy()Lmobi/tikl/wire/control/a$k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 32086
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k$a;->qz()Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 32086
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k$a;->qA()Lmobi/tikl/wire/control/a$k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 32086
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k$a;->qA()Lmobi/tikl/wire/control/a$k;

    move-result-object v0

    return-object v0
.end method

.method public am(Ljava/lang/String;)Lmobi/tikl/wire/control/a$k$a;
    .registers 4

    .prologue
    .line 32254
    if-nez p1, :cond_8

    .line 32255
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32257
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$k;->b(Lmobi/tikl/wire/control/a$k;Z)Z

    .line 32258
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$k;->a(Lmobi/tikl/wire/control/a$k;Ljava/lang/String;)Ljava/lang/String;

    .line 32259
    return-object p0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 32086
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k$a;->qz()Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 32086
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$k$a;->G(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$k$a;
    .registers 4

    .prologue
    .line 32293
    if-nez p1, :cond_8

    .line 32294
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32296
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$k;->d(Lmobi/tikl/wire/control/a$k;Z)Z

    .line 32297
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$k;->a(Lmobi/tikl/wire/control/a$k;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;

    .line 32298
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 32086
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k$a;->qz()Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 32086
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$k$a;->G(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$k$a;
    .registers 4

    .prologue
    .line 32306
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$k;->qs()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$k;->c(Lmobi/tikl/wire/control/a$k;)Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tx()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 32308
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$k;->c(Lmobi/tikl/wire/control/a$k;)Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$x;->h(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$x$a;->j(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$x$a;->tJ()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$k;->a(Lmobi/tikl/wire/control/a$k;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;

    .line 32313
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$k;->d(Lmobi/tikl/wire/control/a$k;Z)Z

    .line 32314
    return-object p0

    .line 32311
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$k;->a(Lmobi/tikl/wire/control/a$k;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;

    goto :goto_2b
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 32086
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k$a;->qz()Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 32086
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$k$a;->I(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$k;)Lmobi/tikl/wire/control/a$k$a;
    .registers 3

    .prologue
    .line 32164
    invoke-static {}, Lmobi/tikl/wire/control/a$k;->qo()Lmobi/tikl/wire/control/a$k;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 32178
    :goto_6
    return-object p0

    .line 32165
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$k;->oc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 32166
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$k;->getMsgId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$k$a;->aM(I)Lmobi/tikl/wire/control/a$k$a;

    .line 32168
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$k;->pS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 32169
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$k;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$k$a;->am(Ljava/lang/String;)Lmobi/tikl/wire/control/a$k$a;

    .line 32171
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$k;->qq()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 32172
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$k;->qr()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$k$a;->aN(I)Lmobi/tikl/wire/control/a$k$a;

    .line 32174
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$k;->qs()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 32175
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$k;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$k$a;->c(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$k$a;

    .line 32177
    :cond_3b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$k;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$k$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 32126
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$k;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public qA()Lmobi/tikl/wire/control/a$k;
    .registers 2

    .prologue
    .line 32129
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 32130
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$k$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 32132
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k$a;->qB()Lmobi/tikl/wire/control/a$k;

    move-result-object v0

    return-object v0
.end method

.method public qB()Lmobi/tikl/wire/control/a$k;
    .registers 3

    .prologue
    .line 32145
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    if-nez v0, :cond_c

    .line 32146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32149
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    .line 32150
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    .line 32151
    return-object v0
.end method

.method public qs()Z
    .registers 2

    .prologue
    .line 32287
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$k;->qs()Z

    move-result v0

    return v0
.end method

.method public qt()Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 32290
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$k;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    return-object v0
.end method

.method protected qy()Lmobi/tikl/wire/control/a$k;
    .registers 2

    .prologue
    .line 32100
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    return-object v0
.end method

.method public qz()Lmobi/tikl/wire/control/a$k$a;
    .registers 3

    .prologue
    .line 32113
    invoke-static {}, Lmobi/tikl/wire/control/a$k$a;->qx()Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$k$a;->pM:Lmobi/tikl/wire/control/a$k;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$k$a;->d(Lmobi/tikl/wire/control/a$k;)Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    return-object v0
.end method
