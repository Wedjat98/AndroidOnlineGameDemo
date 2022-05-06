.class public final Lcom/google/protobuf/f$j;
.super Lcom/google/protobuf/q$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$j$a;,
        Lcom/google/protobuf/f$j$b;
    }
.end annotation


# static fields
.field private static final bL:Lcom/google/protobuf/f$j;


# instance fields
.field private ai:I

.field private av:Ljava/util/List;

.field private bM:Z

.field private bN:Ljava/lang/String;

.field private bO:Z

.field private bP:Ljava/lang/String;

.field private bQ:Z

.field private bR:Z

.field private bS:Z

.field private bT:Lcom/google/protobuf/f$j$b;

.field private bU:Z

.field private bV:Z

.field private bW:Z

.field private bX:Z

.field private bY:Z

.field private bZ:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5488
    new-instance v0, Lcom/google/protobuf/f$j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$j;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$j;->bL:Lcom/google/protobuf/f$j;

    .line 5489
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 5490
    sget-object v0, Lcom/google/protobuf/f$j;->bL:Lcom/google/protobuf/f$j;

    invoke-direct {v0}, Lcom/google/protobuf/f$j;->aJ()V

    .line 5491
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 4800
    invoke-direct {p0}, Lcom/google/protobuf/q$c;-><init>()V

    .line 4896
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$j;->bN:Ljava/lang/String;

    .line 4903
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$j;->bP:Ljava/lang/String;

    .line 4910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/f$j;->bR:Z

    .line 4924
    iput-boolean v1, p0, Lcom/google/protobuf/f$j;->bV:Z

    .line 4931
    iput-boolean v1, p0, Lcom/google/protobuf/f$j;->bX:Z

    .line 4938
    iput-boolean v1, p0, Lcom/google/protobuf/f$j;->bZ:Z

    .line 4944
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$j;->av:Ljava/util/List;

    .line 4998
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$j;->ai:I

    .line 4801
    invoke-direct {p0}, Lcom/google/protobuf/f$j;->aJ()V

    .line 4802
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 4796
    invoke-direct {p0}, Lcom/google/protobuf/f$j;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 4803
    invoke-direct {p0}, Lcom/google/protobuf/q$c;-><init>()V

    .line 4896
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$j;->bN:Ljava/lang/String;

    .line 4903
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$j;->bP:Ljava/lang/String;

    .line 4910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/f$j;->bR:Z

    .line 4924
    iput-boolean v1, p0, Lcom/google/protobuf/f$j;->bV:Z

    .line 4931
    iput-boolean v1, p0, Lcom/google/protobuf/f$j;->bX:Z

    .line 4938
    iput-boolean v1, p0, Lcom/google/protobuf/f$j;->bZ:Z

    .line 4944
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$j;->av:Ljava/util/List;

    .line 4998
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$j;->ai:I

    .line 4803
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/f$j;Lcom/google/protobuf/f$j$b;)Lcom/google/protobuf/f$j$b;
    .registers 2

    .prologue
    .line 4796
    iput-object p1, p0, Lcom/google/protobuf/f$j;->bT:Lcom/google/protobuf/f$j$b;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$j;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 4796
    iput-object p1, p0, Lcom/google/protobuf/f$j;->bN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$j;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 4796
    iput-object p1, p0, Lcom/google/protobuf/f$j;->av:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$j;Z)Z
    .registers 2

    .prologue
    .line 4796
    iput-boolean p1, p0, Lcom/google/protobuf/f$j;->bM:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 4955
    sget-object v0, Lcom/google/protobuf/f$j$b;->cb:Lcom/google/protobuf/f$j$b;

    iput-object v0, p0, Lcom/google/protobuf/f$j;->bT:Lcom/google/protobuf/f$j$b;

    .line 4956
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 4816
    invoke-static {}, Lcom/google/protobuf/f;->ad()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$j;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 4796
    iput-object p1, p0, Lcom/google/protobuf/f$j;->bP:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/protobuf/f$j;Z)Z
    .registers 2

    .prologue
    .line 4796
    iput-boolean p1, p0, Lcom/google/protobuf/f$j;->bO:Z

    return p1
.end method

.method public static c(Lcom/google/protobuf/f$j;)Lcom/google/protobuf/f$j$a;
    .registers 2

    .prologue
    .line 5112
    invoke-static {}, Lcom/google/protobuf/f$j;->dW()Lcom/google/protobuf/f$j$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$j$a;->e(Lcom/google/protobuf/f$j;)Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/protobuf/f$j;Z)Z
    .registers 2

    .prologue
    .line 4796
    iput-boolean p1, p0, Lcom/google/protobuf/f$j;->bQ:Z

    return p1
.end method

.method static synthetic d(Lcom/google/protobuf/f$j;)Ljava/util/List;
    .registers 2

    .prologue
    .line 4796
    iget-object v0, p0, Lcom/google/protobuf/f$j;->av:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/protobuf/f$j;Z)Z
    .registers 2

    .prologue
    .line 4796
    iput-boolean p1, p0, Lcom/google/protobuf/f$j;->bR:Z

    return p1
.end method

.method public static dG()Lcom/google/protobuf/f$j;
    .registers 1

    .prologue
    .line 4807
    sget-object v0, Lcom/google/protobuf/f$j;->bL:Lcom/google/protobuf/f$j;

    return-object v0
.end method

.method public static dW()Lcom/google/protobuf/f$j$a;
    .registers 1

    .prologue
    .line 5109
    invoke-static {}, Lcom/google/protobuf/f$j$a;->ee()Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/protobuf/f$j;Z)Z
    .registers 2

    .prologue
    .line 4796
    iput-boolean p1, p0, Lcom/google/protobuf/f$j;->bS:Z

    return p1
.end method

.method static synthetic f(Lcom/google/protobuf/f$j;Z)Z
    .registers 2

    .prologue
    .line 4796
    iput-boolean p1, p0, Lcom/google/protobuf/f$j;->bU:Z

    return p1
.end method

.method static synthetic g(Lcom/google/protobuf/f$j;Z)Z
    .registers 2

    .prologue
    .line 4796
    iput-boolean p1, p0, Lcom/google/protobuf/f$j;->bV:Z

    return p1
.end method

.method static synthetic h(Lcom/google/protobuf/f$j;Z)Z
    .registers 2

    .prologue
    .line 4796
    iput-boolean p1, p0, Lcom/google/protobuf/f$j;->bW:Z

    return p1
.end method

.method static synthetic i(Lcom/google/protobuf/f$j;Z)Z
    .registers 2

    .prologue
    .line 4796
    iput-boolean p1, p0, Lcom/google/protobuf/f$j;->bX:Z

    return p1
.end method

.method static synthetic j(Lcom/google/protobuf/f$j;Z)Z
    .registers 2

    .prologue
    .line 4796
    iput-boolean p1, p0, Lcom/google/protobuf/f$j;->bY:Z

    return p1
.end method

.method static synthetic k(Lcom/google/protobuf/f$j;Z)Z
    .registers 2

    .prologue
    .line 4796
    iput-boolean p1, p0, Lcom/google/protobuf/f$j;->bZ:Z

    return p1
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 5000
    iget v0, p0, Lcom/google/protobuf/f$j;->ai:I

    .line 5001
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 5039
    :goto_5
    return v0

    .line 5003
    :cond_6
    const/4 v0, 0x0

    .line 5004
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dI()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 5005
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dJ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 5008
    :cond_18
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dK()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 5009
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5012
    :cond_29
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dO()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 5013
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dP()Lcom/google/protobuf/f$j$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/f$j$b;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5016
    :cond_3e
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dM()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 5017
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dN()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5020
    :cond_4f
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dQ()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 5021
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dR()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5024
    :cond_60
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dS()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 5025
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dT()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5028
    :cond_71
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dU()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 5029
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dV()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5032
    :cond_82
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->bD()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$p;

    .line 5033
    const/16 v3, 0x3e7

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_8b

    .line 5036
    :cond_a0
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->gV()I

    move-result v0

    add-int/2addr v0, v1

    .line 5037
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 5038
    iput v0, p0, Lcom/google/protobuf/f$j;->ai:I

    goto/16 :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 6

    .prologue
    .line 4967
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->a()I

    .line 4969
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->gU()Lcom/google/protobuf/q$c$a;

    move-result-object v1

    .line 4970
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dI()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4971
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 4973
    :cond_15
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dK()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4974
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 4976
    :cond_24
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dO()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 4977
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dP()Lcom/google/protobuf/f$j$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/f$j$b;->getNumber()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/e;->d(II)V

    .line 4979
    :cond_37
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dM()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 4980
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dN()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/e;->a(IZ)V

    .line 4982
    :cond_46
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dQ()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 4983
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dR()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/e;->a(IZ)V

    .line 4985
    :cond_55
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dS()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 4986
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dT()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/e;->a(IZ)V

    .line 4988
    :cond_64
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dU()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 4989
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dV()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/e;->a(IZ)V

    .line 4991
    :cond_73
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->bD()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$p;

    .line 4992
    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_7b

    .line 4994
    :cond_8d
    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/q$c$a;->a(ILcom/google/protobuf/e;)V

    .line 4995
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 4996
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 4796
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dX()Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 4796
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dH()Lcom/google/protobuf/f$j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 4796
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->dY()Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 4821
    invoke-static {}, Lcom/google/protobuf/f;->ae()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public bD()Ljava/util/List;
    .registers 2

    .prologue
    .line 4947
    iget-object v0, p0, Lcom/google/protobuf/f$j;->av:Ljava/util/List;

    return-object v0
.end method

.method public dH()Lcom/google/protobuf/f$j;
    .registers 2

    .prologue
    .line 4811
    sget-object v0, Lcom/google/protobuf/f$j;->bL:Lcom/google/protobuf/f$j;

    return-object v0
.end method

.method public dI()Z
    .registers 2

    .prologue
    .line 4897
    iget-boolean v0, p0, Lcom/google/protobuf/f$j;->bM:Z

    return v0
.end method

.method public dJ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4898
    iget-object v0, p0, Lcom/google/protobuf/f$j;->bN:Ljava/lang/String;

    return-object v0
.end method

.method public dK()Z
    .registers 2

    .prologue
    .line 4904
    iget-boolean v0, p0, Lcom/google/protobuf/f$j;->bO:Z

    return v0
.end method

.method public dL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4905
    iget-object v0, p0, Lcom/google/protobuf/f$j;->bP:Ljava/lang/String;

    return-object v0
.end method

.method public dM()Z
    .registers 2

    .prologue
    .line 4911
    iget-boolean v0, p0, Lcom/google/protobuf/f$j;->bQ:Z

    return v0
.end method

.method public dN()Z
    .registers 2

    .prologue
    .line 4912
    iget-boolean v0, p0, Lcom/google/protobuf/f$j;->bR:Z

    return v0
.end method

.method public dO()Z
    .registers 2

    .prologue
    .line 4918
    iget-boolean v0, p0, Lcom/google/protobuf/f$j;->bS:Z

    return v0
.end method

.method public dP()Lcom/google/protobuf/f$j$b;
    .registers 2

    .prologue
    .line 4919
    iget-object v0, p0, Lcom/google/protobuf/f$j;->bT:Lcom/google/protobuf/f$j$b;

    return-object v0
.end method

.method public dQ()Z
    .registers 2

    .prologue
    .line 4925
    iget-boolean v0, p0, Lcom/google/protobuf/f$j;->bU:Z

    return v0
.end method

.method public dR()Z
    .registers 2

    .prologue
    .line 4926
    iget-boolean v0, p0, Lcom/google/protobuf/f$j;->bV:Z

    return v0
.end method

.method public dS()Z
    .registers 2

    .prologue
    .line 4932
    iget-boolean v0, p0, Lcom/google/protobuf/f$j;->bW:Z

    return v0
.end method

.method public dT()Z
    .registers 2

    .prologue
    .line 4933
    iget-boolean v0, p0, Lcom/google/protobuf/f$j;->bX:Z

    return v0
.end method

.method public dU()Z
    .registers 2

    .prologue
    .line 4939
    iget-boolean v0, p0, Lcom/google/protobuf/f$j;->bY:Z

    return v0
.end method

.method public dV()Z
    .registers 2

    .prologue
    .line 4940
    iget-boolean v0, p0, Lcom/google/protobuf/f$j;->bZ:Z

    return v0
.end method

.method public dX()Lcom/google/protobuf/f$j$a;
    .registers 2

    .prologue
    .line 5110
    invoke-static {}, Lcom/google/protobuf/f$j;->dW()Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method

.method public dY()Lcom/google/protobuf/f$j$a;
    .registers 2

    .prologue
    .line 5114
    invoke-static {p0}, Lcom/google/protobuf/f$j;->c(Lcom/google/protobuf/f$j;)Lcom/google/protobuf/f$j$a;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4958
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->bD()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$p;

    .line 4959
    invoke-virtual {v0}, Lcom/google/protobuf/f$p;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 4962
    :goto_1c
    return v0

    .line 4961
    :cond_1d
    invoke-virtual {p0}, Lcom/google/protobuf/f$j;->gT()Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v1

    goto :goto_1c

    .line 4962
    :cond_25
    const/4 v0, 0x1

    goto :goto_1c
.end method
