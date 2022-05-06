.class public final Lmobi/tikl/wire/control/a$l;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$l$a;
    }
.end annotation


# static fields
.field private static final pN:Lmobi/tikl/wire/control/a$l;


# instance fields
.field private Z:Z

.field private aa:Ljava/lang/String;

.field private ai:I

.field private oA:Z

.field private oB:Lmobi/tikl/wire/control/a$G;

.field private oy:Z

.field private oz:I

.field private pC:Z

.field private pD:Ljava/lang/String;

.field private pO:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31342
    new-instance v0, Lmobi/tikl/wire/control/a$l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$l;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$l;->pN:Lmobi/tikl/wire/control/a$l;

    .line 31343
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 31344
    sget-object v0, Lmobi/tikl/wire/control/a$l;->pN:Lmobi/tikl/wire/control/a$l;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$l;->aJ()V

    .line 31345
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30828
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 30855
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$l;->oz:I

    .line 30862
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$l;->pD:Ljava/lang/String;

    .line 30875
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$l;->pO:Ljava/util/List;

    .line 30888
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$l;->aa:Ljava/lang/String;

    .line 30927
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$l;->ai:I

    .line 30829
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$l;->aJ()V

    .line 30830
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 30825
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$l;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 30831
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 30855
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$l;->oz:I

    .line 30862
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$l;->pD:Ljava/lang/String;

    .line 30875
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$l;->pO:Ljava/util/List;

    .line 30888
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$l;->aa:Ljava/lang/String;

    .line 30927
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$l;->ai:I

    .line 30831
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$l;I)I
    .registers 2

    .prologue
    .line 30825
    iput p1, p0, Lmobi/tikl/wire/control/a$l;->oz:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$l;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30825
    iput-object p1, p0, Lmobi/tikl/wire/control/a$l;->pD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$l;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 30825
    iput-object p1, p0, Lmobi/tikl/wire/control/a$l;->pO:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$l;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 30825
    iput-object p1, p0, Lmobi/tikl/wire/control/a$l;->oB:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$l;)Lmobi/tikl/wire/control/a$l$a;
    .registers 2

    .prologue
    .line 31028
    invoke-static {}, Lmobi/tikl/wire/control/a$l;->qG()Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$l$a;->d(Lmobi/tikl/wire/control/a$l;)Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$l;Z)Z
    .registers 2

    .prologue
    .line 30825
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$l;->oy:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 30893
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$l;->oB:Lmobi/tikl/wire/control/a$G;

    .line 30894
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 30844
    invoke-static {}, Lmobi/tikl/wire/control/a;->mM()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$l;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30825
    iput-object p1, p0, Lmobi/tikl/wire/control/a$l;->aa:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$l;)Ljava/util/List;
    .registers 2

    .prologue
    .line 30825
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l;->pO:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$l;Z)Z
    .registers 2

    .prologue
    .line 30825
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$l;->pC:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$l;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 30825
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$l;Z)Z
    .registers 2

    .prologue
    .line 30825
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$l;->oA:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$l;Z)Z
    .registers 2

    .prologue
    .line 30825
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$l;->Z:Z

    return p1
.end method

.method public static qD()Lmobi/tikl/wire/control/a$l;
    .registers 1

    .prologue
    .line 30835
    sget-object v0, Lmobi/tikl/wire/control/a$l;->pN:Lmobi/tikl/wire/control/a$l;

    return-object v0
.end method

.method public static qG()Lmobi/tikl/wire/control/a$l$a;
    .registers 1

    .prologue
    .line 31025
    invoke-static {}, Lmobi/tikl/wire/control/a$l$a;->qO()Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 30929
    iget v0, p0, Lmobi/tikl/wire/control/a$l;->ai:I

    .line 30930
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 30955
    :goto_5
    return v0

    .line 30932
    :cond_6
    const/4 v0, 0x0

    .line 30933
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->oc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 30934
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->getMsgId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 30937
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->pS()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 30938
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->pT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30941
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->od()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 30942
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30945
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->qF()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 30946
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 30948
    goto :goto_41

    .line 30949
    :cond_55
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->hasName()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 30950
    const/4 v0, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 30953
    :cond_65
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 30954
    iput v0, p0, Lmobi/tikl/wire/control/a$l;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 30908
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->a()I

    .line 30909
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->oc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 30910
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->getMsgId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 30912
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->pS()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 30913
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 30915
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->od()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 30916
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 30918
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->qF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 30919
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_35

    .line 30921
    :cond_46
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->hasName()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 30922
    const/4 v0, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 30924
    :cond_54
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 30925
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 30825
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->qH()Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 30825
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->qE()Lmobi/tikl/wire/control/a$l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 30825
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->qI()Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 30849
    invoke-static {}, Lmobi/tikl/wire/control/a;->mN()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 30857
    iget v0, p0, Lmobi/tikl/wire/control/a$l;->oz:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30890
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 30889
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$l;->Z:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 30896
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$l;->oy:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 30903
    :goto_6
    return v0

    .line 30897
    :cond_7
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$l;->pC:Z

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_6

    .line 30898
    :cond_d
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$l;->oA:Z

    if-nez v0, :cond_13

    move v0, v1

    goto :goto_6

    .line 30899
    :cond_13
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v1

    goto :goto_6

    .line 30900
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l;->qF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 30901
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v1

    goto :goto_6

    .line 30903
    :cond_3b
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public oc()Z
    .registers 2

    .prologue
    .line 30856
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$l;->oy:Z

    return v0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 30870
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$l;->oA:Z

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 30871
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 30863
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$l;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30864
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public qE()Lmobi/tikl/wire/control/a$l;
    .registers 2

    .prologue
    .line 30839
    sget-object v0, Lmobi/tikl/wire/control/a$l;->pN:Lmobi/tikl/wire/control/a$l;

    return-object v0
.end method

.method public qF()Ljava/util/List;
    .registers 2

    .prologue
    .line 30878
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l;->pO:Ljava/util/List;

    return-object v0
.end method

.method public qH()Lmobi/tikl/wire/control/a$l$a;
    .registers 2

    .prologue
    .line 31026
    invoke-static {}, Lmobi/tikl/wire/control/a$l;->qG()Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public qI()Lmobi/tikl/wire/control/a$l$a;
    .registers 2

    .prologue
    .line 31030
    invoke-static {p0}, Lmobi/tikl/wire/control/a$l;->a(Lmobi/tikl/wire/control/a$l;)Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    return-object v0
.end method
