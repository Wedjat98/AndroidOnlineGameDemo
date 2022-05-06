.class public final Lcom/google/protobuf/f$p$b$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$p$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private cR:Lcom/google/protobuf/f$p$b;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 8050
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static fY()Lcom/google/protobuf/f$p$b$a;
    .registers 3

    .prologue
    .line 8053
    new-instance v0, Lcom/google/protobuf/f$p$b$a;

    invoke-direct {v0}, Lcom/google/protobuf/f$p$b$a;-><init>()V

    .line 8054
    new-instance v1, Lcom/google/protobuf/f$p$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/f$p$b;-><init>(Lcom/google/protobuf/g;)V

    iput-object v1, v0, Lcom/google/protobuf/f$p$b$a;->cR:Lcom/google/protobuf/f$p$b;

    .line 8055
    return-object v0
.end method

.method static synthetic gd()Lcom/google/protobuf/f$p$b$a;
    .registers 1

    .prologue
    .line 8045
    invoke-static {}, Lcom/google/protobuf/f$p$b$a;->fY()Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public B(Ljava/lang/String;)Lcom/google/protobuf/f$p$b$a;
    .registers 4

    .prologue
    .line 8176
    if-nez p1, :cond_8

    .line 8177
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8179
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$p$b$a;->cR:Lcom/google/protobuf/f$p$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$p$b;->a(Lcom/google/protobuf/f$p$b;Z)Z

    .line 8180
    iget-object v0, p0, Lcom/google/protobuf/f$p$b$a;->cR:Lcom/google/protobuf/f$p$b;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$p$b;->a(Lcom/google/protobuf/f$p$b;Ljava/lang/String;)Ljava/lang/String;

    .line 8181
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 8045
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$p$b$a;->u(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 8045
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$p$b$a;->w(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 8077
    invoke-static {}, Lcom/google/protobuf/f$p$b;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 8045
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b$a;->fZ()Lcom/google/protobuf/f$p$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 8045
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b$a;->ga()Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 8045
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b$a;->gb()Lcom/google/protobuf/f$p$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 8045
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b$a;->gb()Lcom/google/protobuf/f$p$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 8045
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b$a;->ga()Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 8045
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$p$b$a;->u(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 8045
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b$a;->ga()Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/protobuf/f$p$b;)Lcom/google/protobuf/f$p$b$a;
    .registers 3

    .prologue
    .line 8123
    invoke-static {}, Lcom/google/protobuf/f$p$b;->fP()Lcom/google/protobuf/f$p$b;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 8131
    :goto_6
    return-object p0

    .line 8124
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/f$p$b;->fR()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8125
    invoke-virtual {p1}, Lcom/google/protobuf/f$p$b;->fS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$p$b$a;->B(Ljava/lang/String;)Lcom/google/protobuf/f$p$b$a;

    .line 8127
    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/f$p$b;->fT()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 8128
    invoke-virtual {p1}, Lcom/google/protobuf/f$p$b;->fU()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$p$b$a;->m(Z)Lcom/google/protobuf/f$p$b$a;

    .line 8130
    :cond_21
    invoke-virtual {p1}, Lcom/google/protobuf/f$p$b;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$p$b$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 8045
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$p$b$a;->u(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 8045
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b$a;->ga()Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 8045
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$p$b$a;->w(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    return-object v0
.end method

.method protected fZ()Lcom/google/protobuf/f$p$b;
    .registers 2

    .prologue
    .line 8059
    iget-object v0, p0, Lcom/google/protobuf/f$p$b$a;->cR:Lcom/google/protobuf/f$p$b;

    return-object v0
.end method

.method public ga()Lcom/google/protobuf/f$p$b$a;
    .registers 3

    .prologue
    .line 8072
    invoke-static {}, Lcom/google/protobuf/f$p$b$a;->fY()Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/f$p$b$a;->cR:Lcom/google/protobuf/f$p$b;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/f$p$b$a;->c(Lcom/google/protobuf/f$p$b;)Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    return-object v0
.end method

.method public gb()Lcom/google/protobuf/f$p$b;
    .registers 2

    .prologue
    .line 8088
    iget-object v0, p0, Lcom/google/protobuf/f$p$b$a;->cR:Lcom/google/protobuf/f$p$b;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 8089
    iget-object v0, p0, Lcom/google/protobuf/f$p$b$a;->cR:Lcom/google/protobuf/f$p$b;

    invoke-static {v0}, Lcom/google/protobuf/f$p$b$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 8091
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b$a;->gc()Lcom/google/protobuf/f$p$b;

    move-result-object v0

    return-object v0
.end method

.method public gc()Lcom/google/protobuf/f$p$b;
    .registers 3

    .prologue
    .line 8104
    iget-object v0, p0, Lcom/google/protobuf/f$p$b$a;->cR:Lcom/google/protobuf/f$p$b;

    if-nez v0, :cond_c

    .line 8105
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8108
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/f$p$b$a;->cR:Lcom/google/protobuf/f$p$b;

    .line 8109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/f$p$b$a;->cR:Lcom/google/protobuf/f$p$b;

    .line 8110
    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 8085
    iget-object v0, p0, Lcom/google/protobuf/f$p$b$a;->cR:Lcom/google/protobuf/f$p$b;

    invoke-virtual {v0}, Lcom/google/protobuf/f$p$b;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public m(Z)Lcom/google/protobuf/f$p$b$a;
    .registers 4

    .prologue
    .line 8197
    iget-object v0, p0, Lcom/google/protobuf/f$p$b$a;->cR:Lcom/google/protobuf/f$p$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$p$b;->b(Lcom/google/protobuf/f$p$b;Z)Z

    .line 8198
    iget-object v0, p0, Lcom/google/protobuf/f$p$b$a;->cR:Lcom/google/protobuf/f$p$b;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$p$b;->c(Lcom/google/protobuf/f$p$b;Z)Z

    .line 8199
    return-object p0
.end method

.method public u(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$p$b$a;
    .registers 5

    .prologue
    .line 8138
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 8142
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 8143
    sparse-switch v1, :sswitch_data_36

    .line 8148
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/protobuf/f$p$b$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 8150
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$p$b$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 8151
    :goto_1c
    return-object p0

    .line 8145
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$p$b$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 8156
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$p$b$a;->B(Ljava/lang/String;)Lcom/google/protobuf/f$p$b$a;

    goto :goto_8

    .line 8160
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$p$b$a;->m(Z)Lcom/google/protobuf/f$p$b$a;

    goto :goto_8

    .line 8143
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x10 -> :sswitch_2d
    .end sparse-switch
.end method

.method public w(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$p$b$a;
    .registers 3

    .prologue
    .line 8114
    instance-of v0, p1, Lcom/google/protobuf/f$p$b;

    if-eqz v0, :cond_b

    .line 8115
    check-cast p1, Lcom/google/protobuf/f$p$b;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$p$b$a;->c(Lcom/google/protobuf/f$p$b;)Lcom/google/protobuf/f$p$b$a;

    move-result-object p0

    .line 8118
    :goto_a
    return-object p0

    .line 8117
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method
