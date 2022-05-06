.class public final Lmobi/tikl/wire/control/a$ay;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$ay$a;
    }
.end annotation


# static fields
.field private static final yt:Lmobi/tikl/wire/control/a$ay;


# instance fields
.field private ai:I

.field private oA:Z

.field private oB:Lmobi/tikl/wire/control/a$G;

.field private pr:Z

.field private ps:Lmobi/tikl/wire/control/a$G;

.field private ws:Z

.field private wt:J

.field private yu:Z

.field private yv:Ljava/lang/String;

.field private yw:Z

.field private yx:Lmobi/tikl/wire/control/a$g;

.field private yy:Z

.field private yz:Lmobi/tikl/wire/control/a$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29894
    new-instance v0, Lmobi/tikl/wire/control/a$ay;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$ay;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$ay;->yt:Lmobi/tikl/wire/control/a$ay;

    .line 29895
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 29896
    sget-object v0, Lmobi/tikl/wire/control/a$ay;->yt:Lmobi/tikl/wire/control/a$ay;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ay;->aJ()V

    .line 29897
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 29314
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 29341
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ay;->yv:Ljava/lang/String;

    .line 29362
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmobi/tikl/wire/control/a$ay;->wt:J

    .line 29423
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ay;->ai:I

    .line 29315
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ay;->aJ()V

    .line 29316
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 29311
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ay;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4

    .prologue
    .line 29317
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 29341
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ay;->yv:Ljava/lang/String;

    .line 29362
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmobi/tikl/wire/control/a$ay;->wt:J

    .line 29423
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ay;->ai:I

    .line 29317
    return-void
.end method

.method public static Km()Lmobi/tikl/wire/control/a$ay;
    .registers 1

    .prologue
    .line 29321
    sget-object v0, Lmobi/tikl/wire/control/a$ay;->yt:Lmobi/tikl/wire/control/a$ay;

    return-object v0
.end method

.method public static Ku()Lmobi/tikl/wire/control/a$ay$a;
    .registers 1

    .prologue
    .line 29525
    invoke-static {}, Lmobi/tikl/wire/control/a$ay$a;->KC()Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ay;J)J
    .registers 4

    .prologue
    .line 29311
    iput-wide p1, p0, Lmobi/tikl/wire/control/a$ay;->wt:J

    return-wide p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ay;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 29311
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ay;->yv:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ay;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 29311
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ay;->oB:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$ay$a;
    .registers 2

    .prologue
    .line 29528
    invoke-static {}, Lmobi/tikl/wire/control/a$ay;->Ku()Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$ay$a;->f(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ay;Lmobi/tikl/wire/control/a$c;)Lmobi/tikl/wire/control/a$c;
    .registers 2

    .prologue
    .line 29311
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ay;->yz:Lmobi/tikl/wire/control/a$c;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ay;Lmobi/tikl/wire/control/a$g;)Lmobi/tikl/wire/control/a$g;
    .registers 2

    .prologue
    .line 29311
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ay;->yx:Lmobi/tikl/wire/control/a$g;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ay;Z)Z
    .registers 2

    .prologue
    .line 29311
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ay;->yu:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 29381
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ay;->oB:Lmobi/tikl/wire/control/a$G;

    .line 29382
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ay;->ps:Lmobi/tikl/wire/control/a$G;

    .line 29383
    invoke-static {}, Lmobi/tikl/wire/control/a$g;->pt()Lmobi/tikl/wire/control/a$g;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ay;->yx:Lmobi/tikl/wire/control/a$g;

    .line 29384
    invoke-static {}, Lmobi/tikl/wire/control/a$c;->nP()Lmobi/tikl/wire/control/a$c;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ay;->yz:Lmobi/tikl/wire/control/a$c;

    .line 29385
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 29330
    invoke-static {}, Lmobi/tikl/wire/control/a;->mE()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 29311
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ay;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 29311
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ay;->ps:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ay;Z)Z
    .registers 2

    .prologue
    .line 29311
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ay;->oA:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 29311
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay;->ps:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$ay;Z)Z
    .registers 2

    .prologue
    .line 29311
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ay;->pr:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$g;
    .registers 2

    .prologue
    .line 29311
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay;->yx:Lmobi/tikl/wire/control/a$g;

    return-object v0
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$ay;Z)Z
    .registers 2

    .prologue
    .line 29311
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ay;->ws:Z

    return p1
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$c;
    .registers 2

    .prologue
    .line 29311
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay;->yz:Lmobi/tikl/wire/control/a$c;

    return-object v0
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$ay;Z)Z
    .registers 2

    .prologue
    .line 29311
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ay;->yw:Z

    return p1
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$ay;Z)Z
    .registers 2

    .prologue
    .line 29311
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ay;->yy:Z

    return p1
.end method


# virtual methods
.method public HM()Z
    .registers 2

    .prologue
    .line 29363
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ay;->ws:Z

    return v0
.end method

.method public Kn()Lmobi/tikl/wire/control/a$ay;
    .registers 2

    .prologue
    .line 29325
    sget-object v0, Lmobi/tikl/wire/control/a$ay;->yt:Lmobi/tikl/wire/control/a$ay;

    return-object v0
.end method

.method public Ko()Z
    .registers 2

    .prologue
    .line 29342
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ay;->yu:Z

    return v0
.end method

.method public Kp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29343
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay;->yv:Ljava/lang/String;

    return-object v0
.end method

.method public Kq()Z
    .registers 2

    .prologue
    .line 29370
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ay;->yw:Z

    return v0
.end method

.method public Kr()Lmobi/tikl/wire/control/a$g;
    .registers 2

    .prologue
    .line 29371
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay;->yx:Lmobi/tikl/wire/control/a$g;

    return-object v0
.end method

.method public Ks()Z
    .registers 2

    .prologue
    .line 29377
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ay;->yy:Z

    return v0
.end method

.method public Kt()Lmobi/tikl/wire/control/a$c;
    .registers 2

    .prologue
    .line 29378
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay;->yz:Lmobi/tikl/wire/control/a$c;

    return-object v0
.end method

.method public Kv()Lmobi/tikl/wire/control/a$ay$a;
    .registers 2

    .prologue
    .line 29526
    invoke-static {}, Lmobi/tikl/wire/control/a$ay;->Ku()Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    return-object v0
.end method

.method public Kw()Lmobi/tikl/wire/control/a$ay$a;
    .registers 2

    .prologue
    .line 29530
    invoke-static {p0}, Lmobi/tikl/wire/control/a$ay;->a(Lmobi/tikl/wire/control/a$ay;)Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 5

    .prologue
    .line 29425
    iget v0, p0, Lmobi/tikl/wire/control/a$ay;->ai:I

    .line 29426
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 29455
    :goto_5
    return v0

    .line 29428
    :cond_6
    const/4 v0, 0x0

    .line 29429
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->Ko()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 29430
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->Kp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 29433
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->od()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 29434
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29437
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->oX()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 29438
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->oY()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29441
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->HM()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 29442
    const/4 v1, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->getTimeStamp()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 29445
    :cond_48
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->Kq()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 29446
    const/16 v1, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->Kr()Lmobi/tikl/wire/control/a$g;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29449
    :cond_59
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->Ks()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 29450
    const/16 v1, 0xb

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->Kt()Lmobi/tikl/wire/control/a$c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29453
    :cond_6a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 29454
    iput v0, p0, Lmobi/tikl/wire/control/a$ay;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 6

    .prologue
    .line 29401
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->a()I

    .line 29402
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->Ko()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 29403
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->Kp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 29405
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->od()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 29406
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 29408
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->oX()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 29409
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->oY()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 29411
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->HM()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 29412
    const/4 v0, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/e;->b(IJ)V

    .line 29414
    :cond_3b
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->Kq()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 29415
    const/16 v0, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->Kr()Lmobi/tikl/wire/control/a$g;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 29417
    :cond_4a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->Ks()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 29418
    const/16 v0, 0xb

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->Kt()Lmobi/tikl/wire/control/a$c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 29420
    :cond_59
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 29421
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 29311
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->Kv()Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 29311
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->Kn()Lmobi/tikl/wire/control/a$ay;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 29311
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->Kw()Lmobi/tikl/wire/control/a$ay$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 29335
    invoke-static {}, Lmobi/tikl/wire/control/a;->mF()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()J
    .registers 3

    .prologue
    .line 29364
    iget-wide v0, p0, Lmobi/tikl/wire/control/a$ay;->wt:J

    return-wide v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 29387
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$ay;->yu:Z

    if-nez v1, :cond_6

    .line 29396
    :cond_5
    :goto_5
    return v0

    .line 29388
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$ay;->oA:Z

    if-eqz v1, :cond_5

    .line 29389
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$ay;->pr:Z

    if-eqz v1, :cond_5

    .line 29390
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$ay;->ws:Z

    if-eqz v1, :cond_5

    .line 29391
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 29392
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->oY()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 29393
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->Kq()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 29394
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ay;->Kr()Lmobi/tikl/wire/control/a$g;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$g;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 29396
    :cond_36
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public oX()Z
    .registers 2

    .prologue
    .line 29356
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ay;->pr:Z

    return v0
.end method

.method public oY()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 29357
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay;->ps:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 29349
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ay;->oA:Z

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 29350
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ay;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method
