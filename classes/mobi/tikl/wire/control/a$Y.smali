.class public final Lmobi/tikl/wire/control/a$Y;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Y"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$Y$a;
    }
.end annotation


# static fields
.field private static final th:Lmobi/tikl/wire/control/a$Y;


# instance fields
.field private ai:I

.field private oA:Z

.field private oB:Lmobi/tikl/wire/control/a$G;

.field private oy:Z

.field private oz:I

.field private pC:Z

.field private pD:Ljava/lang/String;

.field private ti:Z

.field private tj:Ljava/lang/String;

.field private tk:Z

.field private tl:Ljava/lang/String;

.field private tm:Z

.field private tn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37012
    new-instance v0, Lmobi/tikl/wire/control/a$Y;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$Y;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$Y;->th:Lmobi/tikl/wire/control/a$Y;

    .line 37013
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 37014
    sget-object v0, Lmobi/tikl/wire/control/a$Y;->th:Lmobi/tikl/wire/control/a$Y;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$Y;->aJ()V

    .line 37015
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 36503
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 36530
    iput v1, p0, Lmobi/tikl/wire/control/a$Y;->oz:I

    .line 36537
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$Y;->pD:Ljava/lang/String;

    .line 36551
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$Y;->tj:Ljava/lang/String;

    .line 36558
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$Y;->tl:Ljava/lang/String;

    .line 36565
    iput-boolean v1, p0, Lmobi/tikl/wire/control/a$Y;->tn:Z

    .line 36607
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$Y;->ai:I

    .line 36504
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$Y;->aJ()V

    .line 36505
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 36500
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$Y;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 36506
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 36530
    iput v1, p0, Lmobi/tikl/wire/control/a$Y;->oz:I

    .line 36537
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$Y;->pD:Ljava/lang/String;

    .line 36551
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$Y;->tj:Ljava/lang/String;

    .line 36558
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$Y;->tl:Ljava/lang/String;

    .line 36565
    iput-boolean v1, p0, Lmobi/tikl/wire/control/a$Y;->tn:Z

    .line 36607
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$Y;->ai:I

    .line 36506
    return-void
.end method

.method public static AD()Lmobi/tikl/wire/control/a$Y;
    .registers 1

    .prologue
    .line 36510
    sget-object v0, Lmobi/tikl/wire/control/a$Y;->th:Lmobi/tikl/wire/control/a$Y;

    return-object v0
.end method

.method public static AL()Lmobi/tikl/wire/control/a$Y$a;
    .registers 1

    .prologue
    .line 36709
    invoke-static {}, Lmobi/tikl/wire/control/a$Y$a;->AT()Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$Y;I)I
    .registers 2

    .prologue
    .line 36500
    iput p1, p0, Lmobi/tikl/wire/control/a$Y;->oz:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$Y;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 36500
    iput-object p1, p0, Lmobi/tikl/wire/control/a$Y;->pD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$Y;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 36500
    iput-object p1, p0, Lmobi/tikl/wire/control/a$Y;->oB:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$Y$a;
    .registers 2

    .prologue
    .line 36712
    invoke-static {}, Lmobi/tikl/wire/control/a$Y;->AL()Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$Y$a;->c(Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$Y;Z)Z
    .registers 2

    .prologue
    .line 36500
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$Y;->oy:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 36570
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$Y;->oB:Lmobi/tikl/wire/control/a$G;

    .line 36571
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 36519
    invoke-static {}, Lmobi/tikl/wire/control/a;->no()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$Y;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 36500
    iput-object p1, p0, Lmobi/tikl/wire/control/a$Y;->tj:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 36500
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$Y;Z)Z
    .registers 2

    .prologue
    .line 36500
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$Y;->pC:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$Y;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 36500
    iput-object p1, p0, Lmobi/tikl/wire/control/a$Y;->tl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$Y;Z)Z
    .registers 2

    .prologue
    .line 36500
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$Y;->oA:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$Y;Z)Z
    .registers 2

    .prologue
    .line 36500
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$Y;->ti:Z

    return p1
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$Y;Z)Z
    .registers 2

    .prologue
    .line 36500
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$Y;->tk:Z

    return p1
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$Y;Z)Z
    .registers 2

    .prologue
    .line 36500
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$Y;->tm:Z

    return p1
.end method

.method static synthetic g(Lmobi/tikl/wire/control/a$Y;Z)Z
    .registers 2

    .prologue
    .line 36500
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$Y;->tn:Z

    return p1
.end method


# virtual methods
.method public AE()Lmobi/tikl/wire/control/a$Y;
    .registers 2

    .prologue
    .line 36514
    sget-object v0, Lmobi/tikl/wire/control/a$Y;->th:Lmobi/tikl/wire/control/a$Y;

    return-object v0
.end method

.method public AF()Z
    .registers 2

    .prologue
    .line 36552
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$Y;->ti:Z

    return v0
.end method

.method public AG()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36553
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y;->tj:Ljava/lang/String;

    return-object v0
.end method

.method public AH()Z
    .registers 2

    .prologue
    .line 36559
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$Y;->tk:Z

    return v0
.end method

.method public AI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36560
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y;->tl:Ljava/lang/String;

    return-object v0
.end method

.method public AJ()Z
    .registers 2

    .prologue
    .line 36566
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$Y;->tm:Z

    return v0
.end method

.method public AK()Z
    .registers 2

    .prologue
    .line 36567
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$Y;->tn:Z

    return v0
.end method

.method public AM()Lmobi/tikl/wire/control/a$Y$a;
    .registers 2

    .prologue
    .line 36710
    invoke-static {}, Lmobi/tikl/wire/control/a$Y;->AL()Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    return-object v0
.end method

.method public AN()Lmobi/tikl/wire/control/a$Y$a;
    .registers 2

    .prologue
    .line 36714
    invoke-static {p0}, Lmobi/tikl/wire/control/a$Y;->a(Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 4

    .prologue
    .line 36609
    iget v0, p0, Lmobi/tikl/wire/control/a$Y;->ai:I

    .line 36610
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 36639
    :goto_5
    return v0

    .line 36612
    :cond_6
    const/4 v0, 0x0

    .line 36613
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->oc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 36614
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->getMsgId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 36617
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->pS()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 36618
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->pT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36621
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->od()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 36622
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36625
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->AF()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 36626
    const/4 v1, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->AG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36629
    :cond_48
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->AH()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 36630
    const/4 v1, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->AI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36633
    :cond_58
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->AJ()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 36634
    const/4 v1, 0x6

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->AK()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 36637
    :cond_68
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 36638
    iput v0, p0, Lmobi/tikl/wire/control/a$Y;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 36585
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->a()I

    .line 36586
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->oc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 36587
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->getMsgId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 36589
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->pS()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 36590
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 36592
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->od()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 36593
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 36595
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->AF()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 36596
    const/4 v0, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->AG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 36598
    :cond_3b
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->AH()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 36599
    const/4 v0, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->AI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 36601
    :cond_49
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->AJ()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 36602
    const/4 v0, 0x6

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->AK()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 36604
    :cond_57
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 36605
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 36500
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->AM()Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 36500
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->AE()Lmobi/tikl/wire/control/a$Y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 36500
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->AN()Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 36524
    invoke-static {}, Lmobi/tikl/wire/control/a;->np()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 36532
    iget v0, p0, Lmobi/tikl/wire/control/a$Y;->oz:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 36573
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$Y;->oy:Z

    if-nez v1, :cond_6

    .line 36580
    :cond_5
    :goto_5
    return v0

    .line 36574
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$Y;->pC:Z

    if-eqz v1, :cond_5

    .line 36575
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$Y;->oA:Z

    if-eqz v1, :cond_5

    .line 36576
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$Y;->ti:Z

    if-eqz v1, :cond_5

    .line 36577
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$Y;->tk:Z

    if-eqz v1, :cond_5

    .line 36578
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$Y;->tm:Z

    if-eqz v1, :cond_5

    .line 36579
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Y;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 36580
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public oc()Z
    .registers 2

    .prologue
    .line 36531
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$Y;->oy:Z

    return v0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 36545
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$Y;->oA:Z

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 36546
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 36538
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$Y;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36539
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Y;->pD:Ljava/lang/String;

    return-object v0
.end method
