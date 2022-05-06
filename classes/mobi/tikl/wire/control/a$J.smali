.class public final Lmobi/tikl/wire/control/a$J;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "J"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$J$a;
    }
.end annotation


# static fields
.field private static final rq:Lmobi/tikl/wire/control/a$J;


# instance fields
.field private aF:Z

.field private ai:I

.field private rr:Z

.field private rs:Ljava/lang/String;

.field private rt:I

.field private ru:Z

.field private rv:Ljava/lang/String;

.field private rw:Z

.field private rx:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21842
    new-instance v0, Lmobi/tikl/wire/control/a$J;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$J;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$J;->rq:Lmobi/tikl/wire/control/a$J;

    .line 21843
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 21844
    sget-object v0, Lmobi/tikl/wire/control/a$J;->rq:Lmobi/tikl/wire/control/a$J;

    .line 21845
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 21442
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 21469
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$J;->rs:Ljava/lang/String;

    .line 21476
    iput v1, p0, Lmobi/tikl/wire/control/a$J;->rt:I

    .line 21483
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$J;->rv:Ljava/lang/String;

    .line 21490
    iput v1, p0, Lmobi/tikl/wire/control/a$J;->rx:I

    .line 21522
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$J;->ai:I

    .line 21443
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 21439
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$J;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 21445
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 21469
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$J;->rs:Ljava/lang/String;

    .line 21476
    iput v1, p0, Lmobi/tikl/wire/control/a$J;->rt:I

    .line 21483
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$J;->rv:Ljava/lang/String;

    .line 21490
    iput v1, p0, Lmobi/tikl/wire/control/a$J;->rx:I

    .line 21522
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$J;->ai:I

    .line 21445
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$J;I)I
    .registers 2

    .prologue
    .line 21439
    iput p1, p0, Lmobi/tikl/wire/control/a$J;->rt:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$J;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 21439
    iput-object p1, p0, Lmobi/tikl/wire/control/a$J;->rs:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$J$a;
    .registers 2

    .prologue
    .line 21619
    invoke-static {}, Lmobi/tikl/wire/control/a$J;->wv()Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$J$a;->b(Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$J;Z)Z
    .registers 2

    .prologue
    .line 21439
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$J;->rr:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 21458
    invoke-static {}, Lmobi/tikl/wire/control/a;->lS()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$J;I)I
    .registers 2

    .prologue
    .line 21439
    iput p1, p0, Lmobi/tikl/wire/control/a$J;->rx:I

    return p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$J;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 21439
    iput-object p1, p0, Lmobi/tikl/wire/control/a$J;->rv:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$J;Z)Z
    .registers 2

    .prologue
    .line 21439
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$J;->aF:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$J;Z)Z
    .registers 2

    .prologue
    .line 21439
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$J;->ru:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$J;Z)Z
    .registers 2

    .prologue
    .line 21439
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$J;->rw:Z

    return p1
.end method

.method public static wo()Lmobi/tikl/wire/control/a$J;
    .registers 1

    .prologue
    .line 21449
    sget-object v0, Lmobi/tikl/wire/control/a$J;->rq:Lmobi/tikl/wire/control/a$J;

    return-object v0
.end method

.method public static wv()Lmobi/tikl/wire/control/a$J$a;
    .registers 1

    .prologue
    .line 21616
    invoke-static {}, Lmobi/tikl/wire/control/a$J$a;->wD()Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 21524
    iget v0, p0, Lmobi/tikl/wire/control/a$J;->ai:I

    .line 21525
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 21546
    :goto_5
    return v0

    .line 21527
    :cond_6
    const/4 v0, 0x0

    .line 21528
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->wq()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 21529
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 21532
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->cp()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 21533
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->wr()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21536
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->ws()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 21537
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->wt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21540
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->wu()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 21541
    const/16 v1, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->getSequenceNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21544
    :cond_49
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 21545
    iput v0, p0, Lmobi/tikl/wire/control/a$J;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 21506
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->a()I

    .line 21507
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->wq()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 21508
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 21510
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->cp()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 21511
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->wr()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 21513
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->ws()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 21514
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->wt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 21516
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->wu()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 21517
    const/16 v0, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->getSequenceNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 21519
    :cond_3c
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 21520
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 21439
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->ww()Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 21439
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->wp()Lmobi/tikl/wire/control/a$J;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 21439
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J;->wx()Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 21463
    invoke-static {}, Lmobi/tikl/wire/control/a;->lT()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public cp()Z
    .registers 2

    .prologue
    .line 21477
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$J;->aF:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21471
    iget-object v0, p0, Lmobi/tikl/wire/control/a$J;->rs:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()I
    .registers 2

    .prologue
    .line 21492
    iget v0, p0, Lmobi/tikl/wire/control/a$J;->rx:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 21497
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$J;->rr:Z

    if-nez v1, :cond_6

    .line 21501
    :cond_5
    :goto_5
    return v0

    .line 21498
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$J;->aF:Z

    if-eqz v1, :cond_5

    .line 21499
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$J;->ru:Z

    if-eqz v1, :cond_5

    .line 21500
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$J;->rw:Z

    if-eqz v1, :cond_5

    .line 21501
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public wp()Lmobi/tikl/wire/control/a$J;
    .registers 2

    .prologue
    .line 21453
    sget-object v0, Lmobi/tikl/wire/control/a$J;->rq:Lmobi/tikl/wire/control/a$J;

    return-object v0
.end method

.method public wq()Z
    .registers 2

    .prologue
    .line 21470
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$J;->rr:Z

    return v0
.end method

.method public wr()I
    .registers 2

    .prologue
    .line 21478
    iget v0, p0, Lmobi/tikl/wire/control/a$J;->rt:I

    return v0
.end method

.method public ws()Z
    .registers 2

    .prologue
    .line 21484
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$J;->ru:Z

    return v0
.end method

.method public wt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21485
    iget-object v0, p0, Lmobi/tikl/wire/control/a$J;->rv:Ljava/lang/String;

    return-object v0
.end method

.method public wu()Z
    .registers 2

    .prologue
    .line 21491
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$J;->rw:Z

    return v0
.end method

.method public ww()Lmobi/tikl/wire/control/a$J$a;
    .registers 2

    .prologue
    .line 21617
    invoke-static {}, Lmobi/tikl/wire/control/a$J;->wv()Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    return-object v0
.end method

.method public wx()Lmobi/tikl/wire/control/a$J$a;
    .registers 2

    .prologue
    .line 21621
    invoke-static {p0}, Lmobi/tikl/wire/control/a$J;->a(Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    return-object v0
.end method
