.class public final Lmobi/tikl/wire/control/a$af;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "af"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$af$a;
    }
.end annotation


# static fields
.field private static final uh:Lmobi/tikl/wire/control/a$af;


# instance fields
.field private ai:I

.field private oD:Z

.field private oE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29303
    new-instance v0, Lmobi/tikl/wire/control/a$af;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$af;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$af;->uh:Lmobi/tikl/wire/control/a$af;

    .line 29304
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 29305
    sget-object v0, Lmobi/tikl/wire/control/a$af;->uh:Lmobi/tikl/wire/control/a$af;

    .line 29306
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 29026
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 29053
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$af;->oE:Ljava/lang/String;

    .line 29073
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$af;->ai:I

    .line 29027
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 29023
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$af;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 29029
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 29053
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$af;->oE:Ljava/lang/String;

    .line 29073
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$af;->ai:I

    .line 29029
    return-void
.end method

.method public static CO()Lmobi/tikl/wire/control/a$af;
    .registers 1

    .prologue
    .line 29033
    sget-object v0, Lmobi/tikl/wire/control/a$af;->uh:Lmobi/tikl/wire/control/a$af;

    return-object v0
.end method

.method public static CQ()Lmobi/tikl/wire/control/a$af$a;
    .registers 1

    .prologue
    .line 29155
    invoke-static {}, Lmobi/tikl/wire/control/a$af$a;->CY()Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$af;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 29023
    iput-object p1, p0, Lmobi/tikl/wire/control/a$af;->oE:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$af;Z)Z
    .registers 2

    .prologue
    .line 29023
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$af;->oD:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 29042
    invoke-static {}, Lmobi/tikl/wire/control/a;->mC()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lmobi/tikl/wire/control/a$af;)Lmobi/tikl/wire/control/a$af$a;
    .registers 2

    .prologue
    .line 29158
    invoke-static {}, Lmobi/tikl/wire/control/a$af;->CQ()Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$af$a;->d(Lmobi/tikl/wire/control/a$af;)Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public CP()Lmobi/tikl/wire/control/a$af;
    .registers 2

    .prologue
    .line 29037
    sget-object v0, Lmobi/tikl/wire/control/a$af;->uh:Lmobi/tikl/wire/control/a$af;

    return-object v0
.end method

.method public CR()Lmobi/tikl/wire/control/a$af$a;
    .registers 2

    .prologue
    .line 29156
    invoke-static {}, Lmobi/tikl/wire/control/a$af;->CQ()Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public CS()Lmobi/tikl/wire/control/a$af$a;
    .registers 2

    .prologue
    .line 29160
    invoke-static {p0}, Lmobi/tikl/wire/control/a$af;->c(Lmobi/tikl/wire/control/a$af;)Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 3

    .prologue
    .line 29075
    iget v0, p0, Lmobi/tikl/wire/control/a$af;->ai:I

    .line 29076
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 29085
    :goto_5
    return v0

    .line 29078
    :cond_6
    const/4 v0, 0x0

    .line 29079
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af;->oh()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 29080
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 29083
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 29084
    iput v0, p0, Lmobi/tikl/wire/control/a$af;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 29066
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af;->a()I

    .line 29067
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af;->oh()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 29068
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 29070
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 29071
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 29023
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af;->CR()Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 29023
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af;->CP()Lmobi/tikl/wire/control/a$af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 29023
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af;->CS()Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 29047
    invoke-static {}, Lmobi/tikl/wire/control/a;->mD()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29055
    iget-object v0, p0, Lmobi/tikl/wire/control/a$af;->oE:Ljava/lang/String;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 29060
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$af;->oD:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 29061
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public oh()Z
    .registers 2

    .prologue
    .line 29054
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$af;->oD:Z

    return v0
.end method
