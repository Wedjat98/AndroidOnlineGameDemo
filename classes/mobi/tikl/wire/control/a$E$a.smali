.class public final Lmobi/tikl/wire/control/a$E$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qX:Lmobi/tikl/wire/control/a$E;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 10173
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static vg()Lmobi/tikl/wire/control/a$E$a;
    .registers 3

    .prologue
    .line 10176
    new-instance v0, Lmobi/tikl/wire/control/a$E$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$E$a;-><init>()V

    .line 10177
    new-instance v1, Lmobi/tikl/wire/control/a$E;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$E;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$E$a;->qX:Lmobi/tikl/wire/control/a$E;

    .line 10178
    return-object v0
.end method

.method static synthetic vl()Lmobi/tikl/wire/control/a$E$a;
    .registers 1

    .prologue
    .line 10168
    invoke-static {}, Lmobi/tikl/wire/control/a$E$a;->vg()Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 10168
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$E$a;->aa(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 10168
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$E$a;->ac(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 10200
    invoke-static {}, Lmobi/tikl/wire/control/a$E;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 10168
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E$a;->vh()Lmobi/tikl/wire/control/a$E;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 10168
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E$a;->vi()Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 10168
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E$a;->vj()Lmobi/tikl/wire/control/a$E;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 10168
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E$a;->vj()Lmobi/tikl/wire/control/a$E;

    move-result-object v0

    return-object v0
.end method

.method public aa(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$E$a;
    .registers 5

    .prologue
    .line 10258
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 10262
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 10263
    sparse-switch v1, :sswitch_data_2e

    .line 10268
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$E$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 10270
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$E$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 10271
    :goto_1c
    return-object p0

    .line 10265
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$E$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 10276
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$E$a;->ba(I)Lmobi/tikl/wire/control/a$E$a;

    goto :goto_8

    .line 10263
    nop

    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
    .end sparse-switch
.end method

.method public ac(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$E$a;
    .registers 3

    .prologue
    .line 10237
    instance-of v0, p1, Lmobi/tikl/wire/control/a$E;

    if-eqz v0, :cond_b

    .line 10238
    check-cast p1, Lmobi/tikl/wire/control/a$E;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$E$a;->b(Lmobi/tikl/wire/control/a$E;)Lmobi/tikl/wire/control/a$E$a;

    move-result-object p0

    .line 10241
    :goto_a
    return-object p0

    .line 10240
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 10168
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E$a;->vi()Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 10168
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$E$a;->aa(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$E;)Lmobi/tikl/wire/control/a$E$a;
    .registers 3

    .prologue
    .line 10246
    invoke-static {}, Lmobi/tikl/wire/control/a$E;->vb()Lmobi/tikl/wire/control/a$E;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 10251
    :goto_6
    return-object p0

    .line 10247
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$E;->rc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 10248
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$E;->jQ()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$E$a;->ba(I)Lmobi/tikl/wire/control/a$E$a;

    .line 10250
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$E;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$E$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public ba(I)Lmobi/tikl/wire/control/a$E$a;
    .registers 4

    .prologue
    .line 10292
    iget-object v0, p0, Lmobi/tikl/wire/control/a$E$a;->qX:Lmobi/tikl/wire/control/a$E;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$E;->a(Lmobi/tikl/wire/control/a$E;Z)Z

    .line 10293
    iget-object v0, p0, Lmobi/tikl/wire/control/a$E$a;->qX:Lmobi/tikl/wire/control/a$E;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$E;->a(Lmobi/tikl/wire/control/a$E;I)I

    .line 10294
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 10168
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E$a;->vi()Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 10168
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$E$a;->aa(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 10168
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E$a;->vi()Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 10168
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$E$a;->ac(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 10208
    iget-object v0, p0, Lmobi/tikl/wire/control/a$E$a;->qX:Lmobi/tikl/wire/control/a$E;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$E;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected vh()Lmobi/tikl/wire/control/a$E;
    .registers 2

    .prologue
    .line 10182
    iget-object v0, p0, Lmobi/tikl/wire/control/a$E$a;->qX:Lmobi/tikl/wire/control/a$E;

    return-object v0
.end method

.method public vi()Lmobi/tikl/wire/control/a$E$a;
    .registers 3

    .prologue
    .line 10195
    invoke-static {}, Lmobi/tikl/wire/control/a$E$a;->vg()Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$E$a;->qX:Lmobi/tikl/wire/control/a$E;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$E$a;->b(Lmobi/tikl/wire/control/a$E;)Lmobi/tikl/wire/control/a$E$a;

    move-result-object v0

    return-object v0
.end method

.method public vj()Lmobi/tikl/wire/control/a$E;
    .registers 2

    .prologue
    .line 10211
    iget-object v0, p0, Lmobi/tikl/wire/control/a$E$a;->qX:Lmobi/tikl/wire/control/a$E;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 10212
    iget-object v0, p0, Lmobi/tikl/wire/control/a$E$a;->qX:Lmobi/tikl/wire/control/a$E;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$E$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 10214
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$E$a;->vk()Lmobi/tikl/wire/control/a$E;

    move-result-object v0

    return-object v0
.end method

.method public vk()Lmobi/tikl/wire/control/a$E;
    .registers 3

    .prologue
    .line 10227
    iget-object v0, p0, Lmobi/tikl/wire/control/a$E$a;->qX:Lmobi/tikl/wire/control/a$E;

    if-nez v0, :cond_c

    .line 10228
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10231
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$E$a;->qX:Lmobi/tikl/wire/control/a$E;

    .line 10232
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$E$a;->qX:Lmobi/tikl/wire/control/a$E;

    .line 10233
    return-object v0
.end method
