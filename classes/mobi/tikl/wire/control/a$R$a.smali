.class public final Lmobi/tikl/wire/control/a$R$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private sI:Lmobi/tikl/wire/control/a$R;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22008
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static yX()Lmobi/tikl/wire/control/a$R$a;
    .registers 3

    .prologue
    .line 22011
    new-instance v0, Lmobi/tikl/wire/control/a$R$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$R$a;-><init>()V

    .line 22012
    new-instance v1, Lmobi/tikl/wire/control/a$R;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$R;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$R$a;->sI:Lmobi/tikl/wire/control/a$R;

    .line 22013
    return-object v0
.end method

.method static synthetic zc()Lmobi/tikl/wire/control/a$R$a;
    .registers 1

    .prologue
    .line 22003
    invoke-static {}, Lmobi/tikl/wire/control/a$R$a;->yX()Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public E(Z)Lmobi/tikl/wire/control/a$R$a;
    .registers 4

    .prologue
    .line 22134
    iget-object v0, p0, Lmobi/tikl/wire/control/a$R$a;->sI:Lmobi/tikl/wire/control/a$R;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$R;->a(Lmobi/tikl/wire/control/a$R;Z)Z

    .line 22135
    iget-object v0, p0, Lmobi/tikl/wire/control/a$R$a;->sI:Lmobi/tikl/wire/control/a$R;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$R;->b(Lmobi/tikl/wire/control/a$R;Z)Z

    .line 22136
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 22003
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$R$a;->an(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 22003
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$R$a;->ap(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 22035
    invoke-static {}, Lmobi/tikl/wire/control/a$R;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 22003
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R$a;->yY()Lmobi/tikl/wire/control/a$R;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 22003
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R$a;->yZ()Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 22003
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R$a;->za()Lmobi/tikl/wire/control/a$R;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 22003
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R$a;->za()Lmobi/tikl/wire/control/a$R;

    move-result-object v0

    return-object v0
.end method

.method public an(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$R$a;
    .registers 5

    .prologue
    .line 22096
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 22100
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 22101
    sparse-switch v1, :sswitch_data_36

    .line 22106
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$R$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 22108
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$R$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 22109
    :goto_1c
    return-object p0

    .line 22103
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$R$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 22114
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$R$a;->E(Z)Lmobi/tikl/wire/control/a$R$a;

    goto :goto_8

    .line 22118
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$R$a;->bA(I)Lmobi/tikl/wire/control/a$R$a;

    goto :goto_8

    .line 22101
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x10 -> :sswitch_2d
    .end sparse-switch
.end method

.method public ap(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$R$a;
    .registers 3

    .prologue
    .line 22072
    instance-of v0, p1, Lmobi/tikl/wire/control/a$R;

    if-eqz v0, :cond_b

    .line 22073
    check-cast p1, Lmobi/tikl/wire/control/a$R;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$R$a;->b(Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$R$a;

    move-result-object p0

    .line 22076
    :goto_a
    return-object p0

    .line 22075
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 22003
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R$a;->yZ()Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 22003
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$R$a;->an(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$R$a;
    .registers 3

    .prologue
    .line 22081
    invoke-static {}, Lmobi/tikl/wire/control/a$R;->yO()Lmobi/tikl/wire/control/a$R;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 22089
    :goto_6
    return-object p0

    .line 22082
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$R;->yQ()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 22083
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$R;->yR()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$R$a;->E(Z)Lmobi/tikl/wire/control/a$R$a;

    .line 22085
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$R;->yS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 22086
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$R;->yT()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$R$a;->bA(I)Lmobi/tikl/wire/control/a$R$a;

    .line 22088
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$R;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$R$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public bA(I)Lmobi/tikl/wire/control/a$R$a;
    .registers 4

    .prologue
    .line 22152
    iget-object v0, p0, Lmobi/tikl/wire/control/a$R$a;->sI:Lmobi/tikl/wire/control/a$R;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$R;->c(Lmobi/tikl/wire/control/a$R;Z)Z

    .line 22153
    iget-object v0, p0, Lmobi/tikl/wire/control/a$R$a;->sI:Lmobi/tikl/wire/control/a$R;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$R;->a(Lmobi/tikl/wire/control/a$R;I)I

    .line 22154
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 22003
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R$a;->yZ()Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 22003
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$R$a;->an(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 22003
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R$a;->yZ()Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 22003
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$R$a;->ap(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 22043
    iget-object v0, p0, Lmobi/tikl/wire/control/a$R$a;->sI:Lmobi/tikl/wire/control/a$R;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$R;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected yY()Lmobi/tikl/wire/control/a$R;
    .registers 2

    .prologue
    .line 22017
    iget-object v0, p0, Lmobi/tikl/wire/control/a$R$a;->sI:Lmobi/tikl/wire/control/a$R;

    return-object v0
.end method

.method public yZ()Lmobi/tikl/wire/control/a$R$a;
    .registers 3

    .prologue
    .line 22030
    invoke-static {}, Lmobi/tikl/wire/control/a$R$a;->yX()Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$R$a;->sI:Lmobi/tikl/wire/control/a$R;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$R$a;->b(Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    return-object v0
.end method

.method public za()Lmobi/tikl/wire/control/a$R;
    .registers 2

    .prologue
    .line 22046
    iget-object v0, p0, Lmobi/tikl/wire/control/a$R$a;->sI:Lmobi/tikl/wire/control/a$R;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 22047
    iget-object v0, p0, Lmobi/tikl/wire/control/a$R$a;->sI:Lmobi/tikl/wire/control/a$R;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$R$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 22049
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R$a;->zb()Lmobi/tikl/wire/control/a$R;

    move-result-object v0

    return-object v0
.end method

.method public zb()Lmobi/tikl/wire/control/a$R;
    .registers 3

    .prologue
    .line 22062
    iget-object v0, p0, Lmobi/tikl/wire/control/a$R$a;->sI:Lmobi/tikl/wire/control/a$R;

    if-nez v0, :cond_c

    .line 22063
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22066
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$R$a;->sI:Lmobi/tikl/wire/control/a$R;

    .line 22067
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$R$a;->sI:Lmobi/tikl/wire/control/a$R;

    .line 22068
    return-object v0
.end method
