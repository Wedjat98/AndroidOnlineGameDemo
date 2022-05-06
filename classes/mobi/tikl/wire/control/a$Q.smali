.class public final Lmobi/tikl/wire/control/a$Q;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Q"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$Q$a;
    }
.end annotation


# static fields
.field private static final su:Lmobi/tikl/wire/control/a$Q;


# instance fields
.field private aH:Z

.field private ai:I

.field private sA:Z

.field private sB:Ljava/lang/String;

.field private sv:I

.field private sw:Z

.field private sx:Ljava/lang/String;

.field private sy:Z

.field private sz:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24732
    new-instance v0, Lmobi/tikl/wire/control/a$Q;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$Q;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$Q;->su:Lmobi/tikl/wire/control/a$Q;

    .line 24733
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 24734
    sget-object v0, Lmobi/tikl/wire/control/a$Q;->su:Lmobi/tikl/wire/control/a$Q;

    .line 24735
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 24335
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 24362
    iput v1, p0, Lmobi/tikl/wire/control/a$Q;->sv:I

    .line 24369
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$Q;->sx:Ljava/lang/String;

    .line 24376
    iput v1, p0, Lmobi/tikl/wire/control/a$Q;->sz:I

    .line 24383
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$Q;->sB:Ljava/lang/String;

    .line 24412
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$Q;->ai:I

    .line 24336
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 24332
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$Q;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 24338
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 24362
    iput v1, p0, Lmobi/tikl/wire/control/a$Q;->sv:I

    .line 24369
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$Q;->sx:Ljava/lang/String;

    .line 24376
    iput v1, p0, Lmobi/tikl/wire/control/a$Q;->sz:I

    .line 24383
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$Q;->sB:Ljava/lang/String;

    .line 24412
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$Q;->ai:I

    .line 24338
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$Q;I)I
    .registers 2

    .prologue
    .line 24332
    iput p1, p0, Lmobi/tikl/wire/control/a$Q;->sv:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$Q;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 24332
    iput-object p1, p0, Lmobi/tikl/wire/control/a$Q;->sx:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$Q;)Lmobi/tikl/wire/control/a$Q$a;
    .registers 2

    .prologue
    .line 24509
    invoke-static {}, Lmobi/tikl/wire/control/a$Q;->yE()Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$Q$a;->b(Lmobi/tikl/wire/control/a$Q;)Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$Q;Z)Z
    .registers 2

    .prologue
    .line 24332
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$Q;->aH:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 24351
    invoke-static {}, Lmobi/tikl/wire/control/a;->mi()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$Q;I)I
    .registers 2

    .prologue
    .line 24332
    iput p1, p0, Lmobi/tikl/wire/control/a$Q;->sz:I

    return p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$Q;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 24332
    iput-object p1, p0, Lmobi/tikl/wire/control/a$Q;->sB:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$Q;Z)Z
    .registers 2

    .prologue
    .line 24332
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$Q;->sw:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$Q;Z)Z
    .registers 2

    .prologue
    .line 24332
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$Q;->sy:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$Q;Z)Z
    .registers 2

    .prologue
    .line 24332
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$Q;->sA:Z

    return p1
.end method

.method public static e(Ljava/io/InputStream;)Lmobi/tikl/wire/control/a$Q;
    .registers 2

    .prologue
    .line 24464
    invoke-static {}, Lmobi/tikl/wire/control/a$Q;->yE()Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$Q$a;->a(Ljava/io/InputStream;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$Q$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$Q$a;->a(Lmobi/tikl/wire/control/a$Q$a;)Lmobi/tikl/wire/control/a$Q;

    move-result-object v0

    return-object v0
.end method

.method public static yE()Lmobi/tikl/wire/control/a$Q$a;
    .registers 1

    .prologue
    .line 24506
    invoke-static {}, Lmobi/tikl/wire/control/a$Q$a;->yN()Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    return-object v0
.end method

.method public static yx()Lmobi/tikl/wire/control/a$Q;
    .registers 1

    .prologue
    .line 24342
    sget-object v0, Lmobi/tikl/wire/control/a$Q;->su:Lmobi/tikl/wire/control/a$Q;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 24414
    iget v0, p0, Lmobi/tikl/wire/control/a$Q;->ai:I

    .line 24415
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 24436
    :goto_5
    return v0

    .line 24417
    :cond_6
    const/4 v0, 0x0

    .line 24418
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->cr()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 24419
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 24422
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->yz()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 24423
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24426
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->yA()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 24427
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->yB()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24430
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->yC()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 24431
    const/16 v1, 0x2710

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->yD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24434
    :cond_49
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 24435
    iput v0, p0, Lmobi/tikl/wire/control/a$Q;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 24396
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->a()I

    .line 24397
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->cr()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 24398
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 24400
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->yz()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 24401
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 24403
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->yA()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 24404
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->yB()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 24406
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->yC()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 24407
    const/16 v0, 0x2710

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->yD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 24409
    :cond_3c
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 24410
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 24332
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->yF()Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 24332
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->yy()Lmobi/tikl/wire/control/a$Q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 24332
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q;->yG()Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 24356
    invoke-static {}, Lmobi/tikl/wire/control/a;->mj()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public cr()Z
    .registers 2

    .prologue
    .line 24363
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$Q;->aH:Z

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24371
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Q;->sx:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 24364
    iget v0, p0, Lmobi/tikl/wire/control/a$Q;->sv:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 24390
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$Q;->aH:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 24391
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public yA()Z
    .registers 2

    .prologue
    .line 24377
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$Q;->sy:Z

    return v0
.end method

.method public yB()I
    .registers 2

    .prologue
    .line 24378
    iget v0, p0, Lmobi/tikl/wire/control/a$Q;->sz:I

    return v0
.end method

.method public yC()Z
    .registers 2

    .prologue
    .line 24384
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$Q;->sA:Z

    return v0
.end method

.method public yD()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24385
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Q;->sB:Ljava/lang/String;

    return-object v0
.end method

.method public yF()Lmobi/tikl/wire/control/a$Q$a;
    .registers 2

    .prologue
    .line 24507
    invoke-static {}, Lmobi/tikl/wire/control/a$Q;->yE()Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    return-object v0
.end method

.method public yG()Lmobi/tikl/wire/control/a$Q$a;
    .registers 2

    .prologue
    .line 24511
    invoke-static {p0}, Lmobi/tikl/wire/control/a$Q;->a(Lmobi/tikl/wire/control/a$Q;)Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    return-object v0
.end method

.method public yy()Lmobi/tikl/wire/control/a$Q;
    .registers 2

    .prologue
    .line 24346
    sget-object v0, Lmobi/tikl/wire/control/a$Q;->su:Lmobi/tikl/wire/control/a$Q;

    return-object v0
.end method

.method public yz()Z
    .registers 2

    .prologue
    .line 24370
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$Q;->sw:Z

    return v0
.end method
