.class public final Lmobi/tikl/wire/control/a$q;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$q$a;
    }
.end annotation


# static fields
.field private static final qh:Lmobi/tikl/wire/control/a$q;


# instance fields
.field private ai:I

.field private oA:Z

.field private oB:Lmobi/tikl/wire/control/a$G;

.field private oy:Z

.field private oz:I

.field private pC:Z

.field private pD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33048
    new-instance v0, Lmobi/tikl/wire/control/a$q;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$q;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$q;->qh:Lmobi/tikl/wire/control/a$q;

    .line 33049
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 33050
    sget-object v0, Lmobi/tikl/wire/control/a$q;->qh:Lmobi/tikl/wire/control/a$q;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$q;->aJ()V

    .line 33051
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 32665
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 32692
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$q;->oz:I

    .line 32699
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$q;->pD:Ljava/lang/String;

    .line 32736
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$q;->ai:I

    .line 32666
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$q;->aJ()V

    .line 32667
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 32662
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$q;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 32668
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 32692
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$q;->oz:I

    .line 32699
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$q;->pD:Ljava/lang/String;

    .line 32736
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$q;->ai:I

    .line 32668
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$q;I)I
    .registers 2

    .prologue
    .line 32662
    iput p1, p0, Lmobi/tikl/wire/control/a$q;->oz:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$q;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32662
    iput-object p1, p0, Lmobi/tikl/wire/control/a$q;->pD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$q;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 32662
    iput-object p1, p0, Lmobi/tikl/wire/control/a$q;->oB:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$q;)Lmobi/tikl/wire/control/a$q$a;
    .registers 2

    .prologue
    .line 32829
    invoke-static {}, Lmobi/tikl/wire/control/a$q;->rS()Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$q$a;->c(Lmobi/tikl/wire/control/a$q;)Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$q;Z)Z
    .registers 2

    .prologue
    .line 32662
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$q;->oy:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 32711
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$q;->oB:Lmobi/tikl/wire/control/a$G;

    .line 32712
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 32681
    invoke-static {}, Lmobi/tikl/wire/control/a;->mU()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$q;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 32662
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$q;Z)Z
    .registers 2

    .prologue
    .line 32662
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$q;->pC:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$q;Z)Z
    .registers 2

    .prologue
    .line 32662
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$q;->oA:Z

    return p1
.end method

.method public static rQ()Lmobi/tikl/wire/control/a$q;
    .registers 1

    .prologue
    .line 32672
    sget-object v0, Lmobi/tikl/wire/control/a$q;->qh:Lmobi/tikl/wire/control/a$q;

    return-object v0
.end method

.method public static rS()Lmobi/tikl/wire/control/a$q$a;
    .registers 1

    .prologue
    .line 32826
    invoke-static {}, Lmobi/tikl/wire/control/a$q$a;->sa()Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 32738
    iget v0, p0, Lmobi/tikl/wire/control/a$q;->ai:I

    .line 32739
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 32756
    :goto_5
    return v0

    .line 32741
    :cond_6
    const/4 v0, 0x0

    .line 32742
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->oc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 32743
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->getMsgId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 32746
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->pS()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 32747
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->pT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32750
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->od()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 32751
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32754
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 32755
    iput v0, p0, Lmobi/tikl/wire/control/a$q;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 32723
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->a()I

    .line 32724
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->oc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 32725
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->getMsgId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 32727
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->pS()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 32728
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 32730
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->od()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 32731
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 32733
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 32734
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 32662
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->rT()Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 32662
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->rR()Lmobi/tikl/wire/control/a$q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 32662
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->rU()Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 32686
    invoke-static {}, Lmobi/tikl/wire/control/a;->mV()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 32694
    iget v0, p0, Lmobi/tikl/wire/control/a$q;->oz:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 32714
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$q;->oy:Z

    if-nez v1, :cond_6

    .line 32718
    :cond_5
    :goto_5
    return v0

    .line 32715
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$q;->pC:Z

    if-eqz v1, :cond_5

    .line 32716
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$q;->oA:Z

    if-eqz v1, :cond_5

    .line 32717
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 32718
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public oc()Z
    .registers 2

    .prologue
    .line 32693
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$q;->oy:Z

    return v0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 32707
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$q;->oA:Z

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 32708
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 32700
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$q;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32701
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public rR()Lmobi/tikl/wire/control/a$q;
    .registers 2

    .prologue
    .line 32676
    sget-object v0, Lmobi/tikl/wire/control/a$q;->qh:Lmobi/tikl/wire/control/a$q;

    return-object v0
.end method

.method public rT()Lmobi/tikl/wire/control/a$q$a;
    .registers 2

    .prologue
    .line 32827
    invoke-static {}, Lmobi/tikl/wire/control/a$q;->rS()Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method public rU()Lmobi/tikl/wire/control/a$q$a;
    .registers 2

    .prologue
    .line 32831
    invoke-static {p0}, Lmobi/tikl/wire/control/a$q;->a(Lmobi/tikl/wire/control/a$q;)Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    return-object v0
.end method
