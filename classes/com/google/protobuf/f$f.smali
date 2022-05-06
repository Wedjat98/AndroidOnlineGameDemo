.class public final Lcom/google/protobuf/f$f;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$f$a;,
        Lcom/google/protobuf/f$f$b;,
        Lcom/google/protobuf/f$f$c;
    }
.end annotation


# static fields
.field private static final aE:Lcom/google/protobuf/f$f;


# instance fields
.field private Z:Z

.field private aF:Z

.field private aG:Lcom/google/protobuf/f$f$b;

.field private aH:Z

.field private aI:Lcom/google/protobuf/f$f$c;

.field private aJ:Z

.field private aK:Ljava/lang/String;

.field private aL:Z

.field private aM:Ljava/lang/String;

.field private aN:Z

.field private aO:Ljava/lang/String;

.field private aP:Lcom/google/protobuf/f$g;

.field private aa:Ljava/lang/String;

.field private ag:Z

.field private ai:I

.field private ay:Z

.field private az:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3071
    new-instance v0, Lcom/google/protobuf/f$f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$f;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$f;->aE:Lcom/google/protobuf/f$f;

    .line 3072
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 3073
    sget-object v0, Lcom/google/protobuf/f$f;->aE:Lcom/google/protobuf/f$f;

    invoke-direct {v0}, Lcom/google/protobuf/f$f;->aJ()V

    .line 3074
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2297
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 2492
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$f;->aa:Ljava/lang/String;

    .line 2499
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/f$f;->az:I

    .line 2520
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$f;->aK:Ljava/lang/String;

    .line 2527
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$f;->aM:Ljava/lang/String;

    .line 2534
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$f;->aO:Ljava/lang/String;

    .line 2587
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$f;->ai:I

    .line 2298
    invoke-direct {p0}, Lcom/google/protobuf/f$f;->aJ()V

    .line 2299
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 2294
    invoke-direct {p0}, Lcom/google/protobuf/f$f;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 2300
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 2492
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$f;->aa:Ljava/lang/String;

    .line 2499
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/f$f;->az:I

    .line 2520
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$f;->aK:Ljava/lang/String;

    .line 2527
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$f;->aM:Ljava/lang/String;

    .line 2534
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$f;->aO:Ljava/lang/String;

    .line 2587
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$f;->ai:I

    .line 2300
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/f$f;I)I
    .registers 2

    .prologue
    .line 2294
    iput p1, p0, Lcom/google/protobuf/f$f;->az:I

    return p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$f;Lcom/google/protobuf/f$f$b;)Lcom/google/protobuf/f$f$b;
    .registers 2

    .prologue
    .line 2294
    iput-object p1, p0, Lcom/google/protobuf/f$f;->aG:Lcom/google/protobuf/f$f$b;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$f;Lcom/google/protobuf/f$f$c;)Lcom/google/protobuf/f$f$c;
    .registers 2

    .prologue
    .line 2294
    iput-object p1, p0, Lcom/google/protobuf/f$f;->aI:Lcom/google/protobuf/f$f$c;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$f;Lcom/google/protobuf/f$g;)Lcom/google/protobuf/f$g;
    .registers 2

    .prologue
    .line 2294
    iput-object p1, p0, Lcom/google/protobuf/f$f;->aP:Lcom/google/protobuf/f$g;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2294
    iput-object p1, p0, Lcom/google/protobuf/f$f;->aa:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$f;Z)Z
    .registers 2

    .prologue
    .line 2294
    iput-boolean p1, p0, Lcom/google/protobuf/f$f;->Z:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 2546
    sget-object v0, Lcom/google/protobuf/f$f$b;->aR:Lcom/google/protobuf/f$f$b;

    iput-object v0, p0, Lcom/google/protobuf/f$f;->aG:Lcom/google/protobuf/f$f$b;

    .line 2547
    sget-object v0, Lcom/google/protobuf/f$f$c;->aU:Lcom/google/protobuf/f$f$c;

    iput-object v0, p0, Lcom/google/protobuf/f$f;->aI:Lcom/google/protobuf/f$f$c;

    .line 2548
    invoke-static {}, Lcom/google/protobuf/f$g;->cH()Lcom/google/protobuf/f$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$f;->aP:Lcom/google/protobuf/f$g;

    .line 2549
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 2313
    invoke-static {}, Lcom/google/protobuf/f;->T()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2294
    iput-object p1, p0, Lcom/google/protobuf/f$f;->aK:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/protobuf/f$f;Z)Z
    .registers 2

    .prologue
    .line 2294
    iput-boolean p1, p0, Lcom/google/protobuf/f$f;->ay:Z

    return p1
.end method

.method public static c(Lcom/google/protobuf/f$f;)Lcom/google/protobuf/f$f$a;
    .registers 2

    .prologue
    .line 2700
    invoke-static {}, Lcom/google/protobuf/f$f;->cx()Lcom/google/protobuf/f$f$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$f$a;->e(Lcom/google/protobuf/f$f;)Lcom/google/protobuf/f$f$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/protobuf/f$f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2294
    iput-object p1, p0, Lcom/google/protobuf/f$f;->aM:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/google/protobuf/f$f;Z)Z
    .registers 2

    .prologue
    .line 2294
    iput-boolean p1, p0, Lcom/google/protobuf/f$f;->aF:Z

    return p1
.end method

.method public static cn()Lcom/google/protobuf/f$f;
    .registers 1

    .prologue
    .line 2304
    sget-object v0, Lcom/google/protobuf/f$f;->aE:Lcom/google/protobuf/f$f;

    return-object v0
.end method

.method public static cx()Lcom/google/protobuf/f$f$a;
    .registers 1

    .prologue
    .line 2697
    invoke-static {}, Lcom/google/protobuf/f$f$a;->cF()Lcom/google/protobuf/f$f$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/protobuf/f$f;)Lcom/google/protobuf/f$g;
    .registers 2

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/google/protobuf/f$f;->aP:Lcom/google/protobuf/f$g;

    return-object v0
.end method

.method static synthetic d(Lcom/google/protobuf/f$f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2294
    iput-object p1, p0, Lcom/google/protobuf/f$f;->aO:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/google/protobuf/f$f;Z)Z
    .registers 2

    .prologue
    .line 2294
    iput-boolean p1, p0, Lcom/google/protobuf/f$f;->aH:Z

    return p1
.end method

.method static synthetic e(Lcom/google/protobuf/f$f;Z)Z
    .registers 2

    .prologue
    .line 2294
    iput-boolean p1, p0, Lcom/google/protobuf/f$f;->aJ:Z

    return p1
.end method

.method static synthetic f(Lcom/google/protobuf/f$f;Z)Z
    .registers 2

    .prologue
    .line 2294
    iput-boolean p1, p0, Lcom/google/protobuf/f$f;->aL:Z

    return p1
.end method

.method static synthetic g(Lcom/google/protobuf/f$f;Z)Z
    .registers 2

    .prologue
    .line 2294
    iput-boolean p1, p0, Lcom/google/protobuf/f$f;->aN:Z

    return p1
.end method

.method static synthetic h(Lcom/google/protobuf/f$f;Z)Z
    .registers 2

    .prologue
    .line 2294
    iput-boolean p1, p0, Lcom/google/protobuf/f$f;->ag:Z

    return p1
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 2589
    iget v0, p0, Lcom/google/protobuf/f$f;->ai:I

    .line 2590
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 2627
    :goto_5
    return v0

    .line 2592
    :cond_6
    const/4 v0, 0x0

    .line 2593
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->hasName()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2594
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2597
    :cond_18
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->cu()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2598
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->cv()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2601
    :cond_28
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->bR()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2602
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2605
    :cond_38
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->cp()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2606
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->cq()Lcom/google/protobuf/f$f$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/f$f$b;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2609
    :cond_4c
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->cr()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 2610
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->cs()Lcom/google/protobuf/f$f$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/f$f$c;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2613
    :cond_60
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->ct()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 2614
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2617
    :cond_70
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->hasDefaultValue()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 2618
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2621
    :cond_80
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->aH()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 2622
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->cw()Lcom/google/protobuf/f$g;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2625
    :cond_91
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 2626
    iput v0, p0, Lcom/google/protobuf/f$f;->ai:I

    goto/16 :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 2559
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->a()I

    .line 2560
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->hasName()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2561
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 2563
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->cu()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2564
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->cv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 2566
    :cond_1f
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->bR()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2567
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 2569
    :cond_2d
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->cp()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2570
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->cq()Lcom/google/protobuf/f$f$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/f$f$b;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->d(II)V

    .line 2572
    :cond_3f
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->cr()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2573
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->cs()Lcom/google/protobuf/f$f$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/f$f$c;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->d(II)V

    .line 2575
    :cond_51
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->ct()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2576
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 2578
    :cond_5f
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->hasDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 2579
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 2581
    :cond_6d
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->aH()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 2582
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->cw()Lcom/google/protobuf/f$g;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 2584
    :cond_7c
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 2585
    return-void
.end method

.method public aH()Z
    .registers 2

    .prologue
    .line 2542
    iget-boolean v0, p0, Lcom/google/protobuf/f$f;->ag:Z

    return v0
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 2294
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->cy()Lcom/google/protobuf/f$f$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 2294
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->co()Lcom/google/protobuf/f$f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 2294
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->cz()Lcom/google/protobuf/f$f$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 2318
    invoke-static {}, Lcom/google/protobuf/f;->U()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public bR()Z
    .registers 2

    .prologue
    .line 2500
    iget-boolean v0, p0, Lcom/google/protobuf/f$f;->ay:Z

    return v0
.end method

.method public co()Lcom/google/protobuf/f$f;
    .registers 2

    .prologue
    .line 2308
    sget-object v0, Lcom/google/protobuf/f$f;->aE:Lcom/google/protobuf/f$f;

    return-object v0
.end method

.method public cp()Z
    .registers 2

    .prologue
    .line 2507
    iget-boolean v0, p0, Lcom/google/protobuf/f$f;->aF:Z

    return v0
.end method

.method public cq()Lcom/google/protobuf/f$f$b;
    .registers 2

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/google/protobuf/f$f;->aG:Lcom/google/protobuf/f$f$b;

    return-object v0
.end method

.method public cr()Z
    .registers 2

    .prologue
    .line 2514
    iget-boolean v0, p0, Lcom/google/protobuf/f$f;->aH:Z

    return v0
.end method

.method public cs()Lcom/google/protobuf/f$f$c;
    .registers 2

    .prologue
    .line 2515
    iget-object v0, p0, Lcom/google/protobuf/f$f;->aI:Lcom/google/protobuf/f$f$c;

    return-object v0
.end method

.method public ct()Z
    .registers 2

    .prologue
    .line 2521
    iget-boolean v0, p0, Lcom/google/protobuf/f$f;->aJ:Z

    return v0
.end method

.method public cu()Z
    .registers 2

    .prologue
    .line 2528
    iget-boolean v0, p0, Lcom/google/protobuf/f$f;->aL:Z

    return v0
.end method

.method public cv()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2529
    iget-object v0, p0, Lcom/google/protobuf/f$f;->aM:Ljava/lang/String;

    return-object v0
.end method

.method public cw()Lcom/google/protobuf/f$g;
    .registers 2

    .prologue
    .line 2543
    iget-object v0, p0, Lcom/google/protobuf/f$f;->aP:Lcom/google/protobuf/f$g;

    return-object v0
.end method

.method public cy()Lcom/google/protobuf/f$f$a;
    .registers 2

    .prologue
    .line 2698
    invoke-static {}, Lcom/google/protobuf/f$f;->cx()Lcom/google/protobuf/f$f$a;

    move-result-object v0

    return-object v0
.end method

.method public cz()Lcom/google/protobuf/f$f$a;
    .registers 2

    .prologue
    .line 2702
    invoke-static {p0}, Lcom/google/protobuf/f$f;->c(Lcom/google/protobuf/f$f;)Lcom/google/protobuf/f$f$a;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2536
    iget-object v0, p0, Lcom/google/protobuf/f$f;->aO:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2494
    iget-object v0, p0, Lcom/google/protobuf/f$f;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    .prologue
    .line 2501
    iget v0, p0, Lcom/google/protobuf/f$f;->az:I

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/google/protobuf/f$f;->aK:Ljava/lang/String;

    return-object v0
.end method

.method public hasDefaultValue()Z
    .registers 2

    .prologue
    .line 2535
    iget-boolean v0, p0, Lcom/google/protobuf/f$f;->aN:Z

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 2493
    iget-boolean v0, p0, Lcom/google/protobuf/f$f;->Z:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 2551
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->aH()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2552
    invoke-virtual {p0}, Lcom/google/protobuf/f$f;->cw()Lcom/google/protobuf/f$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/f$g;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 2554
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method
