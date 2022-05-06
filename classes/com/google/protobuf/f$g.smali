.class public final Lcom/google/protobuf/f$g;
.super Lcom/google/protobuf/q$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$g$a;,
        Lcom/google/protobuf/f$g$b;
    }
.end annotation


# static fields
.field private static final bn:Lcom/google/protobuf/f$g;


# instance fields
.field private ai:I

.field private av:Ljava/util/List;

.field private bo:Z

.field private bp:Lcom/google/protobuf/f$g$b;

.field private bq:Z

.field private br:Z

.field private bs:Z

.field private bt:Z

.field private bu:Z

.field private bv:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6488
    new-instance v0, Lcom/google/protobuf/f$g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$g;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$g;->bn:Lcom/google/protobuf/f$g;

    .line 6489
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 6490
    sget-object v0, Lcom/google/protobuf/f$g;->bn:Lcom/google/protobuf/f$g;

    invoke-direct {v0}, Lcom/google/protobuf/f$g;->aJ()V

    .line 6491
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 5920
    invoke-direct {p0}, Lcom/google/protobuf/q$c;-><init>()V

    .line 6023
    iput-boolean v0, p0, Lcom/google/protobuf/f$g;->br:Z

    .line 6030
    iput-boolean v0, p0, Lcom/google/protobuf/f$g;->bt:Z

    .line 6037
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$g;->bv:Ljava/lang/String;

    .line 6043
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$g;->av:Ljava/util/List;

    .line 6088
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$g;->ai:I

    .line 5921
    invoke-direct {p0}, Lcom/google/protobuf/f$g;->aJ()V

    .line 5922
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 5916
    invoke-direct {p0}, Lcom/google/protobuf/f$g;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 5923
    invoke-direct {p0}, Lcom/google/protobuf/q$c;-><init>()V

    .line 6023
    iput-boolean v0, p0, Lcom/google/protobuf/f$g;->br:Z

    .line 6030
    iput-boolean v0, p0, Lcom/google/protobuf/f$g;->bt:Z

    .line 6037
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$g;->bv:Ljava/lang/String;

    .line 6043
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$g;->av:Ljava/util/List;

    .line 6088
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$g;->ai:I

    .line 5923
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/f$g;Lcom/google/protobuf/f$g$b;)Lcom/google/protobuf/f$g$b;
    .registers 2

    .prologue
    .line 5916
    iput-object p1, p0, Lcom/google/protobuf/f$g;->bp:Lcom/google/protobuf/f$g$b;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$g;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 5916
    iput-object p1, p0, Lcom/google/protobuf/f$g;->bv:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$g;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 5916
    iput-object p1, p0, Lcom/google/protobuf/f$g;->av:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$g;Z)Z
    .registers 2

    .prologue
    .line 5916
    iput-boolean p1, p0, Lcom/google/protobuf/f$g;->bo:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 6054
    sget-object v0, Lcom/google/protobuf/f$g$b;->bx:Lcom/google/protobuf/f$g$b;

    iput-object v0, p0, Lcom/google/protobuf/f$g;->bp:Lcom/google/protobuf/f$g$b;

    .line 6055
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 5936
    invoke-static {}, Lcom/google/protobuf/f;->ah()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$g;Z)Z
    .registers 2

    .prologue
    .line 5916
    iput-boolean p1, p0, Lcom/google/protobuf/f$g;->bq:Z

    return p1
.end method

.method public static c(Lcom/google/protobuf/f$g;)Lcom/google/protobuf/f$g$a;
    .registers 2

    .prologue
    .line 6190
    invoke-static {}, Lcom/google/protobuf/f$g;->cR()Lcom/google/protobuf/f$g$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$g$a;->e(Lcom/google/protobuf/f$g;)Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/protobuf/f$g;Z)Z
    .registers 2

    .prologue
    .line 5916
    iput-boolean p1, p0, Lcom/google/protobuf/f$g;->br:Z

    return p1
.end method

.method public static cH()Lcom/google/protobuf/f$g;
    .registers 1

    .prologue
    .line 5927
    sget-object v0, Lcom/google/protobuf/f$g;->bn:Lcom/google/protobuf/f$g;

    return-object v0
.end method

.method public static cR()Lcom/google/protobuf/f$g$a;
    .registers 1

    .prologue
    .line 6187
    invoke-static {}, Lcom/google/protobuf/f$g$a;->cZ()Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/protobuf/f$g;)Ljava/util/List;
    .registers 2

    .prologue
    .line 5916
    iget-object v0, p0, Lcom/google/protobuf/f$g;->av:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/protobuf/f$g;Z)Z
    .registers 2

    .prologue
    .line 5916
    iput-boolean p1, p0, Lcom/google/protobuf/f$g;->bs:Z

    return p1
.end method

.method static synthetic e(Lcom/google/protobuf/f$g;Z)Z
    .registers 2

    .prologue
    .line 5916
    iput-boolean p1, p0, Lcom/google/protobuf/f$g;->bt:Z

    return p1
.end method

.method static synthetic f(Lcom/google/protobuf/f$g;Z)Z
    .registers 2

    .prologue
    .line 5916
    iput-boolean p1, p0, Lcom/google/protobuf/f$g;->bu:Z

    return p1
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 6090
    iget v0, p0, Lcom/google/protobuf/f$g;->ai:I

    .line 6091
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 6117
    :goto_5
    return v0

    .line 6093
    :cond_6
    const/4 v0, 0x0

    .line 6094
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cJ()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 6095
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cK()Lcom/google/protobuf/f$g$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/f$g$b;->getNumber()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->h(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 6098
    :cond_1c
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cL()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 6099
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cM()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6102
    :cond_2c
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cN()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 6103
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cO()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6106
    :cond_3c
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cP()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 6107
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cQ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6110
    :cond_4d
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->bD()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$p;

    .line 6111
    const/16 v3, 0x3e7

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_56

    .line 6114
    :cond_6b
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->gV()I

    move-result v0

    add-int/2addr v0, v1

    .line 6115
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 6116
    iput v0, p0, Lcom/google/protobuf/f$g;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 6

    .prologue
    .line 6066
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->a()I

    .line 6068
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->gU()Lcom/google/protobuf/q$c$a;

    move-result-object v1

    .line 6069
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cJ()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 6070
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cK()Lcom/google/protobuf/f$g$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/f$g$b;->getNumber()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/e;->d(II)V

    .line 6072
    :cond_19
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cL()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 6073
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cM()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/e;->a(IZ)V

    .line 6075
    :cond_27
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cN()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 6076
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cO()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/e;->a(IZ)V

    .line 6078
    :cond_35
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cP()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 6079
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 6081
    :cond_44
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->bD()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$p;

    .line 6082
    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_4c

    .line 6084
    :cond_5e
    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/q$c$a;->a(ILcom/google/protobuf/e;)V

    .line 6085
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 6086
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 5916
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cS()Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 5916
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cI()Lcom/google/protobuf/f$g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 5916
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->cT()Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 5941
    invoke-static {}, Lcom/google/protobuf/f;->ai()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public bD()Ljava/util/List;
    .registers 2

    .prologue
    .line 6046
    iget-object v0, p0, Lcom/google/protobuf/f$g;->av:Ljava/util/List;

    return-object v0
.end method

.method public cI()Lcom/google/protobuf/f$g;
    .registers 2

    .prologue
    .line 5931
    sget-object v0, Lcom/google/protobuf/f$g;->bn:Lcom/google/protobuf/f$g;

    return-object v0
.end method

.method public cJ()Z
    .registers 2

    .prologue
    .line 6017
    iget-boolean v0, p0, Lcom/google/protobuf/f$g;->bo:Z

    return v0
.end method

.method public cK()Lcom/google/protobuf/f$g$b;
    .registers 2

    .prologue
    .line 6018
    iget-object v0, p0, Lcom/google/protobuf/f$g;->bp:Lcom/google/protobuf/f$g$b;

    return-object v0
.end method

.method public cL()Z
    .registers 2

    .prologue
    .line 6024
    iget-boolean v0, p0, Lcom/google/protobuf/f$g;->bq:Z

    return v0
.end method

.method public cM()Z
    .registers 2

    .prologue
    .line 6025
    iget-boolean v0, p0, Lcom/google/protobuf/f$g;->br:Z

    return v0
.end method

.method public cN()Z
    .registers 2

    .prologue
    .line 6031
    iget-boolean v0, p0, Lcom/google/protobuf/f$g;->bs:Z

    return v0
.end method

.method public cO()Z
    .registers 2

    .prologue
    .line 6032
    iget-boolean v0, p0, Lcom/google/protobuf/f$g;->bt:Z

    return v0
.end method

.method public cP()Z
    .registers 2

    .prologue
    .line 6038
    iget-boolean v0, p0, Lcom/google/protobuf/f$g;->bu:Z

    return v0
.end method

.method public cQ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6039
    iget-object v0, p0, Lcom/google/protobuf/f$g;->bv:Ljava/lang/String;

    return-object v0
.end method

.method public cS()Lcom/google/protobuf/f$g$a;
    .registers 2

    .prologue
    .line 6188
    invoke-static {}, Lcom/google/protobuf/f$g;->cR()Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method

.method public cT()Lcom/google/protobuf/f$g$a;
    .registers 2

    .prologue
    .line 6192
    invoke-static {p0}, Lcom/google/protobuf/f$g;->c(Lcom/google/protobuf/f$g;)Lcom/google/protobuf/f$g$a;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 6057
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->bD()Ljava/util/List;

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

    .line 6058
    invoke-virtual {v0}, Lcom/google/protobuf/f$p;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 6061
    :goto_1c
    return v0

    .line 6060
    :cond_1d
    invoke-virtual {p0}, Lcom/google/protobuf/f$g;->gT()Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v1

    goto :goto_1c

    .line 6061
    :cond_25
    const/4 v0, 0x1

    goto :goto_1c
.end method
