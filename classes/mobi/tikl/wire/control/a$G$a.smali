.class public final Lmobi/tikl/wire/control/a$G$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private rg:Lmobi/tikl/wire/control/a$G;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 5102
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static vI()Lmobi/tikl/wire/control/a$G$a;
    .registers 3

    .prologue
    .line 5105
    new-instance v0, Lmobi/tikl/wire/control/a$G$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$G$a;-><init>()V

    .line 5106
    new-instance v1, Lmobi/tikl/wire/control/a$G;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$G;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$G$a;->rg:Lmobi/tikl/wire/control/a$G;

    .line 5107
    return-object v0
.end method

.method static synthetic vN()Lmobi/tikl/wire/control/a$G$a;
    .registers 1

    .prologue
    .line 5097
    invoke-static {}, Lmobi/tikl/wire/control/a$G$a;->vI()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;
    .registers 3

    .prologue
    .line 5175
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5183
    :goto_6
    return-object p0

    .line 5176
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$G;->vC()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5177
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$G;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$G$a;->aN(Ljava/lang/String;)Lmobi/tikl/wire/control/a$G$a;

    .line 5179
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$G;->vD()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5180
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$G;->vE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$G$a;->aO(Ljava/lang/String;)Lmobi/tikl/wire/control/a$G$a;

    .line 5182
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$G;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$G$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 5097
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$G$a;->ac(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 5097
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$G$a;->ae(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    return-object v0
.end method

.method public aN(Ljava/lang/String;)Lmobi/tikl/wire/control/a$G$a;
    .registers 4

    .prologue
    .line 5228
    if-nez p1, :cond_8

    .line 5229
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5231
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$G$a;->rg:Lmobi/tikl/wire/control/a$G;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$G;->a(Lmobi/tikl/wire/control/a$G;Z)Z

    .line 5232
    iget-object v0, p0, Lmobi/tikl/wire/control/a$G$a;->rg:Lmobi/tikl/wire/control/a$G;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$G;->a(Lmobi/tikl/wire/control/a$G;Ljava/lang/String;)Ljava/lang/String;

    .line 5233
    return-object p0
.end method

.method public aO(Ljava/lang/String;)Lmobi/tikl/wire/control/a$G$a;
    .registers 4

    .prologue
    .line 5249
    if-nez p1, :cond_8

    .line 5250
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5252
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$G$a;->rg:Lmobi/tikl/wire/control/a$G;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$G;->b(Lmobi/tikl/wire/control/a$G;Z)Z

    .line 5253
    iget-object v0, p0, Lmobi/tikl/wire/control/a$G$a;->rg:Lmobi/tikl/wire/control/a$G;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$G;->b(Lmobi/tikl/wire/control/a$G;Ljava/lang/String;)Ljava/lang/String;

    .line 5254
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 5129
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 5097
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G$a;->vJ()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 5097
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G$a;->vK()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 5097
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G$a;->vL()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 5097
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G$a;->vL()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method public ac(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$G$a;
    .registers 5

    .prologue
    .line 5190
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 5194
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 5195
    sparse-switch v1, :sswitch_data_36

    .line 5200
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$G$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 5202
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$G$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 5203
    :goto_1c
    return-object p0

    .line 5197
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$G$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 5208
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$G$a;->aN(Ljava/lang/String;)Lmobi/tikl/wire/control/a$G$a;

    goto :goto_8

    .line 5212
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$G$a;->aO(Ljava/lang/String;)Lmobi/tikl/wire/control/a$G$a;

    goto :goto_8

    .line 5195
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x12 -> :sswitch_2d
    .end sparse-switch
.end method

.method public ae(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$G$a;
    .registers 3

    .prologue
    .line 5166
    instance-of v0, p1, Lmobi/tikl/wire/control/a$G;

    if-eqz v0, :cond_b

    .line 5167
    check-cast p1, Lmobi/tikl/wire/control/a$G;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object p0

    .line 5170
    :goto_a
    return-object p0

    .line 5169
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 5097
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G$a;->vK()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 5097
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$G$a;->ac(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 5097
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G$a;->vK()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 5097
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$G$a;->ac(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 5097
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G$a;->vK()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 5097
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$G$a;->ae(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 5137
    iget-object v0, p0, Lmobi/tikl/wire/control/a$G$a;->rg:Lmobi/tikl/wire/control/a$G;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected vJ()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 5111
    iget-object v0, p0, Lmobi/tikl/wire/control/a$G$a;->rg:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public vK()Lmobi/tikl/wire/control/a$G$a;
    .registers 3

    .prologue
    .line 5124
    invoke-static {}, Lmobi/tikl/wire/control/a$G$a;->vI()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$G$a;->rg:Lmobi/tikl/wire/control/a$G;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v0

    return-object v0
.end method

.method public vL()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 5140
    iget-object v0, p0, Lmobi/tikl/wire/control/a$G$a;->rg:Lmobi/tikl/wire/control/a$G;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 5141
    iget-object v0, p0, Lmobi/tikl/wire/control/a$G$a;->rg:Lmobi/tikl/wire/control/a$G;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$G$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 5143
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method public vM()Lmobi/tikl/wire/control/a$G;
    .registers 3

    .prologue
    .line 5156
    iget-object v0, p0, Lmobi/tikl/wire/control/a$G$a;->rg:Lmobi/tikl/wire/control/a$G;

    if-nez v0, :cond_c

    .line 5157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5160
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$G$a;->rg:Lmobi/tikl/wire/control/a$G;

    .line 5161
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$G$a;->rg:Lmobi/tikl/wire/control/a$G;

    .line 5162
    return-object v0
.end method
