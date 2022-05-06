.class public final Lmobi/tikl/wire/control/a$V$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private sY:Lmobi/tikl/wire/control/a$V;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16800
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method static synthetic Ac()Lmobi/tikl/wire/control/a$V$a;
    .registers 1

    .prologue
    .line 16795
    invoke-static {}, Lmobi/tikl/wire/control/a$V$a;->zX()Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    return-object v0
.end method

.method private static zX()Lmobi/tikl/wire/control/a$V$a;
    .registers 3

    .prologue
    .line 16803
    new-instance v0, Lmobi/tikl/wire/control/a$V$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$V$a;-><init>()V

    .line 16804
    new-instance v1, Lmobi/tikl/wire/control/a$V;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$V;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    .line 16805
    return-object v0
.end method


# virtual methods
.method public Aa()Lmobi/tikl/wire/control/a$V;
    .registers 2

    .prologue
    .line 16838
    iget-object v0, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 16839
    iget-object v0, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$V$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 16841
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V$a;->Ab()Lmobi/tikl/wire/control/a$V;

    move-result-object v0

    return-object v0
.end method

.method public Ab()Lmobi/tikl/wire/control/a$V;
    .registers 3

    .prologue
    .line 16854
    iget-object v0, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    if-nez v0, :cond_c

    .line 16855
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16858
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    .line 16859
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    .line 16860
    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 16795
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$V$a;->ar(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 16795
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$V$a;->at(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 16827
    invoke-static {}, Lmobi/tikl/wire/control/a$V;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 16795
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V$a;->zY()Lmobi/tikl/wire/control/a$V;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 16795
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V$a;->zZ()Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 16795
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V$a;->Aa()Lmobi/tikl/wire/control/a$V;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 16795
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V$a;->Aa()Lmobi/tikl/wire/control/a$V;

    move-result-object v0

    return-object v0
.end method

.method public ae(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$V$a;
    .registers 4

    .prologue
    .line 16924
    if-nez p1, :cond_8

    .line 16925
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16927
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$V;->a(Lmobi/tikl/wire/control/a$V;Z)Z

    .line 16928
    iget-object v0, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$V;->a(Lmobi/tikl/wire/control/a$V;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 16929
    return-object p0
.end method

.method public af(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$V$a;
    .registers 4

    .prologue
    .line 16937
    iget-object v0, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$V;->zF()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$V;->b(Lmobi/tikl/wire/control/a$V;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 16939
    iget-object v0, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$V;->b(Lmobi/tikl/wire/control/a$V;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$V;->a(Lmobi/tikl/wire/control/a$V;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 16944
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$V;->a(Lmobi/tikl/wire/control/a$V;Z)Z

    .line 16945
    return-object p0

    .line 16942
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$V;->a(Lmobi/tikl/wire/control/a$V;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public ar(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$V$a;
    .registers 6

    .prologue
    .line 16885
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 16889
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 16890
    sparse-switch v1, :sswitch_data_42

    .line 16895
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$V$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 16897
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$V$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 16898
    :goto_1c
    return-object p0

    .line 16892
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$V$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 16903
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 16904
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V$a;->zF()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 16905
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V$a;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 16907
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 16908
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$V$a;->ae(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$V$a;

    goto :goto_8

    .line 16890
    nop

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
    .end sparse-switch
.end method

.method public at(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$V$a;
    .registers 3

    .prologue
    .line 16864
    instance-of v0, p1, Lmobi/tikl/wire/control/a$V;

    if-eqz v0, :cond_b

    .line 16865
    check-cast p1, Lmobi/tikl/wire/control/a$V;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$V$a;->c(Lmobi/tikl/wire/control/a$V;)Lmobi/tikl/wire/control/a$V$a;

    move-result-object p0

    .line 16868
    :goto_a
    return-object p0

    .line 16867
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 16795
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V$a;->zZ()Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 16795
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$V$a;->ar(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 16795
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V$a;->zZ()Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 16795
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$V$a;->ar(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$V;)Lmobi/tikl/wire/control/a$V$a;
    .registers 3

    .prologue
    .line 16873
    invoke-static {}, Lmobi/tikl/wire/control/a$V;->zS()Lmobi/tikl/wire/control/a$V;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 16878
    :goto_6
    return-object p0

    .line 16874
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$V;->zF()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 16875
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$V;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$V$a;->af(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$V$a;

    .line 16877
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$V;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$V$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 16795
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V$a;->zZ()Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 16795
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$V$a;->at(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 16835
    iget-object v0, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$V;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public zF()Z
    .registers 2

    .prologue
    .line 16918
    iget-object v0, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$V;->zF()Z

    move-result v0

    return v0
.end method

.method public zG()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 16921
    iget-object v0, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$V;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected zY()Lmobi/tikl/wire/control/a$V;
    .registers 2

    .prologue
    .line 16809
    iget-object v0, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    return-object v0
.end method

.method public zZ()Lmobi/tikl/wire/control/a$V$a;
    .registers 3

    .prologue
    .line 16822
    invoke-static {}, Lmobi/tikl/wire/control/a$V$a;->zX()Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$V$a;->sY:Lmobi/tikl/wire/control/a$V;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$V$a;->c(Lmobi/tikl/wire/control/a$V;)Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    return-object v0
.end method
