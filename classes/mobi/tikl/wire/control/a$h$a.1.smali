.class public final Lmobi/tikl/wire/control/a$h$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private pA:Lmobi/tikl/wire/control/a$h;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19085
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static pK()Lmobi/tikl/wire/control/a$h$a;
    .registers 3

    .prologue
    .line 19088
    new-instance v0, Lmobi/tikl/wire/control/a$h$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$h$a;-><init>()V

    .line 19089
    new-instance v1, Lmobi/tikl/wire/control/a$h;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$h;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    .line 19090
    return-object v0
.end method

.method static synthetic pP()Lmobi/tikl/wire/control/a$h$a;
    .registers 1

    .prologue
    .line 19080
    invoke-static {}, Lmobi/tikl/wire/control/a$h$a;->pK()Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public D(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$h$a;
    .registers 5

    .prologue
    .line 19177
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 19181
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 19182
    sparse-switch v1, :sswitch_data_34

    .line 19187
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$h$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 19189
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$h$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 19190
    :goto_1c
    return-object p0

    .line 19184
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$h$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 19195
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$n;->rl()Lmobi/tikl/wire/control/a$n$a;

    move-result-object v1

    .line 19196
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 19197
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$n$a;->rs()Lmobi/tikl/wire/control/a$n;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$h$a;->a(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$h$a;

    goto :goto_8

    .line 19182
    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
    .end sparse-switch
.end method

.method public F(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$h$a;
    .registers 3

    .prologue
    .line 19153
    instance-of v0, p1, Lmobi/tikl/wire/control/a$h;

    if-eqz v0, :cond_b

    .line 19154
    check-cast p1, Lmobi/tikl/wire/control/a$h;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$h$a;->c(Lmobi/tikl/wire/control/a$h;)Lmobi/tikl/wire/control/a$h$a;

    move-result-object p0

    .line 19157
    :goto_a
    return-object p0

    .line 19156
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 19080
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$h$a;->D(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 19080
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$h$a;->F(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$h$a;
    .registers 4

    .prologue
    .line 19227
    if-nez p1, :cond_8

    .line 19228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19230
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$h;->b(Lmobi/tikl/wire/control/a$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 19231
    iget-object v0, p0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$h;->a(Lmobi/tikl/wire/control/a$h;Ljava/util/List;)Ljava/util/List;

    .line 19233
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$h;->b(Lmobi/tikl/wire/control/a$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19234
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 19112
    invoke-static {}, Lmobi/tikl/wire/control/a$h;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 19080
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h$a;->pL()Lmobi/tikl/wire/control/a$h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 19080
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h$a;->pM()Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 19080
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h$a;->pN()Lmobi/tikl/wire/control/a$h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 19080
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h$a;->pN()Lmobi/tikl/wire/control/a$h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 19080
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h$a;->pM()Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 19080
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$h$a;->D(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 19080
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h$a;->pM()Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 19080
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$h$a;->D(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$h;)Lmobi/tikl/wire/control/a$h$a;
    .registers 4

    .prologue
    .line 19162
    invoke-static {}, Lmobi/tikl/wire/control/a$h;->pE()Lmobi/tikl/wire/control/a$h;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 19170
    :goto_6
    return-object p0

    .line 19163
    :cond_7
    invoke-static {p1}, Lmobi/tikl/wire/control/a$h;->b(Lmobi/tikl/wire/control/a$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 19164
    iget-object v0, p0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$h;->b(Lmobi/tikl/wire/control/a$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 19165
    iget-object v0, p0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$h;->a(Lmobi/tikl/wire/control/a$h;Ljava/util/List;)Ljava/util/List;

    .line 19167
    :cond_27
    iget-object v0, p0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$h;->b(Lmobi/tikl/wire/control/a$h;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$h;->b(Lmobi/tikl/wire/control/a$h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19169
    :cond_34
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$h;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$h$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 19080
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h$a;->pM()Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 19080
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$h$a;->F(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 19120
    iget-object v0, p0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$h;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected pL()Lmobi/tikl/wire/control/a$h;
    .registers 2

    .prologue
    .line 19094
    iget-object v0, p0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    return-object v0
.end method

.method public pM()Lmobi/tikl/wire/control/a$h$a;
    .registers 3

    .prologue
    .line 19107
    invoke-static {}, Lmobi/tikl/wire/control/a$h$a;->pK()Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$h$a;->c(Lmobi/tikl/wire/control/a$h;)Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public pN()Lmobi/tikl/wire/control/a$h;
    .registers 2

    .prologue
    .line 19123
    iget-object v0, p0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 19124
    iget-object v0, p0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$h$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 19126
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h$a;->pO()Lmobi/tikl/wire/control/a$h;

    move-result-object v0

    return-object v0
.end method

.method public pO()Lmobi/tikl/wire/control/a$h;
    .registers 3

    .prologue
    .line 19139
    iget-object v0, p0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    if-nez v0, :cond_c

    .line 19140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19143
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$h;->b(Lmobi/tikl/wire/control/a$h;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 19144
    iget-object v0, p0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$h;->b(Lmobi/tikl/wire/control/a$h;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$h;->a(Lmobi/tikl/wire/control/a$h;Ljava/util/List;)Ljava/util/List;

    .line 19147
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    .line 19148
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$h$a;->pA:Lmobi/tikl/wire/control/a$h;

    .line 19149
    return-object v0
.end method
