.class public final Lmobi/tikl/wire/control/a$ab$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private tB:Lmobi/tikl/wire/control/a$ab;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26909
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static BC()Lmobi/tikl/wire/control/a$ab$a;
    .registers 3

    .prologue
    .line 26912
    new-instance v0, Lmobi/tikl/wire/control/a$ab$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ab$a;-><init>()V

    .line 26913
    new-instance v1, Lmobi/tikl/wire/control/a$ab;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$ab;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    .line 26914
    return-object v0
.end method

.method static synthetic BH()Lmobi/tikl/wire/control/a$ab$a;
    .registers 1

    .prologue
    .line 26904
    invoke-static {}, Lmobi/tikl/wire/control/a$ab$a;->BC()Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected BD()Lmobi/tikl/wire/control/a$ab;
    .registers 2

    .prologue
    .line 26918
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    return-object v0
.end method

.method public BE()Lmobi/tikl/wire/control/a$ab$a;
    .registers 3

    .prologue
    .line 26931
    invoke-static {}, Lmobi/tikl/wire/control/a$ab$a;->BC()Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ab$a;->c(Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public BF()Lmobi/tikl/wire/control/a$ab;
    .registers 2

    .prologue
    .line 26947
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 26948
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ab$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 26950
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab$a;->BG()Lmobi/tikl/wire/control/a$ab;

    move-result-object v0

    return-object v0
.end method

.method public BG()Lmobi/tikl/wire/control/a$ab;
    .registers 3

    .prologue
    .line 26963
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    if-nez v0, :cond_c

    .line 26964
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26967
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    .line 26968
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    .line 26969
    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 26904
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ab$a;->ax(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 26904
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ab$a;->az(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 26936
    invoke-static {}, Lmobi/tikl/wire/control/a$ab;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 26904
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab$a;->BD()Lmobi/tikl/wire/control/a$ab;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 26904
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab$a;->BE()Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 26904
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab$a;->BF()Lmobi/tikl/wire/control/a$ab;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 26904
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab$a;->BF()Lmobi/tikl/wire/control/a$ab;

    move-result-object v0

    return-object v0
.end method

.method public at(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ab$a;
    .registers 4

    .prologue
    .line 27040
    if-nez p1, :cond_8

    .line 27041
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27043
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ab;->a(Lmobi/tikl/wire/control/a$ab;Z)Z

    .line 27044
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ab;->a(Lmobi/tikl/wire/control/a$ab;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 27045
    return-object p0
.end method

.method public au(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ab$a;
    .registers 4

    .prologue
    .line 27053
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ab;->so()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ab;->b(Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 27055
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ab;->b(Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ab;->a(Lmobi/tikl/wire/control/a$ab;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 27060
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ab;->a(Lmobi/tikl/wire/control/a$ab;Z)Z

    .line 27061
    return-object p0

    .line 27058
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ab;->a(Lmobi/tikl/wire/control/a$ab;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public ax(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ab$a;
    .registers 6

    .prologue
    .line 26997
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 27001
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 27002
    sparse-switch v1, :sswitch_data_4a

    .line 27007
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$ab$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 27009
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ab$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 27010
    :goto_1c
    return-object p0

    .line 27004
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ab$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 27015
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 27016
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab$a;->so()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 27017
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab$a;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 27019
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 27020
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ab$a;->at(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ab$a;

    goto :goto_8

    .line 27024
    :sswitch_41
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ab$a;->bf(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ab$a;

    goto :goto_8

    .line 27002
    nop

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_1d
        0x12 -> :sswitch_25
        0x1a -> :sswitch_41
    .end sparse-switch
.end method

.method public az(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ab$a;
    .registers 3

    .prologue
    .line 26973
    instance-of v0, p1, Lmobi/tikl/wire/control/a$ab;

    if-eqz v0, :cond_b

    .line 26974
    check-cast p1, Lmobi/tikl/wire/control/a$ab;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ab$a;->c(Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$ab$a;

    move-result-object p0

    .line 26977
    :goto_a
    return-object p0

    .line 26976
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 26904
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab$a;->BE()Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 26904
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ab$a;->ax(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public bf(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ab$a;
    .registers 4

    .prologue
    .line 27077
    if-nez p1, :cond_8

    .line 27078
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27080
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ab;->b(Lmobi/tikl/wire/control/a$ab;Z)Z

    .line 27081
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ab;->a(Lmobi/tikl/wire/control/a$ab;Ljava/lang/String;)Ljava/lang/String;

    .line 27082
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 26904
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab$a;->BE()Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 26904
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ab$a;->ax(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$ab$a;
    .registers 3

    .prologue
    .line 26982
    invoke-static {}, Lmobi/tikl/wire/control/a$ab;->Bx()Lmobi/tikl/wire/control/a$ab;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 26990
    :goto_6
    return-object p0

    .line 26983
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ab;->so()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 26984
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ab;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ab$a;->au(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ab$a;

    .line 26986
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ab;->wT()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 26987
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ab;->wU()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ab$a;->bf(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ab$a;

    .line 26989
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ab;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ab$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26904
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ab$a;->BE()Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 26904
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ab$a;->az(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 26944
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ab;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public so()Z
    .registers 2

    .prologue
    .line 27034
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ab;->so()Z

    move-result v0

    return v0
.end method

.method public sp()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 27037
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ab$a;->tB:Lmobi/tikl/wire/control/a$ab;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ab;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method
