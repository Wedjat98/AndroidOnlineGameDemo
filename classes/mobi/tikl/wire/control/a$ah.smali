.class public final Lmobi/tikl/wire/control/a$ah;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ah"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$ah$a;
    }
.end annotation


# static fields
.field private static final uV:Lmobi/tikl/wire/control/a$ah;


# instance fields
.field private ai:I

.field private sO:Z

.field private sP:Z

.field private uW:Z

.field private uX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6610
    new-instance v0, Lmobi/tikl/wire/control/a$ah;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$ah;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$ah;->uV:Lmobi/tikl/wire/control/a$ah;

    .line 6611
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 6612
    sget-object v0, Lmobi/tikl/wire/control/a$ah;->uV:Lmobi/tikl/wire/control/a$ah;

    .line 6613
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 6294
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 6321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$ah;->sP:Z

    .line 6328
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ah;->uX:Ljava/lang/String;

    .line 6351
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ah;->ai:I

    .line 6295
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 6291
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ah;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 6297
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 6321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$ah;->sP:Z

    .line 6328
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ah;->uX:Ljava/lang/String;

    .line 6351
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ah;->ai:I

    .line 6297
    return-void
.end method

.method public static DR()Lmobi/tikl/wire/control/a$ah;
    .registers 1

    .prologue
    .line 6301
    sget-object v0, Lmobi/tikl/wire/control/a$ah;->uV:Lmobi/tikl/wire/control/a$ah;

    return-object v0
.end method

.method public static DV()Lmobi/tikl/wire/control/a$ah$a;
    .registers 1

    .prologue
    .line 6437
    invoke-static {}, Lmobi/tikl/wire/control/a$ah$a;->Ed()Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ah;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 6291
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ah;->uX:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ah;Z)Z
    .registers 2

    .prologue
    .line 6291
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ah;->sO:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 6310
    invoke-static {}, Lmobi/tikl/wire/control/a;->kC()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lmobi/tikl/wire/control/a$ah;)Lmobi/tikl/wire/control/a$ah$a;
    .registers 2

    .prologue
    .line 6440
    invoke-static {}, Lmobi/tikl/wire/control/a$ah;->DV()Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$ah$a;->c(Lmobi/tikl/wire/control/a$ah;)Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ah;Z)Z
    .registers 2

    .prologue
    .line 6291
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ah;->sP:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$ah;Z)Z
    .registers 2

    .prologue
    .line 6291
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ah;->uW:Z

    return p1
.end method


# virtual methods
.method public DS()Lmobi/tikl/wire/control/a$ah;
    .registers 2

    .prologue
    .line 6305
    sget-object v0, Lmobi/tikl/wire/control/a$ah;->uV:Lmobi/tikl/wire/control/a$ah;

    return-object v0
.end method

.method public DT()Z
    .registers 2

    .prologue
    .line 6329
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ah;->uW:Z

    return v0
.end method

.method public DU()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6330
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ah;->uX:Ljava/lang/String;

    return-object v0
.end method

.method public DW()Lmobi/tikl/wire/control/a$ah$a;
    .registers 2

    .prologue
    .line 6438
    invoke-static {}, Lmobi/tikl/wire/control/a$ah;->DV()Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    return-object v0
.end method

.method public DX()Lmobi/tikl/wire/control/a$ah$a;
    .registers 2

    .prologue
    .line 6442
    invoke-static {p0}, Lmobi/tikl/wire/control/a$ah;->b(Lmobi/tikl/wire/control/a$ah;)Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 4

    .prologue
    .line 6353
    iget v0, p0, Lmobi/tikl/wire/control/a$ah;->ai:I

    .line 6354
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 6367
    :goto_5
    return v0

    .line 6356
    :cond_6
    const/4 v0, 0x0

    .line 6357
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah;->zs()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 6358
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah;->zt()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 6361
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah;->DT()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 6362
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah;->DU()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6365
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 6366
    iput v0, p0, Lmobi/tikl/wire/control/a$ah;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 6341
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah;->a()I

    .line 6342
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah;->zs()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6343
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah;->zt()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 6345
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah;->DT()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 6346
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah;->DU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 6348
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 6349
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 6291
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah;->DW()Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 6291
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah;->DS()Lmobi/tikl/wire/control/a$ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 6291
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ah;->DX()Lmobi/tikl/wire/control/a$ah$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 6315
    invoke-static {}, Lmobi/tikl/wire/control/a;->kD()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 6335
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ah;->sO:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 6336
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public zs()Z
    .registers 2

    .prologue
    .line 6322
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ah;->sO:Z

    return v0
.end method

.method public zt()Z
    .registers 2

    .prologue
    .line 6323
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ah;->sP:Z

    return v0
.end method
