.class public final Lmobi/tikl/wire/control/a$ax;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ax"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$ax$a;
    }
.end annotation


# static fields
.field private static final yp:Lmobi/tikl/wire/control/a$ax;


# instance fields
.field private ai:I

.field private ws:Z

.field private wt:J

.field private yq:Z

.field private yr:Lmobi/tikl/wire/control/a$G;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30817
    new-instance v0, Lmobi/tikl/wire/control/a$ax;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$ax;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$ax;->yp:Lmobi/tikl/wire/control/a$ax;

    .line 30818
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 30819
    sget-object v0, Lmobi/tikl/wire/control/a$ax;->yp:Lmobi/tikl/wire/control/a$ax;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ax;->aJ()V

    .line 30820
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 30477
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 30511
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmobi/tikl/wire/control/a$ax;->wt:J

    .line 30537
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ax;->ai:I

    .line 30478
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ax;->aJ()V

    .line 30479
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 30474
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ax;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4

    .prologue
    .line 30480
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 30511
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmobi/tikl/wire/control/a$ax;->wt:J

    .line 30537
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ax;->ai:I

    .line 30480
    return-void
.end method

.method public static JZ()Lmobi/tikl/wire/control/a$ax;
    .registers 1

    .prologue
    .line 30484
    sget-object v0, Lmobi/tikl/wire/control/a$ax;->yp:Lmobi/tikl/wire/control/a$ax;

    return-object v0
.end method

.method public static Kd()Lmobi/tikl/wire/control/a$ax$a;
    .registers 1

    .prologue
    .line 30623
    invoke-static {}, Lmobi/tikl/wire/control/a$ax$a;->Kl()Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ax;J)J
    .registers 4

    .prologue
    .line 30474
    iput-wide p1, p0, Lmobi/tikl/wire/control/a$ax;->wt:J

    return-wide p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ax;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 30474
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ax;->yr:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$ax;)Lmobi/tikl/wire/control/a$ax$a;
    .registers 2

    .prologue
    .line 30626
    invoke-static {}, Lmobi/tikl/wire/control/a$ax;->Kd()Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$ax$a;->c(Lmobi/tikl/wire/control/a$ax;)Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ax;Z)Z
    .registers 2

    .prologue
    .line 30474
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ax;->yq:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 30516
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ax;->yr:Lmobi/tikl/wire/control/a$G;

    .line 30517
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 30493
    invoke-static {}, Lmobi/tikl/wire/control/a;->mK()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ax;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 30474
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax;->yr:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ax;Z)Z
    .registers 2

    .prologue
    .line 30474
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ax;->ws:Z

    return p1
.end method


# virtual methods
.method public HM()Z
    .registers 2

    .prologue
    .line 30512
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ax;->ws:Z

    return v0
.end method

.method public Ka()Lmobi/tikl/wire/control/a$ax;
    .registers 2

    .prologue
    .line 30488
    sget-object v0, Lmobi/tikl/wire/control/a$ax;->yp:Lmobi/tikl/wire/control/a$ax;

    return-object v0
.end method

.method public Kb()Z
    .registers 2

    .prologue
    .line 30505
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ax;->yq:Z

    return v0
.end method

.method public Kc()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 30506
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ax;->yr:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public Ke()Lmobi/tikl/wire/control/a$ax$a;
    .registers 2

    .prologue
    .line 30624
    invoke-static {}, Lmobi/tikl/wire/control/a$ax;->Kd()Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    return-object v0
.end method

.method public Kf()Lmobi/tikl/wire/control/a$ax$a;
    .registers 2

    .prologue
    .line 30628
    invoke-static {p0}, Lmobi/tikl/wire/control/a$ax;->a(Lmobi/tikl/wire/control/a$ax;)Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 5

    .prologue
    .line 30539
    iget v0, p0, Lmobi/tikl/wire/control/a$ax;->ai:I

    .line 30540
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 30553
    :goto_5
    return v0

    .line 30542
    :cond_6
    const/4 v0, 0x0

    .line 30543
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax;->Kb()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 30544
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax;->Kc()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 30547
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax;->HM()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 30548
    const/4 v1, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax;->getTimeStamp()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 30551
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 30552
    iput v0, p0, Lmobi/tikl/wire/control/a$ax;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 6

    .prologue
    .line 30527
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax;->a()I

    .line 30528
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax;->Kb()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 30529
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax;->Kc()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 30531
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax;->HM()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 30532
    const/4 v0, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/e;->b(IJ)V

    .line 30534
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 30535
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 30474
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax;->Ke()Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 30474
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax;->Ka()Lmobi/tikl/wire/control/a$ax;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 30474
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax;->Kf()Lmobi/tikl/wire/control/a$ax$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 30498
    invoke-static {}, Lmobi/tikl/wire/control/a;->mL()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()J
    .registers 3

    .prologue
    .line 30513
    iget-wide v0, p0, Lmobi/tikl/wire/control/a$ax;->wt:J

    return-wide v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 30519
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$ax;->yq:Z

    if-nez v1, :cond_6

    .line 30522
    :cond_5
    :goto_5
    return v0

    .line 30520
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$ax;->ws:Z

    if-eqz v1, :cond_5

    .line 30521
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ax;->Kc()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 30522
    const/4 v0, 0x1

    goto :goto_5
.end method
