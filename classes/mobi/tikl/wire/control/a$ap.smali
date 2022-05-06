.class public final Lmobi/tikl/wire/control/a$ap;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$ap$a;
    }
.end annotation


# static fields
.field private static final vM:Lmobi/tikl/wire/control/a$ap;


# instance fields
.field private ai:I

.field private iY:I

.field private pT:Z

.field private qa:Z

.field private qb:I

.field private vN:Z

.field private vO:Z

.field private vP:Z

.field private vQ:Ljava/lang/String;

.field private vR:Z

.field private vS:I

.field private vT:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4935
    new-instance v0, Lmobi/tikl/wire/control/a$ap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$ap;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$ap;->vM:Lmobi/tikl/wire/control/a$ap;

    .line 4936
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 4937
    sget-object v0, Lmobi/tikl/wire/control/a$ap;->vM:Lmobi/tikl/wire/control/a$ap;

    .line 4938
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4424
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 4451
    iput-boolean v1, p0, Lmobi/tikl/wire/control/a$ap;->vO:Z

    .line 4458
    iput v1, p0, Lmobi/tikl/wire/control/a$ap;->iY:I

    .line 4465
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ap;->vQ:Ljava/lang/String;

    .line 4472
    iput v1, p0, Lmobi/tikl/wire/control/a$ap;->vS:I

    .line 4479
    iput v1, p0, Lmobi/tikl/wire/control/a$ap;->qb:I

    .line 4485
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ap;->vT:Ljava/util/List;

    .line 4526
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ap;->ai:I

    .line 4425
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 4421
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ap;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4427
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 4451
    iput-boolean v1, p0, Lmobi/tikl/wire/control/a$ap;->vO:Z

    .line 4458
    iput v1, p0, Lmobi/tikl/wire/control/a$ap;->iY:I

    .line 4465
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ap;->vQ:Ljava/lang/String;

    .line 4472
    iput v1, p0, Lmobi/tikl/wire/control/a$ap;->vS:I

    .line 4479
    iput v1, p0, Lmobi/tikl/wire/control/a$ap;->qb:I

    .line 4485
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ap;->vT:Ljava/util/List;

    .line 4526
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ap;->ai:I

    .line 4427
    return-void
.end method

.method public static Gd()Lmobi/tikl/wire/control/a$ap;
    .registers 1

    .prologue
    .line 4431
    sget-object v0, Lmobi/tikl/wire/control/a$ap;->vM:Lmobi/tikl/wire/control/a$ap;

    return-object v0
.end method

.method public static Gl()Lmobi/tikl/wire/control/a$ap$a;
    .registers 1

    .prologue
    .line 4633
    invoke-static {}, Lmobi/tikl/wire/control/a$ap$a;->Gt()Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ap;I)I
    .registers 2

    .prologue
    .line 4421
    iput p1, p0, Lmobi/tikl/wire/control/a$ap;->iY:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ap;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 4421
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ap;->vQ:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ap;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 4421
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ap;->vT:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ap;Z)Z
    .registers 2

    .prologue
    .line 4421
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ap;->vN:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 4440
    invoke-static {}, Lmobi/tikl/wire/control/a;->kw()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ap;I)I
    .registers 2

    .prologue
    .line 4421
    iput p1, p0, Lmobi/tikl/wire/control/a$ap;->vS:I

    return p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ap;Z)Z
    .registers 2

    .prologue
    .line 4421
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ap;->vO:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$ap;I)I
    .registers 2

    .prologue
    .line 4421
    iput p1, p0, Lmobi/tikl/wire/control/a$ap;->qb:I

    return p1
.end method

.method public static c(Lmobi/tikl/wire/control/a$ap;)Lmobi/tikl/wire/control/a$ap$a;
    .registers 2

    .prologue
    .line 4636
    invoke-static {}, Lmobi/tikl/wire/control/a$ap;->Gl()Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$ap$a;->e(Lmobi/tikl/wire/control/a$ap;)Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$ap;Z)Z
    .registers 2

    .prologue
    .line 4421
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ap;->pT:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$ap;)Ljava/util/List;
    .registers 2

    .prologue
    .line 4421
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap;->vT:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$ap;Z)Z
    .registers 2

    .prologue
    .line 4421
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ap;->vP:Z

    return p1
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$ap;Z)Z
    .registers 2

    .prologue
    .line 4421
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ap;->vR:Z

    return p1
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$ap;Z)Z
    .registers 2

    .prologue
    .line 4421
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ap;->qa:Z

    return p1
.end method


# virtual methods
.method public Ge()Lmobi/tikl/wire/control/a$ap;
    .registers 2

    .prologue
    .line 4435
    sget-object v0, Lmobi/tikl/wire/control/a$ap;->vM:Lmobi/tikl/wire/control/a$ap;

    return-object v0
.end method

.method public Gf()Z
    .registers 2

    .prologue
    .line 4452
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ap;->vN:Z

    return v0
.end method

.method public Gg()Z
    .registers 2

    .prologue
    .line 4453
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ap;->vO:Z

    return v0
.end method

.method public Gh()Z
    .registers 2

    .prologue
    .line 4466
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ap;->vP:Z

    return v0
.end method

.method public Gi()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4467
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap;->vQ:Ljava/lang/String;

    return-object v0
.end method

.method public Gj()Z
    .registers 2

    .prologue
    .line 4473
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ap;->vR:Z

    return v0
.end method

.method public Gk()Ljava/util/List;
    .registers 2

    .prologue
    .line 4488
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ap;->vT:Ljava/util/List;

    return-object v0
.end method

.method public Gm()Lmobi/tikl/wire/control/a$ap$a;
    .registers 2

    .prologue
    .line 4634
    invoke-static {}, Lmobi/tikl/wire/control/a$ap;->Gl()Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    return-object v0
.end method

.method public Gn()Lmobi/tikl/wire/control/a$ap$a;
    .registers 2

    .prologue
    .line 4638
    invoke-static {p0}, Lmobi/tikl/wire/control/a$ap;->c(Lmobi/tikl/wire/control/a$ap;)Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 4528
    iget v0, p0, Lmobi/tikl/wire/control/a$ap;->ai:I

    .line 4529
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    .line 4563
    :goto_6
    return v0

    .line 4532
    :cond_7
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->Gf()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 4533
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->Gg()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4536
    :goto_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->rc()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 4537
    const/16 v2, 0x14

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->jQ()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/e;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4540
    :cond_29
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->Gh()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 4541
    const/16 v2, 0x15

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->Gi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4544
    :cond_3a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->Gj()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 4545
    const/16 v2, 0x16

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->getDestPort()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/e;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4548
    :cond_4b
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->rj()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 4549
    const/16 v2, 0x17

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->rk()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/e;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    .line 4554
    :goto_5d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->Gk()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_65
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4555
    invoke-static {v0}, Lcom/google/protobuf/e;->i(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 4557
    goto :goto_65

    .line 4558
    :cond_77
    add-int v0, v2, v1

    .line 4559
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->Gk()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 4561
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 4562
    iput v0, p0, Lmobi/tikl/wire/control/a$ap;->ai:I

    goto/16 :goto_6

    :cond_91
    move v2, v0

    goto :goto_5d

    :cond_93
    move v0, v1

    goto :goto_18
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 4504
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->a()I

    .line 4505
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->Gf()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4506
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->Gg()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 4508
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->rc()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4509
    const/16 v0, 0x14

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->jQ()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 4511
    :cond_20
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->Gh()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 4512
    const/16 v0, 0x15

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->Gi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 4514
    :cond_2f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->Gj()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 4515
    const/16 v0, 0x16

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->getDestPort()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 4517
    :cond_3e
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->rj()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 4518
    const/16 v0, 0x17

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->rk()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 4520
    :cond_4d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->Gk()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4521
    const/16 v2, 0x64

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    goto :goto_55

    .line 4523
    :cond_67
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 4524
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 4421
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->Gm()Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 4421
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->Ge()Lmobi/tikl/wire/control/a$ap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 4421
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ap;->Gn()Lmobi/tikl/wire/control/a$ap$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 4445
    invoke-static {}, Lmobi/tikl/wire/control/a;->kx()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getDestPort()I
    .registers 2

    .prologue
    .line 4474
    iget v0, p0, Lmobi/tikl/wire/control/a$ap;->vS:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 4498
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ap;->vN:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 4499
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public jQ()I
    .registers 2

    .prologue
    .line 4460
    iget v0, p0, Lmobi/tikl/wire/control/a$ap;->iY:I

    return v0
.end method

.method public rc()Z
    .registers 2

    .prologue
    .line 4459
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ap;->pT:Z

    return v0
.end method

.method public rj()Z
    .registers 2

    .prologue
    .line 4480
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ap;->qa:Z

    return v0
.end method

.method public rk()I
    .registers 2

    .prologue
    .line 4481
    iget v0, p0, Lmobi/tikl/wire/control/a$ap;->qb:I

    return v0
.end method
