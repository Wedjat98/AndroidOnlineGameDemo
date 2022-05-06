.class public final Lmobi/tikl/wire/control/a$aq$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private vZ:Lmobi/tikl/wire/control/a$aq;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23005
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static GD()Lmobi/tikl/wire/control/a$aq$a;
    .registers 3

    .prologue
    .line 23008
    new-instance v0, Lmobi/tikl/wire/control/a$aq$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$aq$a;-><init>()V

    .line 23009
    new-instance v1, Lmobi/tikl/wire/control/a$aq;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$aq;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    .line 23010
    return-object v0
.end method

.method static synthetic GI()Lmobi/tikl/wire/control/a$aq$a;
    .registers 1

    .prologue
    .line 23000
    invoke-static {}, Lmobi/tikl/wire/control/a$aq$a;->GD()Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected GE()Lmobi/tikl/wire/control/a$aq;
    .registers 2

    .prologue
    .line 23014
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    return-object v0
.end method

.method public GF()Lmobi/tikl/wire/control/a$aq$a;
    .registers 3

    .prologue
    .line 23027
    invoke-static {}, Lmobi/tikl/wire/control/a$aq$a;->GD()Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$aq$a;->g(Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    return-object v0
.end method

.method public GG()Lmobi/tikl/wire/control/a$aq;
    .registers 2

    .prologue
    .line 23043
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 23044
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aq$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 23046
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq$a;->GH()Lmobi/tikl/wire/control/a$aq;

    move-result-object v0

    return-object v0
.end method

.method public GH()Lmobi/tikl/wire/control/a$aq;
    .registers 3

    .prologue
    .line 23059
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    if-nez v0, :cond_c

    .line 23060
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23063
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aq;->e(Lmobi/tikl/wire/control/a$aq;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 23064
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$aq;->e(Lmobi/tikl/wire/control/a$aq;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aq;->a(Lmobi/tikl/wire/control/a$aq;Ljava/util/List;)Ljava/util/List;

    .line 23067
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    .line 23068
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    .line 23069
    return-object v0
.end method

.method public Gy()Z
    .registers 2

    .prologue
    .line 23190
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$aq;->Gy()Z

    move-result v0

    return v0
.end method

.method public Gz()Lmobi/tikl/wire/control/a$H;
    .registers 2

    .prologue
    .line 23193
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$aq;->Gz()Lmobi/tikl/wire/control/a$H;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 23000
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$aq$a;->aM(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 23000
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$aq$a;->aO(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    return-object v0
.end method

.method public aM(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$aq$a;
    .registers 6

    .prologue
    .line 23100
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 23104
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 23105
    sparse-switch v1, :sswitch_data_50

    .line 23110
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$aq$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 23112
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$aq$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 23113
    :goto_1c
    return-object p0

    .line 23107
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$aq$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 23118
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$an;->FH()Lmobi/tikl/wire/control/a$an$a;

    move-result-object v1

    .line 23119
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 23120
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$an$a;->FO()Lmobi/tikl/wire/control/a$an;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$aq$a;->d(Lmobi/tikl/wire/control/a$an;)Lmobi/tikl/wire/control/a$aq$a;

    goto :goto_8

    .line 23124
    :sswitch_34
    invoke-static {}, Lmobi/tikl/wire/control/a$H;->vS()Lmobi/tikl/wire/control/a$H$a;

    move-result-object v1

    .line 23125
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq$a;->Gy()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 23126
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq$a;->Gz()Lmobi/tikl/wire/control/a$H;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$H$a;->d(Lmobi/tikl/wire/control/a$H;)Lmobi/tikl/wire/control/a$H$a;

    .line 23128
    :cond_45
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 23129
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$H$a;->vZ()Lmobi/tikl/wire/control/a$H;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$aq$a;->e(Lmobi/tikl/wire/control/a$H;)Lmobi/tikl/wire/control/a$aq$a;

    goto :goto_8

    .line 23105
    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x12 -> :sswitch_34
    .end sparse-switch
.end method

.method public aO(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$aq$a;
    .registers 3

    .prologue
    .line 23073
    instance-of v0, p1, Lmobi/tikl/wire/control/a$aq;

    if-eqz v0, :cond_b

    .line 23074
    check-cast p1, Lmobi/tikl/wire/control/a$aq;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$aq$a;->g(Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$aq$a;

    move-result-object p0

    .line 23077
    :goto_a
    return-object p0

    .line 23076
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 23032
    invoke-static {}, Lmobi/tikl/wire/control/a$aq;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 23000
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq$a;->GE()Lmobi/tikl/wire/control/a$aq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 23000
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq$a;->GF()Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 23000
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq$a;->GG()Lmobi/tikl/wire/control/a$aq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 23000
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq$a;->GG()Lmobi/tikl/wire/control/a$aq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 23000
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq$a;->GF()Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 23000
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$aq$a;->aM(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 23000
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq$a;->GF()Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 23000
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$aq$a;->aM(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 23000
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq$a;->GF()Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 23000
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$aq$a;->aO(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$an;)Lmobi/tikl/wire/control/a$aq$a;
    .registers 4

    .prologue
    .line 23159
    if-nez p1, :cond_8

    .line 23160
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23162
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aq;->e(Lmobi/tikl/wire/control/a$aq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 23163
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aq;->a(Lmobi/tikl/wire/control/a$aq;Ljava/util/List;)Ljava/util/List;

    .line 23165
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aq;->e(Lmobi/tikl/wire/control/a$aq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23166
    return-object p0
.end method

.method public e(Lmobi/tikl/wire/control/a$H;)Lmobi/tikl/wire/control/a$aq$a;
    .registers 4

    .prologue
    .line 23196
    if-nez p1, :cond_8

    .line 23197
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23199
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aq;->a(Lmobi/tikl/wire/control/a$aq;Z)Z

    .line 23200
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$aq;->a(Lmobi/tikl/wire/control/a$aq;Lmobi/tikl/wire/control/a$H;)Lmobi/tikl/wire/control/a$H;

    .line 23201
    return-object p0
.end method

.method public f(Lmobi/tikl/wire/control/a$H;)Lmobi/tikl/wire/control/a$aq$a;
    .registers 4

    .prologue
    .line 23209
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$aq;->Gy()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aq;->f(Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$H;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$H;->vO()Lmobi/tikl/wire/control/a$H;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 23211
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$aq;->f(Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$H;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$H;->b(Lmobi/tikl/wire/control/a$H;)Lmobi/tikl/wire/control/a$H$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$H$a;->d(Lmobi/tikl/wire/control/a$H;)Lmobi/tikl/wire/control/a$H$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$H$a;->vZ()Lmobi/tikl/wire/control/a$H;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aq;->a(Lmobi/tikl/wire/control/a$aq;Lmobi/tikl/wire/control/a$H;)Lmobi/tikl/wire/control/a$H;

    .line 23216
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aq;->a(Lmobi/tikl/wire/control/a$aq;Z)Z

    .line 23217
    return-object p0

    .line 23214
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$aq;->a(Lmobi/tikl/wire/control/a$aq;Lmobi/tikl/wire/control/a$H;)Lmobi/tikl/wire/control/a$H;

    goto :goto_2b
.end method

.method public g(Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$aq$a;
    .registers 4

    .prologue
    .line 23082
    invoke-static {}, Lmobi/tikl/wire/control/a$aq;->Gu()Lmobi/tikl/wire/control/a$aq;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 23093
    :goto_6
    return-object p0

    .line 23083
    :cond_7
    invoke-static {p1}, Lmobi/tikl/wire/control/a$aq;->e(Lmobi/tikl/wire/control/a$aq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 23084
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aq;->e(Lmobi/tikl/wire/control/a$aq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 23085
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$aq;->a(Lmobi/tikl/wire/control/a$aq;Ljava/util/List;)Ljava/util/List;

    .line 23087
    :cond_27
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$aq;->e(Lmobi/tikl/wire/control/a$aq;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$aq;->e(Lmobi/tikl/wire/control/a$aq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23089
    :cond_34
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$aq;->Gy()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 23090
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$aq;->Gz()Lmobi/tikl/wire/control/a$H;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$aq$a;->f(Lmobi/tikl/wire/control/a$H;)Lmobi/tikl/wire/control/a$aq$a;

    .line 23092
    :cond_41
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$aq;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$aq$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 23040
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq$a;->vZ:Lmobi/tikl/wire/control/a$aq;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$aq;->isInitialized()Z

    move-result v0

    return v0
.end method
