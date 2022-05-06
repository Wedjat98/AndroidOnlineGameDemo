.class public final Lmobi/tikl/wire/control/a$u;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$u$a;
    }
.end annotation


# static fields
.field private static final qt:Lmobi/tikl/wire/control/a$u;


# instance fields
.field private ai:I

.field private pC:Z

.field private pD:Ljava/lang/String;

.field private qu:Z

.field private qv:Lmobi/tikl/wire/control/a$G;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4413
    new-instance v0, Lmobi/tikl/wire/control/a$u;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$u;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$u;->qt:Lmobi/tikl/wire/control/a$u;

    .line 4414
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 4415
    sget-object v0, Lmobi/tikl/wire/control/a$u;->qt:Lmobi/tikl/wire/control/a$u;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$u;->aJ()V

    .line 4416
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4070
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 4104
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$u;->pD:Ljava/lang/String;

    .line 4130
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$u;->ai:I

    .line 4071
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$u;->aJ()V

    .line 4072
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 4067
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$u;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 4073
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 4104
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$u;->pD:Ljava/lang/String;

    .line 4130
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$u;->ai:I

    .line 4073
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$u;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 4067
    iput-object p1, p0, Lmobi/tikl/wire/control/a$u;->pD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$u;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 4067
    iput-object p1, p0, Lmobi/tikl/wire/control/a$u;->qv:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$u;)Lmobi/tikl/wire/control/a$u$a;
    .registers 2

    .prologue
    .line 4219
    invoke-static {}, Lmobi/tikl/wire/control/a$u;->sQ()Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$u$a;->c(Lmobi/tikl/wire/control/a$u;)Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$u;Z)Z
    .registers 2

    .prologue
    .line 4067
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$u;->qu:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 4109
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$u;->qv:Lmobi/tikl/wire/control/a$G;

    .line 4110
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 4086
    invoke-static {}, Lmobi/tikl/wire/control/a;->ku()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$u;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 4067
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u;->qv:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$u;Z)Z
    .registers 2

    .prologue
    .line 4067
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$u;->pC:Z

    return p1
.end method

.method public static sM()Lmobi/tikl/wire/control/a$u;
    .registers 1

    .prologue
    .line 4077
    sget-object v0, Lmobi/tikl/wire/control/a$u;->qt:Lmobi/tikl/wire/control/a$u;

    return-object v0
.end method

.method public static sQ()Lmobi/tikl/wire/control/a$u$a;
    .registers 1

    .prologue
    .line 4216
    invoke-static {}, Lmobi/tikl/wire/control/a$u$a;->sY()Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 4132
    iget v0, p0, Lmobi/tikl/wire/control/a$u;->ai:I

    .line 4133
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 4146
    :goto_5
    return v0

    .line 4135
    :cond_6
    const/4 v0, 0x0

    .line 4136
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u;->sO()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4137
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u;->sP()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4140
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u;->pS()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 4141
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u;->pT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4144
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 4145
    iput v0, p0, Lmobi/tikl/wire/control/a$u;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 4120
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u;->a()I

    .line 4121
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u;->sO()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4122
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u;->sP()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 4124
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u;->pS()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4125
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 4127
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 4128
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 4067
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u;->sR()Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 4067
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u;->sN()Lmobi/tikl/wire/control/a$u;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 4067
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u;->sS()Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 4091
    invoke-static {}, Lmobi/tikl/wire/control/a;->kv()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 4112
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$u;->qu:Z

    if-nez v1, :cond_6

    .line 4115
    :cond_5
    :goto_5
    return v0

    .line 4113
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$u;->pC:Z

    if-eqz v1, :cond_5

    .line 4114
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$u;->sP()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4115
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 4105
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$u;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4106
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public sN()Lmobi/tikl/wire/control/a$u;
    .registers 2

    .prologue
    .line 4081
    sget-object v0, Lmobi/tikl/wire/control/a$u;->qt:Lmobi/tikl/wire/control/a$u;

    return-object v0
.end method

.method public sO()Z
    .registers 2

    .prologue
    .line 4098
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$u;->qu:Z

    return v0
.end method

.method public sP()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 4099
    iget-object v0, p0, Lmobi/tikl/wire/control/a$u;->qv:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public sR()Lmobi/tikl/wire/control/a$u$a;
    .registers 2

    .prologue
    .line 4217
    invoke-static {}, Lmobi/tikl/wire/control/a$u;->sQ()Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method public sS()Lmobi/tikl/wire/control/a$u$a;
    .registers 2

    .prologue
    .line 4221
    invoke-static {p0}, Lmobi/tikl/wire/control/a$u;->a(Lmobi/tikl/wire/control/a$u;)Lmobi/tikl/wire/control/a$u$a;

    move-result-object v0

    return-object v0
.end method
