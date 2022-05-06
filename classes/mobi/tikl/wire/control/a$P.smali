.class public final Lmobi/tikl/wire/control/a$P;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "P"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$P$a;
    }
.end annotation


# static fields
.field private static final so:Lmobi/tikl/wire/control/a$P;


# instance fields
.field private ai:I

.field private sp:Z

.field private sq:D

.field private sr:Z

.field private ss:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13059
    new-instance v0, Lmobi/tikl/wire/control/a$P;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$P;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$P;->so:Lmobi/tikl/wire/control/a$P;

    .line 13060
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 13061
    sget-object v0, Lmobi/tikl/wire/control/a$P;->so:Lmobi/tikl/wire/control/a$P;

    .line 13062
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 12745
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 12772
    iput-wide v0, p0, Lmobi/tikl/wire/control/a$P;->sq:D

    .line 12779
    iput-wide v0, p0, Lmobi/tikl/wire/control/a$P;->ss:D

    .line 12803
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$P;->ai:I

    .line 12746
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 12742
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$P;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4

    .prologue
    const-wide/16 v0, 0x0

    .line 12748
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 12772
    iput-wide v0, p0, Lmobi/tikl/wire/control/a$P;->sq:D

    .line 12779
    iput-wide v0, p0, Lmobi/tikl/wire/control/a$P;->ss:D

    .line 12803
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$P;->ai:I

    .line 12748
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$P;D)D
    .registers 4

    .prologue
    .line 12742
    iput-wide p1, p0, Lmobi/tikl/wire/control/a$P;->sq:D

    return-wide p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$P;Z)Z
    .registers 2

    .prologue
    .line 12742
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$P;->sp:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 12761
    invoke-static {}, Lmobi/tikl/wire/control/a;->kY()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$P;D)D
    .registers 4

    .prologue
    .line 12742
    iput-wide p1, p0, Lmobi/tikl/wire/control/a$P;->ss:D

    return-wide p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$P;Z)Z
    .registers 2

    .prologue
    .line 12742
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$P;->sr:Z

    return p1
.end method

.method public static e(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P$a;
    .registers 2

    .prologue
    .line 12892
    invoke-static {}, Lmobi/tikl/wire/control/a$P;->yo()Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$P$a;->f(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    return-object v0
.end method

.method public static ym()Lmobi/tikl/wire/control/a$P;
    .registers 1

    .prologue
    .line 12752
    sget-object v0, Lmobi/tikl/wire/control/a$P;->so:Lmobi/tikl/wire/control/a$P;

    return-object v0
.end method

.method public static yo()Lmobi/tikl/wire/control/a$P$a;
    .registers 1

    .prologue
    .line 12889
    invoke-static {}, Lmobi/tikl/wire/control/a$P$a;->yw()Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 12805
    iget v0, p0, Lmobi/tikl/wire/control/a$P;->ai:I

    .line 12806
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 12819
    :goto_5
    return v0

    .line 12808
    :cond_6
    const/4 v0, 0x0

    .line 12809
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P;->hasLatitude()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 12810
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/e;->b(ID)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 12813
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P;->hasLongitude()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 12814
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P;->getLongitude()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/e;->b(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 12817
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 12818
    iput v0, p0, Lmobi/tikl/wire/control/a$P;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 6

    .prologue
    .line 12793
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P;->a()I

    .line 12794
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12795
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/e;->a(ID)V

    .line 12797
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 12798
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/e;->a(ID)V

    .line 12800
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 12801
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 12742
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P;->yp()Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 12742
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P;->yn()Lmobi/tikl/wire/control/a$P;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 12742
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P;->yq()Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 12766
    invoke-static {}, Lmobi/tikl/wire/control/a;->kZ()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 12774
    iget-wide v0, p0, Lmobi/tikl/wire/control/a$P;->sq:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 12781
    iget-wide v0, p0, Lmobi/tikl/wire/control/a$P;->ss:D

    return-wide v0
.end method

.method public hasLatitude()Z
    .registers 2

    .prologue
    .line 12773
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$P;->sp:Z

    return v0
.end method

.method public hasLongitude()Z
    .registers 2

    .prologue
    .line 12780
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$P;->sr:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 12786
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$P;->sp:Z

    if-nez v1, :cond_6

    .line 12788
    :cond_5
    :goto_5
    return v0

    .line 12787
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$P;->sr:Z

    if-eqz v1, :cond_5

    .line 12788
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public yn()Lmobi/tikl/wire/control/a$P;
    .registers 2

    .prologue
    .line 12756
    sget-object v0, Lmobi/tikl/wire/control/a$P;->so:Lmobi/tikl/wire/control/a$P;

    return-object v0
.end method

.method public yp()Lmobi/tikl/wire/control/a$P$a;
    .registers 2

    .prologue
    .line 12890
    invoke-static {}, Lmobi/tikl/wire/control/a$P;->yo()Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    return-object v0
.end method

.method public yq()Lmobi/tikl/wire/control/a$P$a;
    .registers 2

    .prologue
    .line 12894
    invoke-static {p0}, Lmobi/tikl/wire/control/a$P;->e(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    return-object v0
.end method
