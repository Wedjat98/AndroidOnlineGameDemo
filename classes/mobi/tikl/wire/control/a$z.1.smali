.class public final Lmobi/tikl/wire/control/a$z;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "z"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$z$a;
    }
.end annotation


# static fields
.field private static final qK:Lmobi/tikl/wire/control/a$z;


# instance fields
.field private ai:I

.field private pC:Z

.field private pD:Ljava/lang/String;

.field private pI:Z

.field private pJ:I

.field private qL:Z

.field private qM:Lmobi/tikl/wire/control/a$x;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34887
    new-instance v0, Lmobi/tikl/wire/control/a$z;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$z;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$z;->qK:Lmobi/tikl/wire/control/a$z;

    .line 34888
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 34889
    sget-object v0, Lmobi/tikl/wire/control/a$z;->qK:Lmobi/tikl/wire/control/a$z;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$z;->aJ()V

    .line 34890
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 34503
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 34530
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$z;->pD:Ljava/lang/String;

    .line 34544
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$z;->pJ:I

    .line 34575
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$z;->ai:I

    .line 34504
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$z;->aJ()V

    .line 34505
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 34500
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$z;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 34506
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 34530
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$z;->pD:Ljava/lang/String;

    .line 34544
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$z;->pJ:I

    .line 34575
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$z;->ai:I

    .line 34506
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$z;I)I
    .registers 2

    .prologue
    .line 34500
    iput p1, p0, Lmobi/tikl/wire/control/a$z;->pJ:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$z;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34500
    iput-object p1, p0, Lmobi/tikl/wire/control/a$z;->pD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$z;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 34500
    iput-object p1, p0, Lmobi/tikl/wire/control/a$z;->qM:Lmobi/tikl/wire/control/a$x;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$z;)Lmobi/tikl/wire/control/a$z$a;
    .registers 2

    .prologue
    .line 34668
    invoke-static {}, Lmobi/tikl/wire/control/a$z;->ua()Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$z$a;->c(Lmobi/tikl/wire/control/a$z;)Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$z;Z)Z
    .registers 2

    .prologue
    .line 34500
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$z;->pC:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 34549
    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tx()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$z;->qM:Lmobi/tikl/wire/control/a$x;

    .line 34550
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 34519
    invoke-static {}, Lmobi/tikl/wire/control/a;->ne()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$z;)Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 34500
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z;->qM:Lmobi/tikl/wire/control/a$x;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$z;Z)Z
    .registers 2

    .prologue
    .line 34500
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$z;->qL:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$z;Z)Z
    .registers 2

    .prologue
    .line 34500
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$z;->pI:Z

    return p1
.end method

.method public static tW()Lmobi/tikl/wire/control/a$z;
    .registers 1

    .prologue
    .line 34510
    sget-object v0, Lmobi/tikl/wire/control/a$z;->qK:Lmobi/tikl/wire/control/a$z;

    return-object v0
.end method

.method public static ua()Lmobi/tikl/wire/control/a$z$a;
    .registers 1

    .prologue
    .line 34665
    invoke-static {}, Lmobi/tikl/wire/control/a$z$a;->ui()Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 34577
    iget v0, p0, Lmobi/tikl/wire/control/a$z;->ai:I

    .line 34578
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 34595
    :goto_5
    return v0

    .line 34580
    :cond_6
    const/4 v0, 0x0

    .line 34581
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->pS()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 34582
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 34585
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->tY()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 34586
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->tZ()Lmobi/tikl/wire/control/a$x;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34589
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->qq()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 34590
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->qr()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 34593
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 34594
    iput v0, p0, Lmobi/tikl/wire/control/a$z;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 34562
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->a()I

    .line 34563
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->pS()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 34564
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 34566
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->tY()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 34567
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->tZ()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 34569
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->qq()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 34570
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->qr()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 34572
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 34573
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 34500
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->ub()Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 34500
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->tX()Lmobi/tikl/wire/control/a$z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 34500
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->uc()Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 34524
    invoke-static {}, Lmobi/tikl/wire/control/a;->nf()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 34552
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$z;->pC:Z

    if-nez v1, :cond_6

    .line 34557
    :cond_5
    :goto_5
    return v0

    .line 34553
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$z;->pI:Z

    if-eqz v1, :cond_5

    .line 34554
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->tY()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 34555
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z;->tZ()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$x;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 34557
    :cond_1a
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 34531
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$z;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34532
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public qq()Z
    .registers 2

    .prologue
    .line 34545
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$z;->pI:Z

    return v0
.end method

.method public qr()I
    .registers 2

    .prologue
    .line 34546
    iget v0, p0, Lmobi/tikl/wire/control/a$z;->pJ:I

    return v0
.end method

.method public tX()Lmobi/tikl/wire/control/a$z;
    .registers 2

    .prologue
    .line 34514
    sget-object v0, Lmobi/tikl/wire/control/a$z;->qK:Lmobi/tikl/wire/control/a$z;

    return-object v0
.end method

.method public tY()Z
    .registers 2

    .prologue
    .line 34538
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$z;->qL:Z

    return v0
.end method

.method public tZ()Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 34539
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z;->qM:Lmobi/tikl/wire/control/a$x;

    return-object v0
.end method

.method public ub()Lmobi/tikl/wire/control/a$z$a;
    .registers 2

    .prologue
    .line 34666
    invoke-static {}, Lmobi/tikl/wire/control/a$z;->ua()Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public uc()Lmobi/tikl/wire/control/a$z$a;
    .registers 2

    .prologue
    .line 34670
    invoke-static {p0}, Lmobi/tikl/wire/control/a$z;->a(Lmobi/tikl/wire/control/a$z;)Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    return-object v0
.end method
