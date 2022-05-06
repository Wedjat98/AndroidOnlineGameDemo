.class public final Lmobi/tikl/wire/control/a$E;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "E"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$E$a;
    }
.end annotation


# static fields
.field private static final qW:Lmobi/tikl/wire/control/a$E;


# instance fields
.field private ai:I

.field private iY:I

.field private pT:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10306
    new-instance v0, Lmobi/tikl/wire/control/a$E;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$E;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$E;->qW:Lmobi/tikl/wire/control/a$E;

    .line 10307
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 10308
    sget-object v0, Lmobi/tikl/wire/control/a$E;->qW:Lmobi/tikl/wire/control/a$E;

    .line 10309
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 10032
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 10059
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$E;->iY:I

    .line 10079
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$E;->ai:I

    .line 10033
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 10029
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$E;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 10035
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 10059
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$E;->iY:I

    .line 10079
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$E;->ai:I

    .line 10035
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$E;I)I
    .registers 2

    .prologue
    .line 10029
    iput p1, p0, Lmobi/tikl/wire/control/a$E;->iY:I

    return p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$E;)Lmobi/tikl/wire/control/a$E$a;
    .registers 2

    .prologue
    .line 10164
    invoke-static {}, Lmobi/tikl/wire/control/a$E;->vd()Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$E$a;->b(Lmobi/tikl/wire/control/a$E;)Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$E;Z)Z
    .registers 2

    .prologue
    .line 10029
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$E;->pT:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 10048
    invoke-static {}, Lmobi/tikl/wire/control/a;->kS()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static vb()Lmobi/tikl/wire/control/a$E;
    .registers 1

    .prologue
    .line 10039
    sget-object v0, Lmobi/tikl/wire/control/a$E;->qW:Lmobi/tikl/wire/control/a$E;

    return-object v0
.end method

.method public static vd()Lmobi/tikl/wire/control/a$E$a;
    .registers 1

    .prologue
    .line 10161
    invoke-static {}, Lmobi/tikl/wire/control/a$E$a;->vl()Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 10081
    iget v0, p0, Lmobi/tikl/wire/control/a$E;->ai:I

    .line 10082
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 10091
    :goto_5
    return v0

    .line 10084
    :cond_6
    const/4 v0, 0x0

    .line 10085
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E;->rc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 10086
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E;->jQ()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 10089
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 10090
    iput v0, p0, Lmobi/tikl/wire/control/a$E;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 10072
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E;->a()I

    .line 10073
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E;->rc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 10074
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E;->jQ()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 10076
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 10077
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 10029
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E;->ve()Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 10029
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E;->vc()Lmobi/tikl/wire/control/a$E;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 10029
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E;->vf()Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 10053
    invoke-static {}, Lmobi/tikl/wire/control/a;->kT()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 10066
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$E;->pT:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 10067
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public jQ()I
    .registers 2

    .prologue
    .line 10061
    iget v0, p0, Lmobi/tikl/wire/control/a$E;->iY:I

    return v0
.end method

.method public rc()Z
    .registers 2

    .prologue
    .line 10060
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$E;->pT:Z

    return v0
.end method

.method public vc()Lmobi/tikl/wire/control/a$E;
    .registers 2

    .prologue
    .line 10043
    sget-object v0, Lmobi/tikl/wire/control/a$E;->qW:Lmobi/tikl/wire/control/a$E;

    return-object v0
.end method

.method public ve()Lmobi/tikl/wire/control/a$E$a;
    .registers 2

    .prologue
    .line 10162
    invoke-static {}, Lmobi/tikl/wire/control/a$E;->vd()Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    return-object v0
.end method

.method public vf()Lmobi/tikl/wire/control/a$E$a;
    .registers 2

    .prologue
    .line 10166
    invoke-static {p0}, Lmobi/tikl/wire/control/a$E;->a(Lmobi/tikl/wire/control/a$E;)Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    return-object v0
.end method
