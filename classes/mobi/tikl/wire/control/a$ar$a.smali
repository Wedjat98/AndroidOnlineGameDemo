.class public final Lmobi/tikl/wire/control/a$ar$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private wc:Lmobi/tikl/wire/control/a$ar;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17116
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static GP()Lmobi/tikl/wire/control/a$ar$a;
    .registers 3

    .prologue
    .line 17119
    new-instance v0, Lmobi/tikl/wire/control/a$ar$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ar$a;-><init>()V

    .line 17120
    new-instance v1, Lmobi/tikl/wire/control/a$ar;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$ar;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    .line 17121
    return-object v0
.end method

.method static synthetic GU()Lmobi/tikl/wire/control/a$ar$a;
    .registers 1

    .prologue
    .line 17111
    invoke-static {}, Lmobi/tikl/wire/control/a$ar$a;->GP()Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected GQ()Lmobi/tikl/wire/control/a$ar;
    .registers 2

    .prologue
    .line 17125
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    return-object v0
.end method

.method public GR()Lmobi/tikl/wire/control/a$ar$a;
    .registers 3

    .prologue
    .line 17138
    invoke-static {}, Lmobi/tikl/wire/control/a$ar$a;->GP()Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ar$a;->c(Lmobi/tikl/wire/control/a$ar;)Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    return-object v0
.end method

.method public GS()Lmobi/tikl/wire/control/a$ar;
    .registers 2

    .prologue
    .line 17154
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 17155
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ar$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 17157
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar$a;->GT()Lmobi/tikl/wire/control/a$ar;

    move-result-object v0

    return-object v0
.end method

.method public GT()Lmobi/tikl/wire/control/a$ar;
    .registers 3

    .prologue
    .line 17170
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    if-nez v0, :cond_c

    .line 17171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17174
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ar;->b(Lmobi/tikl/wire/control/a$ar;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 17175
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ar;->b(Lmobi/tikl/wire/control/a$ar;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ar;->a(Lmobi/tikl/wire/control/a$ar;Ljava/util/List;)Ljava/util/List;

    .line 17178
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    .line 17179
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    .line 17180
    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 17111
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ar$a;->aN(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 17111
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ar$a;->aP(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    return-object v0
.end method

.method public aM(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ar$a;
    .registers 4

    .prologue
    .line 17258
    if-nez p1, :cond_8

    .line 17259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17261
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ar;->b(Lmobi/tikl/wire/control/a$ar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 17262
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ar;->a(Lmobi/tikl/wire/control/a$ar;Ljava/util/List;)Ljava/util/List;

    .line 17264
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ar;->b(Lmobi/tikl/wire/control/a$ar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17265
    return-object p0
.end method

.method public aN(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ar$a;
    .registers 5

    .prologue
    .line 17208
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 17212
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 17213
    sparse-switch v1, :sswitch_data_34

    .line 17218
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$ar$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 17220
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ar$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 17221
    :goto_1c
    return-object p0

    .line 17215
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ar$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 17226
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 17227
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 17228
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ar$a;->aM(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ar$a;

    goto :goto_8

    .line 17213
    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
    .end sparse-switch
.end method

.method public aP(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ar$a;
    .registers 3

    .prologue
    .line 17184
    instance-of v0, p1, Lmobi/tikl/wire/control/a$ar;

    if-eqz v0, :cond_b

    .line 17185
    check-cast p1, Lmobi/tikl/wire/control/a$ar;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ar$a;->c(Lmobi/tikl/wire/control/a$ar;)Lmobi/tikl/wire/control/a$ar$a;

    move-result-object p0

    .line 17188
    :goto_a
    return-object p0

    .line 17187
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 17143
    invoke-static {}, Lmobi/tikl/wire/control/a$ar;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 17111
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar$a;->GQ()Lmobi/tikl/wire/control/a$ar;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 17111
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar$a;->GR()Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 17111
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar$a;->GS()Lmobi/tikl/wire/control/a$ar;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 17111
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar$a;->GS()Lmobi/tikl/wire/control/a$ar;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 17111
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar$a;->GR()Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 17111
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ar$a;->aN(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 17111
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar$a;->GR()Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 17111
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ar$a;->aN(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$ar;)Lmobi/tikl/wire/control/a$ar$a;
    .registers 4

    .prologue
    .line 17193
    invoke-static {}, Lmobi/tikl/wire/control/a$ar;->GJ()Lmobi/tikl/wire/control/a$ar;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 17201
    :goto_6
    return-object p0

    .line 17194
    :cond_7
    invoke-static {p1}, Lmobi/tikl/wire/control/a$ar;->b(Lmobi/tikl/wire/control/a$ar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 17195
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ar;->b(Lmobi/tikl/wire/control/a$ar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 17196
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ar;->a(Lmobi/tikl/wire/control/a$ar;Ljava/util/List;)Ljava/util/List;

    .line 17198
    :cond_27
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ar;->b(Lmobi/tikl/wire/control/a$ar;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$ar;->b(Lmobi/tikl/wire/control/a$ar;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17200
    :cond_34
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ar;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ar$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 17111
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar$a;->GR()Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 17111
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ar$a;->aP(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 17151
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ar$a;->wc:Lmobi/tikl/wire/control/a$ar;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ar;->isInitialized()Z

    move-result v0

    return v0
.end method
