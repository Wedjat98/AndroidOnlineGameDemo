.class public final Lmobi/tikl/wire/control/a$S$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private sM:Lmobi/tikl/wire/control/a$S;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 6781
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static zk()Lmobi/tikl/wire/control/a$S$a;
    .registers 3

    .prologue
    .line 6784
    new-instance v0, Lmobi/tikl/wire/control/a$S$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$S$a;-><init>()V

    .line 6785
    new-instance v1, Lmobi/tikl/wire/control/a$S;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$S;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    .line 6786
    return-object v0
.end method

.method static synthetic zp()Lmobi/tikl/wire/control/a$S$a;
    .registers 1

    .prologue
    .line 6776
    invoke-static {}, Lmobi/tikl/wire/control/a$S$a;->zk()Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public U(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$S$a;
    .registers 4

    .prologue
    .line 6917
    if-nez p1, :cond_8

    .line 6918
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6920
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$S;->a(Lmobi/tikl/wire/control/a$S;Z)Z

    .line 6921
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$S;->a(Lmobi/tikl/wire/control/a$S;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 6922
    return-object p0
.end method

.method public V(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$S$a;
    .registers 4

    .prologue
    .line 6930
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$S;->rd()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$S;->b(Lmobi/tikl/wire/control/a$S;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 6932
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$S;->b(Lmobi/tikl/wire/control/a$S;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$S;->a(Lmobi/tikl/wire/control/a$S;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 6937
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$S;->a(Lmobi/tikl/wire/control/a$S;Z)Z

    .line 6938
    return-object p0

    .line 6935
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$S;->a(Lmobi/tikl/wire/control/a$S;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public W(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$S$a;
    .registers 4

    .prologue
    .line 6954
    if-nez p1, :cond_8

    .line 6955
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6957
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$S;->b(Lmobi/tikl/wire/control/a$S;Z)Z

    .line 6958
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$S;->b(Lmobi/tikl/wire/control/a$S;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 6959
    return-object p0
.end method

.method public X(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$S$a;
    .registers 4

    .prologue
    .line 6967
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$S;->zf()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$S;->c(Lmobi/tikl/wire/control/a$S;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 6969
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$S;->c(Lmobi/tikl/wire/control/a$S;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$S;->b(Lmobi/tikl/wire/control/a$S;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 6974
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$S;->b(Lmobi/tikl/wire/control/a$S;Z)Z

    .line 6975
    return-object p0

    .line 6972
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$S;->b(Lmobi/tikl/wire/control/a$S;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 6776
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$S$a;->ao(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 6776
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$S$a;->aq(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 6808
    invoke-static {}, Lmobi/tikl/wire/control/a$S;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 6776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S$a;->zl()Lmobi/tikl/wire/control/a$S;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 6776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S$a;->zm()Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 6776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S$a;->zn()Lmobi/tikl/wire/control/a$S;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 6776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S$a;->zn()Lmobi/tikl/wire/control/a$S;

    move-result-object v0

    return-object v0
.end method

.method public ao(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$S$a;
    .registers 6

    .prologue
    .line 6869
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 6873
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 6874
    sparse-switch v1, :sswitch_data_5e

    .line 6879
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$S$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 6881
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$S$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 6882
    :goto_1c
    return-object p0

    .line 6876
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$S$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 6887
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 6888
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S$a;->rd()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 6889
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S$a;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 6891
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 6892
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$S$a;->U(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$S$a;

    goto :goto_8

    .line 6896
    :sswitch_41
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 6897
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S$a;->zf()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 6898
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S$a;->zg()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 6900
    :cond_52
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 6901
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$S$a;->W(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$S$a;

    goto :goto_8

    .line 6874
    nop

    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_1d
        0x12 -> :sswitch_25
        0x1a -> :sswitch_41
    .end sparse-switch
.end method

.method public aq(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$S$a;
    .registers 3

    .prologue
    .line 6845
    instance-of v0, p1, Lmobi/tikl/wire/control/a$S;

    if-eqz v0, :cond_b

    .line 6846
    check-cast p1, Lmobi/tikl/wire/control/a$S;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$S$a;->d(Lmobi/tikl/wire/control/a$S;)Lmobi/tikl/wire/control/a$S$a;

    move-result-object p0

    .line 6849
    :goto_a
    return-object p0

    .line 6848
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 6776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S$a;->zm()Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 6776
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$S$a;->ao(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 6776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S$a;->zm()Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 6776
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$S$a;->ao(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 6776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S$a;->zm()Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 6776
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$S$a;->aq(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$S;)Lmobi/tikl/wire/control/a$S$a;
    .registers 3

    .prologue
    .line 6854
    invoke-static {}, Lmobi/tikl/wire/control/a$S;->zd()Lmobi/tikl/wire/control/a$S;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 6862
    :goto_6
    return-object p0

    .line 6855
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$S;->rd()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6856
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$S;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$S$a;->V(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$S$a;

    .line 6858
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$S;->zf()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6859
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$S;->zg()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$S$a;->X(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$S$a;

    .line 6861
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$S;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$S$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 6816
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$S;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public rd()Z
    .registers 2

    .prologue
    .line 6911
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$S;->rd()Z

    move-result v0

    return v0
.end method

.method public re()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 6914
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$S;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method public zf()Z
    .registers 2

    .prologue
    .line 6948
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$S;->zf()Z

    move-result v0

    return v0
.end method

.method public zg()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 6951
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$S;->zg()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected zl()Lmobi/tikl/wire/control/a$S;
    .registers 2

    .prologue
    .line 6790
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    return-object v0
.end method

.method public zm()Lmobi/tikl/wire/control/a$S$a;
    .registers 3

    .prologue
    .line 6803
    invoke-static {}, Lmobi/tikl/wire/control/a$S$a;->zk()Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$S$a;->d(Lmobi/tikl/wire/control/a$S;)Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    return-object v0
.end method

.method public zn()Lmobi/tikl/wire/control/a$S;
    .registers 2

    .prologue
    .line 6819
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 6820
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$S$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 6822
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S$a;->zo()Lmobi/tikl/wire/control/a$S;

    move-result-object v0

    return-object v0
.end method

.method public zo()Lmobi/tikl/wire/control/a$S;
    .registers 3

    .prologue
    .line 6835
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    if-nez v0, :cond_c

    .line 6836
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6839
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    .line 6840
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$S$a;->sM:Lmobi/tikl/wire/control/a$S;

    .line 6841
    return-object v0
.end method
