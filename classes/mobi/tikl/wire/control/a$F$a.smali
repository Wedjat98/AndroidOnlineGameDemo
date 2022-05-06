.class public final Lmobi/tikl/wire/control/a$F$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private rc:Lmobi/tikl/wire/control/a$F;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19440
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static vu()Lmobi/tikl/wire/control/a$F$a;
    .registers 3

    .prologue
    .line 19443
    new-instance v0, Lmobi/tikl/wire/control/a$F$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$F$a;-><init>()V

    .line 19444
    new-instance v1, Lmobi/tikl/wire/control/a$F;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$F;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$F$a;->rc:Lmobi/tikl/wire/control/a$F;

    .line 19445
    return-object v0
.end method

.method static synthetic vz()Lmobi/tikl/wire/control/a$F$a;
    .registers 1

    .prologue
    .line 19435
    invoke-static {}, Lmobi/tikl/wire/control/a$F$a;->vu()Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 19435
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$F$a;->ab(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 19435
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$F$a;->ad(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    return-object v0
.end method

.method public aM(Ljava/lang/String;)Lmobi/tikl/wire/control/a$F$a;
    .registers 4

    .prologue
    .line 19609
    if-nez p1, :cond_8

    .line 19610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19612
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$F$a;->rc:Lmobi/tikl/wire/control/a$F;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$F;->c(Lmobi/tikl/wire/control/a$F;Z)Z

    .line 19613
    iget-object v0, p0, Lmobi/tikl/wire/control/a$F$a;->rc:Lmobi/tikl/wire/control/a$F;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$F;->a(Lmobi/tikl/wire/control/a$F;Ljava/lang/String;)Ljava/lang/String;

    .line 19614
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 19467
    invoke-static {}, Lmobi/tikl/wire/control/a$F;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 19435
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F$a;->vv()Lmobi/tikl/wire/control/a$F;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 19435
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F$a;->vw()Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 19435
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F$a;->vx()Lmobi/tikl/wire/control/a$F;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 19435
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F$a;->vx()Lmobi/tikl/wire/control/a$F;

    move-result-object v0

    return-object v0
.end method

.method public ab(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$F$a;
    .registers 5

    .prologue
    .line 19531
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 19535
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 19536
    sparse-switch v1, :sswitch_data_3e

    .line 19541
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$F$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 19543
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$F$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 19544
    :goto_1c
    return-object p0

    .line 19538
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$F$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 19549
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$F$a;->bb(I)Lmobi/tikl/wire/control/a$F$a;

    goto :goto_8

    .line 19553
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$F$a;->bc(I)Lmobi/tikl/wire/control/a$F$a;

    goto :goto_8

    .line 19557
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$F$a;->aM(Ljava/lang/String;)Lmobi/tikl/wire/control/a$F$a;

    goto :goto_8

    .line 19536
    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x10 -> :sswitch_2d
        0x1a -> :sswitch_35
    .end sparse-switch
.end method

.method public ad(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$F$a;
    .registers 3

    .prologue
    .line 19504
    instance-of v0, p1, Lmobi/tikl/wire/control/a$F;

    if-eqz v0, :cond_b

    .line 19505
    check-cast p1, Lmobi/tikl/wire/control/a$F;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$F$a;->b(Lmobi/tikl/wire/control/a$F;)Lmobi/tikl/wire/control/a$F$a;

    move-result-object p0

    .line 19508
    :goto_a
    return-object p0

    .line 19507
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 19435
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F$a;->vw()Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 19435
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$F$a;->ab(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$F;)Lmobi/tikl/wire/control/a$F$a;
    .registers 3

    .prologue
    .line 19513
    invoke-static {}, Lmobi/tikl/wire/control/a$F;->vm()Lmobi/tikl/wire/control/a$F;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 19524
    :goto_6
    return-object p0

    .line 19514
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$F;->vo()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 19515
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$F;->getEventType()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$F$a;->bb(I)Lmobi/tikl/wire/control/a$F$a;

    .line 19517
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$F;->vp()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 19518
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$F;->kp()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$F$a;->bc(I)Lmobi/tikl/wire/control/a$F$a;

    .line 19520
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$F;->vq()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 19521
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$F;->kq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$F$a;->aM(Ljava/lang/String;)Lmobi/tikl/wire/control/a$F$a;

    .line 19523
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$F;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$F$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public bb(I)Lmobi/tikl/wire/control/a$F$a;
    .registers 4

    .prologue
    .line 19573
    iget-object v0, p0, Lmobi/tikl/wire/control/a$F$a;->rc:Lmobi/tikl/wire/control/a$F;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$F;->a(Lmobi/tikl/wire/control/a$F;Z)Z

    .line 19574
    iget-object v0, p0, Lmobi/tikl/wire/control/a$F$a;->rc:Lmobi/tikl/wire/control/a$F;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$F;->a(Lmobi/tikl/wire/control/a$F;I)I

    .line 19575
    return-object p0
.end method

.method public bc(I)Lmobi/tikl/wire/control/a$F$a;
    .registers 4

    .prologue
    .line 19591
    iget-object v0, p0, Lmobi/tikl/wire/control/a$F$a;->rc:Lmobi/tikl/wire/control/a$F;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$F;->b(Lmobi/tikl/wire/control/a$F;Z)Z

    .line 19592
    iget-object v0, p0, Lmobi/tikl/wire/control/a$F$a;->rc:Lmobi/tikl/wire/control/a$F;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$F;->b(Lmobi/tikl/wire/control/a$F;I)I

    .line 19593
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 19435
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F$a;->vw()Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 19435
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$F$a;->ab(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 19435
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F$a;->vw()Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 19435
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$F$a;->ad(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 19475
    iget-object v0, p0, Lmobi/tikl/wire/control/a$F$a;->rc:Lmobi/tikl/wire/control/a$F;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$F;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected vv()Lmobi/tikl/wire/control/a$F;
    .registers 2

    .prologue
    .line 19449
    iget-object v0, p0, Lmobi/tikl/wire/control/a$F$a;->rc:Lmobi/tikl/wire/control/a$F;

    return-object v0
.end method

.method public vw()Lmobi/tikl/wire/control/a$F$a;
    .registers 3

    .prologue
    .line 19462
    invoke-static {}, Lmobi/tikl/wire/control/a$F$a;->vu()Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$F$a;->rc:Lmobi/tikl/wire/control/a$F;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$F$a;->b(Lmobi/tikl/wire/control/a$F;)Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    return-object v0
.end method

.method public vx()Lmobi/tikl/wire/control/a$F;
    .registers 2

    .prologue
    .line 19478
    iget-object v0, p0, Lmobi/tikl/wire/control/a$F$a;->rc:Lmobi/tikl/wire/control/a$F;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 19479
    iget-object v0, p0, Lmobi/tikl/wire/control/a$F$a;->rc:Lmobi/tikl/wire/control/a$F;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$F$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 19481
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F$a;->vy()Lmobi/tikl/wire/control/a$F;

    move-result-object v0

    return-object v0
.end method

.method public vy()Lmobi/tikl/wire/control/a$F;
    .registers 3

    .prologue
    .line 19494
    iget-object v0, p0, Lmobi/tikl/wire/control/a$F$a;->rc:Lmobi/tikl/wire/control/a$F;

    if-nez v0, :cond_c

    .line 19495
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19498
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$F$a;->rc:Lmobi/tikl/wire/control/a$F;

    .line 19499
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$F$a;->rc:Lmobi/tikl/wire/control/a$F;

    .line 19500
    return-object v0
.end method
