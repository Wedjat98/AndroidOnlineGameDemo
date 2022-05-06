.class public final Lmobi/tikl/wire/control/a$t;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$t$a;
    }
.end annotation


# static fields
.field private static final qp:Lmobi/tikl/wire/control/a$t;


# instance fields
.field private ai:I

.field private pC:Z

.field private pD:Ljava/lang/String;

.field private qq:Z

.field private qr:Lmobi/tikl/wire/control/a$G;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28595
    new-instance v0, Lmobi/tikl/wire/control/a$t;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$t;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$t;->qp:Lmobi/tikl/wire/control/a$t;

    .line 28596
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 28597
    sget-object v0, Lmobi/tikl/wire/control/a$t;->qp:Lmobi/tikl/wire/control/a$t;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$t;->aJ()V

    .line 28598
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28252
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 28286
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$t;->pD:Ljava/lang/String;

    .line 28312
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$t;->ai:I

    .line 28253
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$t;->aJ()V

    .line 28254
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 28249
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$t;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 28255
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 28286
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$t;->pD:Ljava/lang/String;

    .line 28312
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$t;->ai:I

    .line 28255
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 28249
    iput-object p1, p0, Lmobi/tikl/wire/control/a$t;->pD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$t;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 28249
    iput-object p1, p0, Lmobi/tikl/wire/control/a$t;->qr:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$t$a;
    .registers 2

    .prologue
    .line 28401
    invoke-static {}, Lmobi/tikl/wire/control/a$t;->sD()Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$t$a;->c(Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$t;Z)Z
    .registers 2

    .prologue
    .line 28249
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$t;->qq:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 28291
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$t;->qr:Lmobi/tikl/wire/control/a$G;

    .line 28292
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 28268
    invoke-static {}, Lmobi/tikl/wire/control/a;->my()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 28249
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t;->qr:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$t;Z)Z
    .registers 2

    .prologue
    .line 28249
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$t;->pC:Z

    return p1
.end method

.method public static sD()Lmobi/tikl/wire/control/a$t$a;
    .registers 1

    .prologue
    .line 28398
    invoke-static {}, Lmobi/tikl/wire/control/a$t$a;->sL()Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public static sz()Lmobi/tikl/wire/control/a$t;
    .registers 1

    .prologue
    .line 28259
    sget-object v0, Lmobi/tikl/wire/control/a$t;->qp:Lmobi/tikl/wire/control/a$t;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 28314
    iget v0, p0, Lmobi/tikl/wire/control/a$t;->ai:I

    .line 28315
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 28328
    :goto_5
    return v0

    .line 28317
    :cond_6
    const/4 v0, 0x0

    .line 28318
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t;->sB()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 28319
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 28322
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t;->pS()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 28323
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t;->pT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28326
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 28327
    iput v0, p0, Lmobi/tikl/wire/control/a$t;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 28302
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t;->a()I

    .line 28303
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t;->sB()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 28304
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 28306
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t;->pS()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 28307
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 28309
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 28310
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 28249
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t;->sE()Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 28249
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t;->sA()Lmobi/tikl/wire/control/a$t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 28249
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t;->sF()Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 28273
    invoke-static {}, Lmobi/tikl/wire/control/a;->mz()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 28294
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$t;->qq:Z

    if-nez v1, :cond_6

    .line 28297
    :cond_5
    :goto_5
    return v0

    .line 28295
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$t;->pC:Z

    if-eqz v1, :cond_5

    .line 28296
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$t;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28297
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 28287
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$t;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28288
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public sA()Lmobi/tikl/wire/control/a$t;
    .registers 2

    .prologue
    .line 28263
    sget-object v0, Lmobi/tikl/wire/control/a$t;->qp:Lmobi/tikl/wire/control/a$t;

    return-object v0
.end method

.method public sB()Z
    .registers 2

    .prologue
    .line 28280
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$t;->qq:Z

    return v0
.end method

.method public sC()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 28281
    iget-object v0, p0, Lmobi/tikl/wire/control/a$t;->qr:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public sE()Lmobi/tikl/wire/control/a$t$a;
    .registers 2

    .prologue
    .line 28399
    invoke-static {}, Lmobi/tikl/wire/control/a$t;->sD()Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public sF()Lmobi/tikl/wire/control/a$t$a;
    .registers 2

    .prologue
    .line 28403
    invoke-static {p0}, Lmobi/tikl/wire/control/a$t;->a(Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$t$a;

    move-result-object v0

    return-object v0
.end method
