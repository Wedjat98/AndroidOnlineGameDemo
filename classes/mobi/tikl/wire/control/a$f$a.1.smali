.class public final Lmobi/tikl/wire/control/a$f$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private pv:Lmobi/tikl/wire/control/a$f;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 14382
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static pn()Lmobi/tikl/wire/control/a$f$a;
    .registers 3

    .prologue
    .line 14385
    new-instance v0, Lmobi/tikl/wire/control/a$f$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$f$a;-><init>()V

    .line 14386
    new-instance v1, Lmobi/tikl/wire/control/a$f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$f;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$f$a;->pv:Lmobi/tikl/wire/control/a$f;

    .line 14387
    return-object v0
.end method

.method static synthetic ps()Lmobi/tikl/wire/control/a$f$a;
    .registers 1

    .prologue
    .line 14377
    invoke-static {}, Lmobi/tikl/wire/control/a$f$a;->pn()Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public B(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$f$a;
    .registers 5

    .prologue
    .line 14467
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 14471
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 14472
    sparse-switch v1, :sswitch_data_2e

    .line 14477
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$f$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 14479
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$f$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 14480
    :goto_1c
    return-object p0

    .line 14474
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$f$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 14485
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$f$a;->aC(I)Lmobi/tikl/wire/control/a$f$a;

    goto :goto_8

    .line 14472
    nop

    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
    .end sparse-switch
.end method

.method public D(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$f$a;
    .registers 3

    .prologue
    .line 14446
    instance-of v0, p1, Lmobi/tikl/wire/control/a$f;

    if-eqz v0, :cond_b

    .line 14447
    check-cast p1, Lmobi/tikl/wire/control/a$f;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$f$a;->d(Lmobi/tikl/wire/control/a$f;)Lmobi/tikl/wire/control/a$f$a;

    move-result-object p0

    .line 14450
    :goto_a
    return-object p0

    .line 14449
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 14377
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$f$a;->B(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 14377
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$f$a;->D(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public aC(I)Lmobi/tikl/wire/control/a$f$a;
    .registers 4

    .prologue
    .line 14501
    iget-object v0, p0, Lmobi/tikl/wire/control/a$f$a;->pv:Lmobi/tikl/wire/control/a$f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$f;->a(Lmobi/tikl/wire/control/a$f;Z)Z

    .line 14502
    iget-object v0, p0, Lmobi/tikl/wire/control/a$f$a;->pv:Lmobi/tikl/wire/control/a$f;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$f;->a(Lmobi/tikl/wire/control/a$f;I)I

    .line 14503
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 14409
    invoke-static {}, Lmobi/tikl/wire/control/a$f;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 14377
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f$a;->po()Lmobi/tikl/wire/control/a$f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 14377
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f$a;->pp()Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 14377
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f$a;->pq()Lmobi/tikl/wire/control/a$f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 14377
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f$a;->pq()Lmobi/tikl/wire/control/a$f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 14377
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f$a;->pp()Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 14377
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$f$a;->B(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 14377
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f$a;->pp()Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 14377
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$f$a;->B(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 14377
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f$a;->pp()Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 14377
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$f$a;->D(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$f;)Lmobi/tikl/wire/control/a$f$a;
    .registers 3

    .prologue
    .line 14455
    invoke-static {}, Lmobi/tikl/wire/control/a$f;->pi()Lmobi/tikl/wire/control/a$f;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 14460
    :goto_6
    return-object p0

    .line 14456
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$f;->oc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 14457
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$f;->getMsgId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$f$a;->aC(I)Lmobi/tikl/wire/control/a$f$a;

    .line 14459
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$f;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$f$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 14417
    iget-object v0, p0, Lmobi/tikl/wire/control/a$f$a;->pv:Lmobi/tikl/wire/control/a$f;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$f;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected po()Lmobi/tikl/wire/control/a$f;
    .registers 2

    .prologue
    .line 14391
    iget-object v0, p0, Lmobi/tikl/wire/control/a$f$a;->pv:Lmobi/tikl/wire/control/a$f;

    return-object v0
.end method

.method public pp()Lmobi/tikl/wire/control/a$f$a;
    .registers 3

    .prologue
    .line 14404
    invoke-static {}, Lmobi/tikl/wire/control/a$f$a;->pn()Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$f$a;->pv:Lmobi/tikl/wire/control/a$f;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$f$a;->d(Lmobi/tikl/wire/control/a$f;)Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public pq()Lmobi/tikl/wire/control/a$f;
    .registers 2

    .prologue
    .line 14420
    iget-object v0, p0, Lmobi/tikl/wire/control/a$f$a;->pv:Lmobi/tikl/wire/control/a$f;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 14421
    iget-object v0, p0, Lmobi/tikl/wire/control/a$f$a;->pv:Lmobi/tikl/wire/control/a$f;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$f$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 14423
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f$a;->pr()Lmobi/tikl/wire/control/a$f;

    move-result-object v0

    return-object v0
.end method

.method public pr()Lmobi/tikl/wire/control/a$f;
    .registers 3

    .prologue
    .line 14436
    iget-object v0, p0, Lmobi/tikl/wire/control/a$f$a;->pv:Lmobi/tikl/wire/control/a$f;

    if-nez v0, :cond_c

    .line 14437
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14440
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$f$a;->pv:Lmobi/tikl/wire/control/a$f;

    .line 14441
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$f$a;->pv:Lmobi/tikl/wire/control/a$f;

    .line 14442
    return-object v0
.end method
