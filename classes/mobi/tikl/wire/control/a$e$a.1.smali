.class public final Lmobi/tikl/wire/control/a$e$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private pt:Lmobi/tikl/wire/control/a$e;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13999
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static pc()Lmobi/tikl/wire/control/a$e$a;
    .registers 3

    .prologue
    .line 14002
    new-instance v0, Lmobi/tikl/wire/control/a$e$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$e$a;-><init>()V

    .line 14003
    new-instance v1, Lmobi/tikl/wire/control/a$e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$e;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    .line 14004
    return-object v0
.end method

.method static synthetic ph()Lmobi/tikl/wire/control/a$e$a;
    .registers 1

    .prologue
    .line 13994
    invoke-static {}, Lmobi/tikl/wire/control/a$e$a;->pc()Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$e$a;
    .registers 6

    .prologue
    .line 14090
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 14094
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 14095
    sparse-switch v1, :sswitch_data_66

    .line 14100
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$e$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 14102
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$e$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 14103
    :goto_1c
    return-object p0

    .line 14097
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$e$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 14108
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$e$a;->aB(I)Lmobi/tikl/wire/control/a$e$a;

    goto :goto_8

    .line 14112
    :sswitch_2d
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 14113
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e$a;->od()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 14114
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e$a;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 14116
    :cond_3e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 14117
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$e$a;->g(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$e$a;

    goto :goto_8

    .line 14121
    :sswitch_49
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 14122
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e$a;->oX()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 14123
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e$a;->oY()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 14125
    :cond_5a
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 14126
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$e$a;->i(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$e$a;

    goto :goto_8

    .line 14095
    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_49
    .end sparse-switch
.end method

.method public C(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$e$a;
    .registers 3

    .prologue
    .line 14063
    instance-of v0, p1, Lmobi/tikl/wire/control/a$e;

    if-eqz v0, :cond_b

    .line 14064
    check-cast p1, Lmobi/tikl/wire/control/a$e;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$e$a;->f(Lmobi/tikl/wire/control/a$e;)Lmobi/tikl/wire/control/a$e$a;

    move-result-object p0

    .line 14067
    :goto_a
    return-object p0

    .line 14066
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 13994
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$e$a;->A(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 13994
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$e$a;->C(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public aB(I)Lmobi/tikl/wire/control/a$e$a;
    .registers 4

    .prologue
    .line 14142
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$e;->a(Lmobi/tikl/wire/control/a$e;Z)Z

    .line 14143
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$e;->a(Lmobi/tikl/wire/control/a$e;I)I

    .line 14144
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 14026
    invoke-static {}, Lmobi/tikl/wire/control/a$e;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 13994
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e$a;->pd()Lmobi/tikl/wire/control/a$e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 13994
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e$a;->pe()Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 13994
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e$a;->pf()Lmobi/tikl/wire/control/a$e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 13994
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e$a;->pf()Lmobi/tikl/wire/control/a$e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 13994
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e$a;->pe()Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 13994
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$e$a;->A(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 13994
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e$a;->pe()Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 13994
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$e$a;->A(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 13994
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e$a;->pe()Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 13994
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$e$a;->C(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public f(Lmobi/tikl/wire/control/a$e;)Lmobi/tikl/wire/control/a$e$a;
    .registers 3

    .prologue
    .line 14072
    invoke-static {}, Lmobi/tikl/wire/control/a$e;->oV()Lmobi/tikl/wire/control/a$e;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 14083
    :goto_6
    return-object p0

    .line 14073
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$e;->oc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 14074
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$e;->getMsgId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$e$a;->aB(I)Lmobi/tikl/wire/control/a$e$a;

    .line 14076
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$e;->od()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 14077
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$e;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$e$a;->h(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$e$a;

    .line 14079
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$e;->oX()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 14080
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$e;->oY()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$e$a;->j(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$e$a;

    .line 14082
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$e;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$e$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public g(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$e$a;
    .registers 4

    .prologue
    .line 14160
    if-nez p1, :cond_8

    .line 14161
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14163
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$e;->b(Lmobi/tikl/wire/control/a$e;Z)Z

    .line 14164
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$e;->a(Lmobi/tikl/wire/control/a$e;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 14165
    return-object p0
.end method

.method public h(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$e$a;
    .registers 4

    .prologue
    .line 14173
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$e;->od()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$e;->d(Lmobi/tikl/wire/control/a$e;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 14175
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$e;->d(Lmobi/tikl/wire/control/a$e;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$e;->a(Lmobi/tikl/wire/control/a$e;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 14180
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$e;->b(Lmobi/tikl/wire/control/a$e;Z)Z

    .line 14181
    return-object p0

    .line 14178
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$e;->a(Lmobi/tikl/wire/control/a$e;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public i(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$e$a;
    .registers 4

    .prologue
    .line 14197
    if-nez p1, :cond_8

    .line 14198
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14200
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$e;->c(Lmobi/tikl/wire/control/a$e;Z)Z

    .line 14201
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$e;->b(Lmobi/tikl/wire/control/a$e;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 14202
    return-object p0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 14034
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$e;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public j(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$e$a;
    .registers 4

    .prologue
    .line 14210
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$e;->oX()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$e;->e(Lmobi/tikl/wire/control/a$e;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 14212
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$e;->e(Lmobi/tikl/wire/control/a$e;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$e;->b(Lmobi/tikl/wire/control/a$e;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 14217
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$e;->c(Lmobi/tikl/wire/control/a$e;Z)Z

    .line 14218
    return-object p0

    .line 14215
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$e;->b(Lmobi/tikl/wire/control/a$e;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public oX()Z
    .registers 2

    .prologue
    .line 14191
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$e;->oX()Z

    move-result v0

    return v0
.end method

.method public oY()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 14194
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$e;->oY()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 14154
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$e;->od()Z

    move-result v0

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 14157
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$e;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected pd()Lmobi/tikl/wire/control/a$e;
    .registers 2

    .prologue
    .line 14008
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    return-object v0
.end method

.method public pe()Lmobi/tikl/wire/control/a$e$a;
    .registers 3

    .prologue
    .line 14021
    invoke-static {}, Lmobi/tikl/wire/control/a$e$a;->pc()Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$e$a;->f(Lmobi/tikl/wire/control/a$e;)Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public pf()Lmobi/tikl/wire/control/a$e;
    .registers 2

    .prologue
    .line 14037
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 14038
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$e$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 14040
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e$a;->pg()Lmobi/tikl/wire/control/a$e;

    move-result-object v0

    return-object v0
.end method

.method public pg()Lmobi/tikl/wire/control/a$e;
    .registers 3

    .prologue
    .line 14053
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    if-nez v0, :cond_c

    .line 14054
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14057
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    .line 14058
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$e$a;->pt:Lmobi/tikl/wire/control/a$e;

    .line 14059
    return-object v0
.end method
