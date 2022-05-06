.class public final Lmobi/tikl/wire/control/a$p;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$p$a;
    }
.end annotation


# static fields
.field private static final qf:Lmobi/tikl/wire/control/a$p;


# instance fields
.field private ai:I

.field private oy:Z

.field private oz:I

.field private pC:Z

.field private pD:Ljava/lang/String;

.field private pI:Z

.field private pJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33876
    new-instance v0, Lmobi/tikl/wire/control/a$p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$p;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$p;->qf:Lmobi/tikl/wire/control/a$p;

    .line 33877
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 33878
    sget-object v0, Lmobi/tikl/wire/control/a$p;->qf:Lmobi/tikl/wire/control/a$p;

    .line 33879
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 33519
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 33546
    iput v1, p0, Lmobi/tikl/wire/control/a$p;->oz:I

    .line 33553
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$p;->pD:Ljava/lang/String;

    .line 33560
    iput v1, p0, Lmobi/tikl/wire/control/a$p;->pJ:I

    .line 33588
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$p;->ai:I

    .line 33520
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 33516
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$p;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 33522
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 33546
    iput v1, p0, Lmobi/tikl/wire/control/a$p;->oz:I

    .line 33553
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$p;->pD:Ljava/lang/String;

    .line 33560
    iput v1, p0, Lmobi/tikl/wire/control/a$p;->pJ:I

    .line 33588
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$p;->ai:I

    .line 33522
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$p;I)I
    .registers 2

    .prologue
    .line 33516
    iput p1, p0, Lmobi/tikl/wire/control/a$p;->oz:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$p;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 33516
    iput-object p1, p0, Lmobi/tikl/wire/control/a$p;->pD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$p;Z)Z
    .registers 2

    .prologue
    .line 33516
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$p;->oy:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 33535
    invoke-static {}, Lmobi/tikl/wire/control/a;->mY()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$p;I)I
    .registers 2

    .prologue
    .line 33516
    iput p1, p0, Lmobi/tikl/wire/control/a$p;->pJ:I

    return p1
.end method

.method public static b(Lmobi/tikl/wire/control/a$p;)Lmobi/tikl/wire/control/a$p$a;
    .registers 2

    .prologue
    .line 33681
    invoke-static {}, Lmobi/tikl/wire/control/a$p;->rH()Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$p$a;->c(Lmobi/tikl/wire/control/a$p;)Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$p;Z)Z
    .registers 2

    .prologue
    .line 33516
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$p;->pC:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$p;Z)Z
    .registers 2

    .prologue
    .line 33516
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$p;->pI:Z

    return p1
.end method

.method public static rF()Lmobi/tikl/wire/control/a$p;
    .registers 1

    .prologue
    .line 33526
    sget-object v0, Lmobi/tikl/wire/control/a$p;->qf:Lmobi/tikl/wire/control/a$p;

    return-object v0
.end method

.method public static rH()Lmobi/tikl/wire/control/a$p$a;
    .registers 1

    .prologue
    .line 33678
    invoke-static {}, Lmobi/tikl/wire/control/a$p$a;->rP()Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 33590
    iget v0, p0, Lmobi/tikl/wire/control/a$p;->ai:I

    .line 33591
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 33608
    :goto_5
    return v0

    .line 33593
    :cond_6
    const/4 v0, 0x0

    .line 33594
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->oc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 33595
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->getMsgId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 33598
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->pS()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 33599
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->pT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33602
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->qq()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 33603
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->qr()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 33606
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 33607
    iput v0, p0, Lmobi/tikl/wire/control/a$p;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 33575
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->a()I

    .line 33576
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->oc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 33577
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->getMsgId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 33579
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->pS()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 33580
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 33582
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->qq()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 33583
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->qr()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 33585
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 33586
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 33516
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->rI()Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 33516
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->rG()Lmobi/tikl/wire/control/a$p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 33516
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p;->rJ()Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 33540
    invoke-static {}, Lmobi/tikl/wire/control/a;->mZ()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 33548
    iget v0, p0, Lmobi/tikl/wire/control/a$p;->oz:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 33567
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$p;->oy:Z

    if-nez v1, :cond_6

    .line 33570
    :cond_5
    :goto_5
    return v0

    .line 33568
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$p;->pC:Z

    if-eqz v1, :cond_5

    .line 33569
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$p;->pI:Z

    if-eqz v1, :cond_5

    .line 33570
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public oc()Z
    .registers 2

    .prologue
    .line 33547
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$p;->oy:Z

    return v0
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 33554
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$p;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33555
    iget-object v0, p0, Lmobi/tikl/wire/control/a$p;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public qq()Z
    .registers 2

    .prologue
    .line 33561
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$p;->pI:Z

    return v0
.end method

.method public qr()I
    .registers 2

    .prologue
    .line 33562
    iget v0, p0, Lmobi/tikl/wire/control/a$p;->pJ:I

    return v0
.end method

.method public rG()Lmobi/tikl/wire/control/a$p;
    .registers 2

    .prologue
    .line 33530
    sget-object v0, Lmobi/tikl/wire/control/a$p;->qf:Lmobi/tikl/wire/control/a$p;

    return-object v0
.end method

.method public rI()Lmobi/tikl/wire/control/a$p$a;
    .registers 2

    .prologue
    .line 33679
    invoke-static {}, Lmobi/tikl/wire/control/a$p;->rH()Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public rJ()Lmobi/tikl/wire/control/a$p$a;
    .registers 2

    .prologue
    .line 33683
    invoke-static {p0}, Lmobi/tikl/wire/control/a$p;->b(Lmobi/tikl/wire/control/a$p;)Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    return-object v0
.end method
