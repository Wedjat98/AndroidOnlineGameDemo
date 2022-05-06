.class public final Lcom/google/protobuf/f$d;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$d$a;
    }
.end annotation


# static fields
.field private static final ax:Lcom/google/protobuf/f$d;


# instance fields
.field private Z:Z

.field private aA:Lcom/google/protobuf/f$e;

.field private aa:Ljava/lang/String;

.field private ag:Z

.field private ai:I

.field private ay:Z

.field private az:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3907
    new-instance v0, Lcom/google/protobuf/f$d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$d;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$d;->ax:Lcom/google/protobuf/f$d;

    .line 3908
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 3909
    sget-object v0, Lcom/google/protobuf/f$d;->ax:Lcom/google/protobuf/f$d;

    invoke-direct {v0}, Lcom/google/protobuf/f$d;->aJ()V

    .line 3910
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3525
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 3552
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$d;->aa:Ljava/lang/String;

    .line 3559
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/f$d;->az:I

    .line 3595
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$d;->ai:I

    .line 3526
    invoke-direct {p0}, Lcom/google/protobuf/f$d;->aJ()V

    .line 3527
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 3522
    invoke-direct {p0}, Lcom/google/protobuf/f$d;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 3528
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 3552
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$d;->aa:Ljava/lang/String;

    .line 3559
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/f$d;->az:I

    .line 3595
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$d;->ai:I

    .line 3528
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/f$d;I)I
    .registers 2

    .prologue
    .line 3522
    iput p1, p0, Lcom/google/protobuf/f$d;->az:I

    return p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$d;Lcom/google/protobuf/f$e;)Lcom/google/protobuf/f$e;
    .registers 2

    .prologue
    .line 3522
    iput-object p1, p0, Lcom/google/protobuf/f$d;->aA:Lcom/google/protobuf/f$e;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$d;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3522
    iput-object p1, p0, Lcom/google/protobuf/f$d;->aa:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$d;Z)Z
    .registers 2

    .prologue
    .line 3522
    iput-boolean p1, p0, Lcom/google/protobuf/f$d;->Z:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 3571
    invoke-static {}, Lcom/google/protobuf/f$e;->cc()Lcom/google/protobuf/f$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$d;->aA:Lcom/google/protobuf/f$e;

    .line 3572
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 3541
    invoke-static {}, Lcom/google/protobuf/f;->X()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/protobuf/f$d;)Lcom/google/protobuf/f$d$a;
    .registers 2

    .prologue
    .line 3688
    invoke-static {}, Lcom/google/protobuf/f$d;->bT()Lcom/google/protobuf/f$d$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$d$a;->d(Lcom/google/protobuf/f$d;)Lcom/google/protobuf/f$d$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$d;Z)Z
    .registers 2

    .prologue
    .line 3522
    iput-boolean p1, p0, Lcom/google/protobuf/f$d;->ay:Z

    return p1
.end method

.method public static bP()Lcom/google/protobuf/f$d;
    .registers 1

    .prologue
    .line 3532
    sget-object v0, Lcom/google/protobuf/f$d;->ax:Lcom/google/protobuf/f$d;

    return-object v0
.end method

.method public static bT()Lcom/google/protobuf/f$d$a;
    .registers 1

    .prologue
    .line 3685
    invoke-static {}, Lcom/google/protobuf/f$d$a;->cb()Lcom/google/protobuf/f$d$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/protobuf/f$d;)Lcom/google/protobuf/f$e;
    .registers 2

    .prologue
    .line 3522
    iget-object v0, p0, Lcom/google/protobuf/f$d;->aA:Lcom/google/protobuf/f$e;

    return-object v0
.end method

.method static synthetic c(Lcom/google/protobuf/f$d;Z)Z
    .registers 2

    .prologue
    .line 3522
    iput-boolean p1, p0, Lcom/google/protobuf/f$d;->ag:Z

    return p1
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 3597
    iget v0, p0, Lcom/google/protobuf/f$d;->ai:I

    .line 3598
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 3615
    :goto_5
    return v0

    .line 3600
    :cond_6
    const/4 v0, 0x0

    .line 3601
    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->hasName()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3602
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 3605
    :cond_18
    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->bR()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3606
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3609
    :cond_28
    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->aH()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 3610
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->bS()Lcom/google/protobuf/f$e;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3613
    :cond_38
    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 3614
    iput v0, p0, Lcom/google/protobuf/f$d;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 3582
    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->a()I

    .line 3583
    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->hasName()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3584
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 3586
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->bR()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3587
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 3589
    :cond_1f
    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->aH()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3590
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->bS()Lcom/google/protobuf/f$e;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 3592
    :cond_2d
    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 3593
    return-void
.end method

.method public aH()Z
    .registers 2

    .prologue
    .line 3567
    iget-boolean v0, p0, Lcom/google/protobuf/f$d;->ag:Z

    return v0
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 3522
    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->bU()Lcom/google/protobuf/f$d$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 3522
    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->bQ()Lcom/google/protobuf/f$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 3522
    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->bV()Lcom/google/protobuf/f$d$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 3546
    invoke-static {}, Lcom/google/protobuf/f;->Y()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public bQ()Lcom/google/protobuf/f$d;
    .registers 2

    .prologue
    .line 3536
    sget-object v0, Lcom/google/protobuf/f$d;->ax:Lcom/google/protobuf/f$d;

    return-object v0
.end method

.method public bR()Z
    .registers 2

    .prologue
    .line 3560
    iget-boolean v0, p0, Lcom/google/protobuf/f$d;->ay:Z

    return v0
.end method

.method public bS()Lcom/google/protobuf/f$e;
    .registers 2

    .prologue
    .line 3568
    iget-object v0, p0, Lcom/google/protobuf/f$d;->aA:Lcom/google/protobuf/f$e;

    return-object v0
.end method

.method public bU()Lcom/google/protobuf/f$d$a;
    .registers 2

    .prologue
    .line 3686
    invoke-static {}, Lcom/google/protobuf/f$d;->bT()Lcom/google/protobuf/f$d$a;

    move-result-object v0

    return-object v0
.end method

.method public bV()Lcom/google/protobuf/f$d$a;
    .registers 2

    .prologue
    .line 3690
    invoke-static {p0}, Lcom/google/protobuf/f$d;->b(Lcom/google/protobuf/f$d;)Lcom/google/protobuf/f$d$a;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3554
    iget-object v0, p0, Lcom/google/protobuf/f$d;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    .prologue
    .line 3561
    iget v0, p0, Lcom/google/protobuf/f$d;->az:I

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 3553
    iget-boolean v0, p0, Lcom/google/protobuf/f$d;->Z:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 3574
    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->aH()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3575
    invoke-virtual {p0}, Lcom/google/protobuf/f$d;->bS()Lcom/google/protobuf/f$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/f$e;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 3577
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method
