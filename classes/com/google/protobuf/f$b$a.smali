.class public final Lcom/google/protobuf/f$b$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private at:Lcom/google/protobuf/f$b;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 3262
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method static synthetic bA()Lcom/google/protobuf/f$b$a;
    .registers 1

    .prologue
    .line 3257
    invoke-static {}, Lcom/google/protobuf/f$b$a;->bv()Lcom/google/protobuf/f$b$a;

    move-result-object v0

    return-object v0
.end method

.method private static bv()Lcom/google/protobuf/f$b$a;
    .registers 3

    .prologue
    .line 3265
    new-instance v0, Lcom/google/protobuf/f$b$a;

    invoke-direct {v0}, Lcom/google/protobuf/f$b$a;-><init>()V

    .line 3266
    new-instance v1, Lcom/google/protobuf/f$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/f$b;-><init>(Lcom/google/protobuf/g;)V

    iput-object v1, v0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    .line 3267
    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 3257
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$b$a;->f(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 3257
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$b$a;->h(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$b$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/f$c;)Lcom/google/protobuf/f$b$a;
    .registers 4

    .prologue
    .line 3481
    if-nez p1, :cond_8

    .line 3482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3484
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$b;->b(Lcom/google/protobuf/f$b;Z)Z

    .line 3485
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$b;->a(Lcom/google/protobuf/f$b;Lcom/google/protobuf/f$c;)Lcom/google/protobuf/f$c;

    .line 3486
    return-object p0
.end method

.method public a(Lcom/google/protobuf/f$d;)Lcom/google/protobuf/f$b$a;
    .registers 4

    .prologue
    .line 3444
    if-nez p1, :cond_8

    .line 3445
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3447
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    invoke-static {v0}, Lcom/google/protobuf/f$b;->c(Lcom/google/protobuf/f$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3448
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$b;->a(Lcom/google/protobuf/f$b;Ljava/util/List;)Ljava/util/List;

    .line 3450
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    invoke-static {v0}, Lcom/google/protobuf/f$b;->c(Lcom/google/protobuf/f$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3451
    return-object p0
.end method

.method public aH()Z
    .registers 2

    .prologue
    .line 3475
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    invoke-virtual {v0}, Lcom/google/protobuf/f$b;->aH()Z

    move-result v0

    return v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 3289
    invoke-static {}, Lcom/google/protobuf/f$b;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/f$b$a;->bw()Lcom/google/protobuf/f$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/f$b$a;->bx()Lcom/google/protobuf/f$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/f$b$a;->by()Lcom/google/protobuf/f$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/f$b$a;->by()Lcom/google/protobuf/f$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/f$b$a;->bx()Lcom/google/protobuf/f$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 3257
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$b$a;->f(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$b$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/protobuf/f$c;)Lcom/google/protobuf/f$b$a;
    .registers 4

    .prologue
    .line 3494
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    invoke-virtual {v0}, Lcom/google/protobuf/f$b;->aH()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    invoke-static {v0}, Lcom/google/protobuf/f$b;->d(Lcom/google/protobuf/f$b;)Lcom/google/protobuf/f$c;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/f$c;->bB()Lcom/google/protobuf/f$c;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 3496
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    iget-object v1, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    invoke-static {v1}, Lcom/google/protobuf/f$b;->d(Lcom/google/protobuf/f$b;)Lcom/google/protobuf/f$c;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/f$c;->c(Lcom/google/protobuf/f$c;)Lcom/google/protobuf/f$c$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/f$c$a;->e(Lcom/google/protobuf/f$c;)Lcom/google/protobuf/f$c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/f$c$a;->bL()Lcom/google/protobuf/f$c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$b;->a(Lcom/google/protobuf/f$b;Lcom/google/protobuf/f$c;)Lcom/google/protobuf/f$c;

    .line 3501
    :goto_2b
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$b;->b(Lcom/google/protobuf/f$b;Z)Z

    .line 3502
    return-object p0

    .line 3499
    :cond_32
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$b;->a(Lcom/google/protobuf/f$b;Lcom/google/protobuf/f$c;)Lcom/google/protobuf/f$c;

    goto :goto_2b
.end method

.method public br()Lcom/google/protobuf/f$c;
    .registers 2

    .prologue
    .line 3478
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    invoke-virtual {v0}, Lcom/google/protobuf/f$b;->br()Lcom/google/protobuf/f$c;

    move-result-object v0

    return-object v0
.end method

.method protected bw()Lcom/google/protobuf/f$b;
    .registers 2

    .prologue
    .line 3271
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    return-object v0
.end method

.method public bx()Lcom/google/protobuf/f$b$a;
    .registers 3

    .prologue
    .line 3284
    invoke-static {}, Lcom/google/protobuf/f$b$a;->bv()Lcom/google/protobuf/f$b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/f$b$a;->e(Lcom/google/protobuf/f$b;)Lcom/google/protobuf/f$b$a;

    move-result-object v0

    return-object v0
.end method

.method public by()Lcom/google/protobuf/f$b;
    .registers 2

    .prologue
    .line 3300
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/f$b$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3301
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    invoke-static {v0}, Lcom/google/protobuf/f$b$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 3303
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$b$a;->bz()Lcom/google/protobuf/f$b;

    move-result-object v0

    return-object v0
.end method

.method public bz()Lcom/google/protobuf/f$b;
    .registers 3

    .prologue
    .line 3316
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    if-nez v0, :cond_c

    .line 3317
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3320
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    invoke-static {v0}, Lcom/google/protobuf/f$b;->c(Lcom/google/protobuf/f$b;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 3321
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    iget-object v1, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    invoke-static {v1}, Lcom/google/protobuf/f$b;->c(Lcom/google/protobuf/f$b;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$b;->a(Lcom/google/protobuf/f$b;Ljava/util/List;)Ljava/util/List;

    .line 3324
    :cond_25
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    .line 3325
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    .line 3326
    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/f$b$a;->bx()Lcom/google/protobuf/f$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 3257
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$b$a;->f(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/f$b$a;->bx()Lcom/google/protobuf/f$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 3257
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$b$a;->h(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$b$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/google/protobuf/f$b;)Lcom/google/protobuf/f$b$a;
    .registers 4

    .prologue
    .line 3339
    invoke-static {}, Lcom/google/protobuf/f$b;->bo()Lcom/google/protobuf/f$b;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3353
    :goto_6
    return-object p0

    .line 3340
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/f$b;->hasName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3341
    invoke-virtual {p1}, Lcom/google/protobuf/f$b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$b$a;->k(Ljava/lang/String;)Lcom/google/protobuf/f$b$a;

    .line 3343
    :cond_14
    invoke-static {p1}, Lcom/google/protobuf/f$b;->c(Lcom/google/protobuf/f$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 3344
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    invoke-static {v0}, Lcom/google/protobuf/f$b;->c(Lcom/google/protobuf/f$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3345
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$b;->a(Lcom/google/protobuf/f$b;Ljava/util/List;)Ljava/util/List;

    .line 3347
    :cond_34
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    invoke-static {v0}, Lcom/google/protobuf/f$b;->c(Lcom/google/protobuf/f$b;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$b;->c(Lcom/google/protobuf/f$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3349
    :cond_41
    invoke-virtual {p1}, Lcom/google/protobuf/f$b;->aH()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 3350
    invoke-virtual {p1}, Lcom/google/protobuf/f$b;->br()Lcom/google/protobuf/f$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$b$a;->b(Lcom/google/protobuf/f$c;)Lcom/google/protobuf/f$b$a;

    .line 3352
    :cond_4e
    invoke-virtual {p1}, Lcom/google/protobuf/f$b;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$b$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public f(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$b$a;
    .registers 6

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/google/protobuf/f$b$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 3364
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 3365
    sparse-switch v1, :sswitch_data_58

    .line 3370
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/protobuf/f$b$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3372
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$b$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 3373
    :goto_1c
    return-object p0

    .line 3367
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$b$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 3378
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$b$a;->k(Ljava/lang/String;)Lcom/google/protobuf/f$b$a;

    goto :goto_8

    .line 3382
    :sswitch_2d
    invoke-static {}, Lcom/google/protobuf/f$d;->bT()Lcom/google/protobuf/f$d$a;

    move-result-object v1

    .line 3383
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 3384
    invoke-virtual {v1}, Lcom/google/protobuf/f$d$a;->ca()Lcom/google/protobuf/f$d;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$b$a;->a(Lcom/google/protobuf/f$d;)Lcom/google/protobuf/f$b$a;

    goto :goto_8

    .line 3388
    :sswitch_3c
    invoke-static {}, Lcom/google/protobuf/f$c;->bE()Lcom/google/protobuf/f$c$a;

    move-result-object v1

    .line 3389
    invoke-virtual {p0}, Lcom/google/protobuf/f$b$a;->aH()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 3390
    invoke-virtual {p0}, Lcom/google/protobuf/f$b$a;->br()Lcom/google/protobuf/f$c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/f$c$a;->e(Lcom/google/protobuf/f$c;)Lcom/google/protobuf/f$c$a;

    .line 3392
    :cond_4d
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 3393
    invoke-virtual {v1}, Lcom/google/protobuf/f$c$a;->bL()Lcom/google/protobuf/f$c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$b$a;->a(Lcom/google/protobuf/f$c;)Lcom/google/protobuf/f$b$a;

    goto :goto_8

    .line 3365
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_3c
    .end sparse-switch
.end method

.method public h(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$b$a;
    .registers 3

    .prologue
    .line 3330
    instance-of v0, p1, Lcom/google/protobuf/f$b;

    if-eqz v0, :cond_b

    .line 3331
    check-cast p1, Lcom/google/protobuf/f$b;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$b$a;->e(Lcom/google/protobuf/f$b;)Lcom/google/protobuf/f$b$a;

    move-result-object p0

    .line 3334
    :goto_a
    return-object p0

    .line 3333
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 3297
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    invoke-virtual {v0}, Lcom/google/protobuf/f$b;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public k(Ljava/lang/String;)Lcom/google/protobuf/f$b$a;
    .registers 4

    .prologue
    .line 3409
    if-nez p1, :cond_8

    .line 3410
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3412
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$b;->a(Lcom/google/protobuf/f$b;Z)Z

    .line 3413
    iget-object v0, p0, Lcom/google/protobuf/f$b$a;->at:Lcom/google/protobuf/f$b;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$b;->a(Lcom/google/protobuf/f$b;Ljava/lang/String;)Ljava/lang/String;

    .line 3414
    return-object p0
.end method
