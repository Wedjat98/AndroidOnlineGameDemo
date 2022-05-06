.class public final Lmobi/tikl/wire/control/a$L$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private rG:Lmobi/tikl/wire/control/a$L;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26024
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static wY()Lmobi/tikl/wire/control/a$L$a;
    .registers 3

    .prologue
    .line 26027
    new-instance v0, Lmobi/tikl/wire/control/a$L$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$L$a;-><init>()V

    .line 26028
    new-instance v1, Lmobi/tikl/wire/control/a$L;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$L;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    .line 26029
    return-object v0
.end method

.method static synthetic xd()Lmobi/tikl/wire/control/a$L$a;
    .registers 1

    .prologue
    .line 26019
    invoke-static {}, Lmobi/tikl/wire/control/a$L$a;->wY()Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public P(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$L$a;
    .registers 4

    .prologue
    .line 26208
    if-nez p1, :cond_8

    .line 26209
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26211
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$L;->b(Lmobi/tikl/wire/control/a$L;Z)Z

    .line 26212
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$L;->a(Lmobi/tikl/wire/control/a$L;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 26213
    return-object p0
.end method

.method public Q(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$L$a;
    .registers 4

    .prologue
    .line 26221
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$L;->rd()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$L;->b(Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 26223
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$L;->b(Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$L;->a(Lmobi/tikl/wire/control/a$L;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 26228
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$L;->b(Lmobi/tikl/wire/control/a$L;Z)Z

    .line 26229
    return-object p0

    .line 26226
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$L;->a(Lmobi/tikl/wire/control/a$L;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 26019
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$L$a;->ah(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 26019
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$L$a;->aj(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    return-object v0
.end method

.method public aS(Ljava/lang/String;)Lmobi/tikl/wire/control/a$L$a;
    .registers 4

    .prologue
    .line 26245
    if-nez p1, :cond_8

    .line 26246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26248
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$L;->c(Lmobi/tikl/wire/control/a$L;Z)Z

    .line 26249
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$L;->a(Lmobi/tikl/wire/control/a$L;Ljava/lang/String;)Ljava/lang/String;

    .line 26250
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 26051
    invoke-static {}, Lmobi/tikl/wire/control/a$L;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public aT(Ljava/lang/String;)Lmobi/tikl/wire/control/a$L$a;
    .registers 4

    .prologue
    .line 26266
    if-nez p1, :cond_8

    .line 26267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26269
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$L;->d(Lmobi/tikl/wire/control/a$L;Z)Z

    .line 26270
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$L;->b(Lmobi/tikl/wire/control/a$L;Ljava/lang/String;)Ljava/lang/String;

    .line 26271
    return-object p0
.end method

.method public aU(Ljava/lang/String;)Lmobi/tikl/wire/control/a$L$a;
    .registers 4

    .prologue
    .line 26287
    if-nez p1, :cond_8

    .line 26288
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26290
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$L;->e(Lmobi/tikl/wire/control/a$L;Z)Z

    .line 26291
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$L;->c(Lmobi/tikl/wire/control/a$L;Ljava/lang/String;)Ljava/lang/String;

    .line 26292
    return-object p0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 26019
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L$a;->wZ()Lmobi/tikl/wire/control/a$L;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 26019
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L$a;->xa()Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 26019
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L$a;->xb()Lmobi/tikl/wire/control/a$L;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 26019
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L$a;->xb()Lmobi/tikl/wire/control/a$L;

    move-result-object v0

    return-object v0
.end method

.method public ah(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$L$a;
    .registers 6

    .prologue
    .line 26127
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 26131
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 26132
    sparse-switch v1, :sswitch_data_72

    .line 26137
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$L$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 26139
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$L$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 26140
    :goto_1c
    return-object p0

    .line 26134
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$L$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 26145
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$L$a;->bi(I)Lmobi/tikl/wire/control/a$L$a;

    goto :goto_8

    .line 26149
    :sswitch_2d
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 26150
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L$a;->rd()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 26151
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L$a;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 26153
    :cond_3e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 26154
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$L$a;->P(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$L$a;

    goto :goto_8

    .line 26158
    :sswitch_49
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$L$a;->aS(Ljava/lang/String;)Lmobi/tikl/wire/control/a$L$a;

    goto :goto_8

    .line 26162
    :sswitch_51
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$L$a;->aT(Ljava/lang/String;)Lmobi/tikl/wire/control/a$L$a;

    goto :goto_8

    .line 26166
    :sswitch_59
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$L$a;->aU(Ljava/lang/String;)Lmobi/tikl/wire/control/a$L$a;

    goto :goto_8

    .line 26170
    :sswitch_61
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$L$a;->bj(I)Lmobi/tikl/wire/control/a$L$a;

    goto :goto_8

    .line 26174
    :sswitch_69
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$L$a;->bk(I)Lmobi/tikl/wire/control/a$L$a;

    goto :goto_8

    .line 26132
    nop

    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_49
        0x22 -> :sswitch_51
        0x2a -> :sswitch_59
        0x30 -> :sswitch_61
        0x38 -> :sswitch_69
    .end sparse-switch
.end method

.method public aj(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$L$a;
    .registers 3

    .prologue
    .line 26088
    instance-of v0, p1, Lmobi/tikl/wire/control/a$L;

    if-eqz v0, :cond_b

    .line 26089
    check-cast p1, Lmobi/tikl/wire/control/a$L;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$L$a;->c(Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$L$a;

    move-result-object p0

    .line 26092
    :goto_a
    return-object p0

    .line 26091
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 26019
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L$a;->xa()Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 26019
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$L$a;->ah(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    return-object v0
.end method

.method public bi(I)Lmobi/tikl/wire/control/a$L$a;
    .registers 4

    .prologue
    .line 26190
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$L;->a(Lmobi/tikl/wire/control/a$L;Z)Z

    .line 26191
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$L;->a(Lmobi/tikl/wire/control/a$L;I)I

    .line 26192
    return-object p0
.end method

.method public bj(I)Lmobi/tikl/wire/control/a$L$a;
    .registers 4

    .prologue
    .line 26308
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$L;->f(Lmobi/tikl/wire/control/a$L;Z)Z

    .line 26309
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$L;->b(Lmobi/tikl/wire/control/a$L;I)I

    .line 26310
    return-object p0
.end method

.method public bk(I)Lmobi/tikl/wire/control/a$L$a;
    .registers 4

    .prologue
    .line 26326
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$L;->g(Lmobi/tikl/wire/control/a$L;Z)Z

    .line 26327
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$L;->c(Lmobi/tikl/wire/control/a$L;I)I

    .line 26328
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 26019
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L$a;->xa()Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 26019
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$L$a;->ah(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$L$a;
    .registers 3

    .prologue
    .line 26097
    invoke-static {}, Lmobi/tikl/wire/control/a$L;->wR()Lmobi/tikl/wire/control/a$L;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 26120
    :goto_6
    return-object p0

    .line 26098
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$L;->rc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 26099
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$L;->jQ()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$L$a;->bi(I)Lmobi/tikl/wire/control/a$L$a;

    .line 26101
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$L;->rd()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 26102
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$L;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$L$a;->Q(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$L$a;

    .line 26104
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$L;->wT()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 26105
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$L;->wU()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$L$a;->aS(Ljava/lang/String;)Lmobi/tikl/wire/control/a$L$a;

    .line 26107
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$L;->rf()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 26108
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$L;->rg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$L$a;->aT(Ljava/lang/String;)Lmobi/tikl/wire/control/a$L$a;

    .line 26110
    :cond_3b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$L;->rh()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 26111
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$L;->jk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$L$a;->aU(Ljava/lang/String;)Lmobi/tikl/wire/control/a$L$a;

    .line 26113
    :cond_48
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$L;->ri()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 26114
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$L;->jl()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$L$a;->bj(I)Lmobi/tikl/wire/control/a$L$a;

    .line 26116
    :cond_55
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$L;->rj()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 26117
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$L;->rk()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$L$a;->bk(I)Lmobi/tikl/wire/control/a$L$a;

    .line 26119
    :cond_62
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$L;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$L$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26019
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L$a;->xa()Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 26019
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$L$a;->aj(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 26059
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$L;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public rd()Z
    .registers 2

    .prologue
    .line 26202
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$L;->rd()Z

    move-result v0

    return v0
.end method

.method public re()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 26205
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$L;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected wZ()Lmobi/tikl/wire/control/a$L;
    .registers 2

    .prologue
    .line 26033
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    return-object v0
.end method

.method public xa()Lmobi/tikl/wire/control/a$L$a;
    .registers 3

    .prologue
    .line 26046
    invoke-static {}, Lmobi/tikl/wire/control/a$L$a;->wY()Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$L$a;->c(Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$L$a;

    move-result-object v0

    return-object v0
.end method

.method public xb()Lmobi/tikl/wire/control/a$L;
    .registers 2

    .prologue
    .line 26062
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 26063
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$L$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 26065
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$L$a;->xc()Lmobi/tikl/wire/control/a$L;

    move-result-object v0

    return-object v0
.end method

.method public xc()Lmobi/tikl/wire/control/a$L;
    .registers 3

    .prologue
    .line 26078
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    if-nez v0, :cond_c

    .line 26079
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26082
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    .line 26083
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$L$a;->rG:Lmobi/tikl/wire/control/a$L;

    .line 26084
    return-object v0
.end method
