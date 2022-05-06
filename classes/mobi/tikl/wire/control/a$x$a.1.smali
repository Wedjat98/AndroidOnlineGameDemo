.class public final Lmobi/tikl/wire/control/a$x$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qH:Lmobi/tikl/wire/control/a$x;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35090
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static tF()Lmobi/tikl/wire/control/a$x$a;
    .registers 3

    .prologue
    .line 35093
    new-instance v0, Lmobi/tikl/wire/control/a$x$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$x$a;-><init>()V

    .line 35094
    new-instance v1, Lmobi/tikl/wire/control/a$x;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$x;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    .line 35095
    return-object v0
.end method

.method static synthetic tK()Lmobi/tikl/wire/control/a$x$a;
    .registers 1

    .prologue
    .line 35085
    invoke-static {}, Lmobi/tikl/wire/control/a$x$a;->tF()Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public E(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$x$a;
    .registers 4

    .prologue
    .line 35274
    if-nez p1, :cond_8

    .line 35275
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35277
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$x;->i(Lmobi/tikl/wire/control/a$x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 35278
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$x;->a(Lmobi/tikl/wire/control/a$x;Ljava/util/List;)Ljava/util/List;

    .line 35280
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$x;->i(Lmobi/tikl/wire/control/a$x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35281
    return-object p0
.end method

.method public T(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$x$a;
    .registers 7

    .prologue
    .line 35191
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 35195
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 35196
    sparse-switch v1, :sswitch_data_4c

    .line 35201
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$x$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 35203
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$x$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 35204
    :goto_1c
    return-object p0

    .line 35198
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$x$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 35209
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$x$a;->aC(Ljava/lang/String;)Lmobi/tikl/wire/control/a$x$a;

    goto :goto_8

    .line 35213
    :sswitch_2d
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 35214
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 35215
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$x$a;->E(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$x$a;

    goto :goto_8

    .line 35219
    :sswitch_3c
    invoke-virtual {p1}, Lcom/google/protobuf/d;->h()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmobi/tikl/wire/control/a$x$a;->w(J)Lmobi/tikl/wire/control/a$x$a;

    goto :goto_8

    .line 35223
    :sswitch_44
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$x$a;->aD(Ljava/lang/String;)Lmobi/tikl/wire/control/a$x$a;

    goto :goto_8

    .line 35196
    :sswitch_data_4c
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x12 -> :sswitch_2d
        0x18 -> :sswitch_3c
        0x52 -> :sswitch_44
    .end sparse-switch
.end method

.method public V(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$x$a;
    .registers 3

    .prologue
    .line 35158
    instance-of v0, p1, Lmobi/tikl/wire/control/a$x;

    if-eqz v0, :cond_b

    .line 35159
    check-cast p1, Lmobi/tikl/wire/control/a$x;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$x$a;->j(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object p0

    .line 35162
    :goto_a
    return-object p0

    .line 35161
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 35085
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$x$a;->T(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 35085
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$x$a;->V(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public aC(Ljava/lang/String;)Lmobi/tikl/wire/control/a$x$a;
    .registers 4

    .prologue
    .line 35239
    if-nez p1, :cond_8

    .line 35240
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35242
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$x;->a(Lmobi/tikl/wire/control/a$x;Z)Z

    .line 35243
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$x;->a(Lmobi/tikl/wire/control/a$x;Ljava/lang/String;)Ljava/lang/String;

    .line 35244
    return-object p0
.end method

.method public aD(Ljava/lang/String;)Lmobi/tikl/wire/control/a$x$a;
    .registers 4

    .prologue
    .line 35329
    if-nez p1, :cond_8

    .line 35330
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35332
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$x;->c(Lmobi/tikl/wire/control/a$x;Z)Z

    .line 35333
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$x;->b(Lmobi/tikl/wire/control/a$x;Ljava/lang/String;)Ljava/lang/String;

    .line 35334
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 35117
    invoke-static {}, Lmobi/tikl/wire/control/a$x;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 35085
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x$a;->tG()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 35085
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x$a;->tH()Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 35085
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x$a;->tI()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 35085
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x$a;->tI()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 35085
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x$a;->tH()Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 35085
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$x$a;->T(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 35085
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x$a;->tH()Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 35085
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$x$a;->T(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 35085
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x$a;->tH()Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 35085
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$x$a;->V(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 35125
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$x;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public j(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;
    .registers 4

    .prologue
    .line 35167
    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tx()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 35184
    :goto_6
    return-object p0

    .line 35168
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$x;->pS()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 35169
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$x;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$x$a;->aC(Ljava/lang/String;)Lmobi/tikl/wire/control/a$x$a;

    .line 35171
    :cond_14
    invoke-static {p1}, Lmobi/tikl/wire/control/a$x;->i(Lmobi/tikl/wire/control/a$x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 35172
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$x;->i(Lmobi/tikl/wire/control/a$x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 35173
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$x;->a(Lmobi/tikl/wire/control/a$x;Ljava/util/List;)Ljava/util/List;

    .line 35175
    :cond_34
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$x;->i(Lmobi/tikl/wire/control/a$x;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$x;->i(Lmobi/tikl/wire/control/a$x;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35177
    :cond_41
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$x;->tA()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 35178
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$x;->tB()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmobi/tikl/wire/control/a$x$a;->w(J)Lmobi/tikl/wire/control/a$x$a;

    .line 35180
    :cond_4e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$x;->hasName()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 35181
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$x;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$x$a;->aD(Ljava/lang/String;)Lmobi/tikl/wire/control/a$x$a;

    .line 35183
    :cond_5b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$x;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$x$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method protected tG()Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 35099
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    return-object v0
.end method

.method public tH()Lmobi/tikl/wire/control/a$x$a;
    .registers 3

    .prologue
    .line 35112
    invoke-static {}, Lmobi/tikl/wire/control/a$x$a;->tF()Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$x$a;->j(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v0

    return-object v0
.end method

.method public tI()Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 35128
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 35129
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$x$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 35131
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$x$a;->tJ()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    return-object v0
.end method

.method public tJ()Lmobi/tikl/wire/control/a$x;
    .registers 3

    .prologue
    .line 35144
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    if-nez v0, :cond_c

    .line 35145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35148
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$x;->i(Lmobi/tikl/wire/control/a$x;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 35149
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$x;->i(Lmobi/tikl/wire/control/a$x;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$x;->a(Lmobi/tikl/wire/control/a$x;Ljava/util/List;)Ljava/util/List;

    .line 35152
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    .line 35153
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    .line 35154
    return-object v0
.end method

.method public w(J)Lmobi/tikl/wire/control/a$x$a;
    .registers 6

    .prologue
    .line 35311
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$x;->b(Lmobi/tikl/wire/control/a$x;Z)Z

    .line 35312
    iget-object v0, p0, Lmobi/tikl/wire/control/a$x$a;->qH:Lmobi/tikl/wire/control/a$x;

    invoke-static {v0, p1, p2}, Lmobi/tikl/wire/control/a$x;->a(Lmobi/tikl/wire/control/a$x;J)J

    .line 35313
    return-object p0
.end method
