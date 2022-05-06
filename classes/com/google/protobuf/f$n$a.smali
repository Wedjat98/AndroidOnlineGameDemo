.class public final Lcom/google/protobuf/f$n$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private cw:Lcom/google/protobuf/f$n;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4098
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static fd()Lcom/google/protobuf/f$n$a;
    .registers 3

    .prologue
    .line 4101
    new-instance v0, Lcom/google/protobuf/f$n$a;

    invoke-direct {v0}, Lcom/google/protobuf/f$n$a;-><init>()V

    .line 4102
    new-instance v1, Lcom/google/protobuf/f$n;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/f$n;-><init>(Lcom/google/protobuf/g;)V

    iput-object v1, v0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    .line 4103
    return-object v0
.end method

.method static synthetic fi()Lcom/google/protobuf/f$n$a;
    .registers 1

    .prologue
    .line 4093
    invoke-static {}, Lcom/google/protobuf/f$n$a;->fd()Lcom/google/protobuf/f$n$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 4093
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$n$a;->r(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$n$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 4093
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$n$a;->t(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$n$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/f$o;)Lcom/google/protobuf/f$n$a;
    .registers 4

    .prologue
    .line 4317
    if-nez p1, :cond_8

    .line 4318
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4320
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$n;->b(Lcom/google/protobuf/f$n;Z)Z

    .line 4321
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$n;->a(Lcom/google/protobuf/f$n;Lcom/google/protobuf/f$o;)Lcom/google/protobuf/f$o;

    .line 4322
    return-object p0
.end method

.method public aH()Z
    .registers 2

    .prologue
    .line 4311
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    invoke-virtual {v0}, Lcom/google/protobuf/f$n;->aH()Z

    move-result v0

    return v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 4125
    invoke-static {}, Lcom/google/protobuf/f$n;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 4093
    invoke-virtual {p0}, Lcom/google/protobuf/f$n$a;->fe()Lcom/google/protobuf/f$n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 4093
    invoke-virtual {p0}, Lcom/google/protobuf/f$n$a;->ff()Lcom/google/protobuf/f$n$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 4093
    invoke-virtual {p0}, Lcom/google/protobuf/f$n$a;->fg()Lcom/google/protobuf/f$n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 4093
    invoke-virtual {p0}, Lcom/google/protobuf/f$n$a;->fg()Lcom/google/protobuf/f$n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 4093
    invoke-virtual {p0}, Lcom/google/protobuf/f$n$a;->ff()Lcom/google/protobuf/f$n$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 4093
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$n$a;->r(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$n$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/protobuf/f$o;)Lcom/google/protobuf/f$n$a;
    .registers 4

    .prologue
    .line 4330
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    invoke-virtual {v0}, Lcom/google/protobuf/f$n;->aH()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    invoke-static {v0}, Lcom/google/protobuf/f$n;->d(Lcom/google/protobuf/f$n;)Lcom/google/protobuf/f$o;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/f$o;->fj()Lcom/google/protobuf/f$o;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 4332
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    iget-object v1, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    invoke-static {v1}, Lcom/google/protobuf/f$n;->d(Lcom/google/protobuf/f$n;)Lcom/google/protobuf/f$o;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/f$o;->c(Lcom/google/protobuf/f$o;)Lcom/google/protobuf/f$o$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/f$o$a;->e(Lcom/google/protobuf/f$o;)Lcom/google/protobuf/f$o$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/f$o$a;->fs()Lcom/google/protobuf/f$o;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$n;->a(Lcom/google/protobuf/f$n;Lcom/google/protobuf/f$o;)Lcom/google/protobuf/f$o;

    .line 4337
    :goto_2b
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$n;->b(Lcom/google/protobuf/f$n;Z)Z

    .line 4338
    return-object p0

    .line 4335
    :cond_32
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$n;->a(Lcom/google/protobuf/f$n;Lcom/google/protobuf/f$o;)Lcom/google/protobuf/f$o;

    goto :goto_2b
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 4093
    invoke-virtual {p0}, Lcom/google/protobuf/f$n$a;->ff()Lcom/google/protobuf/f$n$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 4093
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$n$a;->r(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$n$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 4093
    invoke-virtual {p0}, Lcom/google/protobuf/f$n$a;->ff()Lcom/google/protobuf/f$n$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/protobuf/f$l;)Lcom/google/protobuf/f$n$a;
    .registers 4

    .prologue
    .line 4280
    if-nez p1, :cond_8

    .line 4281
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4283
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    invoke-static {v0}, Lcom/google/protobuf/f$n;->c(Lcom/google/protobuf/f$n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4284
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$n;->a(Lcom/google/protobuf/f$n;Ljava/util/List;)Ljava/util/List;

    .line 4286
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    invoke-static {v0}, Lcom/google/protobuf/f$n;->c(Lcom/google/protobuf/f$n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4287
    return-object p0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 4093
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$n$a;->t(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$n$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/google/protobuf/f$n;)Lcom/google/protobuf/f$n$a;
    .registers 4

    .prologue
    .line 4175
    invoke-static {}, Lcom/google/protobuf/f$n;->eV()Lcom/google/protobuf/f$n;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4189
    :goto_6
    return-object p0

    .line 4176
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/f$n;->hasName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4177
    invoke-virtual {p1}, Lcom/google/protobuf/f$n;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$n$a;->z(Ljava/lang/String;)Lcom/google/protobuf/f$n$a;

    .line 4179
    :cond_14
    invoke-static {p1}, Lcom/google/protobuf/f$n;->c(Lcom/google/protobuf/f$n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 4180
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    invoke-static {v0}, Lcom/google/protobuf/f$n;->c(Lcom/google/protobuf/f$n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 4181
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$n;->a(Lcom/google/protobuf/f$n;Ljava/util/List;)Ljava/util/List;

    .line 4183
    :cond_34
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    invoke-static {v0}, Lcom/google/protobuf/f$n;->c(Lcom/google/protobuf/f$n;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$n;->c(Lcom/google/protobuf/f$n;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4185
    :cond_41
    invoke-virtual {p1}, Lcom/google/protobuf/f$n;->aH()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 4186
    invoke-virtual {p1}, Lcom/google/protobuf/f$n;->eZ()Lcom/google/protobuf/f$o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$n$a;->b(Lcom/google/protobuf/f$o;)Lcom/google/protobuf/f$n$a;

    .line 4188
    :cond_4e
    invoke-virtual {p1}, Lcom/google/protobuf/f$n;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$n$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public eZ()Lcom/google/protobuf/f$o;
    .registers 2

    .prologue
    .line 4314
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    invoke-virtual {v0}, Lcom/google/protobuf/f$n;->eZ()Lcom/google/protobuf/f$o;

    move-result-object v0

    return-object v0
.end method

.method protected fe()Lcom/google/protobuf/f$n;
    .registers 2

    .prologue
    .line 4107
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    return-object v0
.end method

.method public ff()Lcom/google/protobuf/f$n$a;
    .registers 3

    .prologue
    .line 4120
    invoke-static {}, Lcom/google/protobuf/f$n$a;->fd()Lcom/google/protobuf/f$n$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/f$n$a;->e(Lcom/google/protobuf/f$n;)Lcom/google/protobuf/f$n$a;

    move-result-object v0

    return-object v0
.end method

.method public fg()Lcom/google/protobuf/f$n;
    .registers 2

    .prologue
    .line 4136
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/f$n$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 4137
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    invoke-static {v0}, Lcom/google/protobuf/f$n$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 4139
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$n$a;->fh()Lcom/google/protobuf/f$n;

    move-result-object v0

    return-object v0
.end method

.method public fh()Lcom/google/protobuf/f$n;
    .registers 3

    .prologue
    .line 4152
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    if-nez v0, :cond_c

    .line 4153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4156
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    invoke-static {v0}, Lcom/google/protobuf/f$n;->c(Lcom/google/protobuf/f$n;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 4157
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    iget-object v1, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    invoke-static {v1}, Lcom/google/protobuf/f$n;->c(Lcom/google/protobuf/f$n;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$n;->a(Lcom/google/protobuf/f$n;Ljava/util/List;)Ljava/util/List;

    .line 4160
    :cond_25
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    .line 4161
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    .line 4162
    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 4133
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    invoke-virtual {v0}, Lcom/google/protobuf/f$n;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public r(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$n$a;
    .registers 6

    .prologue
    .line 4196
    invoke-virtual {p0}, Lcom/google/protobuf/f$n$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 4200
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 4201
    sparse-switch v1, :sswitch_data_58

    .line 4206
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/protobuf/f$n$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 4208
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$n$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 4209
    :goto_1c
    return-object p0

    .line 4203
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$n$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 4214
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$n$a;->z(Ljava/lang/String;)Lcom/google/protobuf/f$n$a;

    goto :goto_8

    .line 4218
    :sswitch_2d
    invoke-static {}, Lcom/google/protobuf/f$l;->eB()Lcom/google/protobuf/f$l$a;

    move-result-object v1

    .line 4219
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 4220
    invoke-virtual {v1}, Lcom/google/protobuf/f$l$a;->eI()Lcom/google/protobuf/f$l;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$n$a;->d(Lcom/google/protobuf/f$l;)Lcom/google/protobuf/f$n$a;

    goto :goto_8

    .line 4224
    :sswitch_3c
    invoke-static {}, Lcom/google/protobuf/f$o;->fl()Lcom/google/protobuf/f$o$a;

    move-result-object v1

    .line 4225
    invoke-virtual {p0}, Lcom/google/protobuf/f$n$a;->aH()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 4226
    invoke-virtual {p0}, Lcom/google/protobuf/f$n$a;->eZ()Lcom/google/protobuf/f$o;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/f$o$a;->e(Lcom/google/protobuf/f$o;)Lcom/google/protobuf/f$o$a;

    .line 4228
    :cond_4d
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 4229
    invoke-virtual {v1}, Lcom/google/protobuf/f$o$a;->fs()Lcom/google/protobuf/f$o;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$n$a;->a(Lcom/google/protobuf/f$o;)Lcom/google/protobuf/f$n$a;

    goto :goto_8

    .line 4201
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_3c
    .end sparse-switch
.end method

.method public t(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$n$a;
    .registers 3

    .prologue
    .line 4166
    instance-of v0, p1, Lcom/google/protobuf/f$n;

    if-eqz v0, :cond_b

    .line 4167
    check-cast p1, Lcom/google/protobuf/f$n;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$n$a;->e(Lcom/google/protobuf/f$n;)Lcom/google/protobuf/f$n$a;

    move-result-object p0

    .line 4170
    :goto_a
    return-object p0

    .line 4169
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public z(Ljava/lang/String;)Lcom/google/protobuf/f$n$a;
    .registers 4

    .prologue
    .line 4245
    if-nez p1, :cond_8

    .line 4246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4248
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$n;->a(Lcom/google/protobuf/f$n;Z)Z

    .line 4249
    iget-object v0, p0, Lcom/google/protobuf/f$n$a;->cw:Lcom/google/protobuf/f$n;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$n;->a(Lcom/google/protobuf/f$n;Ljava/lang/String;)Ljava/lang/String;

    .line 4250
    return-object p0
.end method
