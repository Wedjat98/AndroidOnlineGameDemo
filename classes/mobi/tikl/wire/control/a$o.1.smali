.class public final Lmobi/tikl/wire/control/a$o;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$o$a;
    }
.end annotation


# static fields
.field private static final qd:Lmobi/tikl/wire/control/a$o;


# instance fields
.field private ai:I

.field private oy:Z

.field private oz:I

.field private pC:Z

.field private pD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34204
    new-instance v0, Lmobi/tikl/wire/control/a$o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$o;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$o;->qd:Lmobi/tikl/wire/control/a$o;

    .line 34205
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 34206
    sget-object v0, Lmobi/tikl/wire/control/a$o;->qd:Lmobi/tikl/wire/control/a$o;

    .line 34207
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 33887
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 33914
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$o;->oz:I

    .line 33921
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$o;->pD:Ljava/lang/String;

    .line 33945
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$o;->ai:I

    .line 33888
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 33884
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$o;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 33890
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 33914
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$o;->oz:I

    .line 33921
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$o;->pD:Ljava/lang/String;

    .line 33945
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$o;->ai:I

    .line 33890
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$o;I)I
    .registers 2

    .prologue
    .line 33884
    iput p1, p0, Lmobi/tikl/wire/control/a$o;->oz:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$o;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 33884
    iput-object p1, p0, Lmobi/tikl/wire/control/a$o;->pD:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$o;)Lmobi/tikl/wire/control/a$o$a;
    .registers 2

    .prologue
    .line 34034
    invoke-static {}, Lmobi/tikl/wire/control/a$o;->rw()Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$o$a;->b(Lmobi/tikl/wire/control/a$o;)Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$o;Z)Z
    .registers 2

    .prologue
    .line 33884
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$o;->oy:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 33903
    invoke-static {}, Lmobi/tikl/wire/control/a;->na()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$o;Z)Z
    .registers 2

    .prologue
    .line 33884
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$o;->pC:Z

    return p1
.end method

.method public static ru()Lmobi/tikl/wire/control/a$o;
    .registers 1

    .prologue
    .line 33894
    sget-object v0, Lmobi/tikl/wire/control/a$o;->qd:Lmobi/tikl/wire/control/a$o;

    return-object v0
.end method

.method public static rw()Lmobi/tikl/wire/control/a$o$a;
    .registers 1

    .prologue
    .line 34031
    invoke-static {}, Lmobi/tikl/wire/control/a$o$a;->rE()Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 33947
    iget v0, p0, Lmobi/tikl/wire/control/a$o;->ai:I

    .line 33948
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 33961
    :goto_5
    return v0

    .line 33950
    :cond_6
    const/4 v0, 0x0

    .line 33951
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o;->oc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 33952
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o;->getMsgId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 33955
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o;->pS()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 33956
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o;->pT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33959
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 33960
    iput v0, p0, Lmobi/tikl/wire/control/a$o;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 33935
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o;->a()I

    .line 33936
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o;->oc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 33937
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o;->getMsgId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 33939
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o;->pS()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 33940
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 33942
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 33943
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 33884
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o;->rx()Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 33884
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o;->rv()Lmobi/tikl/wire/control/a$o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 33884
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o;->ry()Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 33908
    invoke-static {}, Lmobi/tikl/wire/control/a;->nb()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 33916
    iget v0, p0, Lmobi/tikl/wire/control/a$o;->oz:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 33928
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$o;->oy:Z

    if-nez v1, :cond_6

    .line 33930
    :cond_5
    :goto_5
    return v0

    .line 33929
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$o;->pC:Z

    if-eqz v1, :cond_5

    .line 33930
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public oc()Z
    .registers 2

    .prologue
    .line 33915
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$o;->oy:Z

    return v0
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 33922
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$o;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33923
    iget-object v0, p0, Lmobi/tikl/wire/control/a$o;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public rv()Lmobi/tikl/wire/control/a$o;
    .registers 2

    .prologue
    .line 33898
    sget-object v0, Lmobi/tikl/wire/control/a$o;->qd:Lmobi/tikl/wire/control/a$o;

    return-object v0
.end method

.method public rx()Lmobi/tikl/wire/control/a$o$a;
    .registers 2

    .prologue
    .line 34032
    invoke-static {}, Lmobi/tikl/wire/control/a$o;->rw()Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public ry()Lmobi/tikl/wire/control/a$o$a;
    .registers 2

    .prologue
    .line 34036
    invoke-static {p0}, Lmobi/tikl/wire/control/a$o;->a(Lmobi/tikl/wire/control/a$o;)Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    return-object v0
.end method
