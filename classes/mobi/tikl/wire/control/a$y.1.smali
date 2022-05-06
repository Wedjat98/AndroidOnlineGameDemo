.class public final Lmobi/tikl/wire/control/a$y;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "y"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$y$a;
    }
.end annotation


# static fields
.field private static final qI:Lmobi/tikl/wire/control/a$y;


# instance fields
.field private ai:I

.field private pC:Z

.field private pD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34492
    new-instance v0, Lmobi/tikl/wire/control/a$y;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$y;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$y;->qI:Lmobi/tikl/wire/control/a$y;

    .line 34493
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 34494
    sget-object v0, Lmobi/tikl/wire/control/a$y;->qI:Lmobi/tikl/wire/control/a$y;

    .line 34495
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 34215
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 34242
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$y;->pD:Ljava/lang/String;

    .line 34262
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$y;->ai:I

    .line 34216
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 34212
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$y;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 34218
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 34242
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$y;->pD:Ljava/lang/String;

    .line 34262
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$y;->ai:I

    .line 34218
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$y;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34212
    iput-object p1, p0, Lmobi/tikl/wire/control/a$y;->pD:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$y;)Lmobi/tikl/wire/control/a$y$a;
    .registers 2

    .prologue
    .line 34347
    invoke-static {}, Lmobi/tikl/wire/control/a$y;->tN()Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$y$a;->b(Lmobi/tikl/wire/control/a$y;)Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$y;Z)Z
    .registers 2

    .prologue
    .line 34212
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$y;->pC:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 34231
    invoke-static {}, Lmobi/tikl/wire/control/a;->nc()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static tL()Lmobi/tikl/wire/control/a$y;
    .registers 1

    .prologue
    .line 34222
    sget-object v0, Lmobi/tikl/wire/control/a$y;->qI:Lmobi/tikl/wire/control/a$y;

    return-object v0
.end method

.method public static tN()Lmobi/tikl/wire/control/a$y$a;
    .registers 1

    .prologue
    .line 34344
    invoke-static {}, Lmobi/tikl/wire/control/a$y$a;->tV()Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 34264
    iget v0, p0, Lmobi/tikl/wire/control/a$y;->ai:I

    .line 34265
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 34274
    :goto_5
    return v0

    .line 34267
    :cond_6
    const/4 v0, 0x0

    .line 34268
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y;->pS()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 34269
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 34272
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 34273
    iput v0, p0, Lmobi/tikl/wire/control/a$y;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 34255
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y;->a()I

    .line 34256
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y;->pS()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 34257
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 34259
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 34260
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 34212
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y;->tO()Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 34212
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y;->tM()Lmobi/tikl/wire/control/a$y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 34212
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$y;->tP()Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 34236
    invoke-static {}, Lmobi/tikl/wire/control/a;->nd()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 34249
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$y;->pC:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 34250
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 34243
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$y;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34244
    iget-object v0, p0, Lmobi/tikl/wire/control/a$y;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public tM()Lmobi/tikl/wire/control/a$y;
    .registers 2

    .prologue
    .line 34226
    sget-object v0, Lmobi/tikl/wire/control/a$y;->qI:Lmobi/tikl/wire/control/a$y;

    return-object v0
.end method

.method public tO()Lmobi/tikl/wire/control/a$y$a;
    .registers 2

    .prologue
    .line 34345
    invoke-static {}, Lmobi/tikl/wire/control/a$y;->tN()Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    return-object v0
.end method

.method public tP()Lmobi/tikl/wire/control/a$y$a;
    .registers 2

    .prologue
    .line 34349
    invoke-static {p0}, Lmobi/tikl/wire/control/a$y;->a(Lmobi/tikl/wire/control/a$y;)Lmobi/tikl/wire/control/a$y$a;

    move-result-object v0

    return-object v0
.end method
