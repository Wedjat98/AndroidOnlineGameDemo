.class public final Lcom/google/protobuf/f$c;
.super Lcom/google/protobuf/q$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$c$a;
    }
.end annotation


# static fields
.field private static final au:Lcom/google/protobuf/f$c;


# instance fields
.field private ai:I

.field private av:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6830
    new-instance v0, Lcom/google/protobuf/f$c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$c;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$c;->au:Lcom/google/protobuf/f$c;

    .line 6831
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 6832
    sget-object v0, Lcom/google/protobuf/f$c;->au:Lcom/google/protobuf/f$c;

    .line 6833
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 6500
    invoke-direct {p0}, Lcom/google/protobuf/q$c;-><init>()V

    .line 6526
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$c;->av:Ljava/util/List;

    .line 6558
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$c;->ai:I

    .line 6501
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 6496
    invoke-direct {p0}, Lcom/google/protobuf/f$c;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 6503
    invoke-direct {p0}, Lcom/google/protobuf/q$c;-><init>()V

    .line 6526
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$c;->av:Ljava/util/List;

    .line 6558
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$c;->ai:I

    .line 6503
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/f$c;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 6496
    iput-object p1, p0, Lcom/google/protobuf/f$c;->av:Ljava/util/List;

    return-object p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 6516
    invoke-static {}, Lcom/google/protobuf/f;->aj()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static bB()Lcom/google/protobuf/f$c;
    .registers 1

    .prologue
    .line 6507
    sget-object v0, Lcom/google/protobuf/f$c;->au:Lcom/google/protobuf/f$c;

    return-object v0
.end method

.method public static bE()Lcom/google/protobuf/f$c$a;
    .registers 1

    .prologue
    .line 6641
    invoke-static {}, Lcom/google/protobuf/f$c$a;->bO()Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/google/protobuf/f$c;)Lcom/google/protobuf/f$c$a;
    .registers 2

    .prologue
    .line 6644
    invoke-static {}, Lcom/google/protobuf/f$c;->bE()Lcom/google/protobuf/f$c$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$c$a;->e(Lcom/google/protobuf/f$c;)Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/protobuf/f$c;)Ljava/util/List;
    .registers 2

    .prologue
    .line 6496
    iget-object v0, p0, Lcom/google/protobuf/f$c;->av:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 6560
    iget v0, p0, Lcom/google/protobuf/f$c;->ai:I

    .line 6561
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 6571
    :goto_5
    return v0

    .line 6563
    :cond_6
    const/4 v0, 0x0

    .line 6564
    invoke-virtual {p0}, Lcom/google/protobuf/f$c;->bD()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$p;

    .line 6565
    const/16 v3, 0x3e7

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_10

    .line 6568
    :cond_25
    invoke-virtual {p0}, Lcom/google/protobuf/f$c;->gV()I

    move-result v0

    add-int/2addr v0, v1

    .line 6569
    invoke-virtual {p0}, Lcom/google/protobuf/f$c;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 6570
    iput v0, p0, Lcom/google/protobuf/f$c;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 6

    .prologue
    .line 6548
    invoke-virtual {p0}, Lcom/google/protobuf/f$c;->a()I

    .line 6550
    invoke-virtual {p0}, Lcom/google/protobuf/f$c;->gU()Lcom/google/protobuf/q$c$a;

    move-result-object v1

    .line 6551
    invoke-virtual {p0}, Lcom/google/protobuf/f$c;->bD()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$p;

    .line 6552
    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_f

    .line 6554
    :cond_21
    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/q$c$a;->a(ILcom/google/protobuf/e;)V

    .line 6555
    invoke-virtual {p0}, Lcom/google/protobuf/f$c;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 6556
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 6496
    invoke-virtual {p0}, Lcom/google/protobuf/f$c;->bF()Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 6496
    invoke-virtual {p0}, Lcom/google/protobuf/f$c;->bC()Lcom/google/protobuf/f$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 6496
    invoke-virtual {p0}, Lcom/google/protobuf/f$c;->bG()Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 6521
    invoke-static {}, Lcom/google/protobuf/f;->ak()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public bC()Lcom/google/protobuf/f$c;
    .registers 2

    .prologue
    .line 6511
    sget-object v0, Lcom/google/protobuf/f$c;->au:Lcom/google/protobuf/f$c;

    return-object v0
.end method

.method public bD()Ljava/util/List;
    .registers 2

    .prologue
    .line 6529
    iget-object v0, p0, Lcom/google/protobuf/f$c;->av:Ljava/util/List;

    return-object v0
.end method

.method public bF()Lcom/google/protobuf/f$c$a;
    .registers 2

    .prologue
    .line 6642
    invoke-static {}, Lcom/google/protobuf/f$c;->bE()Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method

.method public bG()Lcom/google/protobuf/f$c$a;
    .registers 2

    .prologue
    .line 6646
    invoke-static {p0}, Lcom/google/protobuf/f$c;->c(Lcom/google/protobuf/f$c;)Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 6539
    invoke-virtual {p0}, Lcom/google/protobuf/f$c;->bD()Ljava/util/List;

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

    .line 6540
    invoke-virtual {v0}, Lcom/google/protobuf/f$p;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 6543
    :goto_1c
    return v0

    .line 6542
    :cond_1d
    invoke-virtual {p0}, Lcom/google/protobuf/f$c;->gT()Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v1

    goto :goto_1c

    .line 6543
    :cond_25
    const/4 v0, 0x1

    goto :goto_1c
.end method
