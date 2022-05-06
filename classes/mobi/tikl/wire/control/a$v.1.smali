.class public final Lmobi/tikl/wire/control/a$v;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$v$a;
    }
.end annotation


# static fields
.field private static final qx:Lmobi/tikl/wire/control/a$v;


# instance fields
.field private ai:I

.field private pC:Z

.field private pD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17579
    new-instance v0, Lmobi/tikl/wire/control/a$v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$v;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$v;->qx:Lmobi/tikl/wire/control/a$v;

    .line 17580
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 17581
    sget-object v0, Lmobi/tikl/wire/control/a$v;->qx:Lmobi/tikl/wire/control/a$v;

    .line 17582
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 17302
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 17329
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$v;->pD:Ljava/lang/String;

    .line 17349
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$v;->ai:I

    .line 17303
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 17299
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$v;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 17305
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 17329
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$v;->pD:Ljava/lang/String;

    .line 17349
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$v;->ai:I

    .line 17305
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$v;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 17299
    iput-object p1, p0, Lmobi/tikl/wire/control/a$v;->pD:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$v;)Lmobi/tikl/wire/control/a$v$a;
    .registers 2

    .prologue
    .line 17434
    invoke-static {}, Lmobi/tikl/wire/control/a$v;->tb()Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$v$a;->b(Lmobi/tikl/wire/control/a$v;)Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$v;Z)Z
    .registers 2

    .prologue
    .line 17299
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$v;->pC:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 17318
    invoke-static {}, Lmobi/tikl/wire/control/a;->ly()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static sZ()Lmobi/tikl/wire/control/a$v;
    .registers 1

    .prologue
    .line 17309
    sget-object v0, Lmobi/tikl/wire/control/a$v;->qx:Lmobi/tikl/wire/control/a$v;

    return-object v0
.end method

.method public static tb()Lmobi/tikl/wire/control/a$v$a;
    .registers 1

    .prologue
    .line 17431
    invoke-static {}, Lmobi/tikl/wire/control/a$v$a;->tj()Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 17351
    iget v0, p0, Lmobi/tikl/wire/control/a$v;->ai:I

    .line 17352
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 17361
    :goto_5
    return v0

    .line 17354
    :cond_6
    const/4 v0, 0x0

    .line 17355
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v;->pS()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 17356
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 17359
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 17360
    iput v0, p0, Lmobi/tikl/wire/control/a$v;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 17342
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v;->a()I

    .line 17343
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v;->pS()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 17344
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 17346
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 17347
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 17299
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v;->tc()Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 17299
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v;->ta()Lmobi/tikl/wire/control/a$v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 17299
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$v;->td()Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 17323
    invoke-static {}, Lmobi/tikl/wire/control/a;->lz()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 17336
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$v;->pC:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 17337
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 17330
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$v;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17331
    iget-object v0, p0, Lmobi/tikl/wire/control/a$v;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public ta()Lmobi/tikl/wire/control/a$v;
    .registers 2

    .prologue
    .line 17313
    sget-object v0, Lmobi/tikl/wire/control/a$v;->qx:Lmobi/tikl/wire/control/a$v;

    return-object v0
.end method

.method public tc()Lmobi/tikl/wire/control/a$v$a;
    .registers 2

    .prologue
    .line 17432
    invoke-static {}, Lmobi/tikl/wire/control/a$v;->tb()Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public td()Lmobi/tikl/wire/control/a$v$a;
    .registers 2

    .prologue
    .line 17436
    invoke-static {p0}, Lmobi/tikl/wire/control/a$v;->a(Lmobi/tikl/wire/control/a$v;)Lmobi/tikl/wire/control/a$v$a;

    move-result-object v0

    return-object v0
.end method
