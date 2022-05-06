.class public final Lmobi/tikl/wire/control/a$A;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "A"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$A$a;
    }
.end annotation


# static fields
.field private static final qO:Lmobi/tikl/wire/control/a$A;


# instance fields
.field private ai:I

.field private oA:Z

.field private oB:Lmobi/tikl/wire/control/a$G;

.field private pC:Z

.field private pD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13813
    new-instance v0, Lmobi/tikl/wire/control/a$A;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$A;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$A;->qO:Lmobi/tikl/wire/control/a$A;

    .line 13814
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 13815
    sget-object v0, Lmobi/tikl/wire/control/a$A;->qO:Lmobi/tikl/wire/control/a$A;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$A;->aJ()V

    .line 13816
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13470
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 13504
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$A;->pD:Ljava/lang/String;

    .line 13530
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$A;->ai:I

    .line 13471
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$A;->aJ()V

    .line 13472
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 13467
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$A;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 13473
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 13504
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$A;->pD:Ljava/lang/String;

    .line 13530
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$A;->ai:I

    .line 13473
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$A;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 13467
    iput-object p1, p0, Lmobi/tikl/wire/control/a$A;->pD:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$A;)Lmobi/tikl/wire/control/a$A$a;
    .registers 2

    .prologue
    .line 13619
    invoke-static {}, Lmobi/tikl/wire/control/a$A;->ul()Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$A$a;->c(Lmobi/tikl/wire/control/a$A;)Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$A;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 13467
    iput-object p1, p0, Lmobi/tikl/wire/control/a$A;->oB:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$A;Z)Z
    .registers 2

    .prologue
    .line 13467
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$A;->oA:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 13509
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$A;->oB:Lmobi/tikl/wire/control/a$G;

    .line 13510
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 13486
    invoke-static {}, Lmobi/tikl/wire/control/a;->lc()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$A;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 13467
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$A;Z)Z
    .registers 2

    .prologue
    .line 13467
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$A;->pC:Z

    return p1
.end method

.method public static uj()Lmobi/tikl/wire/control/a$A;
    .registers 1

    .prologue
    .line 13477
    sget-object v0, Lmobi/tikl/wire/control/a$A;->qO:Lmobi/tikl/wire/control/a$A;

    return-object v0
.end method

.method public static ul()Lmobi/tikl/wire/control/a$A$a;
    .registers 1

    .prologue
    .line 13616
    invoke-static {}, Lmobi/tikl/wire/control/a$A$a;->ut()Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 13532
    iget v0, p0, Lmobi/tikl/wire/control/a$A;->ai:I

    .line 13533
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 13546
    :goto_5
    return v0

    .line 13535
    :cond_6
    const/4 v0, 0x0

    .line 13536
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A;->od()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 13537
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 13540
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A;->pS()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 13541
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A;->pT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13544
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 13545
    iput v0, p0, Lmobi/tikl/wire/control/a$A;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 13520
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A;->a()I

    .line 13521
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A;->od()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 13522
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 13524
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A;->pS()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 13525
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 13527
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 13528
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 13467
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A;->um()Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 13467
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A;->uk()Lmobi/tikl/wire/control/a$A;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 13467
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A;->un()Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 13491
    invoke-static {}, Lmobi/tikl/wire/control/a;->ld()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 13512
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$A;->oA:Z

    if-nez v1, :cond_6

    .line 13515
    :cond_5
    :goto_5
    return v0

    .line 13513
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$A;->pC:Z

    if-eqz v1, :cond_5

    .line 13514
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$A;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13515
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 13498
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$A;->oA:Z

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 13499
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 13505
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$A;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13506
    iget-object v0, p0, Lmobi/tikl/wire/control/a$A;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public uk()Lmobi/tikl/wire/control/a$A;
    .registers 2

    .prologue
    .line 13481
    sget-object v0, Lmobi/tikl/wire/control/a$A;->qO:Lmobi/tikl/wire/control/a$A;

    return-object v0
.end method

.method public um()Lmobi/tikl/wire/control/a$A$a;
    .registers 2

    .prologue
    .line 13617
    invoke-static {}, Lmobi/tikl/wire/control/a$A;->ul()Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    return-object v0
.end method

.method public un()Lmobi/tikl/wire/control/a$A$a;
    .registers 2

    .prologue
    .line 13621
    invoke-static {p0}, Lmobi/tikl/wire/control/a$A;->a(Lmobi/tikl/wire/control/a$A;)Lmobi/tikl/wire/control/a$A$a;

    move-result-object v0

    return-object v0
.end method
