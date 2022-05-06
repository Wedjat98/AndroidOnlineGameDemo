.class public final Lmobi/tikl/wire/control/a$T;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$T$a;
    }
.end annotation


# static fields
.field private static final sN:Lmobi/tikl/wire/control/a$T;


# instance fields
.field private ai:I

.field private pU:Z

.field private pV:Lmobi/tikl/wire/control/a$G;

.field private sK:Z

.field private sL:Lmobi/tikl/wire/control/a$G;

.field private sO:Z

.field private sP:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 7404
    new-instance v0, Lmobi/tikl/wire/control/a$T;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$T;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$T;->sN:Lmobi/tikl/wire/control/a$T;

    .line 7405
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 7406
    sget-object v0, Lmobi/tikl/wire/control/a$T;->sN:Lmobi/tikl/wire/control/a$T;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$T;->aJ()V

    .line 7407
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 6998
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 7039
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$T;->sP:Z

    .line 7071
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$T;->ai:I

    .line 6999
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$T;->aJ()V

    .line 7000
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 6995
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$T;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 7001
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 7039
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$T;->sP:Z

    .line 7071
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$T;->ai:I

    .line 7001
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$T;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 6995
    iput-object p1, p0, Lmobi/tikl/wire/control/a$T;->pV:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$T;)Lmobi/tikl/wire/control/a$T$a;
    .registers 2

    .prologue
    .line 7164
    invoke-static {}, Lmobi/tikl/wire/control/a$T;->zu()Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$T$a;->d(Lmobi/tikl/wire/control/a$T;)Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$T;Z)Z
    .registers 2

    .prologue
    .line 6995
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$T;->pU:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 7044
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$T;->pV:Lmobi/tikl/wire/control/a$G;

    .line 7045
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$T;->sL:Lmobi/tikl/wire/control/a$G;

    .line 7046
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 7014
    invoke-static {}, Lmobi/tikl/wire/control/a;->kG()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$T;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 6995
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T;->pV:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$T;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 6995
    iput-object p1, p0, Lmobi/tikl/wire/control/a$T;->sL:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$T;Z)Z
    .registers 2

    .prologue
    .line 6995
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$T;->sK:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$T;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 6995
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T;->sL:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$T;Z)Z
    .registers 2

    .prologue
    .line 6995
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$T;->sO:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$T;Z)Z
    .registers 2

    .prologue
    .line 6995
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$T;->sP:Z

    return p1
.end method

.method public static zq()Lmobi/tikl/wire/control/a$T;
    .registers 1

    .prologue
    .line 7005
    sget-object v0, Lmobi/tikl/wire/control/a$T;->sN:Lmobi/tikl/wire/control/a$T;

    return-object v0
.end method

.method public static zu()Lmobi/tikl/wire/control/a$T$a;
    .registers 1

    .prologue
    .line 7161
    invoke-static {}, Lmobi/tikl/wire/control/a$T$a;->zC()Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 7073
    iget v0, p0, Lmobi/tikl/wire/control/a$T;->ai:I

    .line 7074
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 7091
    :goto_5
    return v0

    .line 7076
    :cond_6
    const/4 v0, 0x0

    .line 7077
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->rd()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 7078
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 7081
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->zf()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 7082
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->zg()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7085
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->zs()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 7086
    const/16 v1, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->zt()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7089
    :cond_39
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 7090
    iput v0, p0, Lmobi/tikl/wire/control/a$T;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 7058
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->a()I

    .line 7059
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->rd()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7060
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 7062
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->zf()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 7063
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->zg()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 7065
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->zs()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 7066
    const/16 v0, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->zt()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 7068
    :cond_2e
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 7069
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 6995
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->zv()Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 6995
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->zr()Lmobi/tikl/wire/control/a$T;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 6995
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->zw()Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 7019
    invoke-static {}, Lmobi/tikl/wire/control/a;->kH()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 7048
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$T;->pU:Z

    if-nez v1, :cond_6

    .line 7053
    :cond_5
    :goto_5
    return v0

    .line 7049
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$T;->sK:Z

    if-eqz v1, :cond_5

    .line 7050
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$T;->sO:Z

    if-eqz v1, :cond_5

    .line 7051
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7052
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$T;->zg()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7053
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public rd()Z
    .registers 2

    .prologue
    .line 7026
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$T;->pU:Z

    return v0
.end method

.method public re()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 7027
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T;->pV:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public zf()Z
    .registers 2

    .prologue
    .line 7033
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$T;->sK:Z

    return v0
.end method

.method public zg()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 7034
    iget-object v0, p0, Lmobi/tikl/wire/control/a$T;->sL:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public zr()Lmobi/tikl/wire/control/a$T;
    .registers 2

    .prologue
    .line 7009
    sget-object v0, Lmobi/tikl/wire/control/a$T;->sN:Lmobi/tikl/wire/control/a$T;

    return-object v0
.end method

.method public zs()Z
    .registers 2

    .prologue
    .line 7040
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$T;->sO:Z

    return v0
.end method

.method public zt()Z
    .registers 2

    .prologue
    .line 7041
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$T;->sP:Z

    return v0
.end method

.method public zv()Lmobi/tikl/wire/control/a$T$a;
    .registers 2

    .prologue
    .line 7162
    invoke-static {}, Lmobi/tikl/wire/control/a$T;->zu()Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    return-object v0
.end method

.method public zw()Lmobi/tikl/wire/control/a$T$a;
    .registers 2

    .prologue
    .line 7166
    invoke-static {p0}, Lmobi/tikl/wire/control/a$T;->a(Lmobi/tikl/wire/control/a$T;)Lmobi/tikl/wire/control/a$T$a;

    move-result-object v0

    return-object v0
.end method
