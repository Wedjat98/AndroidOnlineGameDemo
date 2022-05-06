.class public final Lmobi/tikl/wire/control/a$N;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "N"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$N$a;
    }
.end annotation


# static fields
.field private static final rK:Lmobi/tikl/wire/control/a$N;


# instance fields
.field private ai:I

.field private rL:Z

.field private rM:Z

.field private rN:Z

.field private rO:I

.field private rP:Z

.field private rQ:I

.field private rR:Z

.field private rS:I

.field private rT:Z

.field private rU:I

.field private rV:Z

.field private rW:I

.field private rX:Z

.field private rY:I

.field private rZ:Z

.field private sa:I

.field private sb:Z

.field private sc:I

.field private sd:Z

.field private se:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8039
    new-instance v0, Lmobi/tikl/wire/control/a$N;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$N;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$N;->rK:Lmobi/tikl/wire/control/a$N;

    .line 8040
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 8041
    sget-object v0, Lmobi/tikl/wire/control/a$N;->rK:Lmobi/tikl/wire/control/a$N;

    .line 8042
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 7415
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 7442
    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$N;->rM:Z

    .line 7449
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->rO:I

    .line 7456
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->rQ:I

    .line 7463
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->rS:I

    .line 7470
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->rU:I

    .line 7477
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->rW:I

    .line 7484
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->rY:I

    .line 7491
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->sa:I

    .line 7498
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->sc:I

    .line 7505
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->se:I

    .line 7551
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$N;->ai:I

    .line 7416
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 7412
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$N;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 7418
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 7442
    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$N;->rM:Z

    .line 7449
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->rO:I

    .line 7456
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->rQ:I

    .line 7463
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->rS:I

    .line 7470
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->rU:I

    .line 7477
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->rW:I

    .line 7484
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->rY:I

    .line 7491
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->sa:I

    .line 7498
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->sc:I

    .line 7505
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->se:I

    .line 7551
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$N;->ai:I

    .line 7418
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$N;I)I
    .registers 2

    .prologue
    .line 7412
    iput p1, p0, Lmobi/tikl/wire/control/a$N;->rO:I

    return p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$N;)Lmobi/tikl/wire/control/a$N$a;
    .registers 2

    .prologue
    .line 7672
    invoke-static {}, Lmobi/tikl/wire/control/a$N;->xM()Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$N$a;->b(Lmobi/tikl/wire/control/a$N;)Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$N;Z)Z
    .registers 2

    .prologue
    .line 7412
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$N;->rL:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 7431
    invoke-static {}, Lmobi/tikl/wire/control/a;->kI()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$N;I)I
    .registers 2

    .prologue
    .line 7412
    iput p1, p0, Lmobi/tikl/wire/control/a$N;->rQ:I

    return p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$N;Z)Z
    .registers 2

    .prologue
    .line 7412
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$N;->rM:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$N;I)I
    .registers 2

    .prologue
    .line 7412
    iput p1, p0, Lmobi/tikl/wire/control/a$N;->rS:I

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$N;Z)Z
    .registers 2

    .prologue
    .line 7412
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$N;->rN:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$N;I)I
    .registers 2

    .prologue
    .line 7412
    iput p1, p0, Lmobi/tikl/wire/control/a$N;->rU:I

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$N;Z)Z
    .registers 2

    .prologue
    .line 7412
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$N;->rP:Z

    return p1
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$N;I)I
    .registers 2

    .prologue
    .line 7412
    iput p1, p0, Lmobi/tikl/wire/control/a$N;->rW:I

    return p1
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$N;Z)Z
    .registers 2

    .prologue
    .line 7412
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$N;->rR:Z

    return p1
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$N;I)I
    .registers 2

    .prologue
    .line 7412
    iput p1, p0, Lmobi/tikl/wire/control/a$N;->rY:I

    return p1
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$N;Z)Z
    .registers 2

    .prologue
    .line 7412
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$N;->rT:Z

    return p1
.end method

.method static synthetic g(Lmobi/tikl/wire/control/a$N;I)I
    .registers 2

    .prologue
    .line 7412
    iput p1, p0, Lmobi/tikl/wire/control/a$N;->sa:I

    return p1
.end method

.method static synthetic g(Lmobi/tikl/wire/control/a$N;Z)Z
    .registers 2

    .prologue
    .line 7412
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$N;->rV:Z

    return p1
.end method

.method static synthetic h(Lmobi/tikl/wire/control/a$N;I)I
    .registers 2

    .prologue
    .line 7412
    iput p1, p0, Lmobi/tikl/wire/control/a$N;->sc:I

    return p1
.end method

.method static synthetic h(Lmobi/tikl/wire/control/a$N;Z)Z
    .registers 2

    .prologue
    .line 7412
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$N;->rX:Z

    return p1
.end method

.method static synthetic i(Lmobi/tikl/wire/control/a$N;I)I
    .registers 2

    .prologue
    .line 7412
    iput p1, p0, Lmobi/tikl/wire/control/a$N;->se:I

    return p1
.end method

.method static synthetic i(Lmobi/tikl/wire/control/a$N;Z)Z
    .registers 2

    .prologue
    .line 7412
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$N;->rZ:Z

    return p1
.end method

.method static synthetic j(Lmobi/tikl/wire/control/a$N;Z)Z
    .registers 2

    .prologue
    .line 7412
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$N;->sb:Z

    return p1
.end method

.method static synthetic k(Lmobi/tikl/wire/control/a$N;Z)Z
    .registers 2

    .prologue
    .line 7412
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$N;->sd:Z

    return p1
.end method

.method public static xM()Lmobi/tikl/wire/control/a$N$a;
    .registers 1

    .prologue
    .line 7669
    invoke-static {}, Lmobi/tikl/wire/control/a$N$a;->xU()Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    return-object v0
.end method

.method public static xq()Lmobi/tikl/wire/control/a$N;
    .registers 1

    .prologue
    .line 7422
    sget-object v0, Lmobi/tikl/wire/control/a$N;->rK:Lmobi/tikl/wire/control/a$N;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 7553
    iget v0, p0, Lmobi/tikl/wire/control/a$N;->ai:I

    .line 7554
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 7599
    :goto_5
    return v0

    .line 7556
    :cond_6
    const/4 v0, 0x0

    .line 7557
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xs()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 7558
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xt()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 7561
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xu()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 7562
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xv()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7565
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xw()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 7566
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xx()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7569
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xy()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 7570
    const/4 v1, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xz()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7573
    :cond_48
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xA()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 7574
    const/4 v1, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xB()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7577
    :cond_58
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xC()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 7578
    const/4 v1, 0x6

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xD()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7581
    :cond_68
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xE()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 7582
    const/4 v1, 0x7

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xF()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7585
    :cond_78
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xG()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 7586
    const/16 v1, 0x8

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xH()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7589
    :cond_89
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xI()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 7590
    const/16 v1, 0x9

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xJ()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7593
    :cond_9a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xK()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 7594
    const/16 v1, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xL()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7597
    :cond_ab
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 7598
    iput v0, p0, Lmobi/tikl/wire/control/a$N;->ai:I

    goto/16 :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 7517
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->a()I

    .line 7518
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xs()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7519
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xt()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 7521
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xu()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 7522
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xv()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 7524
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xw()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7525
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xx()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 7527
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xy()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 7528
    const/4 v0, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xz()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 7530
    :cond_3b
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xA()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 7531
    const/4 v0, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xB()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 7533
    :cond_49
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xC()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 7534
    const/4 v0, 0x6

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xD()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 7536
    :cond_57
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xE()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 7537
    const/4 v0, 0x7

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xF()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 7539
    :cond_65
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xG()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 7540
    const/16 v0, 0x8

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xH()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 7542
    :cond_74
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xI()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 7543
    const/16 v0, 0x9

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xJ()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 7545
    :cond_83
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xK()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 7546
    const/16 v0, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xL()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 7548
    :cond_92
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 7549
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 7412
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xN()Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 7412
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xr()Lmobi/tikl/wire/control/a$N;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 7412
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N;->xO()Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 7436
    invoke-static {}, Lmobi/tikl/wire/control/a;->kJ()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 7512
    const/4 v0, 0x1

    return v0
.end method

.method public xA()Z
    .registers 2

    .prologue
    .line 7471
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$N;->rT:Z

    return v0
.end method

.method public xB()I
    .registers 2

    .prologue
    .line 7472
    iget v0, p0, Lmobi/tikl/wire/control/a$N;->rU:I

    return v0
.end method

.method public xC()Z
    .registers 2

    .prologue
    .line 7478
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$N;->rV:Z

    return v0
.end method

.method public xD()I
    .registers 2

    .prologue
    .line 7479
    iget v0, p0, Lmobi/tikl/wire/control/a$N;->rW:I

    return v0
.end method

.method public xE()Z
    .registers 2

    .prologue
    .line 7485
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$N;->rX:Z

    return v0
.end method

.method public xF()I
    .registers 2

    .prologue
    .line 7486
    iget v0, p0, Lmobi/tikl/wire/control/a$N;->rY:I

    return v0
.end method

.method public xG()Z
    .registers 2

    .prologue
    .line 7492
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$N;->rZ:Z

    return v0
.end method

.method public xH()I
    .registers 2

    .prologue
    .line 7493
    iget v0, p0, Lmobi/tikl/wire/control/a$N;->sa:I

    return v0
.end method

.method public xI()Z
    .registers 2

    .prologue
    .line 7499
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$N;->sb:Z

    return v0
.end method

.method public xJ()I
    .registers 2

    .prologue
    .line 7500
    iget v0, p0, Lmobi/tikl/wire/control/a$N;->sc:I

    return v0
.end method

.method public xK()Z
    .registers 2

    .prologue
    .line 7506
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$N;->sd:Z

    return v0
.end method

.method public xL()I
    .registers 2

    .prologue
    .line 7507
    iget v0, p0, Lmobi/tikl/wire/control/a$N;->se:I

    return v0
.end method

.method public xN()Lmobi/tikl/wire/control/a$N$a;
    .registers 2

    .prologue
    .line 7670
    invoke-static {}, Lmobi/tikl/wire/control/a$N;->xM()Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    return-object v0
.end method

.method public xO()Lmobi/tikl/wire/control/a$N$a;
    .registers 2

    .prologue
    .line 7674
    invoke-static {p0}, Lmobi/tikl/wire/control/a$N;->a(Lmobi/tikl/wire/control/a$N;)Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    return-object v0
.end method

.method public xr()Lmobi/tikl/wire/control/a$N;
    .registers 2

    .prologue
    .line 7426
    sget-object v0, Lmobi/tikl/wire/control/a$N;->rK:Lmobi/tikl/wire/control/a$N;

    return-object v0
.end method

.method public xs()Z
    .registers 2

    .prologue
    .line 7443
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$N;->rL:Z

    return v0
.end method

.method public xt()Z
    .registers 2

    .prologue
    .line 7444
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$N;->rM:Z

    return v0
.end method

.method public xu()Z
    .registers 2

    .prologue
    .line 7450
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$N;->rN:Z

    return v0
.end method

.method public xv()I
    .registers 2

    .prologue
    .line 7451
    iget v0, p0, Lmobi/tikl/wire/control/a$N;->rO:I

    return v0
.end method

.method public xw()Z
    .registers 2

    .prologue
    .line 7457
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$N;->rP:Z

    return v0
.end method

.method public xx()I
    .registers 2

    .prologue
    .line 7458
    iget v0, p0, Lmobi/tikl/wire/control/a$N;->rQ:I

    return v0
.end method

.method public xy()Z
    .registers 2

    .prologue
    .line 7464
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$N;->rR:Z

    return v0
.end method

.method public xz()I
    .registers 2

    .prologue
    .line 7465
    iget v0, p0, Lmobi/tikl/wire/control/a$N;->rS:I

    return v0
.end method
