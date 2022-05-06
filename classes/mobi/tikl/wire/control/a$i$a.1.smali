.class public final Lmobi/tikl/wire/control/a$i$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private pE:Lmobi/tikl/wire/control/a$i;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11998
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static pX()Lmobi/tikl/wire/control/a$i$a;
    .registers 3

    .prologue
    .line 12001
    new-instance v0, Lmobi/tikl/wire/control/a$i$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$i$a;-><init>()V

    .line 12002
    new-instance v1, Lmobi/tikl/wire/control/a$i;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$i;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    .line 12003
    return-object v0
.end method

.method static synthetic qc()Lmobi/tikl/wire/control/a$i$a;
    .registers 1

    .prologue
    .line 11993
    invoke-static {}, Lmobi/tikl/wire/control/a$i$a;->pX()Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public E(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$i$a;
    .registers 6

    .prologue
    .line 12146
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 12150
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 12151
    sparse-switch v1, :sswitch_data_10a

    .line 12156
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$i$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 12158
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 12159
    :goto_1c
    return-object p0

    .line 12153
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 12164
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->aE(I)Lmobi/tikl/wire/control/a$i$a;

    goto :goto_8

    .line 12168
    :sswitch_2d
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 12169
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i$a;->od()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 12170
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i$a;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 12172
    :cond_3e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 12173
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->k(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$i$a;

    goto :goto_8

    .line 12177
    :sswitch_49
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->ab(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    goto :goto_8

    .line 12181
    :sswitch_51
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->ac(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    goto :goto_8

    .line 12185
    :sswitch_59
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->aF(I)Lmobi/tikl/wire/control/a$i$a;

    goto :goto_8

    .line 12189
    :sswitch_61
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->ad(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    goto :goto_8

    .line 12193
    :sswitch_69
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->ae(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    goto :goto_8

    .line 12197
    :sswitch_71
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->aG(I)Lmobi/tikl/wire/control/a$i$a;

    goto :goto_8

    .line 12201
    :sswitch_79
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->aH(I)Lmobi/tikl/wire/control/a$i$a;

    goto :goto_8

    .line 12205
    :sswitch_81
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->aI(I)Lmobi/tikl/wire/control/a$i$a;

    goto :goto_8

    .line 12209
    :sswitch_89
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->af(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    goto/16 :goto_8

    .line 12213
    :sswitch_92
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->ag(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    goto/16 :goto_8

    .line 12217
    :sswitch_9b
    invoke-static {}, Lmobi/tikl/wire/control/a$P;->yo()Lmobi/tikl/wire/control/a$P$a;

    move-result-object v1

    .line 12218
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i$a;->ot()Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 12219
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i$a;->ou()Lmobi/tikl/wire/control/a$P;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$P$a;->f(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P$a;

    .line 12221
    :cond_ac
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 12222
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$P$a;->yv()Lmobi/tikl/wire/control/a$P;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->c(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$i$a;

    goto/16 :goto_8

    .line 12226
    :sswitch_b8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->ah(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    goto/16 :goto_8

    .line 12230
    :sswitch_c1
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->ai(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    goto/16 :goto_8

    .line 12234
    :sswitch_ca
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->aj(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    goto/16 :goto_8

    .line 12238
    :sswitch_d3
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->aJ(I)Lmobi/tikl/wire/control/a$i$a;

    goto/16 :goto_8

    .line 12242
    :sswitch_dc
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->w(Z)Lmobi/tikl/wire/control/a$i$a;

    goto/16 :goto_8

    .line 12246
    :sswitch_e5
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->x(Z)Lmobi/tikl/wire/control/a$i$a;

    goto/16 :goto_8

    .line 12250
    :sswitch_ee
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->ak(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    goto/16 :goto_8

    .line 12254
    :sswitch_f7
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->aK(I)Lmobi/tikl/wire/control/a$i$a;

    goto/16 :goto_8

    .line 12258
    :sswitch_100
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$i$a;->y(Z)Lmobi/tikl/wire/control/a$i$a;

    goto/16 :goto_8

    .line 12151
    nop

    :sswitch_data_10a
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_49
        0x22 -> :sswitch_51
        0x28 -> :sswitch_59
        0x32 -> :sswitch_61
        0x3a -> :sswitch_69
        0x40 -> :sswitch_71
        0x48 -> :sswitch_79
        0x50 -> :sswitch_81
        0x5a -> :sswitch_89
        0x62 -> :sswitch_92
        0xa2 -> :sswitch_9b
        0xf2 -> :sswitch_b8
        0xfa -> :sswitch_c1
        0x142 -> :sswitch_ca
        0x320 -> :sswitch_d3
        0x328 -> :sswitch_dc
        0x330 -> :sswitch_e5
        0x33a -> :sswitch_ee
        0x340 -> :sswitch_f7
        0x3c0 -> :sswitch_100
    .end sparse-switch
.end method

.method public G(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$i$a;
    .registers 3

    .prologue
    .line 12062
    instance-of v0, p1, Lmobi/tikl/wire/control/a$i;

    if-eqz v0, :cond_b

    .line 12063
    check-cast p1, Lmobi/tikl/wire/control/a$i;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$i$a;->e(Lmobi/tikl/wire/control/a$i;)Lmobi/tikl/wire/control/a$i$a;

    move-result-object p0

    .line 12066
    :goto_a
    return-object p0

    .line 12065
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 11993
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$i$a;->E(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 11993
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$i$a;->G(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method public aE(I)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12274
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->a(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12275
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->a(Lmobi/tikl/wire/control/a$i;I)I

    .line 12276
    return-object p0
.end method

.method public aF(I)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12371
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->e(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12372
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->b(Lmobi/tikl/wire/control/a$i;I)I

    .line 12373
    return-object p0
.end method

.method public aG(I)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12431
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->h(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12432
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->c(Lmobi/tikl/wire/control/a$i;I)I

    .line 12433
    return-object p0
.end method

.method public aH(I)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12449
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->i(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12450
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->d(Lmobi/tikl/wire/control/a$i;I)I

    .line 12451
    return-object p0
.end method

.method public aI(I)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12467
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->j(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12468
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->e(Lmobi/tikl/wire/control/a$i;I)I

    .line 12469
    return-object p0
.end method

.method public aJ(I)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12627
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->q(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12628
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->f(Lmobi/tikl/wire/control/a$i;I)I

    .line 12629
    return-object p0
.end method

.method public aK(I)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12702
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->w(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12703
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->g(Lmobi/tikl/wire/control/a$i;I)I

    .line 12704
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 12025
    invoke-static {}, Lmobi/tikl/wire/control/a$i;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 11993
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i$a;->pY()Lmobi/tikl/wire/control/a$i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 11993
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i$a;->pZ()Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 11993
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i$a;->qa()Lmobi/tikl/wire/control/a$i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 11993
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i$a;->qa()Lmobi/tikl/wire/control/a$i;

    move-result-object v0

    return-object v0
.end method

.method public ab(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12329
    if-nez p1, :cond_8

    .line 12330
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12332
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->c(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12333
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->a(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;

    .line 12334
    return-object p0
.end method

.method public ac(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12350
    if-nez p1, :cond_8

    .line 12351
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12353
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->d(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12354
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->b(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;

    .line 12355
    return-object p0
.end method

.method public ad(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12389
    if-nez p1, :cond_8

    .line 12390
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12392
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->f(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12393
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->c(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;

    .line 12394
    return-object p0
.end method

.method public ae(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12410
    if-nez p1, :cond_8

    .line 12411
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12413
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->g(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12414
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->d(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;

    .line 12415
    return-object p0
.end method

.method public af(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12485
    if-nez p1, :cond_8

    .line 12486
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12488
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->k(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12489
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->e(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;

    .line 12490
    return-object p0
.end method

.method public ag(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12506
    if-nez p1, :cond_8

    .line 12507
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12509
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->l(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12510
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->f(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;

    .line 12511
    return-object p0
.end method

.method public ah(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12564
    if-nez p1, :cond_8

    .line 12565
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12567
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->n(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12568
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->g(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;

    .line 12569
    return-object p0
.end method

.method public ai(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12585
    if-nez p1, :cond_8

    .line 12586
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12588
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->o(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12589
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->h(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;

    .line 12590
    return-object p0
.end method

.method public aj(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12606
    if-nez p1, :cond_8

    .line 12607
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12609
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->p(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12610
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->i(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;

    .line 12611
    return-object p0
.end method

.method public ak(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12681
    if-nez p1, :cond_8

    .line 12682
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12684
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->v(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12685
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->j(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;

    .line 12686
    return-object p0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 11993
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i$a;->pZ()Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 11993
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$i$a;->E(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 11993
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i$a;->pZ()Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 11993
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$i$a;->E(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12527
    if-nez p1, :cond_8

    .line 12528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12530
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->m(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12531
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->a(Lmobi/tikl/wire/control/a$i;Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P;

    .line 12532
    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11993
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i$a;->pZ()Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 11993
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$i$a;->G(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12540
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$i;->ot()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$i;->d(Lmobi/tikl/wire/control/a$i;)Lmobi/tikl/wire/control/a$P;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$P;->ym()Lmobi/tikl/wire/control/a$P;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 12542
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$i;->d(Lmobi/tikl/wire/control/a$i;)Lmobi/tikl/wire/control/a$P;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$P;->e(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$P$a;->f(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$P$a;->yv()Lmobi/tikl/wire/control/a$P;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->a(Lmobi/tikl/wire/control/a$i;Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P;

    .line 12547
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->m(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12548
    return-object p0

    .line 12545
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->a(Lmobi/tikl/wire/control/a$i;Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P;

    goto :goto_2b
.end method

.method public e(Lmobi/tikl/wire/control/a$i;)Lmobi/tikl/wire/control/a$i$a;
    .registers 3

    .prologue
    .line 12071
    invoke-static {}, Lmobi/tikl/wire/control/a$i;->pQ()Lmobi/tikl/wire/control/a$i;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 12139
    :goto_6
    return-object p0

    .line 12072
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 12073
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->getMsgId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->aE(I)Lmobi/tikl/wire/control/a$i$a;

    .line 12075
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->od()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 12076
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->l(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$i$a;

    .line 12078
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->pS()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 12079
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->ab(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 12081
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oh()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 12082
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->ac(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 12084
    :cond_3b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oi()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 12085
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->jr()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->aF(I)Lmobi/tikl/wire/control/a$i$a;

    .line 12087
    :cond_48
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oj()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 12088
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->ad(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 12090
    :cond_55
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->ok()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 12091
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->js()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->ae(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 12093
    :cond_62
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->ol()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 12094
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->getLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->aG(I)Lmobi/tikl/wire/control/a$i$a;

    .line 12096
    :cond_6f
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->om()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 12097
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->on()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->aH(I)Lmobi/tikl/wire/control/a$i$a;

    .line 12099
    :cond_7c
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oo()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 12100
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->op()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->aI(I)Lmobi/tikl/wire/control/a$i$a;

    .line 12102
    :cond_89
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oq()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 12103
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->or()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->af(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 12105
    :cond_96
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->os()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 12106
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->jt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->ag(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 12108
    :cond_a3
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->ot()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 12109
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->ou()Lmobi/tikl/wire/control/a$P;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->d(Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$i$a;

    .line 12111
    :cond_b0
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->ov()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 12112
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->ow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->ah(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 12114
    :cond_bd
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->ox()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 12115
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->ai(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 12117
    :cond_ca
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oz()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 12118
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->aj(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 12120
    :cond_d7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oB()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 12121
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oC()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->aJ(I)Lmobi/tikl/wire/control/a$i$a;

    .line 12123
    :cond_e4
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oD()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 12124
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oE()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->w(Z)Lmobi/tikl/wire/control/a$i$a;

    .line 12126
    :cond_f1
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oF()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 12127
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oG()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->x(Z)Lmobi/tikl/wire/control/a$i$a;

    .line 12129
    :cond_fe
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oH()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 12130
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->jv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->ak(Ljava/lang/String;)Lmobi/tikl/wire/control/a$i$a;

    .line 12132
    :cond_10b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oI()Z

    move-result v0

    if-eqz v0, :cond_118

    .line 12133
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oJ()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->aK(I)Lmobi/tikl/wire/control/a$i$a;

    .line 12135
    :cond_118
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oK()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 12136
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->oL()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->y(Z)Lmobi/tikl/wire/control/a$i$a;

    .line 12138
    :cond_125
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$i;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$i$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto/16 :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 12033
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$i;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public k(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12292
    if-nez p1, :cond_8

    .line 12293
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12295
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->b(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12296
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->a(Lmobi/tikl/wire/control/a$i;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 12297
    return-object p0
.end method

.method public l(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12305
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$i;->od()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$i;->c(Lmobi/tikl/wire/control/a$i;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 12307
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$i;->c(Lmobi/tikl/wire/control/a$i;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->a(Lmobi/tikl/wire/control/a$i;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 12312
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->b(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12313
    return-object p0

    .line 12310
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->a(Lmobi/tikl/wire/control/a$i;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 12286
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$i;->od()Z

    move-result v0

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 12289
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$i;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method public ot()Z
    .registers 2

    .prologue
    .line 12521
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$i;->ot()Z

    move-result v0

    return v0
.end method

.method public ou()Lmobi/tikl/wire/control/a$P;
    .registers 2

    .prologue
    .line 12524
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$i;->ou()Lmobi/tikl/wire/control/a$P;

    move-result-object v0

    return-object v0
.end method

.method protected pY()Lmobi/tikl/wire/control/a$i;
    .registers 2

    .prologue
    .line 12007
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    return-object v0
.end method

.method public pZ()Lmobi/tikl/wire/control/a$i$a;
    .registers 3

    .prologue
    .line 12020
    invoke-static {}, Lmobi/tikl/wire/control/a$i$a;->pX()Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$i$a;->e(Lmobi/tikl/wire/control/a$i;)Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method public qa()Lmobi/tikl/wire/control/a$i;
    .registers 2

    .prologue
    .line 12036
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 12037
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$i$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 12039
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i$a;->qb()Lmobi/tikl/wire/control/a$i;

    move-result-object v0

    return-object v0
.end method

.method public qb()Lmobi/tikl/wire/control/a$i;
    .registers 3

    .prologue
    .line 12052
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    if-nez v0, :cond_c

    .line 12053
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12056
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    .line 12057
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    .line 12058
    return-object v0
.end method

.method public w(Z)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12645
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->r(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12646
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->s(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12647
    return-object p0
.end method

.method public x(Z)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12663
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->t(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12664
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->u(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12665
    return-object p0
.end method

.method public y(Z)Lmobi/tikl/wire/control/a$i$a;
    .registers 4

    .prologue
    .line 12720
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$i;->x(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12721
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i$a;->pE:Lmobi/tikl/wire/control/a$i;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$i;->y(Lmobi/tikl/wire/control/a$i;Z)Z

    .line 12722
    return-object p0
.end method
