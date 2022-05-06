.class public final Lmobi/tikl/wire/control/a$v$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qy:Lmobi/tikl/wire/control/a$v;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17443
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static te()Lmobi/tikl/wire/control/a$v$a;
    .registers 3

    .prologue
    .line 17446
    new-instance v0, Lmobi/tikl/wire/control/a$v$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$v$a;-><init>()V

    .line 17447
    new-instance v1, Lmobi/tikl/wire/control/a$v;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$v;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$v$a;->qy:Lmobi/tikl/wire/control/a$v;

    .line 17448
    return-object v0
.end method

.method static synthetic tj()Lmobi/tikl/wire/control/a$v$a;
    .registers 1

    .prologue
    .line 17438
    invoke-static {}, Lmobi/tikl/wire/control/a$v$a;->te()Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public R(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$v$a;
    .registers 5

    .prologue
    .line 17528
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 17532
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 17533
    sparse-switch v1, :sswitch_data_2e

    .line 17538
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$v$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 17540
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$v$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 17541
    :goto_1c
    return-object p0

    .line 17535
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$v$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 17546
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$v$a;->aA(Ljava/lang/String;)Lmobi/tikl/wire/control/a$v$a;

    goto :goto_8

    .line 17533
    nop

    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
    .end sparse-switch
.end method

.method public T(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$v$a;
    .registers 3

    .prologue
    .line 17507
    instance-of v0, p1, Lmobi/tikl/wire/control/a$v;

    if-eqz v0, :cond_b

    .line 17508
    check-cast p1, Lmobi/tikl/wire/control/a$v;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$v$a;->b(Lmobi/tikl/wire/control/a$v;)Lmobi/tikl/wire/control/a$v$a;

    move-result-object p0

    .line 17511
    :goto_a
    return-object p0

    .line 17510
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 17438
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$v$a;->R(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 17438
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$v$a;->T(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public aA(Ljava/lang/String;)Lmobi/tikl/wire/control/a$v$a;
    .registers 4

    .prologue
    .line 17562
    if-nez p1, :cond_8

    .line 17563
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17565
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$v$a;->qy:Lmobi/tikl/wire/control/a$v;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$v;->a(Lmobi/tikl/wire/control/a$v;Z)Z

    .line 17566
    iget-object v0, p0, Lmobi/tikl/wire/control/a$v$a;->qy:Lmobi/tikl/wire/control/a$v;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$v;->a(Lmobi/tikl/wire/control/a$v;Ljava/lang/String;)Ljava/lang/String;

    .line 17567
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 17470
    invoke-static {}, Lmobi/tikl/wire/control/a$v;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 17438
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v$a;->tf()Lmobi/tikl/wire/control/a$v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 17438
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v$a;->tg()Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 17438
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v$a;->th()Lmobi/tikl/wire/control/a$v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 17438
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v$a;->th()Lmobi/tikl/wire/control/a$v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 17438
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v$a;->tg()Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 17438
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$v$a;->R(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$v;)Lmobi/tikl/wire/control/a$v$a;
    .registers 3

    .prologue
    .line 17516
    invoke-static {}, Lmobi/tikl/wire/control/a$v;->sZ()Lmobi/tikl/wire/control/a$v;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 17521
    :goto_6
    return-object p0

    .line 17517
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$v;->pS()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 17518
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$v;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$v$a;->aA(Ljava/lang/String;)Lmobi/tikl/wire/control/a$v$a;

    .line 17520
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$v;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$v$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 17438
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v$a;->tg()Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 17438
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$v$a;->R(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 17438
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v$a;->tg()Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 17438
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$v$a;->T(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 17478
    iget-object v0, p0, Lmobi/tikl/wire/control/a$v$a;->qy:Lmobi/tikl/wire/control/a$v;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$v;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected tf()Lmobi/tikl/wire/control/a$v;
    .registers 2

    .prologue
    .line 17452
    iget-object v0, p0, Lmobi/tikl/wire/control/a$v$a;->qy:Lmobi/tikl/wire/control/a$v;

    return-object v0
.end method

.method public tg()Lmobi/tikl/wire/control/a$v$a;
    .registers 3

    .prologue
    .line 17465
    invoke-static {}, Lmobi/tikl/wire/control/a$v$a;->te()Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$v$a;->qy:Lmobi/tikl/wire/control/a$v;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$v$a;->b(Lmobi/tikl/wire/control/a$v;)Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public th()Lmobi/tikl/wire/control/a$v;
    .registers 2

    .prologue
    .line 17481
    iget-object v0, p0, Lmobi/tikl/wire/control/a$v$a;->qy:Lmobi/tikl/wire/control/a$v;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 17482
    iget-object v0, p0, Lmobi/tikl/wire/control/a$v$a;->qy:Lmobi/tikl/wire/control/a$v;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$v$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 17484
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v$a;->ti()Lmobi/tikl/wire/control/a$v;

    move-result-object v0

    return-object v0
.end method

.method public ti()Lmobi/tikl/wire/control/a$v;
    .registers 3

    .prologue
    .line 17497
    iget-object v0, p0, Lmobi/tikl/wire/control/a$v$a;->qy:Lmobi/tikl/wire/control/a$v;

    if-nez v0, :cond_c

    .line 17498
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17501
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$v$a;->qy:Lmobi/tikl/wire/control/a$v;

    .line 17502
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$v$a;->qy:Lmobi/tikl/wire/control/a$v;

    .line 17503
    return-object v0
.end method
