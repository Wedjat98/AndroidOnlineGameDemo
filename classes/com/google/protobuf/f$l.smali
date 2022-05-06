.class public final Lcom/google/protobuf/f$l;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$l$a;
    }
.end annotation


# static fields
.field private static final ck:Lcom/google/protobuf/f$l;


# instance fields
.field private Z:Z

.field private aa:Ljava/lang/String;

.field private ag:Z

.field private ai:I

.field private cl:Z

.field private cm:Ljava/lang/String;

.field private cn:Z

.field private co:Ljava/lang/String;

.field private cp:Lcom/google/protobuf/f$m;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4788
    new-instance v0, Lcom/google/protobuf/f$l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$l;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$l;->ck:Lcom/google/protobuf/f$l;

    .line 4789
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 4790
    sget-object v0, Lcom/google/protobuf/f$l;->ck:Lcom/google/protobuf/f$l;

    invoke-direct {v0}, Lcom/google/protobuf/f$l;->aJ()V

    .line 4791
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4361
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 4388
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$l;->aa:Ljava/lang/String;

    .line 4395
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$l;->cm:Ljava/lang/String;

    .line 4402
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$l;->co:Ljava/lang/String;

    .line 4441
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$l;->ai:I

    .line 4362
    invoke-direct {p0}, Lcom/google/protobuf/f$l;->aJ()V

    .line 4363
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 4358
    invoke-direct {p0}, Lcom/google/protobuf/f$l;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 4364
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 4388
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$l;->aa:Ljava/lang/String;

    .line 4395
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$l;->cm:Ljava/lang/String;

    .line 4402
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$l;->co:Ljava/lang/String;

    .line 4441
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$l;->ai:I

    .line 4364
    return-void
.end method

.method public static a(Lcom/google/protobuf/f$l;)Lcom/google/protobuf/f$l$a;
    .registers 2

    .prologue
    .line 4538
    invoke-static {}, Lcom/google/protobuf/f$l;->eB()Lcom/google/protobuf/f$l$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$l$a;->c(Lcom/google/protobuf/f$l;)Lcom/google/protobuf/f$l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/protobuf/f$l;Lcom/google/protobuf/f$m;)Lcom/google/protobuf/f$m;
    .registers 2

    .prologue
    .line 4358
    iput-object p1, p0, Lcom/google/protobuf/f$l;->cp:Lcom/google/protobuf/f$m;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$l;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 4358
    iput-object p1, p0, Lcom/google/protobuf/f$l;->aa:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$l;Z)Z
    .registers 2

    .prologue
    .line 4358
    iput-boolean p1, p0, Lcom/google/protobuf/f$l;->Z:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 4414
    invoke-static {}, Lcom/google/protobuf/f$m;->eK()Lcom/google/protobuf/f$m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$l;->cp:Lcom/google/protobuf/f$m;

    .line 4415
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 4377
    invoke-static {}, Lcom/google/protobuf/f;->ab()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$l;)Lcom/google/protobuf/f$m;
    .registers 2

    .prologue
    .line 4358
    iget-object v0, p0, Lcom/google/protobuf/f$l;->cp:Lcom/google/protobuf/f$m;

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$l;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 4358
    iput-object p1, p0, Lcom/google/protobuf/f$l;->cm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/protobuf/f$l;Z)Z
    .registers 2

    .prologue
    .line 4358
    iput-boolean p1, p0, Lcom/google/protobuf/f$l;->cl:Z

    return p1
.end method

.method static synthetic c(Lcom/google/protobuf/f$l;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 4358
    iput-object p1, p0, Lcom/google/protobuf/f$l;->co:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/google/protobuf/f$l;Z)Z
    .registers 2

    .prologue
    .line 4358
    iput-boolean p1, p0, Lcom/google/protobuf/f$l;->cn:Z

    return p1
.end method

.method static synthetic d(Lcom/google/protobuf/f$l;Z)Z
    .registers 2

    .prologue
    .line 4358
    iput-boolean p1, p0, Lcom/google/protobuf/f$l;->ag:Z

    return p1
.end method

.method public static eB()Lcom/google/protobuf/f$l$a;
    .registers 1

    .prologue
    .line 4535
    invoke-static {}, Lcom/google/protobuf/f$l$a;->eJ()Lcom/google/protobuf/f$l$a;

    move-result-object v0

    return-object v0
.end method

.method public static eu()Lcom/google/protobuf/f$l;
    .registers 1

    .prologue
    .line 4368
    sget-object v0, Lcom/google/protobuf/f$l;->ck:Lcom/google/protobuf/f$l;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 4443
    iget v0, p0, Lcom/google/protobuf/f$l;->ai:I

    .line 4444
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 4465
    :goto_5
    return v0

    .line 4446
    :cond_6
    const/4 v0, 0x0

    .line 4447
    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->hasName()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4448
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4451
    :cond_18
    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->ew()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 4452
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->ex()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4455
    :cond_28
    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->ey()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 4456
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->ez()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4459
    :cond_38
    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->aH()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 4460
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->eA()Lcom/google/protobuf/f$m;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4463
    :cond_48
    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 4464
    iput v0, p0, Lcom/google/protobuf/f$l;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 4425
    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->a()I

    .line 4426
    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->hasName()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4427
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 4429
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->ew()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4430
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->ex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 4432
    :cond_1f
    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->ey()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4433
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->ez()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 4435
    :cond_2d
    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->aH()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4436
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->eA()Lcom/google/protobuf/f$m;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 4438
    :cond_3b
    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 4439
    return-void
.end method

.method public aH()Z
    .registers 2

    .prologue
    .line 4410
    iget-boolean v0, p0, Lcom/google/protobuf/f$l;->ag:Z

    return v0
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 4358
    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->eC()Lcom/google/protobuf/f$l$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 4358
    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->ev()Lcom/google/protobuf/f$l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 4358
    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->eD()Lcom/google/protobuf/f$l$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 4382
    invoke-static {}, Lcom/google/protobuf/f;->ac()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public eA()Lcom/google/protobuf/f$m;
    .registers 2

    .prologue
    .line 4411
    iget-object v0, p0, Lcom/google/protobuf/f$l;->cp:Lcom/google/protobuf/f$m;

    return-object v0
.end method

.method public eC()Lcom/google/protobuf/f$l$a;
    .registers 2

    .prologue
    .line 4536
    invoke-static {}, Lcom/google/protobuf/f$l;->eB()Lcom/google/protobuf/f$l$a;

    move-result-object v0

    return-object v0
.end method

.method public eD()Lcom/google/protobuf/f$l$a;
    .registers 2

    .prologue
    .line 4540
    invoke-static {p0}, Lcom/google/protobuf/f$l;->a(Lcom/google/protobuf/f$l;)Lcom/google/protobuf/f$l$a;

    move-result-object v0

    return-object v0
.end method

.method public ev()Lcom/google/protobuf/f$l;
    .registers 2

    .prologue
    .line 4372
    sget-object v0, Lcom/google/protobuf/f$l;->ck:Lcom/google/protobuf/f$l;

    return-object v0
.end method

.method public ew()Z
    .registers 2

    .prologue
    .line 4396
    iget-boolean v0, p0, Lcom/google/protobuf/f$l;->cl:Z

    return v0
.end method

.method public ex()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4397
    iget-object v0, p0, Lcom/google/protobuf/f$l;->cm:Ljava/lang/String;

    return-object v0
.end method

.method public ey()Z
    .registers 2

    .prologue
    .line 4403
    iget-boolean v0, p0, Lcom/google/protobuf/f$l;->cn:Z

    return v0
.end method

.method public ez()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4404
    iget-object v0, p0, Lcom/google/protobuf/f$l;->co:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4390
    iget-object v0, p0, Lcom/google/protobuf/f$l;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 4389
    iget-boolean v0, p0, Lcom/google/protobuf/f$l;->Z:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 4417
    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->aH()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4418
    invoke-virtual {p0}, Lcom/google/protobuf/f$l;->eA()Lcom/google/protobuf/f$m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/f$m;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 4420
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method
