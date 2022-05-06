.class public final Lmobi/tikl/wire/control/a$o$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qe:Lmobi/tikl/wire/control/a$o;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34043
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method static synthetic rE()Lmobi/tikl/wire/control/a$o$a;
    .registers 1

    .prologue
    .line 34038
    invoke-static {}, Lmobi/tikl/wire/control/a$o$a;->rz()Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method private static rz()Lmobi/tikl/wire/control/a$o$a;
    .registers 3

    .prologue
    .line 34046
    new-instance v0, Lmobi/tikl/wire/control/a$o$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$o$a;-><init>()V

    .line 34047
    new-instance v1, Lmobi/tikl/wire/control/a$o;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$o;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$o$a;->qe:Lmobi/tikl/wire/control/a$o;

    .line 34048
    return-object v0
.end method


# virtual methods
.method public K(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$o$a;
    .registers 5

    .prologue
    .line 34131
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 34135
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 34136
    sparse-switch v1, :sswitch_data_36

    .line 34141
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$o$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 34143
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$o$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 34144
    :goto_1c
    return-object p0

    .line 34138
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$o$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 34149
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$o$a;->aT(I)Lmobi/tikl/wire/control/a$o$a;

    goto :goto_8

    .line 34153
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$o$a;->at(Ljava/lang/String;)Lmobi/tikl/wire/control/a$o$a;

    goto :goto_8

    .line 34136
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
    .end sparse-switch
.end method

.method public M(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$o$a;
    .registers 3

    .prologue
    .line 34107
    instance-of v0, p1, Lmobi/tikl/wire/control/a$o;

    if-eqz v0, :cond_b

    .line 34108
    check-cast p1, Lmobi/tikl/wire/control/a$o;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$o$a;->b(Lmobi/tikl/wire/control/a$o;)Lmobi/tikl/wire/control/a$o$a;

    move-result-object p0

    .line 34111
    :goto_a
    return-object p0

    .line 34110
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 34038
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$o$a;->K(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 34038
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$o$a;->M(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 34070
    invoke-static {}, Lmobi/tikl/wire/control/a$o;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public aT(I)Lmobi/tikl/wire/control/a$o$a;
    .registers 4

    .prologue
    .line 34169
    iget-object v0, p0, Lmobi/tikl/wire/control/a$o$a;->qe:Lmobi/tikl/wire/control/a$o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$o;->a(Lmobi/tikl/wire/control/a$o;Z)Z

    .line 34170
    iget-object v0, p0, Lmobi/tikl/wire/control/a$o$a;->qe:Lmobi/tikl/wire/control/a$o;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$o;->a(Lmobi/tikl/wire/control/a$o;I)I

    .line 34171
    return-object p0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 34038
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o$a;->rA()Lmobi/tikl/wire/control/a$o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 34038
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o$a;->rB()Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 34038
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o$a;->rC()Lmobi/tikl/wire/control/a$o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 34038
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o$a;->rC()Lmobi/tikl/wire/control/a$o;

    move-result-object v0

    return-object v0
.end method

.method public at(Ljava/lang/String;)Lmobi/tikl/wire/control/a$o$a;
    .registers 4

    .prologue
    .line 34187
    if-nez p1, :cond_8

    .line 34188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34190
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$o$a;->qe:Lmobi/tikl/wire/control/a$o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$o;->b(Lmobi/tikl/wire/control/a$o;Z)Z

    .line 34191
    iget-object v0, p0, Lmobi/tikl/wire/control/a$o$a;->qe:Lmobi/tikl/wire/control/a$o;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$o;->a(Lmobi/tikl/wire/control/a$o;Ljava/lang/String;)Ljava/lang/String;

    .line 34192
    return-object p0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 34038
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o$a;->rB()Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 34038
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$o$a;->K(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$o;)Lmobi/tikl/wire/control/a$o$a;
    .registers 3

    .prologue
    .line 34116
    invoke-static {}, Lmobi/tikl/wire/control/a$o;->ru()Lmobi/tikl/wire/control/a$o;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 34124
    :goto_6
    return-object p0

    .line 34117
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$o;->oc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 34118
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$o;->getMsgId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$o$a;->aT(I)Lmobi/tikl/wire/control/a$o$a;

    .line 34120
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$o;->pS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 34121
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$o;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$o$a;->at(Ljava/lang/String;)Lmobi/tikl/wire/control/a$o$a;

    .line 34123
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$o;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$o$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 34038
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o$a;->rB()Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 34038
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$o$a;->K(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 34038
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o$a;->rB()Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 34038
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$o$a;->M(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 34078
    iget-object v0, p0, Lmobi/tikl/wire/control/a$o$a;->qe:Lmobi/tikl/wire/control/a$o;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$o;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected rA()Lmobi/tikl/wire/control/a$o;
    .registers 2

    .prologue
    .line 34052
    iget-object v0, p0, Lmobi/tikl/wire/control/a$o$a;->qe:Lmobi/tikl/wire/control/a$o;

    return-object v0
.end method

.method public rB()Lmobi/tikl/wire/control/a$o$a;
    .registers 3

    .prologue
    .line 34065
    invoke-static {}, Lmobi/tikl/wire/control/a$o$a;->rz()Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$o$a;->qe:Lmobi/tikl/wire/control/a$o;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$o$a;->b(Lmobi/tikl/wire/control/a$o;)Lmobi/tikl/wire/control/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public rC()Lmobi/tikl/wire/control/a$o;
    .registers 2

    .prologue
    .line 34081
    iget-object v0, p0, Lmobi/tikl/wire/control/a$o$a;->qe:Lmobi/tikl/wire/control/a$o;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 34082
    iget-object v0, p0, Lmobi/tikl/wire/control/a$o$a;->qe:Lmobi/tikl/wire/control/a$o;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$o$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 34084
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$o$a;->rD()Lmobi/tikl/wire/control/a$o;

    move-result-object v0

    return-object v0
.end method

.method public rD()Lmobi/tikl/wire/control/a$o;
    .registers 3

    .prologue
    .line 34097
    iget-object v0, p0, Lmobi/tikl/wire/control/a$o$a;->qe:Lmobi/tikl/wire/control/a$o;

    if-nez v0, :cond_c

    .line 34098
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34101
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$o$a;->qe:Lmobi/tikl/wire/control/a$o;

    .line 34102
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$o$a;->qe:Lmobi/tikl/wire/control/a$o;

    .line 34103
    return-object v0
.end method
