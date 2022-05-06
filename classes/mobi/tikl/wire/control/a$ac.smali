.class public final Lmobi/tikl/wire/control/a$ac;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ac"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$ac$a;
    }
.end annotation


# static fields
.field private static final tC:Lmobi/tikl/wire/control/a$ac;


# instance fields
.field private ai:I

.field private oy:Z

.field private oz:I

.field private qq:Z

.field private qr:Lmobi/tikl/wire/control/a$G;

.field private tD:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27887
    new-instance v0, Lmobi/tikl/wire/control/a$ac;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$ac;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$ac;->tC:Lmobi/tikl/wire/control/a$ac;

    .line 27888
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 27889
    sget-object v0, Lmobi/tikl/wire/control/a$ac;->tC:Lmobi/tikl/wire/control/a$ac;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ac;->aJ()V

    .line 27890
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27459
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 27486
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$ac;->oz:I

    .line 27499
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ac;->tD:Ljava/util/List;

    .line 27536
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ac;->ai:I

    .line 27460
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ac;->aJ()V

    .line 27461
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 27456
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ac;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 27462
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 27486
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$ac;->oz:I

    .line 27499
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ac;->tD:Ljava/util/List;

    .line 27536
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ac;->ai:I

    .line 27462
    return-void
.end method

.method public static BI()Lmobi/tikl/wire/control/a$ac;
    .registers 1

    .prologue
    .line 27466
    sget-object v0, Lmobi/tikl/wire/control/a$ac;->tC:Lmobi/tikl/wire/control/a$ac;

    return-object v0
.end method

.method public static BL()Lmobi/tikl/wire/control/a$ac$a;
    .registers 1

    .prologue
    .line 27626
    invoke-static {}, Lmobi/tikl/wire/control/a$ac$a;->BT()Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ac;I)I
    .registers 2

    .prologue
    .line 27456
    iput p1, p0, Lmobi/tikl/wire/control/a$ac;->oz:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ac;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 27456
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ac;->tD:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ac;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 27456
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ac;->qr:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$ac$a;
    .registers 2

    .prologue
    .line 27629
    invoke-static {}, Lmobi/tikl/wire/control/a$ac;->BL()Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$ac$a;->d(Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ac;Z)Z
    .registers 2

    .prologue
    .line 27456
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ac;->oy:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 27510
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ac;->qr:Lmobi/tikl/wire/control/a$G;

    .line 27511
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 27475
    invoke-static {}, Lmobi/tikl/wire/control/a;->mu()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ac;)Ljava/util/List;
    .registers 2

    .prologue
    .line 27456
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac;->tD:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ac;Z)Z
    .registers 2

    .prologue
    .line 27456
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ac;->qq:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 27456
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac;->qr:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method


# virtual methods
.method public BJ()Lmobi/tikl/wire/control/a$ac;
    .registers 2

    .prologue
    .line 27470
    sget-object v0, Lmobi/tikl/wire/control/a$ac;->tC:Lmobi/tikl/wire/control/a$ac;

    return-object v0
.end method

.method public BK()Ljava/util/List;
    .registers 2

    .prologue
    .line 27502
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac;->tD:Ljava/util/List;

    return-object v0
.end method

.method public BM()Lmobi/tikl/wire/control/a$ac$a;
    .registers 2

    .prologue
    .line 27627
    invoke-static {}, Lmobi/tikl/wire/control/a$ac;->BL()Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    return-object v0
.end method

.method public BN()Lmobi/tikl/wire/control/a$ac$a;
    .registers 2

    .prologue
    .line 27631
    invoke-static {p0}, Lmobi/tikl/wire/control/a$ac;->a(Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 5

    .prologue
    .line 27538
    iget v0, p0, Lmobi/tikl/wire/control/a$ac;->ai:I

    .line 27539
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 27556
    :goto_5
    return v0

    .line 27541
    :cond_6
    const/4 v0, 0x0

    .line 27542
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->oc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 27543
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->getMsgId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 27546
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->sB()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 27547
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27550
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->BK()Ljava/util/List;

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

    .line 27551
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 27553
    goto :goto_31

    .line 27554
    :cond_45
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 27555
    iput v0, p0, Lmobi/tikl/wire/control/a$ac;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 27523
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->a()I

    .line 27524
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->oc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 27525
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->getMsgId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 27527
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->sB()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 27528
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 27530
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->BK()Ljava/util/List;

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

    .line 27531
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_27

    .line 27533
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 27534
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 27456
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->BM()Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 27456
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->BJ()Lmobi/tikl/wire/control/a$ac;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 27456
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->BN()Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 27480
    invoke-static {}, Lmobi/tikl/wire/control/a;->mv()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 27488
    iget v0, p0, Lmobi/tikl/wire/control/a$ac;->oz:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 27513
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ac;->qq:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 27518
    :goto_6
    return v0

    .line 27514
    :cond_7
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    goto :goto_6

    .line 27515
    :cond_13
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ac;->BK()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 27516
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1b

    move v0, v1

    goto :goto_6

    .line 27518
    :cond_2f
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public oc()Z
    .registers 2

    .prologue
    .line 27487
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ac;->oy:Z

    return v0
.end method

.method public sB()Z
    .registers 2

    .prologue
    .line 27494
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ac;->qq:Z

    return v0
.end method

.method public sC()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 27495
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ac;->qr:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method
