.class public abstract Lcom/google/protobuf/q$c;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/q$c$a;
    }
.end annotation


# instance fields
.field private final em:Lcom/google/protobuf/p;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 317
    invoke-static {}, Lcom/google/protobuf/p;->gP()Lcom/google/protobuf/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/q$c;->em:Lcom/google/protobuf/p;

    .line 316
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/q$c;Lcom/google/protobuf/l$f;)V
    .registers 2

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/google/protobuf/q$c;->e(Lcom/google/protobuf/l$f;)V

    return-void
.end method

.method static synthetic b(Lcom/google/protobuf/q$c;)Lcom/google/protobuf/p;
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/protobuf/q$c;->em:Lcom/google/protobuf/p;

    return-object v0
.end method

.method private e(Lcom/google/protobuf/l$f;)V
    .registers 4

    .prologue
    .line 511
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->gv()Lcom/google/protobuf/l$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/q$c;->aT()Lcom/google/protobuf/l$a;

    move-result-object v1

    if-eq v0, v1, :cond_12

    .line 512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_12
    return-void
.end method


# virtual methods
.method public d(Lcom/google/protobuf/l$f;)Z
    .registers 3

    .prologue
    .line 460
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 461
    invoke-direct {p0, p1}, Lcom/google/protobuf/q$c;->e(Lcom/google/protobuf/l$f;)V

    .line 462
    iget-object v0, p0, Lcom/google/protobuf/q$c;->em:Lcom/google/protobuf/p;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/p$a;)Z

    move-result v0

    .line 464
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1}, Lcom/google/protobuf/q;->d(Lcom/google/protobuf/l$f;)Z

    move-result v0

    goto :goto_f
.end method

.method public g(Lcom/google/protobuf/l$f;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 470
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 471
    invoke-direct {p0, p1}, Lcom/google/protobuf/q$c;->e(Lcom/google/protobuf/l$f;)V

    .line 472
    iget-object v0, p0, Lcom/google/protobuf/q$c;->em:Lcom/google/protobuf/p;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->b(Lcom/google/protobuf/p$a;)Ljava/lang/Object;

    move-result-object v0

    .line 473
    if-nez v0, :cond_21

    .line 474
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    if-ne v0, v1, :cond_22

    .line 477
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->gx()Lcom/google/protobuf/l$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/m;->t(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/m;

    move-result-object v0

    .line 485
    :cond_21
    :goto_21
    return-object v0

    .line 479
    :cond_22
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_21

    .line 485
    :cond_27
    invoke-super {p0, p1}, Lcom/google/protobuf/q;->g(Lcom/google/protobuf/l$f;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_21
.end method

.method public gG()Ljava/util/Map;
    .registers 3

    .prologue
    .line 453
    invoke-static {p0}, Lcom/google/protobuf/q;->c(Lcom/google/protobuf/q;)Ljava/util/Map;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/google/protobuf/q$c;->em:Lcom/google/protobuf/p;

    invoke-virtual {v1}, Lcom/google/protobuf/p;->gG()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 455
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected gT()Z
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/protobuf/q$c;->em:Lcom/google/protobuf/p;

    invoke-virtual {v0}, Lcom/google/protobuf/p;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected gU()Lcom/google/protobuf/q$c$a;
    .registers 4

    .prologue
    .line 434
    new-instance v0, Lcom/google/protobuf/q$c$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/q$c$a;-><init>(Lcom/google/protobuf/q$c;ZLcom/google/protobuf/q$1;)V

    return-object v0
.end method

.method protected gV()I
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/protobuf/q$c;->em:Lcom/google/protobuf/p;

    invoke-virtual {v0}, Lcom/google/protobuf/p;->a()I

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 387
    invoke-super {p0}, Lcom/google/protobuf/q;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/protobuf/q$c;->gT()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
