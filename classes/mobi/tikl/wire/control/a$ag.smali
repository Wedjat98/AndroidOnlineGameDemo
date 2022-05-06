.class public final Lmobi/tikl/wire/control/a$ag;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ag"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$ag$a;
    }
.end annotation


# static fields
.field private static final uj:Lmobi/tikl/wire/control/a$ag;


# instance fields
.field private ai:I

.field private uA:Z

.field private uB:Ljava/lang/String;

.field private uC:Z

.field private uD:I

.field private uE:Z

.field private uF:Ljava/lang/String;

.field private uG:Z

.field private uH:I

.field private uI:Z

.field private uJ:Ljava/lang/String;

.field private uK:Z

.field private uL:Ljava/lang/String;

.field private uM:Z

.field private uN:Ljava/lang/String;

.field private uO:Z

.field private uP:Ljava/lang/String;

.field private uQ:Z

.field private uR:Ljava/lang/String;

.field private uS:Z

.field private uT:Ljava/lang/String;

.field private uk:Z

.field private ul:I

.field private um:Z

.field private un:Lmobi/tikl/wire/control/a$G;

.field private uo:Z

.field private up:Ljava/lang/String;

.field private uq:Z

.field private ur:Ljava/lang/String;

.field private us:Z

.field private ut:Ljava/lang/String;

.field private uu:Z

.field private uv:Ljava/lang/String;

.field private uw:Z

.field private ux:Ljava/lang/String;

.field private uy:Z

.field private uz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6283
    new-instance v0, Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$ag;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$ag;->uj:Lmobi/tikl/wire/control/a$ag;

    .line 6284
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 6285
    sget-object v0, Lmobi/tikl/wire/control/a$ag;->uj:Lmobi/tikl/wire/control/a$ag;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ag;->aJ()V

    .line 6286
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 5277
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 5304
    iput v1, p0, Lmobi/tikl/wire/control/a$ag;->ul:I

    .line 5318
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->up:Ljava/lang/String;

    .line 5325
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->ur:Ljava/lang/String;

    .line 5332
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->ut:Ljava/lang/String;

    .line 5339
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uv:Ljava/lang/String;

    .line 5346
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->ux:Ljava/lang/String;

    .line 5353
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uz:Ljava/lang/String;

    .line 5360
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uB:Ljava/lang/String;

    .line 5367
    iput v1, p0, Lmobi/tikl/wire/control/a$ag;->uD:I

    .line 5374
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uF:Ljava/lang/String;

    .line 5381
    iput v1, p0, Lmobi/tikl/wire/control/a$ag;->uH:I

    .line 5388
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uJ:Ljava/lang/String;

    .line 5395
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uL:Ljava/lang/String;

    .line 5402
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uN:Ljava/lang/String;

    .line 5409
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uP:Ljava/lang/String;

    .line 5416
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uR:Ljava/lang/String;

    .line 5423
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uT:Ljava/lang/String;

    .line 5497
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ag;->ai:I

    .line 5278
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ag;->aJ()V

    .line 5279
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 5274
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ag;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 5280
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 5304
    iput v1, p0, Lmobi/tikl/wire/control/a$ag;->ul:I

    .line 5318
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->up:Ljava/lang/String;

    .line 5325
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->ur:Ljava/lang/String;

    .line 5332
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->ut:Ljava/lang/String;

    .line 5339
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uv:Ljava/lang/String;

    .line 5346
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->ux:Ljava/lang/String;

    .line 5353
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uz:Ljava/lang/String;

    .line 5360
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uB:Ljava/lang/String;

    .line 5367
    iput v1, p0, Lmobi/tikl/wire/control/a$ag;->uD:I

    .line 5374
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uF:Ljava/lang/String;

    .line 5381
    iput v1, p0, Lmobi/tikl/wire/control/a$ag;->uH:I

    .line 5388
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uJ:Ljava/lang/String;

    .line 5395
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uL:Ljava/lang/String;

    .line 5402
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uN:Ljava/lang/String;

    .line 5409
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uP:Ljava/lang/String;

    .line 5416
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uR:Ljava/lang/String;

    .line 5423
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uT:Ljava/lang/String;

    .line 5497
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ag;->ai:I

    .line 5280
    return-void
.end method

.method public static CZ()Lmobi/tikl/wire/control/a$ag;
    .registers 1

    .prologue
    .line 5284
    sget-object v0, Lmobi/tikl/wire/control/a$ag;->uj:Lmobi/tikl/wire/control/a$ag;

    return-object v0
.end method

.method public static DI()Lmobi/tikl/wire/control/a$ag$a;
    .registers 1

    .prologue
    .line 5647
    invoke-static {}, Lmobi/tikl/wire/control/a$ag$a;->DQ()Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ag;I)I
    .registers 2

    .prologue
    .line 5274
    iput p1, p0, Lmobi/tikl/wire/control/a$ag;->ul:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 5274
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ag;->up:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ag;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 5274
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ag;->un:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$ag;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 2

    .prologue
    .line 5650
    invoke-static {}, Lmobi/tikl/wire/control/a$ag;->DI()Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$ag$a;->c(Lmobi/tikl/wire/control/a$ag;)Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->uk:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 5428
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ag;->un:Lmobi/tikl/wire/control/a$G;

    .line 5429
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 5293
    invoke-static {}, Lmobi/tikl/wire/control/a;->kA()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ag;I)I
    .registers 2

    .prologue
    .line 5274
    iput p1, p0, Lmobi/tikl/wire/control/a$ag;->uD:I

    return p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 5274
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ag;->ur:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ag;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 5274
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag;->un:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->um:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$ag;I)I
    .registers 2

    .prologue
    .line 5274
    iput p1, p0, Lmobi/tikl/wire/control/a$ag;->uH:I

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 5274
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ag;->ut:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->uo:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 5274
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ag;->uv:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->uq:Z

    return p1
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 5274
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ag;->ux:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->us:Z

    return p1
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 5274
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ag;->uz:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->uu:Z

    return p1
.end method

.method static synthetic g(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 5274
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ag;->uB:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->uw:Z

    return p1
.end method

.method static synthetic h(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 5274
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ag;->uF:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->uy:Z

    return p1
.end method

.method static synthetic i(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 5274
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ag;->uJ:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->uA:Z

    return p1
.end method

.method static synthetic j(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 5274
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ag;->uL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->uC:Z

    return p1
.end method

.method static synthetic k(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 5274
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ag;->uN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic k(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->uE:Z

    return p1
.end method

.method static synthetic l(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 5274
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ag;->uP:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic l(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->uG:Z

    return p1
.end method

.method static synthetic m(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 5274
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ag;->uR:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic m(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->uI:Z

    return p1
.end method

.method static synthetic n(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 5274
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ag;->uT:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic n(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->uK:Z

    return p1
.end method

.method static synthetic o(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->uM:Z

    return p1
.end method

.method static synthetic p(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->uO:Z

    return p1
.end method

.method static synthetic q(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->uQ:Z

    return p1
.end method

.method static synthetic r(Lmobi/tikl/wire/control/a$ag;Z)Z
    .registers 2

    .prologue
    .line 5274
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ag;->uS:Z

    return p1
.end method


# virtual methods
.method public DA()Z
    .registers 2

    .prologue
    .line 5396
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->uK:Z

    return v0
.end method

.method public DB()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5397
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uL:Ljava/lang/String;

    return-object v0
.end method

.method public DC()Z
    .registers 2

    .prologue
    .line 5403
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->uM:Z

    return v0
.end method

.method public DD()Z
    .registers 2

    .prologue
    .line 5410
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->uO:Z

    return v0
.end method

.method public DE()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5411
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uP:Ljava/lang/String;

    return-object v0
.end method

.method public DF()Z
    .registers 2

    .prologue
    .line 5417
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->uQ:Z

    return v0
.end method

.method public DG()Z
    .registers 2

    .prologue
    .line 5424
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->uS:Z

    return v0
.end method

.method public DH()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5425
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uT:Ljava/lang/String;

    return-object v0
.end method

.method public DJ()Lmobi/tikl/wire/control/a$ag$a;
    .registers 2

    .prologue
    .line 5648
    invoke-static {}, Lmobi/tikl/wire/control/a$ag;->DI()Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    return-object v0
.end method

.method public DK()Lmobi/tikl/wire/control/a$ag$a;
    .registers 2

    .prologue
    .line 5652
    invoke-static {p0}, Lmobi/tikl/wire/control/a$ag;->a(Lmobi/tikl/wire/control/a$ag;)Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    return-object v0
.end method

.method public Da()Lmobi/tikl/wire/control/a$ag;
    .registers 2

    .prologue
    .line 5288
    sget-object v0, Lmobi/tikl/wire/control/a$ag;->uj:Lmobi/tikl/wire/control/a$ag;

    return-object v0
.end method

.method public Db()Z
    .registers 2

    .prologue
    .line 5305
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->uk:Z

    return v0
.end method

.method public Dc()I
    .registers 2

    .prologue
    .line 5306
    iget v0, p0, Lmobi/tikl/wire/control/a$ag;->ul:I

    return v0
.end method

.method public Dd()Z
    .registers 2

    .prologue
    .line 5312
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->um:Z

    return v0
.end method

.method public De()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 5313
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag;->un:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public Df()Z
    .registers 2

    .prologue
    .line 5319
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->uo:Z

    return v0
.end method

.method public Dg()Z
    .registers 2

    .prologue
    .line 5326
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->uq:Z

    return v0
.end method

.method public Dh()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5327
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag;->ur:Ljava/lang/String;

    return-object v0
.end method

.method public Di()Z
    .registers 2

    .prologue
    .line 5333
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->us:Z

    return v0
.end method

.method public Dj()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5334
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag;->ut:Ljava/lang/String;

    return-object v0
.end method

.method public Dk()Z
    .registers 2

    .prologue
    .line 5340
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->uu:Z

    return v0
.end method

.method public Dl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5341
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uv:Ljava/lang/String;

    return-object v0
.end method

.method public Dm()Z
    .registers 2

    .prologue
    .line 5347
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->uw:Z

    return v0
.end method

.method public Dn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5348
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag;->ux:Ljava/lang/String;

    return-object v0
.end method

.method public Do()Z
    .registers 2

    .prologue
    .line 5354
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->uy:Z

    return v0
.end method

.method public Dp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5355
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uz:Ljava/lang/String;

    return-object v0
.end method

.method public Dq()Z
    .registers 2

    .prologue
    .line 5361
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->uA:Z

    return v0
.end method

.method public Dr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5362
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uB:Ljava/lang/String;

    return-object v0
.end method

.method public Ds()Z
    .registers 2

    .prologue
    .line 5368
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->uC:Z

    return v0
.end method

.method public Dt()I
    .registers 2

    .prologue
    .line 5369
    iget v0, p0, Lmobi/tikl/wire/control/a$ag;->uD:I

    return v0
.end method

.method public Du()Z
    .registers 2

    .prologue
    .line 5375
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->uE:Z

    return v0
.end method

.method public Dv()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5376
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uF:Ljava/lang/String;

    return-object v0
.end method

.method public Dw()Z
    .registers 2

    .prologue
    .line 5382
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->uG:Z

    return v0
.end method

.method public Dx()I
    .registers 2

    .prologue
    .line 5383
    iget v0, p0, Lmobi/tikl/wire/control/a$ag;->uH:I

    return v0
.end method

.method public Dy()Z
    .registers 2

    .prologue
    .line 5389
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ag;->uI:Z

    return v0
.end method

.method public Dz()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5390
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uJ:Ljava/lang/String;

    return-object v0
.end method

.method public a()I
    .registers 4

    .prologue
    .line 5499
    iget v0, p0, Lmobi/tikl/wire/control/a$ag;->ai:I

    .line 5500
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 5577
    :goto_5
    return v0

    .line 5502
    :cond_6
    const/4 v0, 0x0

    .line 5503
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Db()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 5504
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dc()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 5507
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dd()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 5508
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->De()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5511
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Df()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 5512
    const/16 v1, 0x64

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5515
    :cond_39
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dg()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 5516
    const/16 v1, 0x65

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dh()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5519
    :cond_4a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Di()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 5520
    const/16 v1, 0x66

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5523
    :cond_5b
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dk()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 5524
    const/16 v1, 0x67

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5527
    :cond_6c
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dm()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 5528
    const/16 v1, 0x68

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5531
    :cond_7d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Do()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 5532
    const/16 v1, 0x69

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5535
    :cond_8e
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dq()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 5536
    const/16 v1, 0x6a

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5539
    :cond_9f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Ds()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 5540
    const/16 v1, 0x6d

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5543
    :cond_b0
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Du()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 5544
    const/16 v1, 0x6e

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dv()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5547
    :cond_c1
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dw()Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 5548
    const/16 v1, 0x6f

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dx()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5551
    :cond_d2
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dy()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 5552
    const/16 v1, 0x78

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dz()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5555
    :cond_e3
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DA()Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 5556
    const/16 v1, 0x79

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5559
    :cond_f4
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DC()Z

    move-result v1

    if-eqz v1, :cond_105

    .line 5560
    const/16 v1, 0x82

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5563
    :cond_105
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DD()Z

    move-result v1

    if-eqz v1, :cond_116

    .line 5564
    const/16 v1, 0x83

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5567
    :cond_116
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DF()Z

    move-result v1

    if-eqz v1, :cond_127

    .line 5568
    const/16 v1, 0xc8

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->hM()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5571
    :cond_127
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DG()Z

    move-result v1

    if-eqz v1, :cond_138

    .line 5572
    const/16 v1, 0xc9

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5575
    :cond_138
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 5576
    iput v0, p0, Lmobi/tikl/wire/control/a$ag;->ai:I

    goto/16 :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 5439
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->a()I

    .line 5440
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Db()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5441
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dc()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 5443
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dd()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5444
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->De()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 5446
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Df()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 5447
    const/16 v0, 0x64

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 5449
    :cond_2e
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dg()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 5450
    const/16 v0, 0x65

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 5452
    :cond_3d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Di()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 5453
    const/16 v0, 0x66

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 5455
    :cond_4c
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dk()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 5456
    const/16 v0, 0x67

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 5458
    :cond_5b
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dm()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 5459
    const/16 v0, 0x68

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 5461
    :cond_6a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Do()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 5462
    const/16 v0, 0x69

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 5464
    :cond_79
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dq()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 5465
    const/16 v0, 0x6a

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 5467
    :cond_88
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Ds()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 5468
    const/16 v0, 0x6d

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dt()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 5470
    :cond_97
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Du()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 5471
    const/16 v0, 0x6e

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 5473
    :cond_a6
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dw()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 5474
    const/16 v0, 0x6f

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dx()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 5476
    :cond_b5
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dy()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 5477
    const/16 v0, 0x78

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Dz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 5479
    :cond_c4
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DA()Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 5480
    const/16 v0, 0x79

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 5482
    :cond_d3
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DC()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 5483
    const/16 v0, 0x82

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 5485
    :cond_e2
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DD()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 5486
    const/16 v0, 0x83

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 5488
    :cond_f1
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DF()Z

    move-result v0

    if-eqz v0, :cond_100

    .line 5489
    const/16 v0, 0xc8

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->hM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 5491
    :cond_100
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DG()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 5492
    const/16 v0, 0xc9

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 5494
    :cond_10f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 5495
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 5274
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DJ()Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 5274
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->Da()Lmobi/tikl/wire/control/a$ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 5274
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->DK()Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 5298
    invoke-static {}, Lmobi/tikl/wire/control/a;->kB()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5320
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag;->up:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5404
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uN:Ljava/lang/String;

    return-object v0
.end method

.method public hM()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5418
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag;->uR:Ljava/lang/String;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 5431
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$ag;->uk:Z

    if-nez v1, :cond_6

    .line 5434
    :cond_5
    :goto_5
    return v0

    .line 5432
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$ag;->um:Z

    if-eqz v1, :cond_5

    .line 5433
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag;->De()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5434
    const/4 v0, 0x1

    goto :goto_5
.end method
