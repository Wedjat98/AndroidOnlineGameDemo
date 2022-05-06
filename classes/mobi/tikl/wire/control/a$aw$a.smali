.class public final Lmobi/tikl/wire/control/a$aw$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private yo:Lmobi/tikl/wire/control/a$aw;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13235
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static JT()Lmobi/tikl/wire/control/a$aw$a;
    .registers 3

    .prologue
    .line 13238
    new-instance v0, Lmobi/tikl/wire/control/a$aw$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$aw$a;-><init>()V

    .line 13239
    new-instance v1, Lmobi/tikl/wire/control/a$aw;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$aw;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    .line 13240
    return-object v0
.end method

.method static synthetic JY()Lmobi/tikl/wire/control/a$aw$a;
    .registers 1

    .prologue
    .line 13230
    invoke-static {}, Lmobi/tikl/wire/control/a$aw$a;->JT()Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected JU()Lmobi/tikl/wire/control/a$aw;
    .registers 2

    .prologue
    .line 13244
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    return-object v0
.end method

.method public JV()Lmobi/tikl/wire/control/a$aw$a;
    .registers 3

    .prologue
    .line 13257
    invoke-static {}, Lmobi/tikl/wire/control/a$aw$a;->JT()Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$aw$a;->f(Lmobi/tikl/wire/control/a$aw;)Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    return-object v0
.end method

.method public JW()Lmobi/tikl/wire/control/a$aw;
    .registers 2

    .prologue
    .line 13273
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 13274
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aw$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 13276
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw$a;->JX()Lmobi/tikl/wire/control/a$aw;

    move-result-object v0

    return-object v0
.end method

.method public JX()Lmobi/tikl/wire/control/a$aw;
    .registers 3

    .prologue
    .line 13289
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    if-nez v0, :cond_c

    .line 13290
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13293
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aw;->d(Lmobi/tikl/wire/control/a$aw;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 13294
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$aw;->d(Lmobi/tikl/wire/control/a$aw;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aw;->a(Lmobi/tikl/wire/control/a$aw;Ljava/util/List;)Ljava/util/List;

    .line 13297
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    .line 13298
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    .line 13299
    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 13230
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$aw$a;->aS(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 13230
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$aw$a;->aU(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    return-object v0
.end method

.method public aO(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aw$a;
    .registers 4

    .prologue
    .line 13375
    if-nez p1, :cond_8

    .line 13376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13378
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aw;->a(Lmobi/tikl/wire/control/a$aw;Z)Z

    .line 13379
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$aw;->a(Lmobi/tikl/wire/control/a$aw;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 13380
    return-object p0
.end method

.method public aP(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aw$a;
    .registers 4

    .prologue
    .line 13388
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$aw;->od()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aw;->e(Lmobi/tikl/wire/control/a$aw;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 13390
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$aw;->e(Lmobi/tikl/wire/control/a$aw;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aw;->a(Lmobi/tikl/wire/control/a$aw;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 13395
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aw;->a(Lmobi/tikl/wire/control/a$aw;Z)Z

    .line 13396
    return-object p0

    .line 13393
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$aw;->a(Lmobi/tikl/wire/control/a$aw;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public aQ(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aw$a;
    .registers 4

    .prologue
    .line 13426
    if-nez p1, :cond_8

    .line 13427
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13429
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aw;->d(Lmobi/tikl/wire/control/a$aw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 13430
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aw;->a(Lmobi/tikl/wire/control/a$aw;Ljava/util/List;)Ljava/util/List;

    .line 13432
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aw;->d(Lmobi/tikl/wire/control/a$aw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13433
    return-object p0
.end method

.method public aS(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$aw$a;
    .registers 6

    .prologue
    .line 13330
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 13334
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 13335
    sparse-switch v1, :sswitch_data_50

    .line 13340
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$aw$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 13342
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$aw$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 13343
    :goto_1c
    return-object p0

    .line 13337
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$aw$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 13348
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 13349
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw$a;->od()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 13350
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw$a;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 13352
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 13353
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$aw$a;->aO(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aw$a;

    goto :goto_8

    .line 13357
    :sswitch_41
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 13358
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 13359
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$aw$a;->aQ(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aw$a;

    goto :goto_8

    .line 13335
    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_1d
        0x12 -> :sswitch_25
        0x1a -> :sswitch_41
    .end sparse-switch
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 13262
    invoke-static {}, Lmobi/tikl/wire/control/a$aw;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public aU(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$aw$a;
    .registers 3

    .prologue
    .line 13303
    instance-of v0, p1, Lmobi/tikl/wire/control/a$aw;

    if-eqz v0, :cond_b

    .line 13304
    check-cast p1, Lmobi/tikl/wire/control/a$aw;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$aw$a;->f(Lmobi/tikl/wire/control/a$aw;)Lmobi/tikl/wire/control/a$aw$a;

    move-result-object p0

    .line 13307
    :goto_a
    return-object p0

    .line 13306
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 13230
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw$a;->JU()Lmobi/tikl/wire/control/a$aw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 13230
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw$a;->JV()Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 13230
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw$a;->JW()Lmobi/tikl/wire/control/a$aw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 13230
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw$a;->JW()Lmobi/tikl/wire/control/a$aw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 13230
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw$a;->JV()Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 13230
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$aw$a;->aS(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 13230
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw$a;->JV()Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 13230
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$aw$a;->aS(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 13230
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw$a;->JV()Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 13230
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$aw$a;->aU(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    return-object v0
.end method

.method public f(Lmobi/tikl/wire/control/a$aw;)Lmobi/tikl/wire/control/a$aw$a;
    .registers 4

    .prologue
    .line 13312
    invoke-static {}, Lmobi/tikl/wire/control/a$aw;->JO()Lmobi/tikl/wire/control/a$aw;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 13323
    :goto_6
    return-object p0

    .line 13313
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$aw;->od()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 13314
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$aw;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$aw$a;->aP(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$aw$a;

    .line 13316
    :cond_14
    invoke-static {p1}, Lmobi/tikl/wire/control/a$aw;->d(Lmobi/tikl/wire/control/a$aw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 13317
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aw;->d(Lmobi/tikl/wire/control/a$aw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 13318
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aw;->a(Lmobi/tikl/wire/control/a$aw;Ljava/util/List;)Ljava/util/List;

    .line 13320
    :cond_34
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aw;->d(Lmobi/tikl/wire/control/a$aw;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$aw;->d(Lmobi/tikl/wire/control/a$aw;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13322
    :cond_41
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$aw;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$aw$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 13270
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$aw;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 13369
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$aw;->od()Z

    move-result v0

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 13372
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw$a;->yo:Lmobi/tikl/wire/control/a$aw;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$aw;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method
