.class public final Lmobi/tikl/wire/control/a$n;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$n$a;
    }
.end annotation


# static fields
.field private static final pS:Lmobi/tikl/wire/control/a$n;


# instance fields
.field private ai:I

.field private iY:I

.field private ir:Ljava/lang/String;

.field private is:I

.field private pC:Z

.field private pD:Ljava/lang/String;

.field private pT:Z

.field private pU:Z

.field private pV:Lmobi/tikl/wire/control/a$G;

.field private pW:Z

.field private pX:Ljava/lang/String;

.field private pY:Z

.field private pZ:Z

.field private qa:Z

.field private qb:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9604
    new-instance v0, Lmobi/tikl/wire/control/a$n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$n;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$n;->pS:Lmobi/tikl/wire/control/a$n;

    .line 9605
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 9606
    sget-object v0, Lmobi/tikl/wire/control/a$n;->pS:Lmobi/tikl/wire/control/a$n;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$n;->aJ()V

    .line 9607
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 9056
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 9083
    iput v1, p0, Lmobi/tikl/wire/control/a$n;->iY:I

    .line 9097
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$n;->pD:Ljava/lang/String;

    .line 9104
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$n;->pX:Ljava/lang/String;

    .line 9111
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$n;->ir:Ljava/lang/String;

    .line 9118
    iput v1, p0, Lmobi/tikl/wire/control/a$n;->is:I

    .line 9125
    iput v1, p0, Lmobi/tikl/wire/control/a$n;->qb:I

    .line 9170
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$n;->ai:I

    .line 9057
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$n;->aJ()V

    .line 9058
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 9053
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$n;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 9059
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 9083
    iput v1, p0, Lmobi/tikl/wire/control/a$n;->iY:I

    .line 9097
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$n;->pD:Ljava/lang/String;

    .line 9104
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$n;->pX:Ljava/lang/String;

    .line 9111
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$n;->ir:Ljava/lang/String;

    .line 9118
    iput v1, p0, Lmobi/tikl/wire/control/a$n;->is:I

    .line 9125
    iput v1, p0, Lmobi/tikl/wire/control/a$n;->qb:I

    .line 9170
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$n;->ai:I

    .line 9059
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$n;I)I
    .registers 2

    .prologue
    .line 9053
    iput p1, p0, Lmobi/tikl/wire/control/a$n;->iY:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$n;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 9053
    iput-object p1, p0, Lmobi/tikl/wire/control/a$n;->pD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$n;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 9053
    iput-object p1, p0, Lmobi/tikl/wire/control/a$n;->pV:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$n;Z)Z
    .registers 2

    .prologue
    .line 9053
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$n;->pT:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 9130
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$n;->pV:Lmobi/tikl/wire/control/a$G;

    .line 9131
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 9072
    invoke-static {}, Lmobi/tikl/wire/control/a;->kO()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$n;I)I
    .registers 2

    .prologue
    .line 9053
    iput p1, p0, Lmobi/tikl/wire/control/a$n;->is:I

    return p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$n;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 9053
    iput-object p1, p0, Lmobi/tikl/wire/control/a$n;->pX:Ljava/lang/String;

    return-object p1
.end method

.method public static b(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$n$a;
    .registers 2

    .prologue
    .line 9279
    invoke-static {}, Lmobi/tikl/wire/control/a$n;->rl()Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$n$a;->d(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$n;Z)Z
    .registers 2

    .prologue
    .line 9053
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$n;->pU:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$n;I)I
    .registers 2

    .prologue
    .line 9053
    iput p1, p0, Lmobi/tikl/wire/control/a$n;->qb:I

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$n;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 9053
    iput-object p1, p0, Lmobi/tikl/wire/control/a$n;->ir:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 9053
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n;->pV:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$n;Z)Z
    .registers 2

    .prologue
    .line 9053
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$n;->pC:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$n;Z)Z
    .registers 2

    .prologue
    .line 9053
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$n;->pW:Z

    return p1
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$n;Z)Z
    .registers 2

    .prologue
    .line 9053
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$n;->pY:Z

    return p1
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$n;Z)Z
    .registers 2

    .prologue
    .line 9053
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$n;->pZ:Z

    return p1
.end method

.method static synthetic g(Lmobi/tikl/wire/control/a$n;Z)Z
    .registers 2

    .prologue
    .line 9053
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$n;->qa:Z

    return p1
.end method

.method public static ra()Lmobi/tikl/wire/control/a$n;
    .registers 1

    .prologue
    .line 9063
    sget-object v0, Lmobi/tikl/wire/control/a$n;->pS:Lmobi/tikl/wire/control/a$n;

    return-object v0
.end method

.method public static rl()Lmobi/tikl/wire/control/a$n$a;
    .registers 1

    .prologue
    .line 9276
    invoke-static {}, Lmobi/tikl/wire/control/a$n$a;->rt()Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 9172
    iget v0, p0, Lmobi/tikl/wire/control/a$n;->ai:I

    .line 9173
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 9206
    :goto_5
    return v0

    .line 9175
    :cond_6
    const/4 v0, 0x0

    .line 9176
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->rc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 9177
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->jQ()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 9180
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->rd()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 9181
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9184
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->pS()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 9185
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->pT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9188
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->rf()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 9189
    const/4 v1, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->rg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9192
    :cond_48
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->rh()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 9193
    const/4 v1, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->jk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9196
    :cond_58
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->ri()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 9197
    const/4 v1, 0x6

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->jl()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9200
    :cond_68
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->rj()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 9201
    const/4 v1, 0x7

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->rk()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9204
    :cond_78
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 9205
    iput v0, p0, Lmobi/tikl/wire/control/a$n;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 9145
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->a()I

    .line 9146
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->rc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 9147
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->jQ()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 9149
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->rd()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 9150
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 9152
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->pS()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 9153
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 9155
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->rf()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 9156
    const/4 v0, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->rg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 9158
    :cond_3b
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->rh()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 9159
    const/4 v0, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->jk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 9161
    :cond_49
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->ri()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 9162
    const/4 v0, 0x6

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->jl()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 9164
    :cond_57
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->rj()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 9165
    const/4 v0, 0x7

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->rk()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 9167
    :cond_65
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 9168
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 9053
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->rm()Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 9053
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->rb()Lmobi/tikl/wire/control/a$n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 9053
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->rn()Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 9077
    invoke-static {}, Lmobi/tikl/wire/control/a;->kP()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 9133
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$n;->pT:Z

    if-nez v1, :cond_6

    .line 9140
    :cond_5
    :goto_5
    return v0

    .line 9134
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$n;->pU:Z

    if-eqz v1, :cond_5

    .line 9135
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$n;->pC:Z

    if-eqz v1, :cond_5

    .line 9136
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$n;->pW:Z

    if-eqz v1, :cond_5

    .line 9137
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$n;->pY:Z

    if-eqz v1, :cond_5

    .line 9138
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$n;->pZ:Z

    if-eqz v1, :cond_5

    .line 9139
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$n;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9140
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public jQ()I
    .registers 2

    .prologue
    .line 9085
    iget v0, p0, Lmobi/tikl/wire/control/a$n;->iY:I

    return v0
.end method

.method public jk()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9113
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n;->ir:Ljava/lang/String;

    return-object v0
.end method

.method public jl()I
    .registers 2

    .prologue
    .line 9120
    iget v0, p0, Lmobi/tikl/wire/control/a$n;->is:I

    return v0
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 9098
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$n;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9099
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public rb()Lmobi/tikl/wire/control/a$n;
    .registers 2

    .prologue
    .line 9067
    sget-object v0, Lmobi/tikl/wire/control/a$n;->pS:Lmobi/tikl/wire/control/a$n;

    return-object v0
.end method

.method public rc()Z
    .registers 2

    .prologue
    .line 9084
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$n;->pT:Z

    return v0
.end method

.method public rd()Z
    .registers 2

    .prologue
    .line 9091
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$n;->pU:Z

    return v0
.end method

.method public re()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 9092
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n;->pV:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public rf()Z
    .registers 2

    .prologue
    .line 9105
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$n;->pW:Z

    return v0
.end method

.method public rg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9106
    iget-object v0, p0, Lmobi/tikl/wire/control/a$n;->pX:Ljava/lang/String;

    return-object v0
.end method

.method public rh()Z
    .registers 2

    .prologue
    .line 9112
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$n;->pY:Z

    return v0
.end method

.method public ri()Z
    .registers 2

    .prologue
    .line 9119
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$n;->pZ:Z

    return v0
.end method

.method public rj()Z
    .registers 2

    .prologue
    .line 9126
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$n;->qa:Z

    return v0
.end method

.method public rk()I
    .registers 2

    .prologue
    .line 9127
    iget v0, p0, Lmobi/tikl/wire/control/a$n;->qb:I

    return v0
.end method

.method public rm()Lmobi/tikl/wire/control/a$n$a;
    .registers 2

    .prologue
    .line 9277
    invoke-static {}, Lmobi/tikl/wire/control/a$n;->rl()Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public rn()Lmobi/tikl/wire/control/a$n$a;
    .registers 2

    .prologue
    .line 9281
    invoke-static {p0}, Lmobi/tikl/wire/control/a$n;->b(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$n$a;

    move-result-object v0

    return-object v0
.end method
