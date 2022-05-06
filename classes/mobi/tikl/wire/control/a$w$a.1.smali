.class public final Lmobi/tikl/wire/control/a$w$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qC:Lmobi/tikl/wire/control/a$w;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18120
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static tr()Lmobi/tikl/wire/control/a$w$a;
    .registers 3

    .prologue
    .line 18123
    new-instance v0, Lmobi/tikl/wire/control/a$w$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$w$a;-><init>()V

    .line 18124
    new-instance v1, Lmobi/tikl/wire/control/a$w;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$w;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$w$a;->qC:Lmobi/tikl/wire/control/a$w;

    .line 18125
    return-object v0
.end method

.method static synthetic tw()Lmobi/tikl/wire/control/a$w$a;
    .registers 1

    .prologue
    .line 18115
    invoke-static {}, Lmobi/tikl/wire/control/a$w$a;->tr()Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public S(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$w$a;
    .registers 5

    .prologue
    .line 18208
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 18212
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 18213
    sparse-switch v1, :sswitch_data_36

    .line 18218
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$w$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 18220
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$w$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 18221
    :goto_1c
    return-object p0

    .line 18215
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$w$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 18226
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$w$a;->aB(Ljava/lang/String;)Lmobi/tikl/wire/control/a$w$a;

    goto :goto_8

    .line 18230
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$w$a;->z(Z)Lmobi/tikl/wire/control/a$w$a;

    goto :goto_8

    .line 18213
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x10 -> :sswitch_2d
    .end sparse-switch
.end method

.method public U(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$w$a;
    .registers 3

    .prologue
    .line 18184
    instance-of v0, p1, Lmobi/tikl/wire/control/a$w;

    if-eqz v0, :cond_b

    .line 18185
    check-cast p1, Lmobi/tikl/wire/control/a$w;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$w$a;->b(Lmobi/tikl/wire/control/a$w;)Lmobi/tikl/wire/control/a$w$a;

    move-result-object p0

    .line 18188
    :goto_a
    return-object p0

    .line 18187
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 18115
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$w$a;->S(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 18115
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$w$a;->U(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    return-object v0
.end method

.method public aB(Ljava/lang/String;)Lmobi/tikl/wire/control/a$w$a;
    .registers 4

    .prologue
    .line 18246
    if-nez p1, :cond_8

    .line 18247
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18249
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$w$a;->qC:Lmobi/tikl/wire/control/a$w;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$w;->a(Lmobi/tikl/wire/control/a$w;Z)Z

    .line 18250
    iget-object v0, p0, Lmobi/tikl/wire/control/a$w$a;->qC:Lmobi/tikl/wire/control/a$w;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$w;->a(Lmobi/tikl/wire/control/a$w;Ljava/lang/String;)Ljava/lang/String;

    .line 18251
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 18147
    invoke-static {}, Lmobi/tikl/wire/control/a$w;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 18115
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w$a;->ts()Lmobi/tikl/wire/control/a$w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 18115
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w$a;->tt()Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 18115
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w$a;->tu()Lmobi/tikl/wire/control/a$w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 18115
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w$a;->tu()Lmobi/tikl/wire/control/a$w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 18115
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w$a;->tt()Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 18115
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$w$a;->S(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$w;)Lmobi/tikl/wire/control/a$w$a;
    .registers 3

    .prologue
    .line 18193
    invoke-static {}, Lmobi/tikl/wire/control/a$w;->tk()Lmobi/tikl/wire/control/a$w;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 18201
    :goto_6
    return-object p0

    .line 18194
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$w;->pS()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 18195
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$w;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$w$a;->aB(Ljava/lang/String;)Lmobi/tikl/wire/control/a$w$a;

    .line 18197
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$w;->tm()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 18198
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$w;->tn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$w$a;->z(Z)Lmobi/tikl/wire/control/a$w$a;

    .line 18200
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$w;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$w$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 18115
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w$a;->tt()Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 18115
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$w$a;->S(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 18115
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w$a;->tt()Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 18115
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$w$a;->U(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 18155
    iget-object v0, p0, Lmobi/tikl/wire/control/a$w$a;->qC:Lmobi/tikl/wire/control/a$w;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$w;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected ts()Lmobi/tikl/wire/control/a$w;
    .registers 2

    .prologue
    .line 18129
    iget-object v0, p0, Lmobi/tikl/wire/control/a$w$a;->qC:Lmobi/tikl/wire/control/a$w;

    return-object v0
.end method

.method public tt()Lmobi/tikl/wire/control/a$w$a;
    .registers 3

    .prologue
    .line 18142
    invoke-static {}, Lmobi/tikl/wire/control/a$w$a;->tr()Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$w$a;->qC:Lmobi/tikl/wire/control/a$w;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$w$a;->b(Lmobi/tikl/wire/control/a$w;)Lmobi/tikl/wire/control/a$w$a;

    move-result-object v0

    return-object v0
.end method

.method public tu()Lmobi/tikl/wire/control/a$w;
    .registers 2

    .prologue
    .line 18158
    iget-object v0, p0, Lmobi/tikl/wire/control/a$w$a;->qC:Lmobi/tikl/wire/control/a$w;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 18159
    iget-object v0, p0, Lmobi/tikl/wire/control/a$w$a;->qC:Lmobi/tikl/wire/control/a$w;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$w$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 18161
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$w$a;->tv()Lmobi/tikl/wire/control/a$w;

    move-result-object v0

    return-object v0
.end method

.method public tv()Lmobi/tikl/wire/control/a$w;
    .registers 3

    .prologue
    .line 18174
    iget-object v0, p0, Lmobi/tikl/wire/control/a$w$a;->qC:Lmobi/tikl/wire/control/a$w;

    if-nez v0, :cond_c

    .line 18175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18178
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$w$a;->qC:Lmobi/tikl/wire/control/a$w;

    .line 18179
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$w$a;->qC:Lmobi/tikl/wire/control/a$w;

    .line 18180
    return-object v0
.end method

.method public z(Z)Lmobi/tikl/wire/control/a$w$a;
    .registers 4

    .prologue
    .line 18267
    iget-object v0, p0, Lmobi/tikl/wire/control/a$w$a;->qC:Lmobi/tikl/wire/control/a$w;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$w;->b(Lmobi/tikl/wire/control/a$w;Z)Z

    .line 18268
    iget-object v0, p0, Lmobi/tikl/wire/control/a$w$a;->qC:Lmobi/tikl/wire/control/a$w;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$w;->c(Lmobi/tikl/wire/control/a$w;Z)Z

    .line 18269
    return-object p0
.end method
