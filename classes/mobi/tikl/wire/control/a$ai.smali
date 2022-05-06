.class public final Lmobi/tikl/wire/control/a$ai;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ai"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$ai$a;
    }
.end annotation


# static fields
.field private static final uZ:Lmobi/tikl/wire/control/a$ai;


# instance fields
.field private ai:I

.field private sS:Z

.field private sT:Lmobi/tikl/wire/control/a$G;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22828
    new-instance v0, Lmobi/tikl/wire/control/a$ai;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$ai;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$ai;->uZ:Lmobi/tikl/wire/control/a$ai;

    .line 22829
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 22830
    sget-object v0, Lmobi/tikl/wire/control/a$ai;->uZ:Lmobi/tikl/wire/control/a$ai;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ai;->aJ()V

    .line 22831
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 22528
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 22577
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ai;->ai:I

    .line 22529
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ai;->aJ()V

    .line 22530
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 22525
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ai;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 22531
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 22577
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ai;->ai:I

    .line 22531
    return-void
.end method

.method public static Ee()Lmobi/tikl/wire/control/a$ai;
    .registers 1

    .prologue
    .line 22535
    sget-object v0, Lmobi/tikl/wire/control/a$ai;->uZ:Lmobi/tikl/wire/control/a$ai;

    return-object v0
.end method

.method public static Eg()Lmobi/tikl/wire/control/a$ai$a;
    .registers 1

    .prologue
    .line 22659
    invoke-static {}, Lmobi/tikl/wire/control/a$ai$a;->Eo()Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ai;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 22525
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ai;->sT:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$ai;)Lmobi/tikl/wire/control/a$ai$a;
    .registers 2

    .prologue
    .line 22662
    invoke-static {}, Lmobi/tikl/wire/control/a$ai;->Eg()Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$ai$a;->c(Lmobi/tikl/wire/control/a$ai;)Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ai;Z)Z
    .registers 2

    .prologue
    .line 22525
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ai;->sS:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 22560
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ai;->sT:Lmobi/tikl/wire/control/a$G;

    .line 22561
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 22544
    invoke-static {}, Lmobi/tikl/wire/control/a;->lY()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ai;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 22525
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ai;->sT:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method


# virtual methods
.method public Ef()Lmobi/tikl/wire/control/a$ai;
    .registers 2

    .prologue
    .line 22539
    sget-object v0, Lmobi/tikl/wire/control/a$ai;->uZ:Lmobi/tikl/wire/control/a$ai;

    return-object v0
.end method

.method public Eh()Lmobi/tikl/wire/control/a$ai$a;
    .registers 2

    .prologue
    .line 22660
    invoke-static {}, Lmobi/tikl/wire/control/a$ai;->Eg()Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    return-object v0
.end method

.method public Ei()Lmobi/tikl/wire/control/a$ai$a;
    .registers 2

    .prologue
    .line 22664
    invoke-static {p0}, Lmobi/tikl/wire/control/a$ai;->a(Lmobi/tikl/wire/control/a$ai;)Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 3

    .prologue
    .line 22579
    iget v0, p0, Lmobi/tikl/wire/control/a$ai;->ai:I

    .line 22580
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 22589
    :goto_5
    return v0

    .line 22582
    :cond_6
    const/4 v0, 0x0

    .line 22583
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai;->zF()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 22584
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 22587
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 22588
    iput v0, p0, Lmobi/tikl/wire/control/a$ai;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 22570
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai;->a()I

    .line 22571
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai;->zF()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 22572
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 22574
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 22575
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 22525
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai;->Eh()Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 22525
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai;->Ef()Lmobi/tikl/wire/control/a$ai;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 22525
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai;->Ei()Lmobi/tikl/wire/control/a$ai$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 22549
    invoke-static {}, Lmobi/tikl/wire/control/a;->lZ()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 22563
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$ai;->sS:Z

    if-nez v1, :cond_6

    .line 22565
    :cond_5
    :goto_5
    return v0

    .line 22564
    :cond_6
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ai;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 22565
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public zF()Z
    .registers 2

    .prologue
    .line 22556
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ai;->sS:Z

    return v0
.end method

.method public zG()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 22557
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ai;->sT:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method
