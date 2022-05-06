.class public final Lcom/google/protobuf/f$k;
.super Lcom/google/protobuf/q$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$k$a;
    }
.end annotation


# static fields
.field private static final ce:Lcom/google/protobuf/f$k;


# instance fields
.field private ai:I

.field private av:Ljava/util/List;

.field private cf:Z

.field private cg:Z

.field private ch:Z

.field private ci:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5908
    new-instance v0, Lcom/google/protobuf/f$k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$k;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$k;->ce:Lcom/google/protobuf/f$k;

    .line 5909
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 5910
    sget-object v0, Lcom/google/protobuf/f$k;->ce:Lcom/google/protobuf/f$k;

    .line 5911
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 5500
    invoke-direct {p0}, Lcom/google/protobuf/q$c;-><init>()V

    .line 5527
    iput-boolean v0, p0, Lcom/google/protobuf/f$k;->cg:Z

    .line 5534
    iput-boolean v0, p0, Lcom/google/protobuf/f$k;->ci:Z

    .line 5540
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$k;->av:Ljava/util/List;

    .line 5578
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$k;->ai:I

    .line 5501
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 5496
    invoke-direct {p0}, Lcom/google/protobuf/f$k;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 5503
    invoke-direct {p0}, Lcom/google/protobuf/q$c;-><init>()V

    .line 5527
    iput-boolean v0, p0, Lcom/google/protobuf/f$k;->cg:Z

    .line 5534
    iput-boolean v0, p0, Lcom/google/protobuf/f$k;->ci:Z

    .line 5540
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$k;->av:Ljava/util/List;

    .line 5578
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$k;->ai:I

    .line 5503
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/f$k;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 5496
    iput-object p1, p0, Lcom/google/protobuf/f$k;->av:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$k;Z)Z
    .registers 2

    .prologue
    .line 5496
    iput-boolean p1, p0, Lcom/google/protobuf/f$k;->cf:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 5516
    invoke-static {}, Lcom/google/protobuf/f;->af()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$k;Z)Z
    .registers 2

    .prologue
    .line 5496
    iput-boolean p1, p0, Lcom/google/protobuf/f$k;->cg:Z

    return p1
.end method

.method public static c(Lcom/google/protobuf/f$k;)Lcom/google/protobuf/f$k$a;
    .registers 2

    .prologue
    .line 5672
    invoke-static {}, Lcom/google/protobuf/f$k;->el()Lcom/google/protobuf/f$k$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$k$a;->e(Lcom/google/protobuf/f$k;)Lcom/google/protobuf/f$k$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/protobuf/f$k;Z)Z
    .registers 2

    .prologue
    .line 5496
    iput-boolean p1, p0, Lcom/google/protobuf/f$k;->ch:Z

    return p1
.end method

.method static synthetic d(Lcom/google/protobuf/f$k;)Ljava/util/List;
    .registers 2

    .prologue
    .line 5496
    iget-object v0, p0, Lcom/google/protobuf/f$k;->av:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/protobuf/f$k;Z)Z
    .registers 2

    .prologue
    .line 5496
    iput-boolean p1, p0, Lcom/google/protobuf/f$k;->ci:Z

    return p1
.end method

.method public static ef()Lcom/google/protobuf/f$k;
    .registers 1

    .prologue
    .line 5507
    sget-object v0, Lcom/google/protobuf/f$k;->ce:Lcom/google/protobuf/f$k;

    return-object v0
.end method

.method public static el()Lcom/google/protobuf/f$k$a;
    .registers 1

    .prologue
    .line 5669
    invoke-static {}, Lcom/google/protobuf/f$k$a;->et()Lcom/google/protobuf/f$k$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 5580
    iget v0, p0, Lcom/google/protobuf/f$k;->ai:I

    .line 5581
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 5599
    :goto_5
    return v0

    .line 5583
    :cond_6
    const/4 v0, 0x0

    .line 5584
    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->eh()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 5585
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->ei()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 5588
    :cond_18
    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->ej()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 5589
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->ek()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5592
    :cond_28
    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->bD()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$p;

    .line 5593
    const/16 v3, 0x3e7

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_31

    .line 5596
    :cond_46
    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->gV()I

    move-result v0

    add-int/2addr v0, v1

    .line 5597
    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 5598
    iput v0, p0, Lcom/google/protobuf/f$k;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 6

    .prologue
    .line 5562
    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->a()I

    .line 5564
    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->gU()Lcom/google/protobuf/q$c$a;

    move-result-object v1

    .line 5565
    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->eh()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5566
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->ei()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/e;->a(IZ)V

    .line 5568
    :cond_15
    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->ej()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5569
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->ek()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/e;->a(IZ)V

    .line 5571
    :cond_23
    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->bD()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$p;

    .line 5572
    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_2b

    .line 5574
    :cond_3d
    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/q$c$a;->a(ILcom/google/protobuf/e;)V

    .line 5575
    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 5576
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 5496
    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->em()Lcom/google/protobuf/f$k$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 5496
    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->eg()Lcom/google/protobuf/f$k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 5496
    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->en()Lcom/google/protobuf/f$k$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 5521
    invoke-static {}, Lcom/google/protobuf/f;->ag()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public bD()Ljava/util/List;
    .registers 2

    .prologue
    .line 5543
    iget-object v0, p0, Lcom/google/protobuf/f$k;->av:Ljava/util/List;

    return-object v0
.end method

.method public eg()Lcom/google/protobuf/f$k;
    .registers 2

    .prologue
    .line 5511
    sget-object v0, Lcom/google/protobuf/f$k;->ce:Lcom/google/protobuf/f$k;

    return-object v0
.end method

.method public eh()Z
    .registers 2

    .prologue
    .line 5528
    iget-boolean v0, p0, Lcom/google/protobuf/f$k;->cf:Z

    return v0
.end method

.method public ei()Z
    .registers 2

    .prologue
    .line 5529
    iget-boolean v0, p0, Lcom/google/protobuf/f$k;->cg:Z

    return v0
.end method

.method public ej()Z
    .registers 2

    .prologue
    .line 5535
    iget-boolean v0, p0, Lcom/google/protobuf/f$k;->ch:Z

    return v0
.end method

.method public ek()Z
    .registers 2

    .prologue
    .line 5536
    iget-boolean v0, p0, Lcom/google/protobuf/f$k;->ci:Z

    return v0
.end method

.method public em()Lcom/google/protobuf/f$k$a;
    .registers 2

    .prologue
    .line 5670
    invoke-static {}, Lcom/google/protobuf/f$k;->el()Lcom/google/protobuf/f$k$a;

    move-result-object v0

    return-object v0
.end method

.method public en()Lcom/google/protobuf/f$k$a;
    .registers 2

    .prologue
    .line 5674
    invoke-static {p0}, Lcom/google/protobuf/f$k;->c(Lcom/google/protobuf/f$k;)Lcom/google/protobuf/f$k$a;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 5553
    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->bD()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$p;

    .line 5554
    invoke-virtual {v0}, Lcom/google/protobuf/f$p;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 5557
    :goto_1c
    return v0

    .line 5556
    :cond_1d
    invoke-virtual {p0}, Lcom/google/protobuf/f$k;->gT()Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v1

    goto :goto_1c

    .line 5557
    :cond_25
    const/4 v0, 0x1

    goto :goto_1c
.end method
