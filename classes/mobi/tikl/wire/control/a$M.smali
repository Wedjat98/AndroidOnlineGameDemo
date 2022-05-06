.class public final Lmobi/tikl/wire/control/a$M;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "M"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$M$a;
    }
.end annotation


# static fields
.field private static final rH:Lmobi/tikl/wire/control/a$M;


# instance fields
.field private ai:I

.field private iY:I

.field private ir:Ljava/lang/String;

.field private is:I

.field private pT:Z

.field private pU:Z

.field private pV:Lmobi/tikl/wire/control/a$G;

.field private pW:Z

.field private pX:Ljava/lang/String;

.field private pY:Z

.field private pZ:Z

.field private qa:Z

.field private qb:I

.field private rI:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9045
    new-instance v0, Lmobi/tikl/wire/control/a$M;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$M;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$M;->rH:Lmobi/tikl/wire/control/a$M;

    .line 9046
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 9047
    sget-object v0, Lmobi/tikl/wire/control/a$M;->rH:Lmobi/tikl/wire/control/a$M;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$M;->aJ()V

    .line 9048
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 8451
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 8478
    iput v1, p0, Lmobi/tikl/wire/control/a$M;->iY:I

    .line 8491
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$M;->rI:Ljava/util/List;

    .line 8504
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$M;->pX:Ljava/lang/String;

    .line 8511
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$M;->ir:Ljava/lang/String;

    .line 8518
    iput v1, p0, Lmobi/tikl/wire/control/a$M;->is:I

    .line 8525
    iput v1, p0, Lmobi/tikl/wire/control/a$M;->qb:I

    .line 8572
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$M;->ai:I

    .line 8452
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$M;->aJ()V

    .line 8453
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 8448
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$M;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 8454
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 8478
    iput v1, p0, Lmobi/tikl/wire/control/a$M;->iY:I

    .line 8491
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$M;->rI:Ljava/util/List;

    .line 8504
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$M;->pX:Ljava/lang/String;

    .line 8511
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$M;->ir:Ljava/lang/String;

    .line 8518
    iput v1, p0, Lmobi/tikl/wire/control/a$M;->is:I

    .line 8525
    iput v1, p0, Lmobi/tikl/wire/control/a$M;->qb:I

    .line 8572
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$M;->ai:I

    .line 8454
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$M;I)I
    .registers 2

    .prologue
    .line 8448
    iput p1, p0, Lmobi/tikl/wire/control/a$M;->iY:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$M;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 8448
    iput-object p1, p0, Lmobi/tikl/wire/control/a$M;->pX:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$M;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 8448
    iput-object p1, p0, Lmobi/tikl/wire/control/a$M;->rI:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$M;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 8448
    iput-object p1, p0, Lmobi/tikl/wire/control/a$M;->pV:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$M;Z)Z
    .registers 2

    .prologue
    .line 8448
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$M;->pT:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 8530
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$M;->pV:Lmobi/tikl/wire/control/a$G;

    .line 8531
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 8467
    invoke-static {}, Lmobi/tikl/wire/control/a;->kM()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$M;I)I
    .registers 2

    .prologue
    .line 8448
    iput p1, p0, Lmobi/tikl/wire/control/a$M;->is:I

    return p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$M;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 8448
    iput-object p1, p0, Lmobi/tikl/wire/control/a$M;->ir:Ljava/lang/String;

    return-object p1
.end method

.method public static b(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$M$a;
    .registers 2

    .prologue
    .line 8681
    invoke-static {}, Lmobi/tikl/wire/control/a$M;->xh()Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$M$a;->e(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$M;Z)Z
    .registers 2

    .prologue
    .line 8448
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$M;->pU:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$M;I)I
    .registers 2

    .prologue
    .line 8448
    iput p1, p0, Lmobi/tikl/wire/control/a$M;->qb:I

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$M;)Ljava/util/List;
    .registers 2

    .prologue
    .line 8448
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M;->rI:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$M;Z)Z
    .registers 2

    .prologue
    .line 8448
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$M;->pW:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 8448
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M;->pV:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$M;Z)Z
    .registers 2

    .prologue
    .line 8448
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$M;->pY:Z

    return p1
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$M;Z)Z
    .registers 2

    .prologue
    .line 8448
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$M;->pZ:Z

    return p1
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$M;Z)Z
    .registers 2

    .prologue
    .line 8448
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$M;->qa:Z

    return p1
.end method

.method public static xe()Lmobi/tikl/wire/control/a$M;
    .registers 1

    .prologue
    .line 8458
    sget-object v0, Lmobi/tikl/wire/control/a$M;->rH:Lmobi/tikl/wire/control/a$M;

    return-object v0
.end method

.method public static xh()Lmobi/tikl/wire/control/a$M$a;
    .registers 1

    .prologue
    .line 8678
    invoke-static {}, Lmobi/tikl/wire/control/a$M$a;->xp()Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 8574
    iget v0, p0, Lmobi/tikl/wire/control/a$M;->ai:I

    .line 8575
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 8608
    :goto_5
    return v0

    .line 8577
    :cond_6
    const/4 v0, 0x0

    .line 8578
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->rc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 8579
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->jQ()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 8582
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->rd()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 8583
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8586
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->xg()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 8587
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 8589
    goto :goto_31

    .line 8590
    :cond_45
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->rf()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 8591
    const/4 v0, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->rg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 8594
    :cond_55
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->rh()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 8595
    const/4 v0, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->jk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 8598
    :cond_65
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->ri()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 8599
    const/4 v0, 0x6

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->jl()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 8602
    :cond_75
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->rj()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 8603
    const/4 v0, 0x7

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->rk()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 8606
    :cond_85
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 8607
    iput v0, p0, Lmobi/tikl/wire/control/a$M;->ai:I

    goto/16 :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 8547
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->a()I

    .line 8548
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->rc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 8549
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->jQ()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 8551
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->rd()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 8552
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 8554
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->xg()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 8555
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_27

    .line 8557
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->rf()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 8558
    const/4 v0, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->rg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 8560
    :cond_46
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->rh()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 8561
    const/4 v0, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->jk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 8563
    :cond_54
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->ri()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 8564
    const/4 v0, 0x6

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->jl()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 8566
    :cond_62
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->rj()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 8567
    const/4 v0, 0x7

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->rk()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 8569
    :cond_70
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 8570
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 8448
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->xi()Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 8448
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->xf()Lmobi/tikl/wire/control/a$M;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 8448
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->xj()Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 8472
    invoke-static {}, Lmobi/tikl/wire/control/a;->kN()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 8533
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$M;->pT:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 8542
    :goto_6
    return v0

    .line 8534
    :cond_7
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$M;->pU:Z

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_6

    .line 8535
    :cond_d
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$M;->pW:Z

    if-nez v0, :cond_13

    move v0, v1

    goto :goto_6

    .line 8536
    :cond_13
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$M;->pY:Z

    if-nez v0, :cond_19

    move v0, v1

    goto :goto_6

    .line 8537
    :cond_19
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$M;->pZ:Z

    if-nez v0, :cond_1f

    move v0, v1

    goto :goto_6

    .line 8538
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v1

    goto :goto_6

    .line 8539
    :cond_2b
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M;->xg()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 8540
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_33

    move v0, v1

    goto :goto_6

    .line 8542
    :cond_47
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public jQ()I
    .registers 2

    .prologue
    .line 8480
    iget v0, p0, Lmobi/tikl/wire/control/a$M;->iY:I

    return v0
.end method

.method public jk()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8513
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M;->ir:Ljava/lang/String;

    return-object v0
.end method

.method public jl()I
    .registers 2

    .prologue
    .line 8520
    iget v0, p0, Lmobi/tikl/wire/control/a$M;->is:I

    return v0
.end method

.method public rc()Z
    .registers 2

    .prologue
    .line 8479
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$M;->pT:Z

    return v0
.end method

.method public rd()Z
    .registers 2

    .prologue
    .line 8486
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$M;->pU:Z

    return v0
.end method

.method public re()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 8487
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M;->pV:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public rf()Z
    .registers 2

    .prologue
    .line 8505
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$M;->pW:Z

    return v0
.end method

.method public rg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8506
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M;->pX:Ljava/lang/String;

    return-object v0
.end method

.method public rh()Z
    .registers 2

    .prologue
    .line 8512
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$M;->pY:Z

    return v0
.end method

.method public ri()Z
    .registers 2

    .prologue
    .line 8519
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$M;->pZ:Z

    return v0
.end method

.method public rj()Z
    .registers 2

    .prologue
    .line 8526
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$M;->qa:Z

    return v0
.end method

.method public rk()I
    .registers 2

    .prologue
    .line 8527
    iget v0, p0, Lmobi/tikl/wire/control/a$M;->qb:I

    return v0
.end method

.method public xf()Lmobi/tikl/wire/control/a$M;
    .registers 2

    .prologue
    .line 8462
    sget-object v0, Lmobi/tikl/wire/control/a$M;->rH:Lmobi/tikl/wire/control/a$M;

    return-object v0
.end method

.method public xg()Ljava/util/List;
    .registers 2

    .prologue
    .line 8494
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M;->rI:Ljava/util/List;

    return-object v0
.end method

.method public xi()Lmobi/tikl/wire/control/a$M$a;
    .registers 2

    .prologue
    .line 8679
    invoke-static {}, Lmobi/tikl/wire/control/a$M;->xh()Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    return-object v0
.end method

.method public xj()Lmobi/tikl/wire/control/a$M$a;
    .registers 2

    .prologue
    .line 8683
    invoke-static {p0}, Lmobi/tikl/wire/control/a$M;->b(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    return-object v0
.end method
