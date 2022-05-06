.class public final Lmobi/tikl/wire/control/a$C;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "C"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$C$a;
    }
.end annotation


# static fields
.field private static final qS:Lmobi/tikl/wire/control/a$C;


# instance fields
.field private ai:I

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
    .line 36492
    new-instance v0, Lmobi/tikl/wire/control/a$C;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$C;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$C;->qS:Lmobi/tikl/wire/control/a$C;

    .line 36493
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 36494
    sget-object v0, Lmobi/tikl/wire/control/a$C;->qS:Lmobi/tikl/wire/control/a$C;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$C;->aJ()V

    .line 36495
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 36108
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 36135
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$C;->pD:Ljava/lang/String;

    .line 36142
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$C;->pJ:I

    .line 36180
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$C;->ai:I

    .line 36109
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$C;->aJ()V

    .line 36110
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 36105
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$C;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 36111
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 36135
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$C;->pD:Ljava/lang/String;

    .line 36142
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$C;->pJ:I

    .line 36180
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$C;->ai:I

    .line 36111
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$C;I)I
    .registers 2

    .prologue
    .line 36105
    iput p1, p0, Lmobi/tikl/wire/control/a$C;->pJ:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$C;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 36105
    iput-object p1, p0, Lmobi/tikl/wire/control/a$C;->pD:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$C;)Lmobi/tikl/wire/control/a$C$a;
    .registers 2

    .prologue
    .line 36273
    invoke-static {}, Lmobi/tikl/wire/control/a$C;->uH()Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$C$a;->c(Lmobi/tikl/wire/control/a$C;)Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$C;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 36105
    iput-object p1, p0, Lmobi/tikl/wire/control/a$C;->pL:Lmobi/tikl/wire/control/a$x;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$C;Z)Z
    .registers 2

    .prologue
    .line 36105
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$C;->pC:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 36154
    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tx()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$C;->pL:Lmobi/tikl/wire/control/a$x;

    .line 36155
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 36124
    invoke-static {}, Lmobi/tikl/wire/control/a;->nm()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$C;)Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 36105
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C;->pL:Lmobi/tikl/wire/control/a$x;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$C;Z)Z
    .registers 2

    .prologue
    .line 36105
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$C;->pI:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$C;Z)Z
    .registers 2

    .prologue
    .line 36105
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$C;->pK:Z

    return p1
.end method

.method public static uF()Lmobi/tikl/wire/control/a$C;
    .registers 1

    .prologue
    .line 36115
    sget-object v0, Lmobi/tikl/wire/control/a$C;->qS:Lmobi/tikl/wire/control/a$C;

    return-object v0
.end method

.method public static uH()Lmobi/tikl/wire/control/a$C$a;
    .registers 1

    .prologue
    .line 36270
    invoke-static {}, Lmobi/tikl/wire/control/a$C$a;->uP()Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 36182
    iget v0, p0, Lmobi/tikl/wire/control/a$C;->ai:I

    .line 36183
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 36200
    :goto_5
    return v0

    .line 36185
    :cond_6
    const/4 v0, 0x0

    .line 36186
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->pS()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 36187
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 36190
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->qq()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 36191
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->qr()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36194
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->qs()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 36195
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36198
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 36199
    iput v0, p0, Lmobi/tikl/wire/control/a$C;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 36167
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->a()I

    .line 36168
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->pS()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 36169
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 36171
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->qq()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 36172
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->qr()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 36174
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->qs()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 36175
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 36177
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 36178
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 36105
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->uI()Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 36105
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->uG()Lmobi/tikl/wire/control/a$C;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 36105
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->uJ()Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 36129
    invoke-static {}, Lmobi/tikl/wire/control/a;->nn()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 36157
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$C;->pC:Z

    if-nez v1, :cond_6

    .line 36162
    :cond_5
    :goto_5
    return v0

    .line 36158
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$C;->pI:Z

    if-eqz v1, :cond_5

    .line 36159
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->qs()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 36160
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$C;->qt()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$x;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 36162
    :cond_1a
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 36136
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$C;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36137
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public qq()Z
    .registers 2

    .prologue
    .line 36143
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$C;->pI:Z

    return v0
.end method

.method public qr()I
    .registers 2

    .prologue
    .line 36144
    iget v0, p0, Lmobi/tikl/wire/control/a$C;->pJ:I

    return v0
.end method

.method public qs()Z
    .registers 2

    .prologue
    .line 36150
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$C;->pK:Z

    return v0
.end method

.method public qt()Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 36151
    iget-object v0, p0, Lmobi/tikl/wire/control/a$C;->pL:Lmobi/tikl/wire/control/a$x;

    return-object v0
.end method

.method public uG()Lmobi/tikl/wire/control/a$C;
    .registers 2

    .prologue
    .line 36119
    sget-object v0, Lmobi/tikl/wire/control/a$C;->qS:Lmobi/tikl/wire/control/a$C;

    return-object v0
.end method

.method public uI()Lmobi/tikl/wire/control/a$C$a;
    .registers 2

    .prologue
    .line 36271
    invoke-static {}, Lmobi/tikl/wire/control/a$C;->uH()Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    return-object v0
.end method

.method public uJ()Lmobi/tikl/wire/control/a$C$a;
    .registers 2

    .prologue
    .line 36275
    invoke-static {p0}, Lmobi/tikl/wire/control/a$C;->a(Lmobi/tikl/wire/control/a$C;)Lmobi/tikl/wire/control/a$C$a;

    move-result-object v0

    return-object v0
.end method
