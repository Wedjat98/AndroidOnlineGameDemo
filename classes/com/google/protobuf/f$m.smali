.class public final Lcom/google/protobuf/f$m;
.super Lcom/google/protobuf/q$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$m$a;
    }
.end annotation


# static fields
.field private static final cr:Lcom/google/protobuf/f$m;


# instance fields
.field private ai:I

.field private av:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 7856
    new-instance v0, Lcom/google/protobuf/f$m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$m;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$m;->cr:Lcom/google/protobuf/f$m;

    .line 7857
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 7858
    sget-object v0, Lcom/google/protobuf/f$m;->cr:Lcom/google/protobuf/f$m;

    .line 7859
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 7526
    invoke-direct {p0}, Lcom/google/protobuf/q$c;-><init>()V

    .line 7552
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$m;->av:Ljava/util/List;

    .line 7584
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$m;->ai:I

    .line 7527
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 7522
    invoke-direct {p0}, Lcom/google/protobuf/f$m;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 7529
    invoke-direct {p0}, Lcom/google/protobuf/q$c;-><init>()V

    .line 7552
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$m;->av:Ljava/util/List;

    .line 7584
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$m;->ai:I

    .line 7529
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/f$m;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 7522
    iput-object p1, p0, Lcom/google/protobuf/f$m;->av:Ljava/util/List;

    return-object p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 7542
    invoke-static {}, Lcom/google/protobuf/f;->ap()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/google/protobuf/f$m;)Lcom/google/protobuf/f$m$a;
    .registers 2

    .prologue
    .line 7670
    invoke-static {}, Lcom/google/protobuf/f$m;->eM()Lcom/google/protobuf/f$m$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$m$a;->e(Lcom/google/protobuf/f$m;)Lcom/google/protobuf/f$m$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/protobuf/f$m;)Ljava/util/List;
    .registers 2

    .prologue
    .line 7522
    iget-object v0, p0, Lcom/google/protobuf/f$m;->av:Ljava/util/List;

    return-object v0
.end method

.method public static eK()Lcom/google/protobuf/f$m;
    .registers 1

    .prologue
    .line 7533
    sget-object v0, Lcom/google/protobuf/f$m;->cr:Lcom/google/protobuf/f$m;

    return-object v0
.end method

.method public static eM()Lcom/google/protobuf/f$m$a;
    .registers 1

    .prologue
    .line 7667
    invoke-static {}, Lcom/google/protobuf/f$m$a;->eU()Lcom/google/protobuf/f$m$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 7586
    iget v0, p0, Lcom/google/protobuf/f$m;->ai:I

    .line 7587
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 7597
    :goto_5
    return v0

    .line 7589
    :cond_6
    const/4 v0, 0x0

    .line 7590
    invoke-virtual {p0}, Lcom/google/protobuf/f$m;->bD()Ljava/util/List;

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

    .line 7591
    const/16 v3, 0x3e7

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_10

    .line 7594
    :cond_25
    invoke-virtual {p0}, Lcom/google/protobuf/f$m;->gV()I

    move-result v0

    add-int/2addr v0, v1

    .line 7595
    invoke-virtual {p0}, Lcom/google/protobuf/f$m;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 7596
    iput v0, p0, Lcom/google/protobuf/f$m;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 6

    .prologue
    .line 7574
    invoke-virtual {p0}, Lcom/google/protobuf/f$m;->a()I

    .line 7576
    invoke-virtual {p0}, Lcom/google/protobuf/f$m;->gU()Lcom/google/protobuf/q$c$a;

    move-result-object v1

    .line 7577
    invoke-virtual {p0}, Lcom/google/protobuf/f$m;->bD()Ljava/util/List;

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

    .line 7578
    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_f

    .line 7580
    :cond_21
    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/q$c$a;->a(ILcom/google/protobuf/e;)V

    .line 7581
    invoke-virtual {p0}, Lcom/google/protobuf/f$m;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 7582
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 7522
    invoke-virtual {p0}, Lcom/google/protobuf/f$m;->eN()Lcom/google/protobuf/f$m$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 7522
    invoke-virtual {p0}, Lcom/google/protobuf/f$m;->eL()Lcom/google/protobuf/f$m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 7522
    invoke-virtual {p0}, Lcom/google/protobuf/f$m;->eO()Lcom/google/protobuf/f$m$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 7547
    invoke-static {}, Lcom/google/protobuf/f;->aq()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public bD()Ljava/util/List;
    .registers 2

    .prologue
    .line 7555
    iget-object v0, p0, Lcom/google/protobuf/f$m;->av:Ljava/util/List;

    return-object v0
.end method

.method public eL()Lcom/google/protobuf/f$m;
    .registers 2

    .prologue
    .line 7537
    sget-object v0, Lcom/google/protobuf/f$m;->cr:Lcom/google/protobuf/f$m;

    return-object v0
.end method

.method public eN()Lcom/google/protobuf/f$m$a;
    .registers 2

    .prologue
    .line 7668
    invoke-static {}, Lcom/google/protobuf/f$m;->eM()Lcom/google/protobuf/f$m$a;

    move-result-object v0

    return-object v0
.end method

.method public eO()Lcom/google/protobuf/f$m$a;
    .registers 2

    .prologue
    .line 7672
    invoke-static {p0}, Lcom/google/protobuf/f$m;->c(Lcom/google/protobuf/f$m;)Lcom/google/protobuf/f$m$a;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 7565
    invoke-virtual {p0}, Lcom/google/protobuf/f$m;->bD()Ljava/util/List;

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

    .line 7566
    invoke-virtual {v0}, Lcom/google/protobuf/f$p;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 7569
    :goto_1c
    return v0

    .line 7568
    :cond_1d
    invoke-virtual {p0}, Lcom/google/protobuf/f$m;->gT()Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v1

    goto :goto_1c

    .line 7569
    :cond_25
    const/4 v0, 0x1

    goto :goto_1c
.end method
