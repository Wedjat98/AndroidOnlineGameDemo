.class public final Lmobi/tikl/wire/control/a$k;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$k$a;
    }
.end annotation


# static fields
.field private static final pH:Lmobi/tikl/wire/control/a$k;


# instance fields
.field private ai:I

.field private oy:Z

.field private oz:I

.field private pC:Z

.field private pD:Ljava/lang/String;

.field private pI:Z

.field private pJ:I

.field private pK:Z

.field private pL:Lmobi/tikl/wire/control/a$x;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32326
    new-instance v0, Lmobi/tikl/wire/control/a$k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$k;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$k;->pH:Lmobi/tikl/wire/control/a$k;

    .line 32327
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 32328
    sget-object v0, Lmobi/tikl/wire/control/a$k;->pH:Lmobi/tikl/wire/control/a$k;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$k;->aJ()V

    .line 32329
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 31902
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 31929
    iput v1, p0, Lmobi/tikl/wire/control/a$k;->oz:I

    .line 31936
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$k;->pD:Ljava/lang/String;

    .line 31943
    iput v1, p0, Lmobi/tikl/wire/control/a$k;->pJ:I

    .line 31985
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$k;->ai:I

    .line 31903
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$k;->aJ()V

    .line 31904
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 31899
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$k;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 31905
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 31929
    iput v1, p0, Lmobi/tikl/wire/control/a$k;->oz:I

    .line 31936
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$k;->pD:Ljava/lang/String;

    .line 31943
    iput v1, p0, Lmobi/tikl/wire/control/a$k;->pJ:I

    .line 31985
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$k;->ai:I

    .line 31905
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$k;I)I
    .registers 2

    .prologue
    .line 31899
    iput p1, p0, Lmobi/tikl/wire/control/a$k;->oz:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$k;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 31899
    iput-object p1, p0, Lmobi/tikl/wire/control/a$k;->pD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$k;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 31899
    iput-object p1, p0, Lmobi/tikl/wire/control/a$k;->pL:Lmobi/tikl/wire/control/a$x;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$k;Z)Z
    .registers 2

    .prologue
    .line 31899
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$k;->oy:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 31955
    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tx()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$k;->pL:Lmobi/tikl/wire/control/a$x;

    .line 31956
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 31918
    invoke-static {}, Lmobi/tikl/wire/control/a;->mQ()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$k;I)I
    .registers 2

    .prologue
    .line 31899
    iput p1, p0, Lmobi/tikl/wire/control/a$k;->pJ:I

    return p1
.end method

.method public static b(Lmobi/tikl/wire/control/a$k;)Lmobi/tikl/wire/control/a$k$a;
    .registers 2

    .prologue
    .line 32082
    invoke-static {}, Lmobi/tikl/wire/control/a$k;->qu()Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$k$a;->d(Lmobi/tikl/wire/control/a$k;)Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$k;Z)Z
    .registers 2

    .prologue
    .line 31899
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$k;->pC:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$k;)Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 31899
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k;->pL:Lmobi/tikl/wire/control/a$x;

    return-object v0
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$k;Z)Z
    .registers 2

    .prologue
    .line 31899
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$k;->pI:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$k;Z)Z
    .registers 2

    .prologue
    .line 31899
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$k;->pK:Z

    return p1
.end method

.method public static qo()Lmobi/tikl/wire/control/a$k;
    .registers 1

    .prologue
    .line 31909
    sget-object v0, Lmobi/tikl/wire/control/a$k;->pH:Lmobi/tikl/wire/control/a$k;

    return-object v0
.end method

.method public static qu()Lmobi/tikl/wire/control/a$k$a;
    .registers 1

    .prologue
    .line 32079
    invoke-static {}, Lmobi/tikl/wire/control/a$k$a;->qC()Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 31987
    iget v0, p0, Lmobi/tikl/wire/control/a$k;->ai:I

    .line 31988
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 32009
    :goto_5
    return v0

    .line 31990
    :cond_6
    const/4 v0, 0x0

    .line 31991
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->oc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 31992
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->getMsgId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 31995
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->pS()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 31996
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->pT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31999
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->qq()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 32000
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->qr()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 32003
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->qs()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 32004
    const/4 v1, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32007
    :cond_48
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 32008
    iput v0, p0, Lmobi/tikl/wire/control/a$k;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 31969
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->a()I

    .line 31970
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->oc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 31971
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->getMsgId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 31973
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->pS()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 31974
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 31976
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->qq()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 31977
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->qr()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 31979
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->qs()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 31980
    const/4 v0, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 31982
    :cond_3b
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 31983
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 31899
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->qv()Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 31899
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->qp()Lmobi/tikl/wire/control/a$k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 31899
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->qw()Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 31923
    invoke-static {}, Lmobi/tikl/wire/control/a;->mR()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 31931
    iget v0, p0, Lmobi/tikl/wire/control/a$k;->oz:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 31958
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$k;->oy:Z

    if-nez v1, :cond_6

    .line 31964
    :cond_5
    :goto_5
    return v0

    .line 31959
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$k;->pC:Z

    if-eqz v1, :cond_5

    .line 31960
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$k;->pI:Z

    if-eqz v1, :cond_5

    .line 31961
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->qs()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 31962
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$k;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$x;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 31964
    :cond_1e
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public oc()Z
    .registers 2

    .prologue
    .line 31930
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$k;->oy:Z

    return v0
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 31937
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$k;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31938
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public qp()Lmobi/tikl/wire/control/a$k;
    .registers 2

    .prologue
    .line 31913
    sget-object v0, Lmobi/tikl/wire/control/a$k;->pH:Lmobi/tikl/wire/control/a$k;

    return-object v0
.end method

.method public qq()Z
    .registers 2

    .prologue
    .line 31944
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$k;->pI:Z

    return v0
.end method

.method public qr()I
    .registers 2

    .prologue
    .line 31945
    iget v0, p0, Lmobi/tikl/wire/control/a$k;->pJ:I

    return v0
.end method

.method public qs()Z
    .registers 2

    .prologue
    .line 31951
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$k;->pK:Z

    return v0
.end method

.method public qt()Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 31952
    iget-object v0, p0, Lmobi/tikl/wire/control/a$k;->pL:Lmobi/tikl/wire/control/a$x;

    return-object v0
.end method

.method public qv()Lmobi/tikl/wire/control/a$k$a;
    .registers 2

    .prologue
    .line 32080
    invoke-static {}, Lmobi/tikl/wire/control/a$k;->qu()Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method public qw()Lmobi/tikl/wire/control/a$k$a;
    .registers 2

    .prologue
    .line 32084
    invoke-static {p0}, Lmobi/tikl/wire/control/a$k;->b(Lmobi/tikl/wire/control/a$k;)Lmobi/tikl/wire/control/a$k$a;

    move-result-object v0

    return-object v0
.end method
