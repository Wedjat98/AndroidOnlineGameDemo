.class public final Lmobi/tikl/wire/control/a$j;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$j$a;
    }
.end annotation


# static fields
.field private static final pF:Lmobi/tikl/wire/control/a$j;


# instance fields
.field private ai:I

.field private oy:Z

.field private oz:I

.field private pC:Z

.field private pD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32654
    new-instance v0, Lmobi/tikl/wire/control/a$j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$j;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$j;->pF:Lmobi/tikl/wire/control/a$j;

    .line 32655
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 32656
    sget-object v0, Lmobi/tikl/wire/control/a$j;->pF:Lmobi/tikl/wire/control/a$j;

    .line 32657
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 32337
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 32364
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$j;->oz:I

    .line 32371
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$j;->pD:Ljava/lang/String;

    .line 32395
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$j;->ai:I

    .line 32338
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 32334
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$j;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 32340
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 32364
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$j;->oz:I

    .line 32371
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$j;->pD:Ljava/lang/String;

    .line 32395
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$j;->ai:I

    .line 32340
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$j;I)I
    .registers 2

    .prologue
    .line 32334
    iput p1, p0, Lmobi/tikl/wire/control/a$j;->oz:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$j;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32334
    iput-object p1, p0, Lmobi/tikl/wire/control/a$j;->pD:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$j;)Lmobi/tikl/wire/control/a$j$a;
    .registers 2

    .prologue
    .line 32484
    invoke-static {}, Lmobi/tikl/wire/control/a$j;->qf()Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$j$a;->b(Lmobi/tikl/wire/control/a$j;)Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$j;Z)Z
    .registers 2

    .prologue
    .line 32334
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$j;->oy:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 32353
    invoke-static {}, Lmobi/tikl/wire/control/a;->mS()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$j;Z)Z
    .registers 2

    .prologue
    .line 32334
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$j;->pC:Z

    return p1
.end method

.method public static qd()Lmobi/tikl/wire/control/a$j;
    .registers 1

    .prologue
    .line 32344
    sget-object v0, Lmobi/tikl/wire/control/a$j;->pF:Lmobi/tikl/wire/control/a$j;

    return-object v0
.end method

.method public static qf()Lmobi/tikl/wire/control/a$j$a;
    .registers 1

    .prologue
    .line 32481
    invoke-static {}, Lmobi/tikl/wire/control/a$j$a;->qn()Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 32397
    iget v0, p0, Lmobi/tikl/wire/control/a$j;->ai:I

    .line 32398
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 32411
    :goto_5
    return v0

    .line 32400
    :cond_6
    const/4 v0, 0x0

    .line 32401
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j;->oc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 32402
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j;->getMsgId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 32405
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j;->pS()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 32406
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j;->pT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32409
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 32410
    iput v0, p0, Lmobi/tikl/wire/control/a$j;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 32385
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j;->a()I

    .line 32386
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j;->oc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 32387
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j;->getMsgId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 32389
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j;->pS()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 32390
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 32392
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 32393
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 32334
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j;->qg()Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 32334
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j;->qe()Lmobi/tikl/wire/control/a$j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 32334
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$j;->qh()Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 32358
    invoke-static {}, Lmobi/tikl/wire/control/a;->mT()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 32366
    iget v0, p0, Lmobi/tikl/wire/control/a$j;->oz:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 32378
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$j;->oy:Z

    if-nez v1, :cond_6

    .line 32380
    :cond_5
    :goto_5
    return v0

    .line 32379
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$j;->pC:Z

    if-eqz v1, :cond_5

    .line 32380
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public oc()Z
    .registers 2

    .prologue
    .line 32365
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$j;->oy:Z

    return v0
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 32372
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$j;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32373
    iget-object v0, p0, Lmobi/tikl/wire/control/a$j;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public qe()Lmobi/tikl/wire/control/a$j;
    .registers 2

    .prologue
    .line 32348
    sget-object v0, Lmobi/tikl/wire/control/a$j;->pF:Lmobi/tikl/wire/control/a$j;

    return-object v0
.end method

.method public qg()Lmobi/tikl/wire/control/a$j$a;
    .registers 2

    .prologue
    .line 32482
    invoke-static {}, Lmobi/tikl/wire/control/a$j;->qf()Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    return-object v0
.end method

.method public qh()Lmobi/tikl/wire/control/a$j$a;
    .registers 2

    .prologue
    .line 32486
    invoke-static {p0}, Lmobi/tikl/wire/control/a$j;->a(Lmobi/tikl/wire/control/a$j;)Lmobi/tikl/wire/control/a$j$a;

    move-result-object v0

    return-object v0
.end method
