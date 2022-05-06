.class public final Lmobi/tikl/wire/control/a$G;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "G"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$G$a;
    }
.end annotation


# static fields
.field private static final rd:Lmobi/tikl/wire/control/a$G;


# instance fields
.field private ai:I

.field private iM:Ljava/lang/String;

.field private iN:Ljava/lang/String;

.field private re:Z

.field private rf:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5266
    new-instance v0, Lmobi/tikl/wire/control/a$G;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$G;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$G;->rd:Lmobi/tikl/wire/control/a$G;

    .line 5267
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 5268
    sget-object v0, Lmobi/tikl/wire/control/a$G;->rd:Lmobi/tikl/wire/control/a$G;

    .line 5269
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4946
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 4973
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$G;->iM:Ljava/lang/String;

    .line 4980
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$G;->iN:Ljava/lang/String;

    .line 5004
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$G;->ai:I

    .line 4947
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 4943
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$G;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 4949
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 4973
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$G;->iM:Ljava/lang/String;

    .line 4980
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$G;->iN:Ljava/lang/String;

    .line 5004
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$G;->ai:I

    .line 4949
    return-void
.end method

.method public static I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;
    .registers 2

    .prologue
    .line 5093
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$G;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 4943
    iput-object p1, p0, Lmobi/tikl/wire/control/a$G;->iM:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$G;Z)Z
    .registers 2

    .prologue
    .line 4943
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$G;->re:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 4962
    invoke-static {}, Lmobi/tikl/wire/control/a;->ky()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$G;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 4943
    iput-object p1, p0, Lmobi/tikl/wire/control/a$G;->iN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$G;Z)Z
    .registers 2

    .prologue
    .line 4943
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$G;->rf:Z

    return p1
.end method

.method public static vA()Lmobi/tikl/wire/control/a$G;
    .registers 1

    .prologue
    .line 4953
    sget-object v0, Lmobi/tikl/wire/control/a$G;->rd:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public static vF()Lmobi/tikl/wire/control/a$G$a;
    .registers 1

    .prologue
    .line 5090
    invoke-static {}, Lmobi/tikl/wire/control/a$G$a;->vN()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 5006
    iget v0, p0, Lmobi/tikl/wire/control/a$G;->ai:I

    .line 5007
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 5020
    :goto_5
    return v0

    .line 5009
    :cond_6
    const/4 v0, 0x0

    .line 5010
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G;->vC()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 5011
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 5014
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G;->vD()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 5015
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G;->vE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5018
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 5019
    iput v0, p0, Lmobi/tikl/wire/control/a$G;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 4994
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G;->a()I

    .line 4995
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G;->vC()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4996
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 4998
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G;->vD()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4999
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G;->vE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 5001
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 5002
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 4943
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G;->vG()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 4943
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G;->vB()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 4943
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G;->vH()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 4967
    invoke-static {}, Lmobi/tikl/wire/control/a;->kz()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4975
    iget-object v0, p0, Lmobi/tikl/wire/control/a$G;->iM:Ljava/lang/String;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 4987
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$G;->re:Z

    if-nez v1, :cond_6

    .line 4989
    :cond_5
    :goto_5
    return v0

    .line 4988
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$G;->rf:Z

    if-eqz v1, :cond_5

    .line 4989
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public vB()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 4957
    sget-object v0, Lmobi/tikl/wire/control/a$G;->rd:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public vC()Z
    .registers 2

    .prologue
    .line 4974
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$G;->re:Z

    return v0
.end method

.method public vD()Z
    .registers 2

    .prologue
    .line 4981
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$G;->rf:Z

    return v0
.end method

.method public vE()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4982
    iget-object v0, p0, Lmobi/tikl/wire/control/a$G;->iN:Ljava/lang/String;

    return-object v0
.end method

.method public vG()Lmobi/tikl/wire/control/a$G$a;
    .registers 2

    .prologue
    .line 5091
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    return-object v0
.end method

.method public vH()Lmobi/tikl/wire/control/a$G$a;
    .registers 2

    .prologue
    .line 5095
    invoke-static {p0}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    return-object v0
.end method
