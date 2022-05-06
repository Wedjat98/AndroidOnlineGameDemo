.class public final Lmobi/tikl/wire/control/a$I;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "I"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$I$a;
    }
.end annotation


# static fields
.field private static final rk:Lmobi/tikl/wire/control/a$I;


# instance fields
.field private ai:I

.field private rl:Z

.field private rm:Ljava/lang/String;

.field private rn:Z

.field private ro:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24324
    new-instance v0, Lmobi/tikl/wire/control/a$I;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$I;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$I;->rk:Lmobi/tikl/wire/control/a$I;

    .line 24325
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 24326
    sget-object v0, Lmobi/tikl/wire/control/a$I;->rk:Lmobi/tikl/wire/control/a$I;

    .line 24327
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24007
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 24034
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$I;->rm:Ljava/lang/String;

    .line 24041
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$I;->ro:I

    .line 24065
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$I;->ai:I

    .line 24008
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 24004
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$I;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 24010
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 24034
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$I;->rm:Ljava/lang/String;

    .line 24041
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$I;->ro:I

    .line 24065
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$I;->ai:I

    .line 24010
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$I;I)I
    .registers 2

    .prologue
    .line 24004
    iput p1, p0, Lmobi/tikl/wire/control/a$I;->ro:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$I;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 24004
    iput-object p1, p0, Lmobi/tikl/wire/control/a$I;->rm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$I;Z)Z
    .registers 2

    .prologue
    .line 24004
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$I;->rl:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 24023
    invoke-static {}, Lmobi/tikl/wire/control/a;->mg()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lmobi/tikl/wire/control/a$I;)Lmobi/tikl/wire/control/a$I$a;
    .registers 2

    .prologue
    .line 24154
    invoke-static {}, Lmobi/tikl/wire/control/a$I;->wf()Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$I$a;->c(Lmobi/tikl/wire/control/a$I;)Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$I;Z)Z
    .registers 2

    .prologue
    .line 24004
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$I;->rn:Z

    return p1
.end method

.method public static wb()Lmobi/tikl/wire/control/a$I;
    .registers 1

    .prologue
    .line 24014
    sget-object v0, Lmobi/tikl/wire/control/a$I;->rk:Lmobi/tikl/wire/control/a$I;

    return-object v0
.end method

.method public static wf()Lmobi/tikl/wire/control/a$I$a;
    .registers 1

    .prologue
    .line 24151
    invoke-static {}, Lmobi/tikl/wire/control/a$I$a;->wn()Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 24067
    iget v0, p0, Lmobi/tikl/wire/control/a$I;->ai:I

    .line 24068
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 24081
    :goto_5
    return v0

    .line 24070
    :cond_6
    const/4 v0, 0x0

    .line 24071
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I;->wd()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 24072
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 24075
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I;->we()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 24076
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I;->getPort()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24079
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 24080
    iput v0, p0, Lmobi/tikl/wire/control/a$I;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 24055
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I;->a()I

    .line 24056
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I;->wd()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 24057
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 24059
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I;->we()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 24060
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I;->getPort()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 24062
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 24063
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 24004
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I;->wg()Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 24004
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I;->wc()Lmobi/tikl/wire/control/a$I;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 24004
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$I;->wh()Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 24028
    invoke-static {}, Lmobi/tikl/wire/control/a;->mh()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24036
    iget-object v0, p0, Lmobi/tikl/wire/control/a$I;->rm:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 24043
    iget v0, p0, Lmobi/tikl/wire/control/a$I;->ro:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 24048
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$I;->rl:Z

    if-nez v1, :cond_6

    .line 24050
    :cond_5
    :goto_5
    return v0

    .line 24049
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$I;->rn:Z

    if-eqz v1, :cond_5

    .line 24050
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public wc()Lmobi/tikl/wire/control/a$I;
    .registers 2

    .prologue
    .line 24018
    sget-object v0, Lmobi/tikl/wire/control/a$I;->rk:Lmobi/tikl/wire/control/a$I;

    return-object v0
.end method

.method public wd()Z
    .registers 2

    .prologue
    .line 24035
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$I;->rl:Z

    return v0
.end method

.method public we()Z
    .registers 2

    .prologue
    .line 24042
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$I;->rn:Z

    return v0
.end method

.method public wg()Lmobi/tikl/wire/control/a$I$a;
    .registers 2

    .prologue
    .line 24152
    invoke-static {}, Lmobi/tikl/wire/control/a$I;->wf()Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    return-object v0
.end method

.method public wh()Lmobi/tikl/wire/control/a$I$a;
    .registers 2

    .prologue
    .line 24156
    invoke-static {p0}, Lmobi/tikl/wire/control/a$I;->b(Lmobi/tikl/wire/control/a$I;)Lmobi/tikl/wire/control/a$I$a;

    move-result-object v0

    return-object v0
.end method
