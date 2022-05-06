.class public final Lmobi/tikl/wire/control/a$al$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private vB:Lmobi/tikl/wire/control/a$al;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21015
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static Fl()Lmobi/tikl/wire/control/a$al$a;
    .registers 3

    .prologue
    .line 21018
    new-instance v0, Lmobi/tikl/wire/control/a$al$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$al$a;-><init>()V

    .line 21019
    new-instance v1, Lmobi/tikl/wire/control/a$al;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$al;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    .line 21020
    return-object v0
.end method

.method private Fp()Lmobi/tikl/wire/control/a$al;
    .registers 2

    .prologue
    .line 21061
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 21062
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$al$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/y;->hg()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 21065
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->Fq()Lmobi/tikl/wire/control/a$al;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Fr()Lmobi/tikl/wire/control/a$al$a;
    .registers 1

    .prologue
    .line 21010
    invoke-static {}, Lmobi/tikl/wire/control/a$al$a;->Fl()Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$al$a;)Lmobi/tikl/wire/control/a$al;
    .registers 2

    .prologue
    .line 21010
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$al$a;->Fp()Lmobi/tikl/wire/control/a$al;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public EG()Z
    .registers 2

    .prologue
    .line 21218
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$al;->EG()Z

    move-result v0

    return v0
.end method

.method public EQ()Z
    .registers 2

    .prologue
    .line 21334
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$al;->EQ()Z

    move-result v0

    return v0
.end method

.method public ER()Lmobi/tikl/wire/control/a$J;
    .registers 2

    .prologue
    .line 21337
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$al;->ER()Lmobi/tikl/wire/control/a$J;

    move-result-object v0

    return-object v0
.end method

.method public ES()Z
    .registers 2

    .prologue
    .line 21371
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$al;->ES()Z

    move-result v0

    return v0
.end method

.method public ET()Lmobi/tikl/wire/control/a$R;
    .registers 2

    .prologue
    .line 21374
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$al;->ET()Lmobi/tikl/wire/control/a$R;

    move-result-object v0

    return-object v0
.end method

.method public Ff()Lmobi/tikl/wire/control/a$aq;
    .registers 2

    .prologue
    .line 21221
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$al;->Ff()Lmobi/tikl/wire/control/a$aq;

    move-result-object v0

    return-object v0
.end method

.method public Fg()Z
    .registers 2

    .prologue
    .line 21255
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$al;->Fg()Z

    move-result v0

    return v0
.end method

.method public Fh()Lmobi/tikl/wire/control/a$I;
    .registers 2

    .prologue
    .line 21258
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$al;->Fh()Lmobi/tikl/wire/control/a$I;

    move-result-object v0

    return-object v0
.end method

.method protected Fm()Lmobi/tikl/wire/control/a$al;
    .registers 2

    .prologue
    .line 21024
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    return-object v0
.end method

.method public Fn()Lmobi/tikl/wire/control/a$al$a;
    .registers 3

    .prologue
    .line 21037
    invoke-static {}, Lmobi/tikl/wire/control/a$al$a;->Fl()Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$al$a;->f(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    return-object v0
.end method

.method public Fo()Lmobi/tikl/wire/control/a$al;
    .registers 2

    .prologue
    .line 21053
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 21054
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$al$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 21056
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->Fq()Lmobi/tikl/wire/control/a$al;

    move-result-object v0

    return-object v0
.end method

.method public Fq()Lmobi/tikl/wire/control/a$al;
    .registers 3

    .prologue
    .line 21069
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    if-nez v0, :cond_c

    .line 21070
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21073
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    .line 21074
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    .line 21075
    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 21010
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$al$a;->aH(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 21010
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$al$a;->aJ(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    return-object v0
.end method

.method public aH(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$al$a;
    .registers 6

    .prologue
    .line 21121
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 21125
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 21126
    sparse-switch v1, :sswitch_data_b8

    .line 21131
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$al$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 21133
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$al$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 21134
    :goto_1c
    return-object p0

    .line 21128
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$al$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 21139
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$al$a;->bC(Ljava/lang/String;)Lmobi/tikl/wire/control/a$al$a;

    goto :goto_8

    .line 21143
    :sswitch_2d
    invoke-static {}, Lmobi/tikl/wire/control/a$I;->wf()Lmobi/tikl/wire/control/a$I$a;

    move-result-object v1

    .line 21144
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->Fg()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 21145
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->Fh()Lmobi/tikl/wire/control/a$I;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$I$a;->c(Lmobi/tikl/wire/control/a$I;)Lmobi/tikl/wire/control/a$I$a;

    .line 21147
    :cond_3e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 21148
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$I$a;->wm()Lmobi/tikl/wire/control/a$I;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$al$a;->d(Lmobi/tikl/wire/control/a$I;)Lmobi/tikl/wire/control/a$al$a;

    goto :goto_8

    .line 21152
    :sswitch_49
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$al$a;->bD(Ljava/lang/String;)Lmobi/tikl/wire/control/a$al$a;

    goto :goto_8

    .line 21156
    :sswitch_51
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$al$a;->bE(Ljava/lang/String;)Lmobi/tikl/wire/control/a$al$a;

    goto :goto_8

    .line 21160
    :sswitch_59
    invoke-static {}, Lmobi/tikl/wire/control/a$J;->wv()Lmobi/tikl/wire/control/a$J$a;

    move-result-object v1

    .line 21161
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->EQ()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 21162
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->ER()Lmobi/tikl/wire/control/a$J;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$J$a;->b(Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$J$a;

    .line 21164
    :cond_6a
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 21165
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$J$a;->wC()Lmobi/tikl/wire/control/a$J;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$al$a;->e(Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$al$a;

    goto :goto_8

    .line 21169
    :sswitch_75
    invoke-static {}, Lmobi/tikl/wire/control/a$R;->yU()Lmobi/tikl/wire/control/a$R$a;

    move-result-object v1

    .line 21170
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->ES()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 21171
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->ET()Lmobi/tikl/wire/control/a$R;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$R$a;->b(Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$R$a;

    .line 21173
    :cond_86
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 21174
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$R$a;->zb()Lmobi/tikl/wire/control/a$R;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$al$a;->e(Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$al$a;

    goto/16 :goto_8

    .line 21178
    :sswitch_92
    invoke-static {}, Lmobi/tikl/wire/control/a$aq;->GA()Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v1

    .line 21179
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->EG()Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 21180
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->Ff()Lmobi/tikl/wire/control/a$aq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$aq$a;->g(Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$aq$a;

    .line 21182
    :cond_a3
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 21183
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$aq$a;->GH()Lmobi/tikl/wire/control/a$aq;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$al$a;->b(Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$al$a;

    goto/16 :goto_8

    .line 21187
    :sswitch_af
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$al$a;->bF(Ljava/lang/String;)Lmobi/tikl/wire/control/a$al$a;

    goto/16 :goto_8

    .line 21126
    :sswitch_data_b8
    .sparse-switch
        0x0 -> :sswitch_1d
        0x2a -> :sswitch_25
        0x52 -> :sswitch_2d
        0x5a -> :sswitch_49
        0x62 -> :sswitch_51
        0x6a -> :sswitch_59
        0xa2 -> :sswitch_75
        0x322 -> :sswitch_92
        0x13882 -> :sswitch_af
    .end sparse-switch
.end method

.method public aJ(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$al$a;
    .registers 3

    .prologue
    .line 21079
    instance-of v0, p1, Lmobi/tikl/wire/control/a$al;

    if-eqz v0, :cond_b

    .line 21080
    check-cast p1, Lmobi/tikl/wire/control/a$al;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$al$a;->f(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$al$a;

    move-result-object p0

    .line 21083
    :goto_a
    return-object p0

    .line 21082
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 21042
    invoke-static {}, Lmobi/tikl/wire/control/a$al;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 21010
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->Fm()Lmobi/tikl/wire/control/a$al;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 21010
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->Fn()Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 21010
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->Fo()Lmobi/tikl/wire/control/a$al;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 21010
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->Fo()Lmobi/tikl/wire/control/a$al;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 21010
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->Fn()Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 21010
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$al$a;->aH(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$al$a;
    .registers 4

    .prologue
    .line 21224
    if-nez p1, :cond_8

    .line 21225
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21227
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$al;->b(Lmobi/tikl/wire/control/a$al;Z)Z

    .line 21228
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$al;->a(Lmobi/tikl/wire/control/a$al;Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$aq;

    .line 21229
    return-object p0
.end method

.method public bC(Ljava/lang/String;)Lmobi/tikl/wire/control/a$al$a;
    .registers 4

    .prologue
    .line 21203
    if-nez p1, :cond_8

    .line 21204
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21206
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$al;->a(Lmobi/tikl/wire/control/a$al;Z)Z

    .line 21207
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$al;->a(Lmobi/tikl/wire/control/a$al;Ljava/lang/String;)Ljava/lang/String;

    .line 21208
    return-object p0
.end method

.method public bD(Ljava/lang/String;)Lmobi/tikl/wire/control/a$al$a;
    .registers 4

    .prologue
    .line 21298
    if-nez p1, :cond_8

    .line 21299
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21301
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$al;->d(Lmobi/tikl/wire/control/a$al;Z)Z

    .line 21302
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$al;->b(Lmobi/tikl/wire/control/a$al;Ljava/lang/String;)Ljava/lang/String;

    .line 21303
    return-object p0
.end method

.method public bE(Ljava/lang/String;)Lmobi/tikl/wire/control/a$al$a;
    .registers 4

    .prologue
    .line 21319
    if-nez p1, :cond_8

    .line 21320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21322
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$al;->e(Lmobi/tikl/wire/control/a$al;Z)Z

    .line 21323
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$al;->c(Lmobi/tikl/wire/control/a$al;Ljava/lang/String;)Ljava/lang/String;

    .line 21324
    return-object p0
.end method

.method public bF(Ljava/lang/String;)Lmobi/tikl/wire/control/a$al$a;
    .registers 4

    .prologue
    .line 21414
    if-nez p1, :cond_8

    .line 21415
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21417
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$al;->h(Lmobi/tikl/wire/control/a$al;Z)Z

    .line 21418
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$al;->d(Lmobi/tikl/wire/control/a$al;Ljava/lang/String;)Ljava/lang/String;

    .line 21419
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 21010
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->Fn()Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 21010
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$al$a;->aH(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$al$a;
    .registers 4

    .prologue
    .line 21237
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$al;->EG()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$al;->b(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$aq;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$aq;->Gu()Lmobi/tikl/wire/control/a$aq;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 21239
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$al;->b(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$aq;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$aq;->d(Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$aq$a;->g(Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$aq$a;->GH()Lmobi/tikl/wire/control/a$aq;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$al;->a(Lmobi/tikl/wire/control/a$al;Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$aq;

    .line 21244
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$al;->b(Lmobi/tikl/wire/control/a$al;Z)Z

    .line 21245
    return-object p0

    .line 21242
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$al;->a(Lmobi/tikl/wire/control/a$al;Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$aq;

    goto :goto_2b
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 21010
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al$a;->Fn()Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 21010
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$al$a;->aJ(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$I;)Lmobi/tikl/wire/control/a$al$a;
    .registers 4

    .prologue
    .line 21261
    if-nez p1, :cond_8

    .line 21262
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21264
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$al;->c(Lmobi/tikl/wire/control/a$al;Z)Z

    .line 21265
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$al;->a(Lmobi/tikl/wire/control/a$al;Lmobi/tikl/wire/control/a$I;)Lmobi/tikl/wire/control/a$I;

    .line 21266
    return-object p0
.end method

.method public e(Lmobi/tikl/wire/control/a$I;)Lmobi/tikl/wire/control/a$al$a;
    .registers 4

    .prologue
    .line 21274
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$al;->Fg()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$al;->c(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$I;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$I;->wb()Lmobi/tikl/wire/control/a$I;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 21276
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$al;->c(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$I;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$I;->b(Lmobi/tikl/wire/control/a$I;)Lmobi/tikl/wire/control/a$I$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$I$a;->c(Lmobi/tikl/wire/control/a$I;)Lmobi/tikl/wire/control/a$I$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$I$a;->wm()Lmobi/tikl/wire/control/a$I;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$al;->a(Lmobi/tikl/wire/control/a$al;Lmobi/tikl/wire/control/a$I;)Lmobi/tikl/wire/control/a$I;

    .line 21281
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$al;->c(Lmobi/tikl/wire/control/a$al;Z)Z

    .line 21282
    return-object p0

    .line 21279
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$al;->a(Lmobi/tikl/wire/control/a$al;Lmobi/tikl/wire/control/a$I;)Lmobi/tikl/wire/control/a$I;

    goto :goto_2b
.end method

.method public e(Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$al$a;
    .registers 4

    .prologue
    .line 21340
    if-nez p1, :cond_8

    .line 21341
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21343
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$al;->f(Lmobi/tikl/wire/control/a$al;Z)Z

    .line 21344
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$al;->a(Lmobi/tikl/wire/control/a$al;Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$J;

    .line 21345
    return-object p0
.end method

.method public e(Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$al$a;
    .registers 4

    .prologue
    .line 21377
    if-nez p1, :cond_8

    .line 21378
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21380
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$al;->g(Lmobi/tikl/wire/control/a$al;Z)Z

    .line 21381
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$al;->a(Lmobi/tikl/wire/control/a$al;Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$R;

    .line 21382
    return-object p0
.end method

.method public f(Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$al$a;
    .registers 4

    .prologue
    .line 21353
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$al;->EQ()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$al;->d(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$J;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$J;->wo()Lmobi/tikl/wire/control/a$J;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 21355
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$al;->d(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$J;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$J;->a(Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$J$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$J$a;->b(Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$J$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$J$a;->wC()Lmobi/tikl/wire/control/a$J;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$al;->a(Lmobi/tikl/wire/control/a$al;Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$J;

    .line 21360
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$al;->f(Lmobi/tikl/wire/control/a$al;Z)Z

    .line 21361
    return-object p0

    .line 21358
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$al;->a(Lmobi/tikl/wire/control/a$al;Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$J;

    goto :goto_2b
.end method

.method public f(Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$al$a;
    .registers 4

    .prologue
    .line 21390
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$al;->ES()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$al;->e(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$R;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$R;->yO()Lmobi/tikl/wire/control/a$R;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 21392
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$al;->e(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$R;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$R;->a(Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$R$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$R$a;->b(Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$R$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$R$a;->zb()Lmobi/tikl/wire/control/a$R;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$al;->a(Lmobi/tikl/wire/control/a$al;Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$R;

    .line 21397
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$al;->g(Lmobi/tikl/wire/control/a$al;Z)Z

    .line 21398
    return-object p0

    .line 21395
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$al;->a(Lmobi/tikl/wire/control/a$al;Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$R;

    goto :goto_2b
.end method

.method public f(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$al$a;
    .registers 3

    .prologue
    .line 21088
    invoke-static {}, Lmobi/tikl/wire/control/a$al;->Fd()Lmobi/tikl/wire/control/a$al;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 21114
    :goto_6
    return-object p0

    .line 21089
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$al;->EE()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 21090
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$al;->EF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$al$a;->bC(Ljava/lang/String;)Lmobi/tikl/wire/control/a$al$a;

    .line 21092
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$al;->EG()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 21093
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$al;->Ff()Lmobi/tikl/wire/control/a$aq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$al$a;->c(Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$al$a;

    .line 21095
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$al;->Fg()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 21096
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$al;->Fh()Lmobi/tikl/wire/control/a$I;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$al$a;->e(Lmobi/tikl/wire/control/a$I;)Lmobi/tikl/wire/control/a$al$a;

    .line 21098
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$al;->EM()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 21099
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$al;->EN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$al$a;->bD(Ljava/lang/String;)Lmobi/tikl/wire/control/a$al$a;

    .line 21101
    :cond_3b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$al;->EO()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 21102
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$al;->EP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$al$a;->bE(Ljava/lang/String;)Lmobi/tikl/wire/control/a$al$a;

    .line 21104
    :cond_48
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$al;->EQ()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 21105
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$al;->ER()Lmobi/tikl/wire/control/a$J;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$al$a;->f(Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$al$a;

    .line 21107
    :cond_55
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$al;->ES()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 21108
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$al;->ET()Lmobi/tikl/wire/control/a$R;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$al$a;->f(Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$al$a;

    .line 21110
    :cond_62
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$al;->yC()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 21111
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$al;->yD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$al$a;->bF(Ljava/lang/String;)Lmobi/tikl/wire/control/a$al$a;

    .line 21113
    :cond_6f
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$al;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$al$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 21050
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al$a;->vB:Lmobi/tikl/wire/control/a$al;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$al;->isInitialized()Z

    move-result v0

    return v0
.end method
