.class public final Lcom/google/protobuf/f$e$a;
.super Lcom/google/protobuf/q$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private aD:Lcom/google/protobuf/f$e;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 6996
    invoke-direct {p0}, Lcom/google/protobuf/q$b;-><init>()V

    return-void
.end method

.method private static ch()Lcom/google/protobuf/f$e$a;
    .registers 3

    .prologue
    .line 6999
    new-instance v0, Lcom/google/protobuf/f$e$a;

    invoke-direct {v0}, Lcom/google/protobuf/f$e$a;-><init>()V

    .line 7000
    new-instance v1, Lcom/google/protobuf/f$e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/f$e;-><init>(Lcom/google/protobuf/g;)V

    iput-object v1, v0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    .line 7001
    return-object v0
.end method

.method static synthetic cm()Lcom/google/protobuf/f$e$a;
    .registers 1

    .prologue
    .line 6990
    invoke-static {}, Lcom/google/protobuf/f$e$a;->ch()Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 6990
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$e$a;->i(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 6990
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$e$a;->k(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 7023
    invoke-static {}, Lcom/google/protobuf/f$e;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 6990
    invoke-virtual {p0}, Lcom/google/protobuf/f$e$a;->ci()Lcom/google/protobuf/f$e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 6990
    invoke-virtual {p0}, Lcom/google/protobuf/f$e$a;->cj()Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 6990
    invoke-virtual {p0}, Lcom/google/protobuf/f$e$a;->ck()Lcom/google/protobuf/f$e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 6990
    invoke-virtual {p0}, Lcom/google/protobuf/f$e$a;->ck()Lcom/google/protobuf/f$e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 6990
    invoke-virtual {p0}, Lcom/google/protobuf/f$e$a;->cj()Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 6990
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$e$a;->i(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/protobuf/f$p;)Lcom/google/protobuf/f$e$a;
    .registers 4

    .prologue
    .line 7139
    if-nez p1, :cond_8

    .line 7140
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7142
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    invoke-static {v0}, Lcom/google/protobuf/f$e;->d(Lcom/google/protobuf/f$e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 7143
    iget-object v0, p0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$e;->a(Lcom/google/protobuf/f$e;Ljava/util/List;)Ljava/util/List;

    .line 7145
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    invoke-static {v0}, Lcom/google/protobuf/f$e;->d(Lcom/google/protobuf/f$e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7146
    return-object p0
.end method

.method protected synthetic bM()Lcom/google/protobuf/q$c;
    .registers 2

    .prologue
    .line 6990
    invoke-virtual {p0}, Lcom/google/protobuf/f$e$a;->ci()Lcom/google/protobuf/f$e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic bN()Lcom/google/protobuf/q$b;
    .registers 2

    .prologue
    .line 6990
    invoke-virtual {p0}, Lcom/google/protobuf/f$e$a;->cj()Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 6990
    invoke-virtual {p0}, Lcom/google/protobuf/f$e$a;->cj()Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 6990
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$e$a;->i(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method

.method protected ci()Lcom/google/protobuf/f$e;
    .registers 2

    .prologue
    .line 7005
    iget-object v0, p0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    return-object v0
.end method

.method public cj()Lcom/google/protobuf/f$e$a;
    .registers 3

    .prologue
    .line 7018
    invoke-static {}, Lcom/google/protobuf/f$e$a;->ch()Lcom/google/protobuf/f$e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/f$e$a;->e(Lcom/google/protobuf/f$e;)Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method

.method public ck()Lcom/google/protobuf/f$e;
    .registers 2

    .prologue
    .line 7034
    iget-object v0, p0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/f$e$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 7035
    iget-object v0, p0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    invoke-static {v0}, Lcom/google/protobuf/f$e$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 7037
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$e$a;->cl()Lcom/google/protobuf/f$e;

    move-result-object v0

    return-object v0
.end method

.method public cl()Lcom/google/protobuf/f$e;
    .registers 3

    .prologue
    .line 7050
    iget-object v0, p0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    if-nez v0, :cond_c

    .line 7051
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7054
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    invoke-static {v0}, Lcom/google/protobuf/f$e;->d(Lcom/google/protobuf/f$e;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 7055
    iget-object v0, p0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    iget-object v1, p0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    invoke-static {v1}, Lcom/google/protobuf/f$e;->d(Lcom/google/protobuf/f$e;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$e;->a(Lcom/google/protobuf/f$e;Ljava/util/List;)Ljava/util/List;

    .line 7058
    :cond_25
    iget-object v0, p0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    .line 7059
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    .line 7060
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 6990
    invoke-virtual {p0}, Lcom/google/protobuf/f$e$a;->cj()Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 6990
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$e$a;->k(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/google/protobuf/f$e;)Lcom/google/protobuf/f$e$a;
    .registers 4

    .prologue
    .line 7073
    invoke-static {}, Lcom/google/protobuf/f$e;->cc()Lcom/google/protobuf/f$e;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7082
    :goto_6
    return-object p0

    .line 7074
    :cond_7
    invoke-static {p1}, Lcom/google/protobuf/f$e;->d(Lcom/google/protobuf/f$e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 7075
    iget-object v0, p0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    invoke-static {v0}, Lcom/google/protobuf/f$e;->d(Lcom/google/protobuf/f$e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 7076
    iget-object v0, p0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$e;->a(Lcom/google/protobuf/f$e;Ljava/util/List;)Ljava/util/List;

    .line 7078
    :cond_27
    iget-object v0, p0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    invoke-static {v0}, Lcom/google/protobuf/f$e;->d(Lcom/google/protobuf/f$e;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$e;->d(Lcom/google/protobuf/f$e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7080
    :cond_34
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$e$a;->a(Lcom/google/protobuf/q$c;)V

    .line 7081
    invoke-virtual {p1}, Lcom/google/protobuf/f$e;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$e$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public i(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$e$a;
    .registers 5

    .prologue
    .line 7089
    invoke-virtual {p0}, Lcom/google/protobuf/f$e$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 7093
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 7094
    sparse-switch v1, :sswitch_data_34

    .line 7099
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/protobuf/f$e$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 7101
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$e$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 7102
    :goto_1c
    return-object p0

    .line 7096
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$e$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 7107
    :sswitch_25
    invoke-static {}, Lcom/google/protobuf/f$p;->fG()Lcom/google/protobuf/f$p$a;

    move-result-object v1

    .line 7108
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 7109
    invoke-virtual {v1}, Lcom/google/protobuf/f$p$a;->fN()Lcom/google/protobuf/f$p;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$e$a;->b(Lcom/google/protobuf/f$p;)Lcom/google/protobuf/f$e$a;

    goto :goto_8

    .line 7094
    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_1d
        0x1f3a -> :sswitch_25
    .end sparse-switch
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 7031
    iget-object v0, p0, Lcom/google/protobuf/f$e$a;->aD:Lcom/google/protobuf/f$e;

    invoke-virtual {v0}, Lcom/google/protobuf/f$e;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public k(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$e$a;
    .registers 3

    .prologue
    .line 7064
    instance-of v0, p1, Lcom/google/protobuf/f$e;

    if-eqz v0, :cond_b

    .line 7065
    check-cast p1, Lcom/google/protobuf/f$e;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$e$a;->e(Lcom/google/protobuf/f$e;)Lcom/google/protobuf/f$e$a;

    move-result-object p0

    .line 7068
    :goto_a
    return-object p0

    .line 7067
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$b;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method
