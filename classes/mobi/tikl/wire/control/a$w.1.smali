.class public final Lmobi/tikl/wire/control/a$w;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$w$a;
    }
.end annotation


# static fields
.field private static final qz:Lmobi/tikl/wire/control/a$w;


# instance fields
.field private ai:I

.field private pC:Z

.field private pD:Ljava/lang/String;

.field private qA:Z

.field private qB:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18281
    new-instance v0, Lmobi/tikl/wire/control/a$w;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$w;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$w;->qz:Lmobi/tikl/wire/control/a$w;

    .line 18282
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 18283
    sget-object v0, Lmobi/tikl/wire/control/a$w;->qz:Lmobi/tikl/wire/control/a$w;

    .line 18284
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 17964
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 17991
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$w;->pD:Ljava/lang/String;

    .line 17998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$w;->qB:Z

    .line 18022
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$w;->ai:I

    .line 17965
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 17961
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$w;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 17967
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 17991
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$w;->pD:Ljava/lang/String;

    .line 17998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$w;->qB:Z

    .line 18022
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$w;->ai:I

    .line 17967
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$w;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 17961
    iput-object p1, p0, Lmobi/tikl/wire/control/a$w;->pD:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$w;)Lmobi/tikl/wire/control/a$w$a;
    .registers 2

    .prologue
    .line 18111
    invoke-static {}, Lmobi/tikl/wire/control/a$w;->to()Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$w$a;->b(Lmobi/tikl/wire/control/a$w;)Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$w;Z)Z
    .registers 2

    .prologue
    .line 17961
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$w;->pC:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 17980
    invoke-static {}, Lmobi/tikl/wire/control/a;->lC()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$w;Z)Z
    .registers 2

    .prologue
    .line 17961
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$w;->qA:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$w;Z)Z
    .registers 2

    .prologue
    .line 17961
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$w;->qB:Z

    return p1
.end method

.method public static tk()Lmobi/tikl/wire/control/a$w;
    .registers 1

    .prologue
    .line 17971
    sget-object v0, Lmobi/tikl/wire/control/a$w;->qz:Lmobi/tikl/wire/control/a$w;

    return-object v0
.end method

.method public static to()Lmobi/tikl/wire/control/a$w$a;
    .registers 1

    .prologue
    .line 18108
    invoke-static {}, Lmobi/tikl/wire/control/a$w$a;->tw()Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 18024
    iget v0, p0, Lmobi/tikl/wire/control/a$w;->ai:I

    .line 18025
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 18038
    :goto_5
    return v0

    .line 18027
    :cond_6
    const/4 v0, 0x0

    .line 18028
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w;->pS()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 18029
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 18032
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w;->tm()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 18033
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w;->tn()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18036
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 18037
    iput v0, p0, Lmobi/tikl/wire/control/a$w;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 18012
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w;->a()I

    .line 18013
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w;->pS()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 18014
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 18016
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w;->tm()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 18017
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w;->tn()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 18019
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 18020
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 17961
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w;->tp()Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 17961
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w;->tl()Lmobi/tikl/wire/control/a$w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 17961
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w;->tq()Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 17985
    invoke-static {}, Lmobi/tikl/wire/control/a;->lD()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 18005
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$w;->pC:Z

    if-nez v1, :cond_6

    .line 18007
    :cond_5
    :goto_5
    return v0

    .line 18006
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$w;->qA:Z

    if-eqz v1, :cond_5

    .line 18007
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 17992
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$w;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17993
    iget-object v0, p0, Lmobi/tikl/wire/control/a$w;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public tl()Lmobi/tikl/wire/control/a$w;
    .registers 2

    .prologue
    .line 17975
    sget-object v0, Lmobi/tikl/wire/control/a$w;->qz:Lmobi/tikl/wire/control/a$w;

    return-object v0
.end method

.method public tm()Z
    .registers 2

    .prologue
    .line 17999
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$w;->qA:Z

    return v0
.end method

.method public tn()Z
    .registers 2

    .prologue
    .line 18000
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$w;->qB:Z

    return v0
.end method

.method public tp()Lmobi/tikl/wire/control/a$w$a;
    .registers 2

    .prologue
    .line 18109
    invoke-static {}, Lmobi/tikl/wire/control/a$w;->to()Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    return-object v0
.end method

.method public tq()Lmobi/tikl/wire/control/a$w$a;
    .registers 2

    .prologue
    .line 18113
    invoke-static {p0}, Lmobi/tikl/wire/control/a$w;->a(Lmobi/tikl/wire/control/a$w;)Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    return-object v0
.end method
