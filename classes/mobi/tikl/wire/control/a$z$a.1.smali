.class public final Lmobi/tikl/wire/control/a$z$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qN:Lmobi/tikl/wire/control/a$z;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34677
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static ud()Lmobi/tikl/wire/control/a$z$a;
    .registers 3

    .prologue
    .line 34680
    new-instance v0, Lmobi/tikl/wire/control/a$z$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$z$a;-><init>()V

    .line 34681
    new-instance v1, Lmobi/tikl/wire/control/a$z;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$z;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    .line 34682
    return-object v0
.end method

.method static synthetic ui()Lmobi/tikl/wire/control/a$z$a;
    .registers 1

    .prologue
    .line 34672
    invoke-static {}, Lmobi/tikl/wire/control/a$z$a;->ud()Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public V(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$z$a;
    .registers 6

    .prologue
    .line 34768
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 34772
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 34773
    sparse-switch v1, :sswitch_data_52

    .line 34778
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$z$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 34780
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$z$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 34781
    :goto_1c
    return-object p0

    .line 34775
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$z$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 34786
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$z$a;->aF(Ljava/lang/String;)Lmobi/tikl/wire/control/a$z$a;

    goto :goto_8

    .line 34790
    :sswitch_2d
    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tC()Lmobi/tikl/wire/control/a$x$a;

    move-result-object v1

    .line 34791
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z$a;->tY()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 34792
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z$a;->tZ()Lmobi/tikl/wire/control/a$x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$x$a;->j(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    .line 34794
    :cond_3e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 34795
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$x$a;->tJ()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$z$a;->k(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$z$a;

    goto :goto_8

    .line 34799
    :sswitch_49
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$z$a;->aY(I)Lmobi/tikl/wire/control/a$z$a;

    goto :goto_8

    .line 34773
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x12 -> :sswitch_2d
        0x18 -> :sswitch_49
    .end sparse-switch
.end method

.method public X(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$z$a;
    .registers 3

    .prologue
    .line 34741
    instance-of v0, p1, Lmobi/tikl/wire/control/a$z;

    if-eqz v0, :cond_b

    .line 34742
    check-cast p1, Lmobi/tikl/wire/control/a$z;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$z$a;->c(Lmobi/tikl/wire/control/a$z;)Lmobi/tikl/wire/control/a$z$a;

    move-result-object p0

    .line 34745
    :goto_a
    return-object p0

    .line 34744
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 34672
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$z$a;->V(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 34672
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$z$a;->X(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public aF(Ljava/lang/String;)Lmobi/tikl/wire/control/a$z$a;
    .registers 4

    .prologue
    .line 34815
    if-nez p1, :cond_8

    .line 34816
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34818
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$z;->a(Lmobi/tikl/wire/control/a$z;Z)Z

    .line 34819
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$z;->a(Lmobi/tikl/wire/control/a$z;Ljava/lang/String;)Ljava/lang/String;

    .line 34820
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 34704
    invoke-static {}, Lmobi/tikl/wire/control/a$z;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 34672
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z$a;->ue()Lmobi/tikl/wire/control/a$z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 34672
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z$a;->uf()Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 34672
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z$a;->ug()Lmobi/tikl/wire/control/a$z;

    move-result-object v0

    return-object v0
.end method

.method public aY(I)Lmobi/tikl/wire/control/a$z$a;
    .registers 4

    .prologue
    .line 34873
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$z;->c(Lmobi/tikl/wire/control/a$z;Z)Z

    .line 34874
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$z;->a(Lmobi/tikl/wire/control/a$z;I)I

    .line 34875
    return-object p0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 34672
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z$a;->ug()Lmobi/tikl/wire/control/a$z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 34672
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z$a;->uf()Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 34672
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$z$a;->V(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 34672
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z$a;->uf()Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 34672
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$z$a;->V(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$z;)Lmobi/tikl/wire/control/a$z$a;
    .registers 3

    .prologue
    .line 34750
    invoke-static {}, Lmobi/tikl/wire/control/a$z;->tW()Lmobi/tikl/wire/control/a$z;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 34761
    :goto_6
    return-object p0

    .line 34751
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$z;->pS()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 34752
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$z;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$z$a;->aF(Ljava/lang/String;)Lmobi/tikl/wire/control/a$z$a;

    .line 34754
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$z;->tY()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 34755
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$z;->tZ()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$z$a;->l(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$z$a;

    .line 34757
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$z;->qq()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 34758
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$z;->qr()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$z$a;->aY(I)Lmobi/tikl/wire/control/a$z$a;

    .line 34760
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$z;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$z$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 34672
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z$a;->uf()Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 34672
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$z$a;->X(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 34712
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$z;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public k(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$z$a;
    .registers 4

    .prologue
    .line 34836
    if-nez p1, :cond_8

    .line 34837
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34839
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$z;->b(Lmobi/tikl/wire/control/a$z;Z)Z

    .line 34840
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$z;->a(Lmobi/tikl/wire/control/a$z;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;

    .line 34841
    return-object p0
.end method

.method public l(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$z$a;
    .registers 4

    .prologue
    .line 34849
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$z;->tY()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$z;->b(Lmobi/tikl/wire/control/a$z;)Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$x;->tx()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 34851
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$z;->b(Lmobi/tikl/wire/control/a$z;)Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$x;->h(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$x$a;->j(Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$x$a;->tJ()Lmobi/tikl/wire/control/a$x;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$z;->a(Lmobi/tikl/wire/control/a$z;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;

    .line 34856
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$z;->b(Lmobi/tikl/wire/control/a$z;Z)Z

    .line 34857
    return-object p0

    .line 34854
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$z;->a(Lmobi/tikl/wire/control/a$z;Lmobi/tikl/wire/control/a$x;)Lmobi/tikl/wire/control/a$x;

    goto :goto_2b
.end method

.method public tY()Z
    .registers 2

    .prologue
    .line 34830
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$z;->tY()Z

    move-result v0

    return v0
.end method

.method public tZ()Lmobi/tikl/wire/control/a$x;
    .registers 2

    .prologue
    .line 34833
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$z;->tZ()Lmobi/tikl/wire/control/a$x;

    move-result-object v0

    return-object v0
.end method

.method protected ue()Lmobi/tikl/wire/control/a$z;
    .registers 2

    .prologue
    .line 34686
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    return-object v0
.end method

.method public uf()Lmobi/tikl/wire/control/a$z$a;
    .registers 3

    .prologue
    .line 34699
    invoke-static {}, Lmobi/tikl/wire/control/a$z$a;->ud()Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$z$a;->c(Lmobi/tikl/wire/control/a$z;)Lmobi/tikl/wire/control/a$z$a;

    move-result-object v0

    return-object v0
.end method

.method public ug()Lmobi/tikl/wire/control/a$z;
    .registers 2

    .prologue
    .line 34715
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 34716
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$z$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 34718
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$z$a;->uh()Lmobi/tikl/wire/control/a$z;

    move-result-object v0

    return-object v0
.end method

.method public uh()Lmobi/tikl/wire/control/a$z;
    .registers 3

    .prologue
    .line 34731
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    if-nez v0, :cond_c

    .line 34732
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34735
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    .line 34736
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$z$a;->qN:Lmobi/tikl/wire/control/a$z;

    .line 34737
    return-object v0
.end method
