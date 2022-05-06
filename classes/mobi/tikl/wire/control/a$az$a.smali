.class public final Lmobi/tikl/wire/control/a$az$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private yI:Lmobi/tikl/wire/control/a$az;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15024
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static KO()Lmobi/tikl/wire/control/a$az$a;
    .registers 3

    .prologue
    .line 15027
    new-instance v0, Lmobi/tikl/wire/control/a$az$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$az$a;-><init>()V

    .line 15028
    new-instance v1, Lmobi/tikl/wire/control/a$az;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$az;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$az$a;->yI:Lmobi/tikl/wire/control/a$az;

    .line 15029
    return-object v0
.end method

.method static synthetic KT()Lmobi/tikl/wire/control/a$az$a;
    .registers 1

    .prologue
    .line 15019
    invoke-static {}, Lmobi/tikl/wire/control/a$az$a;->KO()Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected KP()Lmobi/tikl/wire/control/a$az;
    .registers 2

    .prologue
    .line 15033
    iget-object v0, p0, Lmobi/tikl/wire/control/a$az$a;->yI:Lmobi/tikl/wire/control/a$az;

    return-object v0
.end method

.method public KQ()Lmobi/tikl/wire/control/a$az$a;
    .registers 3

    .prologue
    .line 15046
    invoke-static {}, Lmobi/tikl/wire/control/a$az$a;->KO()Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$az$a;->yI:Lmobi/tikl/wire/control/a$az;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$az$a;->c(Lmobi/tikl/wire/control/a$az;)Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    return-object v0
.end method

.method public KR()Lmobi/tikl/wire/control/a$az;
    .registers 2

    .prologue
    .line 15062
    iget-object v0, p0, Lmobi/tikl/wire/control/a$az$a;->yI:Lmobi/tikl/wire/control/a$az;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 15063
    iget-object v0, p0, Lmobi/tikl/wire/control/a$az$a;->yI:Lmobi/tikl/wire/control/a$az;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$az$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 15065
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az$a;->KS()Lmobi/tikl/wire/control/a$az;

    move-result-object v0

    return-object v0
.end method

.method public KS()Lmobi/tikl/wire/control/a$az;
    .registers 3

    .prologue
    .line 15078
    iget-object v0, p0, Lmobi/tikl/wire/control/a$az$a;->yI:Lmobi/tikl/wire/control/a$az;

    if-nez v0, :cond_c

    .line 15079
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15082
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$az$a;->yI:Lmobi/tikl/wire/control/a$az;

    .line 15083
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$az$a;->yI:Lmobi/tikl/wire/control/a$az;

    .line 15084
    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 15019
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$az$a;->aV(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 15019
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$az$a;->aX(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 15051
    invoke-static {}, Lmobi/tikl/wire/control/a$az;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public aV(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$az$a;
    .registers 5

    .prologue
    .line 15115
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 15119
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 15120
    sparse-switch v1, :sswitch_data_3e

    .line 15125
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$az$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 15127
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$az$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 15128
    :goto_1c
    return-object p0

    .line 15122
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$az$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 15133
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$az$a;->bN(Ljava/lang/String;)Lmobi/tikl/wire/control/a$az$a;

    goto :goto_8

    .line 15137
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$az$a;->bO(Ljava/lang/String;)Lmobi/tikl/wire/control/a$az$a;

    goto :goto_8

    .line 15141
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$az$a;->bP(Ljava/lang/String;)Lmobi/tikl/wire/control/a$az$a;

    goto :goto_8

    .line 15120
    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x12 -> :sswitch_2d
        0x52 -> :sswitch_35
    .end sparse-switch
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 15019
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az$a;->KP()Lmobi/tikl/wire/control/a$az;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 15019
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az$a;->KQ()Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    return-object v0
.end method

.method public aX(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$az$a;
    .registers 3

    .prologue
    .line 15088
    instance-of v0, p1, Lmobi/tikl/wire/control/a$az;

    if-eqz v0, :cond_b

    .line 15089
    check-cast p1, Lmobi/tikl/wire/control/a$az;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$az$a;->c(Lmobi/tikl/wire/control/a$az;)Lmobi/tikl/wire/control/a$az$a;

    move-result-object p0

    .line 15092
    :goto_a
    return-object p0

    .line 15091
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 15019
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az$a;->KR()Lmobi/tikl/wire/control/a$az;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 15019
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az$a;->KR()Lmobi/tikl/wire/control/a$az;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 15019
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az$a;->KQ()Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 15019
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$az$a;->aV(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    return-object v0
.end method

.method public bN(Ljava/lang/String;)Lmobi/tikl/wire/control/a$az$a;
    .registers 4

    .prologue
    .line 15157
    if-nez p1, :cond_8

    .line 15158
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15160
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$az$a;->yI:Lmobi/tikl/wire/control/a$az;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$az;->a(Lmobi/tikl/wire/control/a$az;Z)Z

    .line 15161
    iget-object v0, p0, Lmobi/tikl/wire/control/a$az$a;->yI:Lmobi/tikl/wire/control/a$az;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$az;->a(Lmobi/tikl/wire/control/a$az;Ljava/lang/String;)Ljava/lang/String;

    .line 15162
    return-object p0
.end method

.method public bO(Ljava/lang/String;)Lmobi/tikl/wire/control/a$az$a;
    .registers 4

    .prologue
    .line 15178
    if-nez p1, :cond_8

    .line 15179
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15181
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$az$a;->yI:Lmobi/tikl/wire/control/a$az;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$az;->b(Lmobi/tikl/wire/control/a$az;Z)Z

    .line 15182
    iget-object v0, p0, Lmobi/tikl/wire/control/a$az$a;->yI:Lmobi/tikl/wire/control/a$az;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$az;->b(Lmobi/tikl/wire/control/a$az;Ljava/lang/String;)Ljava/lang/String;

    .line 15183
    return-object p0
.end method

.method public bP(Ljava/lang/String;)Lmobi/tikl/wire/control/a$az$a;
    .registers 4

    .prologue
    .line 15199
    if-nez p1, :cond_8

    .line 15200
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15202
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$az$a;->yI:Lmobi/tikl/wire/control/a$az;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$az;->c(Lmobi/tikl/wire/control/a$az;Z)Z

    .line 15203
    iget-object v0, p0, Lmobi/tikl/wire/control/a$az$a;->yI:Lmobi/tikl/wire/control/a$az;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$az;->c(Lmobi/tikl/wire/control/a$az;Ljava/lang/String;)Ljava/lang/String;

    .line 15204
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 15019
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az$a;->KQ()Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 15019
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$az$a;->aV(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$az;)Lmobi/tikl/wire/control/a$az$a;
    .registers 3

    .prologue
    .line 15097
    invoke-static {}, Lmobi/tikl/wire/control/a$az;->KD()Lmobi/tikl/wire/control/a$az;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 15108
    :goto_6
    return-object p0

    .line 15098
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$az;->KF()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 15099
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$az;->KG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$az$a;->bN(Ljava/lang/String;)Lmobi/tikl/wire/control/a$az$a;

    .line 15101
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$az;->KH()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 15102
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$az;->KI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$az$a;->bO(Ljava/lang/String;)Lmobi/tikl/wire/control/a$az$a;

    .line 15104
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$az;->KJ()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 15105
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$az;->KK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$az$a;->bP(Ljava/lang/String;)Lmobi/tikl/wire/control/a$az$a;

    .line 15107
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$az;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$az$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 15019
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$az$a;->KQ()Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 15019
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$az$a;->aX(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$az$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 15059
    iget-object v0, p0, Lmobi/tikl/wire/control/a$az$a;->yI:Lmobi/tikl/wire/control/a$az;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$az;->isInitialized()Z

    move-result v0

    return v0
.end method
