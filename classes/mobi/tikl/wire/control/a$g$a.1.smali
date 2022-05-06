.class public final Lmobi/tikl/wire/control/a$g$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private px:Lmobi/tikl/wire/control/a$g;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30060
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method static synthetic pD()Lmobi/tikl/wire/control/a$g$a;
    .registers 1

    .prologue
    .line 30055
    invoke-static {}, Lmobi/tikl/wire/control/a$g$a;->py()Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method private static py()Lmobi/tikl/wire/control/a$g$a;
    .registers 3

    .prologue
    .line 30063
    new-instance v0, Lmobi/tikl/wire/control/a$g$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$g$a;-><init>()V

    .line 30064
    new-instance v1, Lmobi/tikl/wire/control/a$g;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$g;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$g$a;->px:Lmobi/tikl/wire/control/a$g;

    .line 30065
    return-object v0
.end method


# virtual methods
.method public C(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$g$a;
    .registers 5

    .prologue
    .line 30148
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 30152
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 30153
    sparse-switch v1, :sswitch_data_36

    .line 30158
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$g$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 30160
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$g$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 30161
    :goto_1c
    return-object p0

    .line 30155
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$g$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 30166
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$g$a;->aD(I)Lmobi/tikl/wire/control/a$g$a;

    goto :goto_8

    .line 30170
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$g$a;->aa(Ljava/lang/String;)Lmobi/tikl/wire/control/a$g$a;

    goto :goto_8

    .line 30153
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_1d
        0x20 -> :sswitch_25
        0x2a -> :sswitch_2d
    .end sparse-switch
.end method

.method public E(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$g$a;
    .registers 3

    .prologue
    .line 30124
    instance-of v0, p1, Lmobi/tikl/wire/control/a$g;

    if-eqz v0, :cond_b

    .line 30125
    check-cast p1, Lmobi/tikl/wire/control/a$g;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$g$a;->b(Lmobi/tikl/wire/control/a$g;)Lmobi/tikl/wire/control/a$g$a;

    move-result-object p0

    .line 30128
    :goto_a
    return-object p0

    .line 30127
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 30055
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$g$a;->C(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 30055
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$g$a;->E(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public aD(I)Lmobi/tikl/wire/control/a$g$a;
    .registers 4

    .prologue
    .line 30186
    iget-object v0, p0, Lmobi/tikl/wire/control/a$g$a;->px:Lmobi/tikl/wire/control/a$g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$g;->a(Lmobi/tikl/wire/control/a$g;Z)Z

    .line 30187
    iget-object v0, p0, Lmobi/tikl/wire/control/a$g$a;->px:Lmobi/tikl/wire/control/a$g;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$g;->a(Lmobi/tikl/wire/control/a$g;I)I

    .line 30188
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 30087
    invoke-static {}, Lmobi/tikl/wire/control/a$g;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 30055
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g$a;->pz()Lmobi/tikl/wire/control/a$g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 30055
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g$a;->pA()Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 30055
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g$a;->pB()Lmobi/tikl/wire/control/a$g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 30055
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g$a;->pB()Lmobi/tikl/wire/control/a$g;

    move-result-object v0

    return-object v0
.end method

.method public aa(Ljava/lang/String;)Lmobi/tikl/wire/control/a$g$a;
    .registers 4

    .prologue
    .line 30204
    if-nez p1, :cond_8

    .line 30205
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30207
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$g$a;->px:Lmobi/tikl/wire/control/a$g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$g;->b(Lmobi/tikl/wire/control/a$g;Z)Z

    .line 30208
    iget-object v0, p0, Lmobi/tikl/wire/control/a$g$a;->px:Lmobi/tikl/wire/control/a$g;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$g;->a(Lmobi/tikl/wire/control/a$g;Ljava/lang/String;)Ljava/lang/String;

    .line 30209
    return-object p0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 30055
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g$a;->pA()Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 30055
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$g$a;->C(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$g;)Lmobi/tikl/wire/control/a$g$a;
    .registers 3

    .prologue
    .line 30133
    invoke-static {}, Lmobi/tikl/wire/control/a$g;->pt()Lmobi/tikl/wire/control/a$g;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 30141
    :goto_6
    return-object p0

    .line 30134
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$g;->oi()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 30135
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$g;->jr()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$g$a;->aD(I)Lmobi/tikl/wire/control/a$g$a;

    .line 30137
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$g;->oh()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 30138
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$g;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$g$a;->aa(Ljava/lang/String;)Lmobi/tikl/wire/control/a$g$a;

    .line 30140
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$g;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$g$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 30055
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g$a;->pA()Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 30055
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$g$a;->C(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 30055
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g$a;->pA()Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 30055
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$g$a;->E(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 30095
    iget-object v0, p0, Lmobi/tikl/wire/control/a$g$a;->px:Lmobi/tikl/wire/control/a$g;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$g;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public pA()Lmobi/tikl/wire/control/a$g$a;
    .registers 3

    .prologue
    .line 30082
    invoke-static {}, Lmobi/tikl/wire/control/a$g$a;->py()Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$g$a;->px:Lmobi/tikl/wire/control/a$g;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$g$a;->b(Lmobi/tikl/wire/control/a$g;)Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public pB()Lmobi/tikl/wire/control/a$g;
    .registers 2

    .prologue
    .line 30098
    iget-object v0, p0, Lmobi/tikl/wire/control/a$g$a;->px:Lmobi/tikl/wire/control/a$g;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 30099
    iget-object v0, p0, Lmobi/tikl/wire/control/a$g$a;->px:Lmobi/tikl/wire/control/a$g;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$g$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 30101
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g$a;->pC()Lmobi/tikl/wire/control/a$g;

    move-result-object v0

    return-object v0
.end method

.method public pC()Lmobi/tikl/wire/control/a$g;
    .registers 3

    .prologue
    .line 30114
    iget-object v0, p0, Lmobi/tikl/wire/control/a$g$a;->px:Lmobi/tikl/wire/control/a$g;

    if-nez v0, :cond_c

    .line 30115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30118
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$g$a;->px:Lmobi/tikl/wire/control/a$g;

    .line 30119
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$g$a;->px:Lmobi/tikl/wire/control/a$g;

    .line 30120
    return-object v0
.end method

.method protected pz()Lmobi/tikl/wire/control/a$g;
    .registers 2

    .prologue
    .line 30069
    iget-object v0, p0, Lmobi/tikl/wire/control/a$g$a;->px:Lmobi/tikl/wire/control/a$g;

    return-object v0
.end method
