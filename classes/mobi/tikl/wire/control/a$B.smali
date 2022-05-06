.class public final Lmobi/tikl/wire/control/a$B;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "B"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$B$a;
    }
.end annotation


# static fields
.field private static final qQ:Lmobi/tikl/wire/control/a$B;


# instance fields
.field private Z:Z

.field private aa:Ljava/lang/String;

.field private ai:I

.field private pC:Z

.field private pD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35677
    new-instance v0, Lmobi/tikl/wire/control/a$B;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$B;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$B;->qQ:Lmobi/tikl/wire/control/a$B;

    .line 35678
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 35679
    sget-object v0, Lmobi/tikl/wire/control/a$B;->qQ:Lmobi/tikl/wire/control/a$B;

    .line 35680
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 35357
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 35384
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$B;->pD:Ljava/lang/String;

    .line 35391
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$B;->aa:Ljava/lang/String;

    .line 35415
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$B;->ai:I

    .line 35358
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 35354
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$B;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 35360
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 35384
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$B;->pD:Ljava/lang/String;

    .line 35391
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$B;->aa:Ljava/lang/String;

    .line 35415
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$B;->ai:I

    .line 35360
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$B;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35354
    iput-object p1, p0, Lmobi/tikl/wire/control/a$B;->pD:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$B;)Lmobi/tikl/wire/control/a$B$a;
    .registers 2

    .prologue
    .line 35504
    invoke-static {}, Lmobi/tikl/wire/control/a$B;->uw()Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$B$a;->b(Lmobi/tikl/wire/control/a$B;)Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$B;Z)Z
    .registers 2

    .prologue
    .line 35354
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$B;->pC:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 35373
    invoke-static {}, Lmobi/tikl/wire/control/a;->ni()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$B;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35354
    iput-object p1, p0, Lmobi/tikl/wire/control/a$B;->aa:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$B;Z)Z
    .registers 2

    .prologue
    .line 35354
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$B;->Z:Z

    return p1
.end method

.method public static uu()Lmobi/tikl/wire/control/a$B;
    .registers 1

    .prologue
    .line 35364
    sget-object v0, Lmobi/tikl/wire/control/a$B;->qQ:Lmobi/tikl/wire/control/a$B;

    return-object v0
.end method

.method public static uw()Lmobi/tikl/wire/control/a$B$a;
    .registers 1

    .prologue
    .line 35501
    invoke-static {}, Lmobi/tikl/wire/control/a$B$a;->uE()Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 35417
    iget v0, p0, Lmobi/tikl/wire/control/a$B;->ai:I

    .line 35418
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 35431
    :goto_5
    return v0

    .line 35420
    :cond_6
    const/4 v0, 0x0

    .line 35421
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B;->pS()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 35422
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 35425
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B;->hasName()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 35426
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 35429
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 35430
    iput v0, p0, Lmobi/tikl/wire/control/a$B;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 35405
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B;->a()I

    .line 35406
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B;->pS()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 35407
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 35409
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 35410
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 35412
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 35413
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 35354
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B;->ux()Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 35354
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B;->uv()Lmobi/tikl/wire/control/a$B;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 35354
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B;->uy()Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 35378
    invoke-static {}, Lmobi/tikl/wire/control/a;->nj()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35393
    iget-object v0, p0, Lmobi/tikl/wire/control/a$B;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 35392
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$B;->Z:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 35398
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$B;->pC:Z

    if-nez v1, :cond_6

    .line 35400
    :cond_5
    :goto_5
    return v0

    .line 35399
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$B;->Z:Z

    if-eqz v1, :cond_5

    .line 35400
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 35385
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$B;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35386
    iget-object v0, p0, Lmobi/tikl/wire/control/a$B;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public uv()Lmobi/tikl/wire/control/a$B;
    .registers 2

    .prologue
    .line 35368
    sget-object v0, Lmobi/tikl/wire/control/a$B;->qQ:Lmobi/tikl/wire/control/a$B;

    return-object v0
.end method

.method public ux()Lmobi/tikl/wire/control/a$B$a;
    .registers 2

    .prologue
    .line 35502
    invoke-static {}, Lmobi/tikl/wire/control/a$B;->uw()Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    return-object v0
.end method

.method public uy()Lmobi/tikl/wire/control/a$B$a;
    .registers 2

    .prologue
    .line 35506
    invoke-static {p0}, Lmobi/tikl/wire/control/a$B;->a(Lmobi/tikl/wire/control/a$B;)Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    return-object v0
.end method
