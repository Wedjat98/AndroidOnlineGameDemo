.class public final Lcom/google/protobuf/f$i$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private bK:Lcom/google/protobuf/f$i;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static dA()Lcom/google/protobuf/f$i$a;
    .registers 3

    .prologue
    .line 165
    new-instance v0, Lcom/google/protobuf/f$i$a;

    invoke-direct {v0}, Lcom/google/protobuf/f$i$a;-><init>()V

    .line 166
    new-instance v1, Lcom/google/protobuf/f$i;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/f$i;-><init>(Lcom/google/protobuf/g;)V

    iput-object v1, v0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    .line 167
    return-object v0
.end method

.method static synthetic dF()Lcom/google/protobuf/f$i$a;
    .registers 1

    .prologue
    .line 157
    invoke-static {}, Lcom/google/protobuf/f$i$a;->dA()Lcom/google/protobuf/f$i$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$i$a;->m(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$i$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$i$a;->o(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$i$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 189
    invoke-static {}, Lcom/google/protobuf/f$i;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/protobuf/f$i$a;->dB()Lcom/google/protobuf/f$i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/protobuf/f$i$a;->dC()Lcom/google/protobuf/f$i$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/protobuf/f$i$a;->dD()Lcom/google/protobuf/f$i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/protobuf/f$i$a;->dD()Lcom/google/protobuf/f$i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/protobuf/f$i$a;->dC()Lcom/google/protobuf/f$i$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$i$a;->m(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$i$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/protobuf/f$i$a;->dC()Lcom/google/protobuf/f$i$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/protobuf/f$i;)Lcom/google/protobuf/f$i$a;
    .registers 4

    .prologue
    .line 239
    invoke-static {}, Lcom/google/protobuf/f$i;->du()Lcom/google/protobuf/f$i;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 247
    :goto_6
    return-object p0

    .line 240
    :cond_7
    invoke-static {p1}, Lcom/google/protobuf/f$i;->b(Lcom/google/protobuf/f$i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 241
    iget-object v0, p0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    invoke-static {v0}, Lcom/google/protobuf/f$i;->b(Lcom/google/protobuf/f$i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 242
    iget-object v0, p0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$i;->a(Lcom/google/protobuf/f$i;Ljava/util/List;)Ljava/util/List;

    .line 244
    :cond_27
    iget-object v0, p0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    invoke-static {v0}, Lcom/google/protobuf/f$i;->b(Lcom/google/protobuf/f$i;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$i;->b(Lcom/google/protobuf/f$i;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 246
    :cond_34
    invoke-virtual {p1}, Lcom/google/protobuf/f$i;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$i$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$i$a;->m(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$i$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/protobuf/f$i$a;->dC()Lcom/google/protobuf/f$i$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$i$a;->o(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$i$a;

    move-result-object v0

    return-object v0
.end method

.method protected dB()Lcom/google/protobuf/f$i;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    return-object v0
.end method

.method public dC()Lcom/google/protobuf/f$i$a;
    .registers 3

    .prologue
    .line 184
    invoke-static {}, Lcom/google/protobuf/f$i$a;->dA()Lcom/google/protobuf/f$i$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/f$i$a;->c(Lcom/google/protobuf/f$i;)Lcom/google/protobuf/f$i$a;

    move-result-object v0

    return-object v0
.end method

.method public dD()Lcom/google/protobuf/f$i;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/f$i$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 201
    iget-object v0, p0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    invoke-static {v0}, Lcom/google/protobuf/f$i$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 203
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$i$a;->dE()Lcom/google/protobuf/f$i;

    move-result-object v0

    return-object v0
.end method

.method public dE()Lcom/google/protobuf/f$i;
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    if-nez v0, :cond_c

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    invoke-static {v0}, Lcom/google/protobuf/f$i;->b(Lcom/google/protobuf/f$i;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 221
    iget-object v0, p0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    iget-object v1, p0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    invoke-static {v1}, Lcom/google/protobuf/f$i;->b(Lcom/google/protobuf/f$i;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$i;->a(Lcom/google/protobuf/f$i;Ljava/util/List;)Ljava/util/List;

    .line 224
    :cond_25
    iget-object v0, p0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    .line 225
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    .line 226
    return-object v0
.end method

.method public i(Lcom/google/protobuf/f$h;)Lcom/google/protobuf/f$i$a;
    .registers 4

    .prologue
    .line 304
    if-nez p1, :cond_8

    .line 305
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 307
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    invoke-static {v0}, Lcom/google/protobuf/f$i;->b(Lcom/google/protobuf/f$i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 308
    iget-object v0, p0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$i;->a(Lcom/google/protobuf/f$i;Ljava/util/List;)Ljava/util/List;

    .line 310
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    invoke-static {v0}, Lcom/google/protobuf/f$i;->b(Lcom/google/protobuf/f$i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    return-object p0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/protobuf/f$i$a;->bK:Lcom/google/protobuf/f$i;

    invoke-virtual {v0}, Lcom/google/protobuf/f$i;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public m(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$i$a;
    .registers 5

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/google/protobuf/f$i$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 258
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 259
    sparse-switch v1, :sswitch_data_34

    .line 264
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/protobuf/f$i$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 266
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$i$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 267
    :goto_1c
    return-object p0

    .line 261
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$i$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 272
    :sswitch_25
    invoke-static {}, Lcom/google/protobuf/f$h;->dk()Lcom/google/protobuf/f$h$a;

    move-result-object v1

    .line 273
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 274
    invoke-virtual {v1}, Lcom/google/protobuf/f$h$a;->ds()Lcom/google/protobuf/f$h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$i$a;->i(Lcom/google/protobuf/f$h;)Lcom/google/protobuf/f$i$a;

    goto :goto_8

    .line 259
    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
    .end sparse-switch
.end method

.method public o(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$i$a;
    .registers 3

    .prologue
    .line 230
    instance-of v0, p1, Lcom/google/protobuf/f$i;

    if-eqz v0, :cond_b

    .line 231
    check-cast p1, Lcom/google/protobuf/f$i;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$i$a;->c(Lcom/google/protobuf/f$i;)Lcom/google/protobuf/f$i$a;

    move-result-object p0

    .line 234
    :goto_a
    return-object p0

    .line 233
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method
