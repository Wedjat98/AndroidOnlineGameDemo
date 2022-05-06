.class public final Lmobi/tikl/wire/control/a$ab;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$ab$a;
    }
.end annotation


# static fields
.field private static final tA:Lmobi/tikl/wire/control/a$ab;


# instance fields
.field private ai:I

.field private qm:Z

.field private qn:Lmobi/tikl/wire/control/a$G;

.field private rE:Z

.field private rF:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27094
    new-instance v0, Lmobi/tikl/wire/control/a$ab;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$ab;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$ab;->tA:Lmobi/tikl/wire/control/a$ab;

    .line 27095
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 27096
    sget-object v0, Lmobi/tikl/wire/control/a$ab;->tA:Lmobi/tikl/wire/control/a$ab;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ab;->aJ()V

    .line 27097
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 26751
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 26785
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ab;->rF:Ljava/lang/String;

    .line 26811
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ab;->ai:I

    .line 26752
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ab;->aJ()V

    .line 26753
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 26748
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ab;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 26754
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 26785
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ab;->rF:Ljava/lang/String;

    .line 26811
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ab;->ai:I

    .line 26754
    return-void
.end method

.method public static Bx()Lmobi/tikl/wire/control/a$ab;
    .registers 1

    .prologue
    .line 26758
    sget-object v0, Lmobi/tikl/wire/control/a$ab;->tA:Lmobi/tikl/wire/control/a$ab;

    return-object v0
.end method

.method public static Bz()Lmobi/tikl/wire/control/a$ab$a;
    .registers 1

    .prologue
    .line 26897
    invoke-static {}, Lmobi/tikl/wire/control/a$ab$a;->BH()Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ab;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 26748
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ab;->rF:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ab;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 26748
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ab;->qn:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$ab$a;
    .registers 2

    .prologue
    .line 26900
    invoke-static {}, Lmobi/tikl/wire/control/a$ab;->Bz()Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$ab$a;->c(Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ab;Z)Z
    .registers 2

    .prologue
    .line 26748
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ab;->qm:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 26790
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ab;->qn:Lmobi/tikl/wire/control/a$G;

    .line 26791
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 26767
    invoke-static {}, Lmobi/tikl/wire/control/a;->mq()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 26748
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab;->qn:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ab;Z)Z
    .registers 2

    .prologue
    .line 26748
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ab;->rE:Z

    return p1
.end method


# virtual methods
.method public BA()Lmobi/tikl/wire/control/a$ab$a;
    .registers 2

    .prologue
    .line 26898
    invoke-static {}, Lmobi/tikl/wire/control/a$ab;->Bz()Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public BB()Lmobi/tikl/wire/control/a$ab$a;
    .registers 2

    .prologue
    .line 26902
    invoke-static {p0}, Lmobi/tikl/wire/control/a$ab;->a(Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public By()Lmobi/tikl/wire/control/a$ab;
    .registers 2

    .prologue
    .line 26762
    sget-object v0, Lmobi/tikl/wire/control/a$ab;->tA:Lmobi/tikl/wire/control/a$ab;

    return-object v0
.end method

.method public a()I
    .registers 4

    .prologue
    .line 26813
    iget v0, p0, Lmobi/tikl/wire/control/a$ab;->ai:I

    .line 26814
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 26827
    :goto_5
    return v0

    .line 26816
    :cond_6
    const/4 v0, 0x0

    .line 26817
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab;->so()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 26818
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 26821
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab;->wT()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 26822
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab;->wU()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26825
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 26826
    iput v0, p0, Lmobi/tikl/wire/control/a$ab;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 26801
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab;->a()I

    .line 26802
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab;->so()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 26803
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 26805
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab;->wT()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 26806
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab;->wU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 26808
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 26809
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 26748
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab;->BA()Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 26748
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab;->By()Lmobi/tikl/wire/control/a$ab;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 26748
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab;->BB()Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 26772
    invoke-static {}, Lmobi/tikl/wire/control/a;->mr()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 26793
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$ab;->qm:Z

    if-nez v1, :cond_6

    .line 26796
    :cond_5
    :goto_5
    return v0

    .line 26794
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$ab;->rE:Z

    if-eqz v1, :cond_5

    .line 26795
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 26796
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public so()Z
    .registers 2

    .prologue
    .line 26779
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ab;->qm:Z

    return v0
.end method

.method public sp()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 26780
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab;->qn:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public wT()Z
    .registers 2

    .prologue
    .line 26786
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ab;->rE:Z

    return v0
.end method

.method public wU()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26787
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab;->rF:Ljava/lang/String;

    return-object v0
.end method
