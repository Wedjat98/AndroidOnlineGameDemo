.class public final Lmobi/tikl/wire/control/a$ad;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ad"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$ad$a;
    }
.end annotation


# static fields
.field private static final tF:Lmobi/tikl/wire/control/a$ad;


# instance fields
.field private ai:I

.field private qq:Z

.field private qr:Lmobi/tikl/wire/control/a$G;

.field private rE:Z

.field private rF:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28241
    new-instance v0, Lmobi/tikl/wire/control/a$ad;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$ad;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$ad;->tF:Lmobi/tikl/wire/control/a$ad;

    .line 28242
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 28243
    sget-object v0, Lmobi/tikl/wire/control/a$ad;->tF:Lmobi/tikl/wire/control/a$ad;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ad;->aJ()V

    .line 28244
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27898
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 27932
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ad;->rF:Ljava/lang/String;

    .line 27958
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ad;->ai:I

    .line 27899
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ad;->aJ()V

    .line 27900
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 27895
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ad;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 27901
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 27932
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ad;->rF:Ljava/lang/String;

    .line 27958
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ad;->ai:I

    .line 27901
    return-void
.end method

.method public static BU()Lmobi/tikl/wire/control/a$ad;
    .registers 1

    .prologue
    .line 27905
    sget-object v0, Lmobi/tikl/wire/control/a$ad;->tF:Lmobi/tikl/wire/control/a$ad;

    return-object v0
.end method

.method public static BW()Lmobi/tikl/wire/control/a$ad$a;
    .registers 1

    .prologue
    .line 28044
    invoke-static {}, Lmobi/tikl/wire/control/a$ad$a;->Ce()Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ad;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 27895
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ad;->rF:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ad;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 27895
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ad;->qr:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$ad$a;
    .registers 2

    .prologue
    .line 28047
    invoke-static {}, Lmobi/tikl/wire/control/a$ad;->BW()Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$ad$a;->c(Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ad;Z)Z
    .registers 2

    .prologue
    .line 27895
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ad;->qq:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 27937
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ad;->qr:Lmobi/tikl/wire/control/a$G;

    .line 27938
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 27914
    invoke-static {}, Lmobi/tikl/wire/control/a;->mw()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 27895
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad;->qr:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ad;Z)Z
    .registers 2

    .prologue
    .line 27895
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ad;->rE:Z

    return p1
.end method


# virtual methods
.method public BV()Lmobi/tikl/wire/control/a$ad;
    .registers 2

    .prologue
    .line 27909
    sget-object v0, Lmobi/tikl/wire/control/a$ad;->tF:Lmobi/tikl/wire/control/a$ad;

    return-object v0
.end method

.method public BX()Lmobi/tikl/wire/control/a$ad$a;
    .registers 2

    .prologue
    .line 28045
    invoke-static {}, Lmobi/tikl/wire/control/a$ad;->BW()Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method public BY()Lmobi/tikl/wire/control/a$ad$a;
    .registers 2

    .prologue
    .line 28049
    invoke-static {p0}, Lmobi/tikl/wire/control/a$ad;->a(Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 4

    .prologue
    .line 27960
    iget v0, p0, Lmobi/tikl/wire/control/a$ad;->ai:I

    .line 27961
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 27974
    :goto_5
    return v0

    .line 27963
    :cond_6
    const/4 v0, 0x0

    .line 27964
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad;->sB()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 27965
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 27968
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad;->wT()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 27969
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad;->wU()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27972
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 27973
    iput v0, p0, Lmobi/tikl/wire/control/a$ad;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 27948
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad;->a()I

    .line 27949
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad;->sB()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 27950
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 27952
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad;->wT()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 27953
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad;->wU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 27955
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 27956
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 27895
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad;->BX()Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 27895
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad;->BV()Lmobi/tikl/wire/control/a$ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 27895
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad;->BY()Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 27919
    invoke-static {}, Lmobi/tikl/wire/control/a;->mx()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 27940
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$ad;->qq:Z

    if-nez v1, :cond_6

    .line 27943
    :cond_5
    :goto_5
    return v0

    .line 27941
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$ad;->rE:Z

    if-eqz v1, :cond_5

    .line 27942
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 27943
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public sB()Z
    .registers 2

    .prologue
    .line 27926
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ad;->qq:Z

    return v0
.end method

.method public sC()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 27927
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad;->qr:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public wT()Z
    .registers 2

    .prologue
    .line 27933
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ad;->rE:Z

    return v0
.end method

.method public wU()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27934
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad;->rF:Ljava/lang/String;

    return-object v0
.end method
