.class public final Lmobi/tikl/wire/control/a$l$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private pP:Lmobi/tikl/wire/control/a$l;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31037
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static qJ()Lmobi/tikl/wire/control/a$l$a;
    .registers 3

    .prologue
    .line 31040
    new-instance v0, Lmobi/tikl/wire/control/a$l$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$l$a;-><init>()V

    .line 31041
    new-instance v1, Lmobi/tikl/wire/control/a$l;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$l;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    .line 31042
    return-object v0
.end method

.method static synthetic qO()Lmobi/tikl/wire/control/a$l$a;
    .registers 1

    .prologue
    .line 31032
    invoke-static {}, Lmobi/tikl/wire/control/a$l$a;->qJ()Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public H(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$l$a;
    .registers 6

    .prologue
    .line 31141
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 31145
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 31146
    sparse-switch v1, :sswitch_data_68

    .line 31151
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$l$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 31153
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$l$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 31154
    :goto_1c
    return-object p0

    .line 31148
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$l$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 31159
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$l$a;->aO(I)Lmobi/tikl/wire/control/a$l$a;

    goto :goto_8

    .line 31163
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$l$a;->an(Ljava/lang/String;)Lmobi/tikl/wire/control/a$l$a;

    goto :goto_8

    .line 31167
    :sswitch_35
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 31168
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l$a;->od()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 31169
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l$a;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 31171
    :cond_46
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 31172
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$l$a;->m(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$l$a;

    goto :goto_8

    .line 31176
    :sswitch_51
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 31177
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 31178
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$l$a;->o(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$l$a;

    goto :goto_8

    .line 31182
    :sswitch_60
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$l$a;->ao(Ljava/lang/String;)Lmobi/tikl/wire/control/a$l$a;

    goto :goto_8

    .line 31146
    :sswitch_data_68
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_35
        0x22 -> :sswitch_51
        0x2a -> :sswitch_60
    .end sparse-switch
.end method

.method public J(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$l$a;
    .registers 3

    .prologue
    .line 31105
    instance-of v0, p1, Lmobi/tikl/wire/control/a$l;

    if-eqz v0, :cond_b

    .line 31106
    check-cast p1, Lmobi/tikl/wire/control/a$l;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$l$a;->d(Lmobi/tikl/wire/control/a$l;)Lmobi/tikl/wire/control/a$l$a;

    move-result-object p0

    .line 31109
    :goto_a
    return-object p0

    .line 31108
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 31032
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$l$a;->H(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 31032
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$l$a;->J(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public aO(I)Lmobi/tikl/wire/control/a$l$a;
    .registers 4

    .prologue
    .line 31198
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$l;->a(Lmobi/tikl/wire/control/a$l;Z)Z

    .line 31199
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$l;->a(Lmobi/tikl/wire/control/a$l;I)I

    .line 31200
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 31064
    invoke-static {}, Lmobi/tikl/wire/control/a$l;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 31032
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l$a;->qK()Lmobi/tikl/wire/control/a$l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 31032
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l$a;->qL()Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 31032
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l$a;->qM()Lmobi/tikl/wire/control/a$l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 31032
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l$a;->qM()Lmobi/tikl/wire/control/a$l;

    move-result-object v0

    return-object v0
.end method

.method public an(Ljava/lang/String;)Lmobi/tikl/wire/control/a$l$a;
    .registers 4

    .prologue
    .line 31216
    if-nez p1, :cond_8

    .line 31217
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31219
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$l;->b(Lmobi/tikl/wire/control/a$l;Z)Z

    .line 31220
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$l;->a(Lmobi/tikl/wire/control/a$l;Ljava/lang/String;)Ljava/lang/String;

    .line 31221
    return-object p0
.end method

.method public ao(Ljava/lang/String;)Lmobi/tikl/wire/control/a$l$a;
    .registers 4

    .prologue
    .line 31325
    if-nez p1, :cond_8

    .line 31326
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31328
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$l;->d(Lmobi/tikl/wire/control/a$l;Z)Z

    .line 31329
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$l;->b(Lmobi/tikl/wire/control/a$l;Ljava/lang/String;)Ljava/lang/String;

    .line 31330
    return-object p0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 31032
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l$a;->qL()Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 31032
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$l$a;->H(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 31032
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l$a;->qL()Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 31032
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$l$a;->H(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 31032
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l$a;->qL()Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 31032
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$l$a;->J(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$l;)Lmobi/tikl/wire/control/a$l$a;
    .registers 4

    .prologue
    .line 31114
    invoke-static {}, Lmobi/tikl/wire/control/a$l;->qD()Lmobi/tikl/wire/control/a$l;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 31134
    :goto_6
    return-object p0

    .line 31115
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$l;->oc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 31116
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$l;->getMsgId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$l$a;->aO(I)Lmobi/tikl/wire/control/a$l$a;

    .line 31118
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$l;->pS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 31119
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$l;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$l$a;->an(Ljava/lang/String;)Lmobi/tikl/wire/control/a$l$a;

    .line 31121
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$l;->od()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 31122
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$l;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$l$a;->n(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$l$a;

    .line 31124
    :cond_2e
    invoke-static {p1}, Lmobi/tikl/wire/control/a$l;->b(Lmobi/tikl/wire/control/a$l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 31125
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$l;->b(Lmobi/tikl/wire/control/a$l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 31126
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$l;->a(Lmobi/tikl/wire/control/a$l;Ljava/util/List;)Ljava/util/List;

    .line 31128
    :cond_4e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$l;->b(Lmobi/tikl/wire/control/a$l;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$l;->b(Lmobi/tikl/wire/control/a$l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31130
    :cond_5b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$l;->hasName()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 31131
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$l;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$l$a;->ao(Ljava/lang/String;)Lmobi/tikl/wire/control/a$l$a;

    .line 31133
    :cond_68
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$l;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$l$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 31072
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$l;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public m(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$l$a;
    .registers 4

    .prologue
    .line 31237
    if-nez p1, :cond_8

    .line 31238
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31240
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$l;->c(Lmobi/tikl/wire/control/a$l;Z)Z

    .line 31241
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$l;->a(Lmobi/tikl/wire/control/a$l;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 31242
    return-object p0
.end method

.method public n(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$l$a;
    .registers 4

    .prologue
    .line 31250
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$l;->od()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$l;->c(Lmobi/tikl/wire/control/a$l;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 31252
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$l;->c(Lmobi/tikl/wire/control/a$l;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$l;->a(Lmobi/tikl/wire/control/a$l;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 31257
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$l;->c(Lmobi/tikl/wire/control/a$l;Z)Z

    .line 31258
    return-object p0

    .line 31255
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$l;->a(Lmobi/tikl/wire/control/a$l;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public o(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$l$a;
    .registers 4

    .prologue
    .line 31288
    if-nez p1, :cond_8

    .line 31289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31291
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$l;->b(Lmobi/tikl/wire/control/a$l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 31292
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$l;->a(Lmobi/tikl/wire/control/a$l;Ljava/util/List;)Ljava/util/List;

    .line 31294
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$l;->b(Lmobi/tikl/wire/control/a$l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31295
    return-object p0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 31231
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$l;->od()Z

    move-result v0

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 31234
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$l;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected qK()Lmobi/tikl/wire/control/a$l;
    .registers 2

    .prologue
    .line 31046
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    return-object v0
.end method

.method public qL()Lmobi/tikl/wire/control/a$l$a;
    .registers 3

    .prologue
    .line 31059
    invoke-static {}, Lmobi/tikl/wire/control/a$l$a;->qJ()Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$l$a;->d(Lmobi/tikl/wire/control/a$l;)Lmobi/tikl/wire/control/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public qM()Lmobi/tikl/wire/control/a$l;
    .registers 2

    .prologue
    .line 31075
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 31076
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$l$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 31078
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$l$a;->qN()Lmobi/tikl/wire/control/a$l;

    move-result-object v0

    return-object v0
.end method

.method public qN()Lmobi/tikl/wire/control/a$l;
    .registers 3

    .prologue
    .line 31091
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    if-nez v0, :cond_c

    .line 31092
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31095
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$l;->b(Lmobi/tikl/wire/control/a$l;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 31096
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$l;->b(Lmobi/tikl/wire/control/a$l;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$l;->a(Lmobi/tikl/wire/control/a$l;Ljava/util/List;)Ljava/util/List;

    .line 31099
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    .line 31100
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$l$a;->pP:Lmobi/tikl/wire/control/a$l;

    .line 31101
    return-object v0
.end method
