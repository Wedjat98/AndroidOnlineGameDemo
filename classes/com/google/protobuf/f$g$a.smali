.class public final Lcom/google/protobuf/f$g$a;
.super Lcom/google/protobuf/q$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private bw:Lcom/google/protobuf/f$g;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 6200
    invoke-direct {p0}, Lcom/google/protobuf/q$b;-><init>()V

    return-void
.end method

.method private static cU()Lcom/google/protobuf/f$g$a;
    .registers 3

    .prologue
    .line 6203
    new-instance v0, Lcom/google/protobuf/f$g$a;

    invoke-direct {v0}, Lcom/google/protobuf/f$g$a;-><init>()V

    .line 6204
    new-instance v1, Lcom/google/protobuf/f$g;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/f$g;-><init>(Lcom/google/protobuf/g;)V

    iput-object v1, v0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    .line 6205
    return-object v0
.end method

.method static synthetic cZ()Lcom/google/protobuf/f$g$a;
    .registers 1

    .prologue
    .line 6194
    invoke-static {}, Lcom/google/protobuf/f$g$a;->cU()Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 6194
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$g$a;->k(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 6194
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$g$a;->m(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/f$g$b;)Lcom/google/protobuf/f$g$a;
    .registers 4

    .prologue
    .line 6363
    if-nez p1, :cond_8

    .line 6364
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6366
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$g;->a(Lcom/google/protobuf/f$g;Z)Z

    .line 6367
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$g;->a(Lcom/google/protobuf/f$g;Lcom/google/protobuf/f$g$b;)Lcom/google/protobuf/f$g$b;

    .line 6368
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 6227
    invoke-static {}, Lcom/google/protobuf/f$g;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/f$g$a;->cV()Lcom/google/protobuf/f$g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/f$g$a;->cW()Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/f$g$a;->cX()Lcom/google/protobuf/f$g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/f$g$a;->cX()Lcom/google/protobuf/f$g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/f$g$a;->cW()Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 6194
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$g$a;->k(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic bM()Lcom/google/protobuf/q$c;
    .registers 2

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/f$g$a;->cV()Lcom/google/protobuf/f$g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic bN()Lcom/google/protobuf/q$b;
    .registers 2

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/f$g$a;->cW()Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/f$g$a;->cW()Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/protobuf/f$p;)Lcom/google/protobuf/f$g$a;
    .registers 4

    .prologue
    .line 6455
    if-nez p1, :cond_8

    .line 6456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6458
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    invoke-static {v0}, Lcom/google/protobuf/f$g;->d(Lcom/google/protobuf/f$g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 6459
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$g;->a(Lcom/google/protobuf/f$g;Ljava/util/List;)Ljava/util/List;

    .line 6461
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    invoke-static {v0}, Lcom/google/protobuf/f$g;->d(Lcom/google/protobuf/f$g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6462
    return-object p0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 6194
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$g$a;->k(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method

.method protected cV()Lcom/google/protobuf/f$g;
    .registers 2

    .prologue
    .line 6209
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    return-object v0
.end method

.method public cW()Lcom/google/protobuf/f$g$a;
    .registers 3

    .prologue
    .line 6222
    invoke-static {}, Lcom/google/protobuf/f$g$a;->cU()Lcom/google/protobuf/f$g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/f$g$a;->e(Lcom/google/protobuf/f$g;)Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method

.method public cX()Lcom/google/protobuf/f$g;
    .registers 2

    .prologue
    .line 6238
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/f$g$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 6239
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    invoke-static {v0}, Lcom/google/protobuf/f$g$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 6241
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$g$a;->cY()Lcom/google/protobuf/f$g;

    move-result-object v0

    return-object v0
.end method

.method public cY()Lcom/google/protobuf/f$g;
    .registers 3

    .prologue
    .line 6254
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    if-nez v0, :cond_c

    .line 6255
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6258
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    invoke-static {v0}, Lcom/google/protobuf/f$g;->d(Lcom/google/protobuf/f$g;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 6259
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    iget-object v1, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    invoke-static {v1}, Lcom/google/protobuf/f$g;->d(Lcom/google/protobuf/f$g;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$g;->a(Lcom/google/protobuf/f$g;Ljava/util/List;)Ljava/util/List;

    .line 6262
    :cond_25
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    .line 6263
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    .line 6264
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/f$g$a;->cW()Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 6194
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$g$a;->m(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/google/protobuf/f$g;)Lcom/google/protobuf/f$g$a;
    .registers 4

    .prologue
    .line 6277
    invoke-static {}, Lcom/google/protobuf/f$g;->cH()Lcom/google/protobuf/f$g;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 6298
    :goto_6
    return-object p0

    .line 6278
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/f$g;->cJ()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6279
    invoke-virtual {p1}, Lcom/google/protobuf/f$g;->cK()Lcom/google/protobuf/f$g$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$g$a;->a(Lcom/google/protobuf/f$g$b;)Lcom/google/protobuf/f$g$a;

    .line 6281
    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/f$g;->cL()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6282
    invoke-virtual {p1}, Lcom/google/protobuf/f$g;->cM()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$g$a;->e(Z)Lcom/google/protobuf/f$g$a;

    .line 6284
    :cond_21
    invoke-virtual {p1}, Lcom/google/protobuf/f$g;->cN()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 6285
    invoke-virtual {p1}, Lcom/google/protobuf/f$g;->cO()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$g$a;->f(Z)Lcom/google/protobuf/f$g$a;

    .line 6287
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protobuf/f$g;->cP()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 6288
    invoke-virtual {p1}, Lcom/google/protobuf/f$g;->cQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$g$a;->q(Ljava/lang/String;)Lcom/google/protobuf/f$g$a;

    .line 6290
    :cond_3b
    invoke-static {p1}, Lcom/google/protobuf/f$g;->d(Lcom/google/protobuf/f$g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    .line 6291
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    invoke-static {v0}, Lcom/google/protobuf/f$g;->d(Lcom/google/protobuf/f$g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 6292
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$g;->a(Lcom/google/protobuf/f$g;Ljava/util/List;)Ljava/util/List;

    .line 6294
    :cond_5b
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    invoke-static {v0}, Lcom/google/protobuf/f$g;->d(Lcom/google/protobuf/f$g;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$g;->d(Lcom/google/protobuf/f$g;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6296
    :cond_68
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$g$a;->a(Lcom/google/protobuf/q$c;)V

    .line 6297
    invoke-virtual {p1}, Lcom/google/protobuf/f$g;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$g$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public e(Z)Lcom/google/protobuf/f$g$a;
    .registers 4

    .prologue
    .line 6384
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$g;->b(Lcom/google/protobuf/f$g;Z)Z

    .line 6385
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$g;->c(Lcom/google/protobuf/f$g;Z)Z

    .line 6386
    return-object p0
.end method

.method public f(Z)Lcom/google/protobuf/f$g$a;
    .registers 4

    .prologue
    .line 6402
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$g;->d(Lcom/google/protobuf/f$g;Z)Z

    .line 6403
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$g;->e(Lcom/google/protobuf/f$g;Z)Z

    .line 6404
    return-object p0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 6235
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    invoke-virtual {v0}, Lcom/google/protobuf/f$g;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public k(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$g$a;
    .registers 6

    .prologue
    .line 6305
    invoke-virtual {p0}, Lcom/google/protobuf/f$g$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 6309
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 6310
    sparse-switch v1, :sswitch_data_60

    .line 6315
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/protobuf/f$g$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 6317
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$g$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 6318
    :goto_1c
    return-object p0

    .line 6312
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$g$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 6323
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->o()I

    move-result v1

    .line 6324
    invoke-static {v1}, Lcom/google/protobuf/f$g$b;->O(I)Lcom/google/protobuf/f$g$b;

    move-result-object v2

    .line 6325
    if-nez v2, :cond_34

    .line 6326
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/z$a;->j(II)Lcom/google/protobuf/z$a;

    goto :goto_8

    .line 6328
    :cond_34
    invoke-virtual {p0, v2}, Lcom/google/protobuf/f$g$a;->a(Lcom/google/protobuf/f$g$b;)Lcom/google/protobuf/f$g$a;

    goto :goto_8

    .line 6333
    :sswitch_38
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$g$a;->e(Z)Lcom/google/protobuf/f$g$a;

    goto :goto_8

    .line 6337
    :sswitch_40
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$g$a;->f(Z)Lcom/google/protobuf/f$g$a;

    goto :goto_8

    .line 6341
    :sswitch_48
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$g$a;->q(Ljava/lang/String;)Lcom/google/protobuf/f$g$a;

    goto :goto_8

    .line 6345
    :sswitch_50
    invoke-static {}, Lcom/google/protobuf/f$p;->fG()Lcom/google/protobuf/f$p$a;

    move-result-object v1

    .line 6346
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 6347
    invoke-virtual {v1}, Lcom/google/protobuf/f$p$a;->fN()Lcom/google/protobuf/f$p;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$g$a;->c(Lcom/google/protobuf/f$p;)Lcom/google/protobuf/f$g$a;

    goto :goto_8

    .line 6310
    nop

    :sswitch_data_60
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x10 -> :sswitch_38
        0x18 -> :sswitch_40
        0x4a -> :sswitch_48
        0x1f3a -> :sswitch_50
    .end sparse-switch
.end method

.method public m(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$g$a;
    .registers 3

    .prologue
    .line 6268
    instance-of v0, p1, Lcom/google/protobuf/f$g;

    if-eqz v0, :cond_b

    .line 6269
    check-cast p1, Lcom/google/protobuf/f$g;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$g$a;->e(Lcom/google/protobuf/f$g;)Lcom/google/protobuf/f$g$a;

    move-result-object p0

    .line 6272
    :goto_a
    return-object p0

    .line 6271
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$b;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public q(Ljava/lang/String;)Lcom/google/protobuf/f$g$a;
    .registers 4

    .prologue
    .line 6420
    if-nez p1, :cond_8

    .line 6421
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6423
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$g;->f(Lcom/google/protobuf/f$g;Z)Z

    .line 6424
    iget-object v0, p0, Lcom/google/protobuf/f$g$a;->bw:Lcom/google/protobuf/f$g;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$g;->a(Lcom/google/protobuf/f$g;Ljava/lang/String;)Ljava/lang/String;

    .line 6425
    return-object p0
.end method
