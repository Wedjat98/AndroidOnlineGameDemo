.class public final Lmobi/tikl/wire/control/a$O;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "O"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$O$a;
    }
.end annotation


# static fields
.field private static final sg:Lmobi/tikl/wire/control/a$O;


# instance fields
.field private ai:I

.field private rL:Z

.field private rM:Z

.field private sh:Z

.field private si:I

.field private sj:Z

.field private sk:Z

.field private sl:Z

.field private sm:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8440
    new-instance v0, Lmobi/tikl/wire/control/a$O;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$O;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$O;->sg:Lmobi/tikl/wire/control/a$O;

    .line 8441
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 8442
    sget-object v0, Lmobi/tikl/wire/control/a$O;->sg:Lmobi/tikl/wire/control/a$O;

    .line 8443
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 8050
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 8077
    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$O;->rM:Z

    .line 8084
    iput v0, p0, Lmobi/tikl/wire/control/a$O;->si:I

    .line 8091
    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$O;->sk:Z

    .line 8098
    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$O;->sm:Z

    .line 8126
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$O;->ai:I

    .line 8051
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 8047
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$O;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 8053
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 8077
    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$O;->rM:Z

    .line 8084
    iput v0, p0, Lmobi/tikl/wire/control/a$O;->si:I

    .line 8091
    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$O;->sk:Z

    .line 8098
    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$O;->sm:Z

    .line 8126
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$O;->ai:I

    .line 8053
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$O;I)I
    .registers 2

    .prologue
    .line 8047
    iput p1, p0, Lmobi/tikl/wire/control/a$O;->si:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$O;Z)Z
    .registers 2

    .prologue
    .line 8047
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$O;->rL:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 8066
    invoke-static {}, Lmobi/tikl/wire/control/a;->kK()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lmobi/tikl/wire/control/a$O;)Lmobi/tikl/wire/control/a$O$a;
    .registers 2

    .prologue
    .line 8223
    invoke-static {}, Lmobi/tikl/wire/control/a$O;->yd()Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$O$a;->c(Lmobi/tikl/wire/control/a$O;)Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$O;Z)Z
    .registers 2

    .prologue
    .line 8047
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$O;->rM:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$O;Z)Z
    .registers 2

    .prologue
    .line 8047
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$O;->sh:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$O;Z)Z
    .registers 2

    .prologue
    .line 8047
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$O;->sj:Z

    return p1
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$O;Z)Z
    .registers 2

    .prologue
    .line 8047
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$O;->sk:Z

    return p1
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$O;Z)Z
    .registers 2

    .prologue
    .line 8047
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$O;->sl:Z

    return p1
.end method

.method static synthetic g(Lmobi/tikl/wire/control/a$O;Z)Z
    .registers 2

    .prologue
    .line 8047
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$O;->sm:Z

    return p1
.end method

.method public static xV()Lmobi/tikl/wire/control/a$O;
    .registers 1

    .prologue
    .line 8057
    sget-object v0, Lmobi/tikl/wire/control/a$O;->sg:Lmobi/tikl/wire/control/a$O;

    return-object v0
.end method

.method public static yd()Lmobi/tikl/wire/control/a$O$a;
    .registers 1

    .prologue
    .line 8220
    invoke-static {}, Lmobi/tikl/wire/control/a$O$a;->yl()Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 8128
    iget v0, p0, Lmobi/tikl/wire/control/a$O;->ai:I

    .line 8129
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 8150
    :goto_5
    return v0

    .line 8131
    :cond_6
    const/4 v0, 0x0

    .line 8132
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->xs()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 8133
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->xt()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 8136
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->xX()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 8137
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->xY()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8140
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->xZ()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 8141
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->ya()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8144
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->yb()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 8145
    const/4 v1, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->yc()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8148
    :cond_48
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 8149
    iput v0, p0, Lmobi/tikl/wire/control/a$O;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 8110
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->a()I

    .line 8111
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->xs()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 8112
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->xt()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 8114
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->xX()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 8115
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->xY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 8117
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->xZ()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 8118
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->ya()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 8120
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->yb()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 8121
    const/4 v0, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->yc()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 8123
    :cond_3b
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 8124
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 8047
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->ye()Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 8047
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->xW()Lmobi/tikl/wire/control/a$O;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 8047
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$O;->yf()Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 8071
    invoke-static {}, Lmobi/tikl/wire/control/a;->kL()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 8105
    const/4 v0, 0x1

    return v0
.end method

.method public xW()Lmobi/tikl/wire/control/a$O;
    .registers 2

    .prologue
    .line 8061
    sget-object v0, Lmobi/tikl/wire/control/a$O;->sg:Lmobi/tikl/wire/control/a$O;

    return-object v0
.end method

.method public xX()Z
    .registers 2

    .prologue
    .line 8085
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$O;->sh:Z

    return v0
.end method

.method public xY()I
    .registers 2

    .prologue
    .line 8086
    iget v0, p0, Lmobi/tikl/wire/control/a$O;->si:I

    return v0
.end method

.method public xZ()Z
    .registers 2

    .prologue
    .line 8092
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$O;->sj:Z

    return v0
.end method

.method public xs()Z
    .registers 2

    .prologue
    .line 8078
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$O;->rL:Z

    return v0
.end method

.method public xt()Z
    .registers 2

    .prologue
    .line 8079
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$O;->rM:Z

    return v0
.end method

.method public ya()Z
    .registers 2

    .prologue
    .line 8093
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$O;->sk:Z

    return v0
.end method

.method public yb()Z
    .registers 2

    .prologue
    .line 8099
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$O;->sl:Z

    return v0
.end method

.method public yc()Z
    .registers 2

    .prologue
    .line 8100
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$O;->sm:Z

    return v0
.end method

.method public ye()Lmobi/tikl/wire/control/a$O$a;
    .registers 2

    .prologue
    .line 8221
    invoke-static {}, Lmobi/tikl/wire/control/a$O;->yd()Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    return-object v0
.end method

.method public yf()Lmobi/tikl/wire/control/a$O$a;
    .registers 2

    .prologue
    .line 8225
    invoke-static {p0}, Lmobi/tikl/wire/control/a$O;->b(Lmobi/tikl/wire/control/a$O;)Lmobi/tikl/wire/control/a$O$a;

    move-result-object v0

    return-object v0
.end method
