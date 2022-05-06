.class public final Lmobi/tikl/wire/control/a$r;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$r$a;
    }
.end annotation


# static fields
.field private static final qj:Lmobi/tikl/wire/control/a$r;


# instance fields
.field private ai:I

.field private oA:Z

.field private oB:Lmobi/tikl/wire/control/a$G;

.field private oy:Z

.field private oz:I

.field private pC:Z

.field private pD:Ljava/lang/String;

.field private pK:Z

.field private pL:Lmobi/tikl/wire/control/a$x;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33508
    new-instance v0, Lmobi/tikl/wire/control/a$r;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$r;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$r;->qj:Lmobi/tikl/wire/control/a$r;

    .line 33509
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 33510
    sget-object v0, Lmobi/tikl/wire/control/a$r;->qj:Lmobi/tikl/wire/control/a$r;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$r;->aJ()V

    .line 33511
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 33059
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 33086
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$r;->oz:I

    .line 33093
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$r;->pD:Ljava/lang/String;

    .line 33143
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$r;->ai:I

    .line 33060
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$r;->aJ()V

    .line 33061
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 33056
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$r;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 33062
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 33086
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$r;->oz:I

    .line 33093
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$r;->pD:Ljava/lang/String;

    .line 33143
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$r;->ai:I

    .line 33062
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$r;I)I
    .registers 2

    .prologue
    .line 33056
    iput p1, p0, Lmobi/tikl/wire/control/a$r;->oz:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$r;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 33056
    iput-object p1, p0, Lmobi/tikl/wire/control/a$r;->pD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$r;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 33056
    iput-object p1, p0, Lmobi/tikl/wire/control/a$r;->oB:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$r;)Lmobi/tikl/wire/control/a$r$a;
    .registers 2

    .prologue
    .line 33240
    invoke-static {}, Lmobi/tikl/wire/control/a$r;->sd()Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$r$a;->d(Lmobi/tikl/wire/control/a$r;)Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$r;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 33056
    iput-object p1, p0, Lmobi/tikl/wire/control/a$r;->pL:Lmobi/tikl/wire/control/a$x;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$r;Z)Z
    .registers 2

    .prologue
    .line 33056
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$r;->oy:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 33112
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$r;->oB:Lmobi/tikl/wire/control/a$G;

    .line 33113
    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tx()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$r;->pL:Lmobi/tikl/wire/control/a$x;

    .line 33114
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 33075
    invoke-static {}, Lmobi/tikl/wire/control/a;->mW()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$r;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 33056
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$r;Z)Z
    .registers 2

    .prologue
    .line 33056
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$r;->pC:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$r;)Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 33056
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r;->pL:Lmobi/tikl/wire/control/a$x;

    return-object v0
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$r;Z)Z
    .registers 2

    .prologue
    .line 33056
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$r;->oA:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$r;Z)Z
    .registers 2

    .prologue
    .line 33056
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$r;->pK:Z

    return p1
.end method

.method public static sb()Lmobi/tikl/wire/control/a$r;
    .registers 1

    .prologue
    .line 33066
    sget-object v0, Lmobi/tikl/wire/control/a$r;->qj:Lmobi/tikl/wire/control/a$r;

    return-object v0
.end method

.method public static sd()Lmobi/tikl/wire/control/a$r$a;
    .registers 1

    .prologue
    .line 33237
    invoke-static {}, Lmobi/tikl/wire/control/a$r$a;->sl()Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 33145
    iget v0, p0, Lmobi/tikl/wire/control/a$r;->ai:I

    .line 33146
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 33167
    :goto_5
    return v0

    .line 33148
    :cond_6
    const/4 v0, 0x0

    .line 33149
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->oc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 33150
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->getMsgId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 33153
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->pS()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 33154
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->pT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33157
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->od()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 33158
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33161
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->qs()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 33162
    const/4 v1, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33165
    :cond_48
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 33166
    iput v0, p0, Lmobi/tikl/wire/control/a$r;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 33127
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->a()I

    .line 33128
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->oc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 33129
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->getMsgId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 33131
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->pS()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 33132
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 33134
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->od()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 33135
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 33137
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->qs()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 33138
    const/4 v0, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 33140
    :cond_3b
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 33141
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 33056
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->se()Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 33056
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->sc()Lmobi/tikl/wire/control/a$r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 33056
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->sf()Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 33080
    invoke-static {}, Lmobi/tikl/wire/control/a;->mX()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 33088
    iget v0, p0, Lmobi/tikl/wire/control/a$r;->oz:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 33116
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$r;->oy:Z

    if-nez v1, :cond_6

    .line 33122
    :cond_5
    :goto_5
    return v0

    .line 33117
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$r;->pC:Z

    if-eqz v1, :cond_5

    .line 33118
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$r;->oA:Z

    if-eqz v1, :cond_5

    .line 33119
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$r;->pK:Z

    if-eqz v1, :cond_5

    .line 33120
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 33121
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$r;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$x;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 33122
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public oc()Z
    .registers 2

    .prologue
    .line 33087
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$r;->oy:Z

    return v0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 33101
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$r;->oA:Z

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 33102
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 33094
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$r;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33095
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public qs()Z
    .registers 2

    .prologue
    .line 33108
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$r;->pK:Z

    return v0
.end method

.method public qt()Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 33109
    iget-object v0, p0, Lmobi/tikl/wire/control/a$r;->pL:Lmobi/tikl/wire/control/a$x;

    return-object v0
.end method

.method public sc()Lmobi/tikl/wire/control/a$r;
    .registers 2

    .prologue
    .line 33070
    sget-object v0, Lmobi/tikl/wire/control/a$r;->qj:Lmobi/tikl/wire/control/a$r;

    return-object v0
.end method

.method public se()Lmobi/tikl/wire/control/a$r$a;
    .registers 2

    .prologue
    .line 33238
    invoke-static {}, Lmobi/tikl/wire/control/a$r;->sd()Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public sf()Lmobi/tikl/wire/control/a$r$a;
    .registers 2

    .prologue
    .line 33242
    invoke-static {p0}, Lmobi/tikl/wire/control/a$r;->a(Lmobi/tikl/wire/control/a$r;)Lmobi/tikl/wire/control/a$r$a;

    move-result-object v0

    return-object v0
.end method
