.class public final Lmobi/tikl/wire/control/a$x;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "x"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$x$a;
    }
.end annotation


# static fields
.field private static final qD:Lmobi/tikl/wire/control/a$x;


# instance fields
.field private Z:Z

.field private aa:Ljava/lang/String;

.field private ai:I

.field private pC:Z

.field private pD:Ljava/lang/String;

.field private qE:Ljava/util/List;

.field private qF:Z

.field private qG:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35346
    new-instance v0, Lmobi/tikl/wire/control/a$x;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$x;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$x;->qD:Lmobi/tikl/wire/control/a$x;

    .line 35347
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 35348
    sget-object v0, Lmobi/tikl/wire/control/a$x;->qD:Lmobi/tikl/wire/control/a$x;

    .line 35349
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 34898
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 34925
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$x;->pD:Ljava/lang/String;

    .line 34931
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$x;->qE:Ljava/util/List;

    .line 34944
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmobi/tikl/wire/control/a$x;->qG:J

    .line 34951
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$x;->aa:Ljava/lang/String;

    .line 34984
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$x;->ai:I

    .line 34899
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 34895
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$x;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4

    .prologue
    .line 34901
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 34925
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$x;->pD:Ljava/lang/String;

    .line 34931
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$x;->qE:Ljava/util/List;

    .line 34944
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmobi/tikl/wire/control/a$x;->qG:J

    .line 34951
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$x;->aa:Ljava/lang/String;

    .line 34984
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$x;->ai:I

    .line 34901
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$x;J)J
    .registers 4

    .prologue
    .line 34895
    iput-wide p1, p0, Lmobi/tikl/wire/control/a$x;->qG:J

    return-wide p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$x;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34895
    iput-object p1, p0, Lmobi/tikl/wire/control/a$x;->pD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$x;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 34895
    iput-object p1, p0, Lmobi/tikl/wire/control/a$x;->qE:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$x;Z)Z
    .registers 2

    .prologue
    .line 34895
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$x;->pC:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 34914
    invoke-static {}, Lmobi/tikl/wire/control/a;->ng()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$x;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34895
    iput-object p1, p0, Lmobi/tikl/wire/control/a$x;->aa:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$x;Z)Z
    .registers 2

    .prologue
    .line 34895
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$x;->qF:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$x;Z)Z
    .registers 2

    .prologue
    .line 34895
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$x;->Z:Z

    return p1
.end method

.method public static h(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;
    .registers 2

    .prologue
    .line 35081
    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tC()Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$x$a;->j(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lmobi/tikl/wire/control/a$x;)Ljava/util/List;
    .registers 2

    .prologue
    .line 34895
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x;->qE:Ljava/util/List;

    return-object v0
.end method

.method public static tC()Lmobi/tikl/wire/control/a$x$a;
    .registers 1

    .prologue
    .line 35078
    invoke-static {}, Lmobi/tikl/wire/control/a$x$a;->tK()Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public static tx()Lmobi/tikl/wire/control/a$x;
    .registers 1

    .prologue
    .line 34905
    sget-object v0, Lmobi/tikl/wire/control/a$x;->qD:Lmobi/tikl/wire/control/a$x;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 34986
    iget v0, p0, Lmobi/tikl/wire/control/a$x;->ai:I

    .line 34987
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 35008
    :goto_5
    return v0

    .line 34989
    :cond_6
    const/4 v0, 0x0

    .line 34990
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->pS()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 34991
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 34994
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->tz()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 34995
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 34997
    goto :goto_21

    .line 34998
    :cond_35
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->tA()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 34999
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->tB()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/e;->e(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 35002
    :cond_45
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->hasName()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 35003
    const/16 v0, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 35006
    :cond_56
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 35007
    iput v0, p0, Lmobi/tikl/wire/control/a$x;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 6

    .prologue
    .line 34968
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->a()I

    .line 34969
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->pS()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 34970
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 34972
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->tz()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 34973
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_19

    .line 34975
    :cond_2a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->tA()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 34976
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->tB()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/e;->b(IJ)V

    .line 34978
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->hasName()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 34979
    const/16 v0, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 34981
    :cond_47
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 34982
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 34895
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->tD()Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 34895
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->ty()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 34895
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->tE()Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 34919
    invoke-static {}, Lmobi/tikl/wire/control/a;->nh()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34953
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 34952
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$x;->Z:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 34958
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$x;->pC:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 34963
    :goto_6
    return v0

    .line 34959
    :cond_7
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$x;->qF:Z

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_6

    .line 34960
    :cond_d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x;->tz()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 34961
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    goto :goto_6

    .line 34963
    :cond_29
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 34926
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$x;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34927
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public tA()Z
    .registers 2

    .prologue
    .line 34945
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$x;->qF:Z

    return v0
.end method

.method public tB()J
    .registers 3

    .prologue
    .line 34946
    iget-wide v0, p0, Lmobi/tikl/wire/control/a$x;->qG:J

    return-wide v0
.end method

.method public tD()Lmobi/tikl/wire/control/a$x$a;
    .registers 2

    .prologue
    .line 35079
    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tC()Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public tE()Lmobi/tikl/wire/control/a$x$a;
    .registers 2

    .prologue
    .line 35083
    invoke-static {p0}, Lmobi/tikl/wire/control/a$x;->h(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public ty()Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 34909
    sget-object v0, Lmobi/tikl/wire/control/a$x;->qD:Lmobi/tikl/wire/control/a$x;

    return-object v0
.end method

.method public tz()Ljava/util/List;
    .registers 2

    .prologue
    .line 34934
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x;->qE:Ljava/util/List;

    return-object v0
.end method
