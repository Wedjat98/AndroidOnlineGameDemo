.class public final Lmobi/tikl/wire/control/a$L;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "L"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$L$a;
    }
.end annotation


# static fields
.field private static final rD:Lmobi/tikl/wire/control/a$L;


# instance fields
.field private ai:I

.field private iY:I

.field private ir:Ljava/lang/String;

.field private is:I

.field private pT:Z

.field private pU:Z

.field private pV:Lmobi/tikl/wire/control/a$G;

.field private pW:Z

.field private pX:Ljava/lang/String;

.field private pY:Z

.field private pZ:Z

.field private qa:Z

.field private qb:I

.field private rE:Z

.field private rF:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26340
    new-instance v0, Lmobi/tikl/wire/control/a$L;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$L;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$L;->rD:Lmobi/tikl/wire/control/a$L;

    .line 26341
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 26342
    sget-object v0, Lmobi/tikl/wire/control/a$L;->rD:Lmobi/tikl/wire/control/a$L;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$L;->aJ()V

    .line 26343
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 25792
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 25819
    iput v1, p0, Lmobi/tikl/wire/control/a$L;->iY:I

    .line 25833
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$L;->rF:Ljava/lang/String;

    .line 25840
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$L;->pX:Ljava/lang/String;

    .line 25847
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$L;->ir:Ljava/lang/String;

    .line 25854
    iput v1, p0, Lmobi/tikl/wire/control/a$L;->is:I

    .line 25861
    iput v1, p0, Lmobi/tikl/wire/control/a$L;->qb:I

    .line 25906
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$L;->ai:I

    .line 25793
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$L;->aJ()V

    .line 25794
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 25789
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$L;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 25795
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 25819
    iput v1, p0, Lmobi/tikl/wire/control/a$L;->iY:I

    .line 25833
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$L;->rF:Ljava/lang/String;

    .line 25840
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$L;->pX:Ljava/lang/String;

    .line 25847
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$L;->ir:Ljava/lang/String;

    .line 25854
    iput v1, p0, Lmobi/tikl/wire/control/a$L;->is:I

    .line 25861
    iput v1, p0, Lmobi/tikl/wire/control/a$L;->qb:I

    .line 25906
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$L;->ai:I

    .line 25795
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$L;I)I
    .registers 2

    .prologue
    .line 25789
    iput p1, p0, Lmobi/tikl/wire/control/a$L;->iY:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$L;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 25789
    iput-object p1, p0, Lmobi/tikl/wire/control/a$L;->rF:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$L;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 25789
    iput-object p1, p0, Lmobi/tikl/wire/control/a$L;->pV:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$L$a;
    .registers 2

    .prologue
    .line 26015
    invoke-static {}, Lmobi/tikl/wire/control/a$L;->wV()Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$L$a;->c(Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$L;Z)Z
    .registers 2

    .prologue
    .line 25789
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$L;->pT:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 25866
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$L;->pV:Lmobi/tikl/wire/control/a$G;

    .line 25867
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 25808
    invoke-static {}, Lmobi/tikl/wire/control/a;->mm()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$L;I)I
    .registers 2

    .prologue
    .line 25789
    iput p1, p0, Lmobi/tikl/wire/control/a$L;->is:I

    return p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$L;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 25789
    iput-object p1, p0, Lmobi/tikl/wire/control/a$L;->pX:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 25789
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L;->pV:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$L;Z)Z
    .registers 2

    .prologue
    .line 25789
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$L;->pU:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$L;I)I
    .registers 2

    .prologue
    .line 25789
    iput p1, p0, Lmobi/tikl/wire/control/a$L;->qb:I

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$L;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 25789
    iput-object p1, p0, Lmobi/tikl/wire/control/a$L;->ir:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$L;Z)Z
    .registers 2

    .prologue
    .line 25789
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$L;->rE:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$L;Z)Z
    .registers 2

    .prologue
    .line 25789
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$L;->pW:Z

    return p1
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$L;Z)Z
    .registers 2

    .prologue
    .line 25789
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$L;->pY:Z

    return p1
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$L;Z)Z
    .registers 2

    .prologue
    .line 25789
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$L;->pZ:Z

    return p1
.end method

.method static synthetic g(Lmobi/tikl/wire/control/a$L;Z)Z
    .registers 2

    .prologue
    .line 25789
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$L;->qa:Z

    return p1
.end method

.method public static wR()Lmobi/tikl/wire/control/a$L;
    .registers 1

    .prologue
    .line 25799
    sget-object v0, Lmobi/tikl/wire/control/a$L;->rD:Lmobi/tikl/wire/control/a$L;

    return-object v0
.end method

.method public static wV()Lmobi/tikl/wire/control/a$L$a;
    .registers 1

    .prologue
    .line 26012
    invoke-static {}, Lmobi/tikl/wire/control/a$L$a;->xd()Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 25908
    iget v0, p0, Lmobi/tikl/wire/control/a$L;->ai:I

    .line 25909
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 25942
    :goto_5
    return v0

    .line 25911
    :cond_6
    const/4 v0, 0x0

    .line 25912
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->rc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 25913
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->jQ()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 25916
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->rd()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 25917
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25920
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->wT()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 25921
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->wU()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25924
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->rf()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 25925
    const/4 v1, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->rg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25928
    :cond_48
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->rh()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 25929
    const/4 v1, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->jk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25932
    :cond_58
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->ri()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 25933
    const/4 v1, 0x6

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->jl()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25936
    :cond_68
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->rj()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 25937
    const/4 v1, 0x7

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->rk()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25940
    :cond_78
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 25941
    iput v0, p0, Lmobi/tikl/wire/control/a$L;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 25881
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->a()I

    .line 25882
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->rc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 25883
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->jQ()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 25885
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->rd()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 25886
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 25888
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->wT()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 25889
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->wU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 25891
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->rf()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 25892
    const/4 v0, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->rg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 25894
    :cond_3b
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->rh()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 25895
    const/4 v0, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->jk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 25897
    :cond_49
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->ri()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 25898
    const/4 v0, 0x6

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->jl()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 25900
    :cond_57
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->rj()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 25901
    const/4 v0, 0x7

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->rk()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 25903
    :cond_65
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 25904
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 25789
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->wW()Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 25789
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->wS()Lmobi/tikl/wire/control/a$L;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 25789
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->wX()Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 25813
    invoke-static {}, Lmobi/tikl/wire/control/a;->mn()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 25869
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$L;->pT:Z

    if-nez v1, :cond_6

    .line 25876
    :cond_5
    :goto_5
    return v0

    .line 25870
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$L;->pU:Z

    if-eqz v1, :cond_5

    .line 25871
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$L;->rE:Z

    if-eqz v1, :cond_5

    .line 25872
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$L;->pW:Z

    if-eqz v1, :cond_5

    .line 25873
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$L;->pY:Z

    if-eqz v1, :cond_5

    .line 25874
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$L;->pZ:Z

    if-eqz v1, :cond_5

    .line 25875
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25876
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public jQ()I
    .registers 2

    .prologue
    .line 25821
    iget v0, p0, Lmobi/tikl/wire/control/a$L;->iY:I

    return v0
.end method

.method public jk()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25849
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L;->ir:Ljava/lang/String;

    return-object v0
.end method

.method public jl()I
    .registers 2

    .prologue
    .line 25856
    iget v0, p0, Lmobi/tikl/wire/control/a$L;->is:I

    return v0
.end method

.method public rc()Z
    .registers 2

    .prologue
    .line 25820
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$L;->pT:Z

    return v0
.end method

.method public rd()Z
    .registers 2

    .prologue
    .line 25827
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$L;->pU:Z

    return v0
.end method

.method public re()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 25828
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L;->pV:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public rf()Z
    .registers 2

    .prologue
    .line 25841
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$L;->pW:Z

    return v0
.end method

.method public rg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25842
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L;->pX:Ljava/lang/String;

    return-object v0
.end method

.method public rh()Z
    .registers 2

    .prologue
    .line 25848
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$L;->pY:Z

    return v0
.end method

.method public ri()Z
    .registers 2

    .prologue
    .line 25855
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$L;->pZ:Z

    return v0
.end method

.method public rj()Z
    .registers 2

    .prologue
    .line 25862
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$L;->qa:Z

    return v0
.end method

.method public rk()I
    .registers 2

    .prologue
    .line 25863
    iget v0, p0, Lmobi/tikl/wire/control/a$L;->qb:I

    return v0
.end method

.method public wS()Lmobi/tikl/wire/control/a$L;
    .registers 2

    .prologue
    .line 25803
    sget-object v0, Lmobi/tikl/wire/control/a$L;->rD:Lmobi/tikl/wire/control/a$L;

    return-object v0
.end method

.method public wT()Z
    .registers 2

    .prologue
    .line 25834
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$L;->rE:Z

    return v0
.end method

.method public wU()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25835
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L;->rF:Ljava/lang/String;

    return-object v0
.end method

.method public wW()Lmobi/tikl/wire/control/a$L$a;
    .registers 2

    .prologue
    .line 26013
    invoke-static {}, Lmobi/tikl/wire/control/a$L;->wV()Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    return-object v0
.end method

.method public wX()Lmobi/tikl/wire/control/a$L$a;
    .registers 2

    .prologue
    .line 26017
    invoke-static {p0}, Lmobi/tikl/wire/control/a$L;->a(Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    return-object v0
.end method
