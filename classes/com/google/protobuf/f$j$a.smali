.class public final Lcom/google/protobuf/f$j$a;
.super Lcom/google/protobuf/q$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private ca:Lcom/google/protobuf/f$j;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 5122
    invoke-direct {p0}, Lcom/google/protobuf/q$b;-><init>()V

    return-void
.end method

.method private static dZ()Lcom/google/protobuf/f$j$a;
    .registers 3

    .prologue
    .line 5125
    new-instance v0, Lcom/google/protobuf/f$j$a;

    invoke-direct {v0}, Lcom/google/protobuf/f$j$a;-><init>()V

    .line 5126
    new-instance v1, Lcom/google/protobuf/f$j;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/f$j;-><init>(Lcom/google/protobuf/g;)V

    iput-object v1, v0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    .line 5127
    return-object v0
.end method

.method static synthetic ee()Lcom/google/protobuf/f$j$a;
    .registers 1

    .prologue
    .line 5116
    invoke-static {}, Lcom/google/protobuf/f$j$a;->dZ()Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 5116
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$j$a;->n(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 5116
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$j$a;->p(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/f$j$b;)Lcom/google/protobuf/f$j$a;
    .registers 4

    .prologue
    .line 5366
    if-nez p1, :cond_8

    .line 5367
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5369
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$j;->e(Lcom/google/protobuf/f$j;Z)Z

    .line 5370
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$j;->a(Lcom/google/protobuf/f$j;Lcom/google/protobuf/f$j$b;)Lcom/google/protobuf/f$j$b;

    .line 5371
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 5149
    invoke-static {}, Lcom/google/protobuf/f$j;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/f$j$a;->ea()Lcom/google/protobuf/f$j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/f$j$a;->eb()Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/f$j$a;->ec()Lcom/google/protobuf/f$j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/f$j$a;->ec()Lcom/google/protobuf/f$j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/f$j$a;->eb()Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 5116
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$j$a;->n(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic bM()Lcom/google/protobuf/q$c;
    .registers 2

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/f$j$a;->ea()Lcom/google/protobuf/f$j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic bN()Lcom/google/protobuf/q$b;
    .registers 2

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/f$j$a;->eb()Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/f$j$a;->eb()Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 5116
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$j$a;->n(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/f$j$a;->eb()Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/protobuf/f$p;)Lcom/google/protobuf/f$j$a;
    .registers 4

    .prologue
    .line 5455
    if-nez p1, :cond_8

    .line 5456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5458
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    invoke-static {v0}, Lcom/google/protobuf/f$j;->d(Lcom/google/protobuf/f$j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5459
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$j;->a(Lcom/google/protobuf/f$j;Ljava/util/List;)Ljava/util/List;

    .line 5461
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    invoke-static {v0}, Lcom/google/protobuf/f$j;->d(Lcom/google/protobuf/f$j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5462
    return-object p0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 5116
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$j$a;->p(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/google/protobuf/f$j;)Lcom/google/protobuf/f$j$a;
    .registers 4

    .prologue
    .line 5199
    invoke-static {}, Lcom/google/protobuf/f$j;->dG()Lcom/google/protobuf/f$j;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5229
    :goto_6
    return-object p0

    .line 5200
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/f$j;->dI()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5201
    invoke-virtual {p1}, Lcom/google/protobuf/f$j;->dJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$j$a;->u(Ljava/lang/String;)Lcom/google/protobuf/f$j$a;

    .line 5203
    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/f$j;->dK()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5204
    invoke-virtual {p1}, Lcom/google/protobuf/f$j;->dL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$j$a;->v(Ljava/lang/String;)Lcom/google/protobuf/f$j$a;

    .line 5206
    :cond_21
    invoke-virtual {p1}, Lcom/google/protobuf/f$j;->dM()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 5207
    invoke-virtual {p1}, Lcom/google/protobuf/f$j;->dN()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$j$a;->g(Z)Lcom/google/protobuf/f$j$a;

    .line 5209
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protobuf/f$j;->dO()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 5210
    invoke-virtual {p1}, Lcom/google/protobuf/f$j;->dP()Lcom/google/protobuf/f$j$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$j$a;->a(Lcom/google/protobuf/f$j$b;)Lcom/google/protobuf/f$j$a;

    .line 5212
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protobuf/f$j;->dQ()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 5213
    invoke-virtual {p1}, Lcom/google/protobuf/f$j;->dR()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$j$a;->h(Z)Lcom/google/protobuf/f$j$a;

    .line 5215
    :cond_48
    invoke-virtual {p1}, Lcom/google/protobuf/f$j;->dS()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 5216
    invoke-virtual {p1}, Lcom/google/protobuf/f$j;->dT()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$j$a;->i(Z)Lcom/google/protobuf/f$j$a;

    .line 5218
    :cond_55
    invoke-virtual {p1}, Lcom/google/protobuf/f$j;->dU()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 5219
    invoke-virtual {p1}, Lcom/google/protobuf/f$j;->dV()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$j$a;->j(Z)Lcom/google/protobuf/f$j$a;

    .line 5221
    :cond_62
    invoke-static {p1}, Lcom/google/protobuf/f$j;->d(Lcom/google/protobuf/f$j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 5222
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    invoke-static {v0}, Lcom/google/protobuf/f$j;->d(Lcom/google/protobuf/f$j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 5223
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$j;->a(Lcom/google/protobuf/f$j;Ljava/util/List;)Ljava/util/List;

    .line 5225
    :cond_82
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    invoke-static {v0}, Lcom/google/protobuf/f$j;->d(Lcom/google/protobuf/f$j;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$j;->d(Lcom/google/protobuf/f$j;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5227
    :cond_8f
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$j$a;->a(Lcom/google/protobuf/q$c;)V

    .line 5228
    invoke-virtual {p1}, Lcom/google/protobuf/f$j;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$j$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto/16 :goto_6
.end method

.method protected ea()Lcom/google/protobuf/f$j;
    .registers 2

    .prologue
    .line 5131
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    return-object v0
.end method

.method public eb()Lcom/google/protobuf/f$j$a;
    .registers 3

    .prologue
    .line 5144
    invoke-static {}, Lcom/google/protobuf/f$j$a;->dZ()Lcom/google/protobuf/f$j$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/f$j$a;->e(Lcom/google/protobuf/f$j;)Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method

.method public ec()Lcom/google/protobuf/f$j;
    .registers 2

    .prologue
    .line 5160
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/f$j$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 5161
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    invoke-static {v0}, Lcom/google/protobuf/f$j$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 5163
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$j$a;->ed()Lcom/google/protobuf/f$j;

    move-result-object v0

    return-object v0
.end method

.method public ed()Lcom/google/protobuf/f$j;
    .registers 3

    .prologue
    .line 5176
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    if-nez v0, :cond_c

    .line 5177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5180
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    invoke-static {v0}, Lcom/google/protobuf/f$j;->d(Lcom/google/protobuf/f$j;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 5181
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    iget-object v1, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    invoke-static {v1}, Lcom/google/protobuf/f$j;->d(Lcom/google/protobuf/f$j;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$j;->a(Lcom/google/protobuf/f$j;Ljava/util/List;)Ljava/util/List;

    .line 5184
    :cond_25
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    .line 5185
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    .line 5186
    return-object v0
.end method

.method public g(Z)Lcom/google/protobuf/f$j$a;
    .registers 4

    .prologue
    .line 5348
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$j;->c(Lcom/google/protobuf/f$j;Z)Z

    .line 5349
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$j;->d(Lcom/google/protobuf/f$j;Z)Z

    .line 5350
    return-object p0
.end method

.method public h(Z)Lcom/google/protobuf/f$j$a;
    .registers 4

    .prologue
    .line 5387
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$j;->f(Lcom/google/protobuf/f$j;Z)Z

    .line 5388
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$j;->g(Lcom/google/protobuf/f$j;Z)Z

    .line 5389
    return-object p0
.end method

.method public i(Z)Lcom/google/protobuf/f$j$a;
    .registers 4

    .prologue
    .line 5405
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$j;->h(Lcom/google/protobuf/f$j;Z)Z

    .line 5406
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$j;->i(Lcom/google/protobuf/f$j;Z)Z

    .line 5407
    return-object p0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 5157
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    invoke-virtual {v0}, Lcom/google/protobuf/f$j;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public j(Z)Lcom/google/protobuf/f$j$a;
    .registers 4

    .prologue
    .line 5423
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$j;->j(Lcom/google/protobuf/f$j;Z)Z

    .line 5424
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$j;->k(Lcom/google/protobuf/f$j;Z)Z

    .line 5425
    return-object p0
.end method

.method public n(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$j$a;
    .registers 6

    .prologue
    .line 5236
    invoke-virtual {p0}, Lcom/google/protobuf/f$j$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 5240
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 5241
    sparse-switch v1, :sswitch_data_78

    .line 5246
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/protobuf/f$j$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 5248
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$j$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 5249
    :goto_1c
    return-object p0

    .line 5243
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$j$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 5254
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$j$a;->u(Ljava/lang/String;)Lcom/google/protobuf/f$j$a;

    goto :goto_8

    .line 5258
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$j$a;->v(Ljava/lang/String;)Lcom/google/protobuf/f$j$a;

    goto :goto_8

    .line 5262
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/d;->o()I

    move-result v1

    .line 5263
    invoke-static {v1}, Lcom/google/protobuf/f$j$b;->S(I)Lcom/google/protobuf/f$j$b;

    move-result-object v2

    .line 5264
    if-nez v2, :cond_45

    .line 5265
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/z$a;->j(II)Lcom/google/protobuf/z$a;

    goto :goto_8

    .line 5267
    :cond_45
    invoke-virtual {p0, v2}, Lcom/google/protobuf/f$j$a;->a(Lcom/google/protobuf/f$j$b;)Lcom/google/protobuf/f$j$a;

    goto :goto_8

    .line 5272
    :sswitch_49
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$j$a;->g(Z)Lcom/google/protobuf/f$j$a;

    goto :goto_8

    .line 5276
    :sswitch_51
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$j$a;->h(Z)Lcom/google/protobuf/f$j$a;

    goto :goto_8

    .line 5280
    :sswitch_59
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$j$a;->i(Z)Lcom/google/protobuf/f$j$a;

    goto :goto_8

    .line 5284
    :sswitch_61
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$j$a;->j(Z)Lcom/google/protobuf/f$j$a;

    goto :goto_8

    .line 5288
    :sswitch_69
    invoke-static {}, Lcom/google/protobuf/f$p;->fG()Lcom/google/protobuf/f$p$a;

    move-result-object v1

    .line 5289
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 5290
    invoke-virtual {v1}, Lcom/google/protobuf/f$p$a;->fN()Lcom/google/protobuf/f$p;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$j$a;->d(Lcom/google/protobuf/f$p;)Lcom/google/protobuf/f$j$a;

    goto :goto_8

    .line 5241
    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x42 -> :sswitch_2d
        0x48 -> :sswitch_35
        0x50 -> :sswitch_49
        0x80 -> :sswitch_51
        0x88 -> :sswitch_59
        0x90 -> :sswitch_61
        0x1f3a -> :sswitch_69
    .end sparse-switch
.end method

.method public p(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$j$a;
    .registers 3

    .prologue
    .line 5190
    instance-of v0, p1, Lcom/google/protobuf/f$j;

    if-eqz v0, :cond_b

    .line 5191
    check-cast p1, Lcom/google/protobuf/f$j;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$j$a;->e(Lcom/google/protobuf/f$j;)Lcom/google/protobuf/f$j$a;

    move-result-object p0

    .line 5194
    :goto_a
    return-object p0

    .line 5193
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$b;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public u(Ljava/lang/String;)Lcom/google/protobuf/f$j$a;
    .registers 4

    .prologue
    .line 5306
    if-nez p1, :cond_8

    .line 5307
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5309
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$j;->a(Lcom/google/protobuf/f$j;Z)Z

    .line 5310
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$j;->a(Lcom/google/protobuf/f$j;Ljava/lang/String;)Ljava/lang/String;

    .line 5311
    return-object p0
.end method

.method public v(Ljava/lang/String;)Lcom/google/protobuf/f$j$a;
    .registers 4

    .prologue
    .line 5327
    if-nez p1, :cond_8

    .line 5328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5330
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$j;->b(Lcom/google/protobuf/f$j;Z)Z

    .line 5331
    iget-object v0, p0, Lcom/google/protobuf/f$j$a;->ca:Lcom/google/protobuf/f$j;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$j;->b(Lcom/google/protobuf/f$j;Ljava/lang/String;)Ljava/lang/String;

    .line 5332
    return-object p0
.end method
