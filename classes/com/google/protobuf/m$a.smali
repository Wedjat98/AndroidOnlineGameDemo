.class public final Lcom/google/protobuf/m$a;
.super Lcom/google/protobuf/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final eb:Lcom/google/protobuf/l$a;

.field private ec:Lcom/google/protobuf/p;

.field private ed:Lcom/google/protobuf/z;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/l$a;)V
    .registers 3

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/google/protobuf/a$a;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/google/protobuf/m$a;->eb:Lcom/google/protobuf/l$a;

    .line 260
    invoke-static {}, Lcom/google/protobuf/p;->gP()Lcom/google/protobuf/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/m$a;->ec:Lcom/google/protobuf/p;

    .line 261
    invoke-static {}, Lcom/google/protobuf/z;->hi()Lcom/google/protobuf/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/m$a;->ed:Lcom/google/protobuf/z;

    .line 262
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/l$a;Lcom/google/protobuf/d;)V
    .registers 3

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/google/protobuf/m$a;-><init>(Lcom/google/protobuf/l$a;)V

    return-void
.end method

.method private e(Lcom/google/protobuf/l$f;)V
    .registers 4

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->gv()Lcom/google/protobuf/l$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/m$a;->eb:Lcom/google/protobuf/l$a;

    if-eq v0, v1, :cond_10

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_10
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/google/protobuf/m$a;->x(Lcom/google/protobuf/t;)Lcom/google/protobuf/m$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/z;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/google/protobuf/m$a;->d(Lcom/google/protobuf/z;)Lcom/google/protobuf/m$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/m$a;
    .registers 4

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/google/protobuf/m$a;->e(Lcom/google/protobuf/l$f;)V

    .line 380
    iget-object v0, p0, Lcom/google/protobuf/m$a;->ec:Lcom/google/protobuf/p;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/p$a;Ljava/lang/Object;)V

    .line 381
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/protobuf/m$a;->eb:Lcom/google/protobuf/l$a;

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/m$a;->gK()Lcom/google/protobuf/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/m$a;->gK()Lcom/google/protobuf/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/m$a;->gM()Lcom/google/protobuf/m$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/m$a;
    .registers 4

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/google/protobuf/m$a;->e(Lcom/google/protobuf/l$f;)V

    .line 409
    iget-object v0, p0, Lcom/google/protobuf/m$a;->ec:Lcom/google/protobuf/p;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/p;->b(Lcom/google/protobuf/p$a;Ljava/lang/Object;)V

    .line 410
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/m$a;->gM()Lcom/google/protobuf/m$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/protobuf/z;)Lcom/google/protobuf/m$a;
    .registers 2

    .prologue
    .line 418
    iput-object p1, p0, Lcom/google/protobuf/m$a;->ed:Lcom/google/protobuf/z;

    .line 419
    return-object p0
.end method

.method public synthetic c(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/t$a;
    .registers 4

    .prologue
    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/m$a;->b(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/m$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/m$a;->gM()Lcom/google/protobuf/m$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/protobuf/z;)Lcom/google/protobuf/m$a;
    .registers 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/protobuf/m$a;->ed:Lcom/google/protobuf/z;

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z$a;->j(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/m$a;->ed:Lcom/google/protobuf/z;

    .line 427
    return-object p0
.end method

.method public synthetic d(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/t$a;
    .registers 4

    .prologue
    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/m$a;->a(Lcom/google/protobuf/l$f;Ljava/lang/Object;)Lcom/google/protobuf/m$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/google/protobuf/m$a;->x(Lcom/google/protobuf/t;)Lcom/google/protobuf/m$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Lcom/google/protobuf/z;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/google/protobuf/m$a;->c(Lcom/google/protobuf/z;)Lcom/google/protobuf/m$a;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/google/protobuf/l$f;)Lcom/google/protobuf/m$a;
    .registers 4

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/google/protobuf/m$a;->e(Lcom/google/protobuf/l$f;)V

    .line 352
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    if-eq v0, v1, :cond_13

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newBuilderForField is only valid for fields with message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_13
    new-instance v0, Lcom/google/protobuf/m$a;

    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->gx()Lcom/google/protobuf/l$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/m$a;-><init>(Lcom/google/protobuf/l$a;)V

    return-object v0
.end method

.method public g(Lcom/google/protobuf/l$f;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/google/protobuf/m$a;->e(Lcom/google/protobuf/l$f;)V

    .line 367
    iget-object v0, p0, Lcom/google/protobuf/m$a;->ec:Lcom/google/protobuf/p;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->b(Lcom/google/protobuf/p$a;)Ljava/lang/Object;

    move-result-object v0

    .line 368
    if-nez v0, :cond_1b

    .line 369
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    if-ne v0, v1, :cond_1c

    .line 370
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->gx()Lcom/google/protobuf/l$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/m;->t(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/m;

    move-result-object v0

    .line 375
    :cond_1b
    :goto_1b
    return-object v0

    .line 372
    :cond_1c
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b
.end method

.method public gH()Lcom/google/protobuf/z;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/protobuf/m$a;->ed:Lcom/google/protobuf/z;

    return-object v0
.end method

.method public gK()Lcom/google/protobuf/m;
    .registers 6

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/protobuf/m$a;->ec:Lcom/google/protobuf/p;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/protobuf/m$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 294
    new-instance v0, Lcom/google/protobuf/m;

    iget-object v1, p0, Lcom/google/protobuf/m$a;->eb:Lcom/google/protobuf/l$a;

    iget-object v2, p0, Lcom/google/protobuf/m$a;->ec:Lcom/google/protobuf/p;

    iget-object v3, p0, Lcom/google/protobuf/m$a;->ed:Lcom/google/protobuf/z;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/m;-><init>(Lcom/google/protobuf/l$a;Lcom/google/protobuf/p;Lcom/google/protobuf/z;Lcom/google/protobuf/d;)V

    invoke-static {v0}, Lcom/google/protobuf/m$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 297
    :cond_1b
    invoke-virtual {p0}, Lcom/google/protobuf/m$a;->gL()Lcom/google/protobuf/m;

    move-result-object v0

    return-object v0
.end method

.method public gL()Lcom/google/protobuf/m;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 315
    iget-object v0, p0, Lcom/google/protobuf/m$a;->ec:Lcom/google/protobuf/p;

    if-nez v0, :cond_d

    .line 316
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/m$a;->ec:Lcom/google/protobuf/p;

    invoke-virtual {v0}, Lcom/google/protobuf/p;->makeImmutable()V

    .line 320
    new-instance v0, Lcom/google/protobuf/m;

    iget-object v1, p0, Lcom/google/protobuf/m$a;->eb:Lcom/google/protobuf/l$a;

    iget-object v2, p0, Lcom/google/protobuf/m$a;->ec:Lcom/google/protobuf/p;

    iget-object v3, p0, Lcom/google/protobuf/m$a;->ed:Lcom/google/protobuf/z;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/m;-><init>(Lcom/google/protobuf/l$a;Lcom/google/protobuf/p;Lcom/google/protobuf/z;Lcom/google/protobuf/d;)V

    .line 322
    iput-object v4, p0, Lcom/google/protobuf/m$a;->ec:Lcom/google/protobuf/p;

    .line 323
    iput-object v4, p0, Lcom/google/protobuf/m$a;->ed:Lcom/google/protobuf/z;

    .line 324
    return-object v0
.end method

.method public gM()Lcom/google/protobuf/m$a;
    .registers 4

    .prologue
    .line 328
    new-instance v0, Lcom/google/protobuf/m$a;

    iget-object v1, p0, Lcom/google/protobuf/m$a;->eb:Lcom/google/protobuf/l$a;

    invoke-direct {v0, v1}, Lcom/google/protobuf/m$a;-><init>(Lcom/google/protobuf/l$a;)V

    .line 329
    iget-object v1, v0, Lcom/google/protobuf/m$a;->ec:Lcom/google/protobuf/p;

    iget-object v2, p0, Lcom/google/protobuf/m$a;->ec:Lcom/google/protobuf/p;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/p;)V

    .line 330
    return-object v0
.end method

.method public synthetic h(Lcom/google/protobuf/l$f;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/google/protobuf/m$a;->f(Lcom/google/protobuf/l$f;)Lcom/google/protobuf/m$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/protobuf/m$a;->eb:Lcom/google/protobuf/l$a;

    iget-object v1, p0, Lcom/google/protobuf/m$a;->ec:Lcom/google/protobuf/p;

    invoke-static {v0, v1}, Lcom/google/protobuf/m;->b(Lcom/google/protobuf/l$a;Lcom/google/protobuf/p;)Z

    move-result v0

    return v0
.end method

.method public x(Lcom/google/protobuf/t;)Lcom/google/protobuf/m$a;
    .registers 4

    .prologue
    .line 276
    instance-of v0, p1, Lcom/google/protobuf/m;

    if-eqz v0, :cond_27

    .line 278
    check-cast p1, Lcom/google/protobuf/m;

    .line 279
    invoke-static {p1}, Lcom/google/protobuf/m;->a(Lcom/google/protobuf/m;)Lcom/google/protobuf/l$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/m$a;->eb:Lcom/google/protobuf/l$a;

    if-eq v0, v1, :cond_16

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_16
    iget-object v0, p0, Lcom/google/protobuf/m$a;->ec:Lcom/google/protobuf/p;

    invoke-static {p1}, Lcom/google/protobuf/m;->b(Lcom/google/protobuf/m;)Lcom/google/protobuf/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/p;)V

    .line 284
    invoke-static {p1}, Lcom/google/protobuf/m;->c(Lcom/google/protobuf/m;)Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/m$a;->d(Lcom/google/protobuf/z;)Lcom/google/protobuf/m$a;

    .line 287
    :goto_26
    return-object p0

    :cond_27
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/m$a;

    move-object p0, v0

    goto :goto_26
.end method
