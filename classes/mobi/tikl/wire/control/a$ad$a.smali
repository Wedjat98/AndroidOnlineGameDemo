.class public final Lmobi/tikl/wire/control/a$ad$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private tG:Lmobi/tikl/wire/control/a$ad;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28056
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static BZ()Lmobi/tikl/wire/control/a$ad$a;
    .registers 3

    .prologue
    .line 28059
    new-instance v0, Lmobi/tikl/wire/control/a$ad$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ad$a;-><init>()V

    .line 28060
    new-instance v1, Lmobi/tikl/wire/control/a$ad;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$ad;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    .line 28061
    return-object v0
.end method

.method static synthetic Ce()Lmobi/tikl/wire/control/a$ad$a;
    .registers 1

    .prologue
    .line 28051
    invoke-static {}, Lmobi/tikl/wire/control/a$ad$a;->BZ()Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected Ca()Lmobi/tikl/wire/control/a$ad;
    .registers 2

    .prologue
    .line 28065
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    return-object v0
.end method

.method public Cb()Lmobi/tikl/wire/control/a$ad$a;
    .registers 3

    .prologue
    .line 28078
    invoke-static {}, Lmobi/tikl/wire/control/a$ad$a;->BZ()Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ad$a;->c(Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method public Cc()Lmobi/tikl/wire/control/a$ad;
    .registers 2

    .prologue
    .line 28094
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 28095
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ad$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 28097
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad$a;->Cd()Lmobi/tikl/wire/control/a$ad;

    move-result-object v0

    return-object v0
.end method

.method public Cd()Lmobi/tikl/wire/control/a$ad;
    .registers 3

    .prologue
    .line 28110
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    if-nez v0, :cond_c

    .line 28111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28114
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    .line 28115
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    .line 28116
    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 28051
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ad$a;->az(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 28051
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ad$a;->aB(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method public aB(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ad$a;
    .registers 3

    .prologue
    .line 28120
    instance-of v0, p1, Lmobi/tikl/wire/control/a$ad;

    if-eqz v0, :cond_b

    .line 28121
    check-cast p1, Lmobi/tikl/wire/control/a$ad;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ad$a;->c(Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$ad$a;

    move-result-object p0

    .line 28124
    :goto_a
    return-object p0

    .line 28123
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 28083
    invoke-static {}, Lmobi/tikl/wire/control/a$ad;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 28051
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad$a;->Ca()Lmobi/tikl/wire/control/a$ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 28051
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad$a;->Cb()Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 28051
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad$a;->Cc()Lmobi/tikl/wire/control/a$ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 28051
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad$a;->Cc()Lmobi/tikl/wire/control/a$ad;

    move-result-object v0

    return-object v0
.end method

.method public ay(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ad$a;
    .registers 4

    .prologue
    .line 28187
    if-nez p1, :cond_8

    .line 28188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28190
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ad;->a(Lmobi/tikl/wire/control/a$ad;Z)Z

    .line 28191
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ad;->a(Lmobi/tikl/wire/control/a$ad;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 28192
    return-object p0
.end method

.method public az(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ad$a;
    .registers 6

    .prologue
    .line 28144
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 28148
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 28149
    sparse-switch v1, :sswitch_data_4a

    .line 28154
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$ad$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 28156
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ad$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 28157
    :goto_1c
    return-object p0

    .line 28151
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ad$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 28162
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 28163
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad$a;->sB()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 28164
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad$a;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 28166
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 28167
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ad$a;->ay(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ad$a;

    goto :goto_8

    .line 28171
    :sswitch_41
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ad$a;->bg(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ad$a;

    goto :goto_8

    .line 28149
    nop

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_1d
        0x12 -> :sswitch_25
        0x1a -> :sswitch_41
    .end sparse-switch
.end method

.method public az(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ad$a;
    .registers 4

    .prologue
    .line 28200
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ad;->sB()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ad;->b(Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 28202
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ad;->b(Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ad;->a(Lmobi/tikl/wire/control/a$ad;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 28207
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ad;->a(Lmobi/tikl/wire/control/a$ad;Z)Z

    .line 28208
    return-object p0

    .line 28205
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ad;->a(Lmobi/tikl/wire/control/a$ad;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 28051
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad$a;->Cb()Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 28051
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ad$a;->az(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method public bg(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ad$a;
    .registers 4

    .prologue
    .line 28224
    if-nez p1, :cond_8

    .line 28225
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28227
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ad;->b(Lmobi/tikl/wire/control/a$ad;Z)Z

    .line 28228
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ad;->a(Lmobi/tikl/wire/control/a$ad;Ljava/lang/String;)Ljava/lang/String;

    .line 28229
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 28051
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad$a;->Cb()Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 28051
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ad$a;->az(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$ad$a;
    .registers 3

    .prologue
    .line 28129
    invoke-static {}, Lmobi/tikl/wire/control/a$ad;->BU()Lmobi/tikl/wire/control/a$ad;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 28137
    :goto_6
    return-object p0

    .line 28130
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ad;->sB()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 28131
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ad;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ad$a;->az(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ad$a;

    .line 28133
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ad;->wT()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 28134
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ad;->wU()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ad$a;->bg(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ad$a;

    .line 28136
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ad;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ad$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 28051
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ad$a;->Cb()Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 28051
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ad$a;->aB(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 28091
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ad;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public sB()Z
    .registers 2

    .prologue
    .line 28181
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ad;->sB()Z

    move-result v0

    return v0
.end method

.method public sC()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 28184
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ad$a;->tG:Lmobi/tikl/wire/control/a$ad;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ad;->sC()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method
