.class public final Lmobi/tikl/wire/control/a$M$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private rJ:Lmobi/tikl/wire/control/a$M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 8690
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static xk()Lmobi/tikl/wire/control/a$M$a;
    .registers 3

    .prologue
    .line 8693
    new-instance v0, Lmobi/tikl/wire/control/a$M$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$M$a;-><init>()V

    .line 8694
    new-instance v1, Lmobi/tikl/wire/control/a$M;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$M;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    .line 8695
    return-object v0
.end method

.method static synthetic xp()Lmobi/tikl/wire/control/a$M$a;
    .registers 1

    .prologue
    .line 8685
    invoke-static {}, Lmobi/tikl/wire/control/a$M$a;->xk()Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public R(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$M$a;
    .registers 4

    .prologue
    .line 8883
    if-nez p1, :cond_8

    .line 8884
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8886
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$M;->b(Lmobi/tikl/wire/control/a$M;Z)Z

    .line 8887
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$M;->a(Lmobi/tikl/wire/control/a$M;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 8888
    return-object p0
.end method

.method public S(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$M$a;
    .registers 4

    .prologue
    .line 8896
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$M;->rd()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$M;->d(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 8898
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$M;->d(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$M;->a(Lmobi/tikl/wire/control/a$M;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 8903
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$M;->b(Lmobi/tikl/wire/control/a$M;Z)Z

    .line 8904
    return-object p0

    .line 8901
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$M;->a(Lmobi/tikl/wire/control/a$M;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public T(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$M$a;
    .registers 4

    .prologue
    .line 8934
    if-nez p1, :cond_8

    .line 8935
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8937
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$M;->c(Lmobi/tikl/wire/control/a$M;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 8938
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$M;->a(Lmobi/tikl/wire/control/a$M;Ljava/util/List;)Ljava/util/List;

    .line 8940
    :cond_1e
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$M;->c(Lmobi/tikl/wire/control/a$M;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8941
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 8685
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$M$a;->ai(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 8685
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$M$a;->ak(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 8717
    invoke-static {}, Lmobi/tikl/wire/control/a$M;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public aV(Ljava/lang/String;)Lmobi/tikl/wire/control/a$M$a;
    .registers 4

    .prologue
    .line 8971
    if-nez p1, :cond_8

    .line 8972
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8974
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$M;->c(Lmobi/tikl/wire/control/a$M;Z)Z

    .line 8975
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$M;->a(Lmobi/tikl/wire/control/a$M;Ljava/lang/String;)Ljava/lang/String;

    .line 8976
    return-object p0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 8685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M$a;->xl()Lmobi/tikl/wire/control/a$M;

    move-result-object v0

    return-object v0
.end method

.method public aW(Ljava/lang/String;)Lmobi/tikl/wire/control/a$M$a;
    .registers 4

    .prologue
    .line 8992
    if-nez p1, :cond_8

    .line 8993
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8995
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$M;->d(Lmobi/tikl/wire/control/a$M;Z)Z

    .line 8996
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$M;->b(Lmobi/tikl/wire/control/a$M;Ljava/lang/String;)Ljava/lang/String;

    .line 8997
    return-object p0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 8685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M$a;->xm()Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 8685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M$a;->xn()Lmobi/tikl/wire/control/a$M;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 8685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M$a;->xn()Lmobi/tikl/wire/control/a$M;

    move-result-object v0

    return-object v0
.end method

.method public ai(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$M$a;
    .registers 6

    .prologue
    .line 8800
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 8804
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 8805
    sparse-switch v1, :sswitch_data_78

    .line 8810
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$M$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 8812
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$M$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 8813
    :goto_1c
    return-object p0

    .line 8807
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$M$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 8818
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$M$a;->bl(I)Lmobi/tikl/wire/control/a$M$a;

    goto :goto_8

    .line 8822
    :sswitch_2d
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 8823
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M$a;->rd()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 8824
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M$a;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 8826
    :cond_3e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 8827
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$M$a;->R(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$M$a;

    goto :goto_8

    .line 8831
    :sswitch_49
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 8832
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 8833
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$M$a;->T(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$M$a;

    goto :goto_8

    .line 8837
    :sswitch_58
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$M$a;->aV(Ljava/lang/String;)Lmobi/tikl/wire/control/a$M$a;

    goto :goto_8

    .line 8841
    :sswitch_60
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$M$a;->aW(Ljava/lang/String;)Lmobi/tikl/wire/control/a$M$a;

    goto :goto_8

    .line 8845
    :sswitch_68
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$M$a;->bm(I)Lmobi/tikl/wire/control/a$M$a;

    goto :goto_8

    .line 8849
    :sswitch_70
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$M$a;->bn(I)Lmobi/tikl/wire/control/a$M$a;

    goto :goto_8

    .line 8805
    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_49
        0x22 -> :sswitch_58
        0x2a -> :sswitch_60
        0x30 -> :sswitch_68
        0x38 -> :sswitch_70
    .end sparse-switch
.end method

.method public ak(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$M$a;
    .registers 3

    .prologue
    .line 8758
    instance-of v0, p1, Lmobi/tikl/wire/control/a$M;

    if-eqz v0, :cond_b

    .line 8759
    check-cast p1, Lmobi/tikl/wire/control/a$M;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$M$a;->e(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$M$a;

    move-result-object p0

    .line 8762
    :goto_a
    return-object p0

    .line 8761
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 8685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M$a;->xm()Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 8685
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$M$a;->ai(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    return-object v0
.end method

.method public bl(I)Lmobi/tikl/wire/control/a$M$a;
    .registers 4

    .prologue
    .line 8865
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$M;->a(Lmobi/tikl/wire/control/a$M;Z)Z

    .line 8866
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$M;->a(Lmobi/tikl/wire/control/a$M;I)I

    .line 8867
    return-object p0
.end method

.method public bm(I)Lmobi/tikl/wire/control/a$M$a;
    .registers 4

    .prologue
    .line 9013
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$M;->e(Lmobi/tikl/wire/control/a$M;Z)Z

    .line 9014
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$M;->b(Lmobi/tikl/wire/control/a$M;I)I

    .line 9015
    return-object p0
.end method

.method public bn(I)Lmobi/tikl/wire/control/a$M$a;
    .registers 4

    .prologue
    .line 9031
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$M;->f(Lmobi/tikl/wire/control/a$M;Z)Z

    .line 9032
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$M;->c(Lmobi/tikl/wire/control/a$M;I)I

    .line 9033
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 8685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M$a;->xm()Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 8685
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$M$a;->ai(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 8685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M$a;->xm()Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 8685
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$M$a;->ak(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$M$a;
    .registers 4

    .prologue
    .line 8767
    invoke-static {}, Lmobi/tikl/wire/control/a$M;->xe()Lmobi/tikl/wire/control/a$M;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 8793
    :goto_6
    return-object p0

    .line 8768
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$M;->rc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8769
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$M;->jQ()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$M$a;->bl(I)Lmobi/tikl/wire/control/a$M$a;

    .line 8771
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$M;->rd()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 8772
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$M;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$M$a;->S(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$M$a;

    .line 8774
    :cond_21
    invoke-static {p1}, Lmobi/tikl/wire/control/a$M;->c(Lmobi/tikl/wire/control/a$M;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 8775
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$M;->c(Lmobi/tikl/wire/control/a$M;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 8776
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$M;->a(Lmobi/tikl/wire/control/a$M;Ljava/util/List;)Ljava/util/List;

    .line 8778
    :cond_41
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$M;->c(Lmobi/tikl/wire/control/a$M;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lmobi/tikl/wire/control/a$M;->c(Lmobi/tikl/wire/control/a$M;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8780
    :cond_4e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$M;->rf()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 8781
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$M;->rg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$M$a;->aV(Ljava/lang/String;)Lmobi/tikl/wire/control/a$M$a;

    .line 8783
    :cond_5b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$M;->rh()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 8784
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$M;->jk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$M$a;->aW(Ljava/lang/String;)Lmobi/tikl/wire/control/a$M$a;

    .line 8786
    :cond_68
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$M;->ri()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 8787
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$M;->jl()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$M$a;->bm(I)Lmobi/tikl/wire/control/a$M$a;

    .line 8789
    :cond_75
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$M;->rj()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 8790
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$M;->rk()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$M$a;->bn(I)Lmobi/tikl/wire/control/a$M$a;

    .line 8792
    :cond_82
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$M;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$M$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto/16 :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 8725
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$M;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public rd()Z
    .registers 2

    .prologue
    .line 8877
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$M;->rd()Z

    move-result v0

    return v0
.end method

.method public re()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 8880
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$M;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected xl()Lmobi/tikl/wire/control/a$M;
    .registers 2

    .prologue
    .line 8699
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    return-object v0
.end method

.method public xm()Lmobi/tikl/wire/control/a$M$a;
    .registers 3

    .prologue
    .line 8712
    invoke-static {}, Lmobi/tikl/wire/control/a$M$a;->xk()Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$M$a;->e(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$M$a;

    move-result-object v0

    return-object v0
.end method

.method public xn()Lmobi/tikl/wire/control/a$M;
    .registers 2

    .prologue
    .line 8728
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 8729
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$M$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 8731
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$M$a;->xo()Lmobi/tikl/wire/control/a$M;

    move-result-object v0

    return-object v0
.end method

.method public xo()Lmobi/tikl/wire/control/a$M;
    .registers 3

    .prologue
    .line 8744
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    if-nez v0, :cond_c

    .line 8745
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8748
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$M;->c(Lmobi/tikl/wire/control/a$M;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 8749
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$M;->c(Lmobi/tikl/wire/control/a$M;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$M;->a(Lmobi/tikl/wire/control/a$M;Ljava/util/List;)Ljava/util/List;

    .line 8752
    :cond_25
    iget-object v0, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    .line 8753
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$M$a;->rJ:Lmobi/tikl/wire/control/a$M;

    .line 8754
    return-object v0
.end method
