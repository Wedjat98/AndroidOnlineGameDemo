.class public final Lmobi/tikl/wire/control/a$m;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$m$a;
    }
.end annotation


# static fields
.field private static final pQ:Lmobi/tikl/wire/control/a$m;


# instance fields
.field private ai:I

.field private oA:Z

.field private oB:Lmobi/tikl/wire/control/a$G;

.field private oy:Z

.field private oz:I

.field private pC:Z

.field private pD:Ljava/lang/String;

.field private pK:Z

.field private pL:Lmobi/tikl/wire/control/a$x;

.field private pO:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31891
    new-instance v0, Lmobi/tikl/wire/control/a$m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$m;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$m;->pQ:Lmobi/tikl/wire/control/a$m;

    .line 31892
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 31893
    sget-object v0, Lmobi/tikl/wire/control/a$m;->pQ:Lmobi/tikl/wire/control/a$m;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$m;->aJ()V

    .line 31894
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 31353
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 31380
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$m;->oz:I

    .line 31387
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$m;->pD:Ljava/lang/String;

    .line 31400
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$m;->pO:Ljava/util/List;

    .line 31455
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$m;->ai:I

    .line 31354
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$m;->aJ()V

    .line 31355
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 31350
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$m;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 31356
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 31380
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$m;->oz:I

    .line 31387
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$m;->pD:Ljava/lang/String;

    .line 31400
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$m;->pO:Ljava/util/List;

    .line 31455
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$m;->ai:I

    .line 31356
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$m;I)I
    .registers 2

    .prologue
    .line 31350
    iput p1, p0, Lmobi/tikl/wire/control/a$m;->oz:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$m;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 31350
    iput-object p1, p0, Lmobi/tikl/wire/control/a$m;->pD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$m;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 31350
    iput-object p1, p0, Lmobi/tikl/wire/control/a$m;->pO:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$m;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 31350
    iput-object p1, p0, Lmobi/tikl/wire/control/a$m;->oB:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$m;)Lmobi/tikl/wire/control/a$m$a;
    .registers 2

    .prologue
    .line 31556
    invoke-static {}, Lmobi/tikl/wire/control/a$m;->qR()Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$m$a;->e(Lmobi/tikl/wire/control/a$m;)Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$m;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 31350
    iput-object p1, p0, Lmobi/tikl/wire/control/a$m;->pL:Lmobi/tikl/wire/control/a$x;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$m;Z)Z
    .registers 2

    .prologue
    .line 31350
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$m;->oy:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 31418
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$m;->oB:Lmobi/tikl/wire/control/a$G;

    .line 31419
    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tx()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$m;->pL:Lmobi/tikl/wire/control/a$x;

    .line 31420
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 31369
    invoke-static {}, Lmobi/tikl/wire/control/a;->mO()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$m;)Ljava/util/List;
    .registers 2

    .prologue
    .line 31350
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m;->pO:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$m;Z)Z
    .registers 2

    .prologue
    .line 31350
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$m;->pC:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$m;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 31350
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$m;Z)Z
    .registers 2

    .prologue
    .line 31350
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$m;->oA:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$m;)Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 31350
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m;->pL:Lmobi/tikl/wire/control/a$x;

    return-object v0
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$m;Z)Z
    .registers 2

    .prologue
    .line 31350
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$m;->pK:Z

    return p1
.end method

.method public static qP()Lmobi/tikl/wire/control/a$m;
    .registers 1

    .prologue
    .line 31360
    sget-object v0, Lmobi/tikl/wire/control/a$m;->pQ:Lmobi/tikl/wire/control/a$m;

    return-object v0
.end method

.method public static qR()Lmobi/tikl/wire/control/a$m$a;
    .registers 1

    .prologue
    .line 31553
    invoke-static {}, Lmobi/tikl/wire/control/a$m$a;->qZ()Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 31457
    iget v0, p0, Lmobi/tikl/wire/control/a$m;->ai:I

    .line 31458
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 31483
    :goto_5
    return v0

    .line 31460
    :cond_6
    const/4 v0, 0x0

    .line 31461
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->oc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 31462
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->getMsgId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 31465
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->pS()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 31466
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->pT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31469
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->od()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 31470
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31473
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->qF()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 31474
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 31476
    goto :goto_41

    .line 31477
    :cond_55
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->qs()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 31478
    const/4 v0, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v1, v0

    .line 31481
    :cond_65
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 31482
    iput v0, p0, Lmobi/tikl/wire/control/a$m;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 31436
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->a()I

    .line 31437
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->oc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 31438
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->getMsgId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 31440
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->pS()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 31441
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 31443
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->od()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 31444
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 31446
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->qF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 31447
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_35

    .line 31449
    :cond_46
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->qs()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 31450
    const/4 v0, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 31452
    :cond_54
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 31453
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 31350
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->qS()Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 31350
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->qQ()Lmobi/tikl/wire/control/a$m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 31350
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->qT()Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 31374
    invoke-static {}, Lmobi/tikl/wire/control/a;->mP()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 31382
    iget v0, p0, Lmobi/tikl/wire/control/a$m;->oz:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 31422
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$m;->oy:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 31431
    :goto_6
    return v0

    .line 31423
    :cond_7
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$m;->pC:Z

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_6

    .line 31424
    :cond_d
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$m;->oA:Z

    if-nez v0, :cond_13

    move v0, v1

    goto :goto_6

    .line 31425
    :cond_13
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$m;->pK:Z

    if-nez v0, :cond_19

    move v0, v1

    goto :goto_6

    .line 31426
    :cond_19
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v1

    goto :goto_6

    .line 31427
    :cond_25
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->qF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 31428
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2d

    move v0, v1

    goto :goto_6

    .line 31430
    :cond_41
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$m;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$x;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4d

    move v0, v1

    goto :goto_6

    .line 31431
    :cond_4d
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public oc()Z
    .registers 2

    .prologue
    .line 31381
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$m;->oy:Z

    return v0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 31395
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$m;->oA:Z

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 31396
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 31388
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$m;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31389
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public qF()Ljava/util/List;
    .registers 2

    .prologue
    .line 31403
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m;->pO:Ljava/util/List;

    return-object v0
.end method

.method public qQ()Lmobi/tikl/wire/control/a$m;
    .registers 2

    .prologue
    .line 31364
    sget-object v0, Lmobi/tikl/wire/control/a$m;->pQ:Lmobi/tikl/wire/control/a$m;

    return-object v0
.end method

.method public qS()Lmobi/tikl/wire/control/a$m$a;
    .registers 2

    .prologue
    .line 31554
    invoke-static {}, Lmobi/tikl/wire/control/a$m;->qR()Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public qT()Lmobi/tikl/wire/control/a$m$a;
    .registers 2

    .prologue
    .line 31558
    invoke-static {p0}, Lmobi/tikl/wire/control/a$m;->a(Lmobi/tikl/wire/control/a$m;)Lmobi/tikl/wire/control/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public qs()Z
    .registers 2

    .prologue
    .line 31414
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$m;->pK:Z

    return v0
.end method

.method public qt()Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 31415
    iget-object v0, p0, Lmobi/tikl/wire/control/a$m;->pL:Lmobi/tikl/wire/control/a$x;

    return-object v0
.end method
