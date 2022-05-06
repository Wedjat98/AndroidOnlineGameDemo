.class public final Lmobi/tikl/wire/control/a$P$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private st:Lmobi/tikl/wire/control/a$P;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12901
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static yr()Lmobi/tikl/wire/control/a$P$a;
    .registers 3

    .prologue
    .line 12904
    new-instance v0, Lmobi/tikl/wire/control/a$P$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$P$a;-><init>()V

    .line 12905
    new-instance v1, Lmobi/tikl/wire/control/a$P;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$P;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$P$a;->st:Lmobi/tikl/wire/control/a$P;

    .line 12906
    return-object v0
.end method

.method static synthetic yw()Lmobi/tikl/wire/control/a$P$a;
    .registers 1

    .prologue
    .line 12896
    invoke-static {}, Lmobi/tikl/wire/control/a$P$a;->yr()Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 12896
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$P$a;->al(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 12896
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$P$a;->an(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 12928
    invoke-static {}, Lmobi/tikl/wire/control/a$P;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 12896
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P$a;->ys()Lmobi/tikl/wire/control/a$P;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 12896
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P$a;->yt()Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 12896
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P$a;->yu()Lmobi/tikl/wire/control/a$P;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 12896
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P$a;->yu()Lmobi/tikl/wire/control/a$P;

    move-result-object v0

    return-object v0
.end method

.method public al(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$P$a;
    .registers 7

    .prologue
    .line 12989
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 12993
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 12994
    sparse-switch v1, :sswitch_data_36

    .line 12999
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$P$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 13001
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$P$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 13002
    :goto_1c
    return-object p0

    .line 12996
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$P$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 13007
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmobi/tikl/wire/control/a$P$a;->e(D)Lmobi/tikl/wire/control/a$P$a;

    goto :goto_8

    .line 13011
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmobi/tikl/wire/control/a$P$a;->f(D)Lmobi/tikl/wire/control/a$P$a;

    goto :goto_8

    .line 12994
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_1d
        0x9 -> :sswitch_25
        0x11 -> :sswitch_2d
    .end sparse-switch
.end method

.method public an(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$P$a;
    .registers 3

    .prologue
    .line 12965
    instance-of v0, p1, Lmobi/tikl/wire/control/a$P;

    if-eqz v0, :cond_b

    .line 12966
    check-cast p1, Lmobi/tikl/wire/control/a$P;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$P$a;->f(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P$a;

    move-result-object p0

    .line 12969
    :goto_a
    return-object p0

    .line 12968
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 12896
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P$a;->yt()Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 12896
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$P$a;->al(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 12896
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P$a;->yt()Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 12896
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$P$a;->al(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 12896
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P$a;->yt()Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 12896
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$P$a;->an(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    return-object v0
.end method

.method public e(D)Lmobi/tikl/wire/control/a$P$a;
    .registers 6

    .prologue
    .line 13027
    iget-object v0, p0, Lmobi/tikl/wire/control/a$P$a;->st:Lmobi/tikl/wire/control/a$P;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$P;->a(Lmobi/tikl/wire/control/a$P;Z)Z

    .line 13028
    iget-object v0, p0, Lmobi/tikl/wire/control/a$P$a;->st:Lmobi/tikl/wire/control/a$P;

    invoke-static {v0, p1, p2}, Lmobi/tikl/wire/control/a$P;->a(Lmobi/tikl/wire/control/a$P;D)D

    .line 13029
    return-object p0
.end method

.method public f(D)Lmobi/tikl/wire/control/a$P$a;
    .registers 6

    .prologue
    .line 13045
    iget-object v0, p0, Lmobi/tikl/wire/control/a$P$a;->st:Lmobi/tikl/wire/control/a$P;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$P;->b(Lmobi/tikl/wire/control/a$P;Z)Z

    .line 13046
    iget-object v0, p0, Lmobi/tikl/wire/control/a$P$a;->st:Lmobi/tikl/wire/control/a$P;

    invoke-static {v0, p1, p2}, Lmobi/tikl/wire/control/a$P;->b(Lmobi/tikl/wire/control/a$P;D)D

    .line 13047
    return-object p0
.end method

.method public f(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P$a;
    .registers 4

    .prologue
    .line 12974
    invoke-static {}, Lmobi/tikl/wire/control/a$P;->ym()Lmobi/tikl/wire/control/a$P;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 12982
    :goto_6
    return-object p0

    .line 12975
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$P;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 12976
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$P;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmobi/tikl/wire/control/a$P$a;->e(D)Lmobi/tikl/wire/control/a$P$a;

    .line 12978
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$P;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 12979
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$P;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmobi/tikl/wire/control/a$P$a;->f(D)Lmobi/tikl/wire/control/a$P$a;

    .line 12981
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$P;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$P$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 12936
    iget-object v0, p0, Lmobi/tikl/wire/control/a$P$a;->st:Lmobi/tikl/wire/control/a$P;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$P;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected ys()Lmobi/tikl/wire/control/a$P;
    .registers 2

    .prologue
    .line 12910
    iget-object v0, p0, Lmobi/tikl/wire/control/a$P$a;->st:Lmobi/tikl/wire/control/a$P;

    return-object v0
.end method

.method public yt()Lmobi/tikl/wire/control/a$P$a;
    .registers 3

    .prologue
    .line 12923
    invoke-static {}, Lmobi/tikl/wire/control/a$P$a;->yr()Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$P$a;->st:Lmobi/tikl/wire/control/a$P;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$P$a;->f(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P$a;

    move-result-object v0

    return-object v0
.end method

.method public yu()Lmobi/tikl/wire/control/a$P;
    .registers 2

    .prologue
    .line 12939
    iget-object v0, p0, Lmobi/tikl/wire/control/a$P$a;->st:Lmobi/tikl/wire/control/a$P;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 12940
    iget-object v0, p0, Lmobi/tikl/wire/control/a$P$a;->st:Lmobi/tikl/wire/control/a$P;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$P$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 12942
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$P$a;->yv()Lmobi/tikl/wire/control/a$P;

    move-result-object v0

    return-object v0
.end method

.method public yv()Lmobi/tikl/wire/control/a$P;
    .registers 3

    .prologue
    .line 12955
    iget-object v0, p0, Lmobi/tikl/wire/control/a$P$a;->st:Lmobi/tikl/wire/control/a$P;

    if-nez v0, :cond_c

    .line 12956
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12959
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$P$a;->st:Lmobi/tikl/wire/control/a$P;

    .line 12960
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$P$a;->st:Lmobi/tikl/wire/control/a$P;

    .line 12961
    return-object v0
.end method
