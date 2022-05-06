.class public final Lmobi/tikl/wire/control/a$J$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private ry:Lmobi/tikl/wire/control/a$J;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21628
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method static synthetic wD()Lmobi/tikl/wire/control/a$J$a;
    .registers 1

    .prologue
    .line 21623
    invoke-static {}, Lmobi/tikl/wire/control/a$J$a;->wy()Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    return-object v0
.end method

.method private static wy()Lmobi/tikl/wire/control/a$J$a;
    .registers 3

    .prologue
    .line 21631
    new-instance v0, Lmobi/tikl/wire/control/a$J$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$J$a;-><init>()V

    .line 21632
    new-instance v1, Lmobi/tikl/wire/control/a$J;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$J;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$J$a;->ry:Lmobi/tikl/wire/control/a$J;

    .line 21633
    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 21623
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$J$a;->af(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 21623
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$J$a;->ah(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    return-object v0
.end method

.method public aQ(Ljava/lang/String;)Lmobi/tikl/wire/control/a$J$a;
    .registers 4

    .prologue
    .line 21768
    if-nez p1, :cond_8

    .line 21769
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21771
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$J$a;->ry:Lmobi/tikl/wire/control/a$J;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$J;->a(Lmobi/tikl/wire/control/a$J;Z)Z

    .line 21772
    iget-object v0, p0, Lmobi/tikl/wire/control/a$J$a;->ry:Lmobi/tikl/wire/control/a$J;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$J;->a(Lmobi/tikl/wire/control/a$J;Ljava/lang/String;)Ljava/lang/String;

    .line 21773
    return-object p0
.end method

.method public aR(Ljava/lang/String;)Lmobi/tikl/wire/control/a$J$a;
    .registers 4

    .prologue
    .line 21807
    if-nez p1, :cond_8

    .line 21808
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21810
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$J$a;->ry:Lmobi/tikl/wire/control/a$J;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$J;->c(Lmobi/tikl/wire/control/a$J;Z)Z

    .line 21811
    iget-object v0, p0, Lmobi/tikl/wire/control/a$J$a;->ry:Lmobi/tikl/wire/control/a$J;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$J;->b(Lmobi/tikl/wire/control/a$J;Ljava/lang/String;)Ljava/lang/String;

    .line 21812
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 21655
    invoke-static {}, Lmobi/tikl/wire/control/a$J;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 21623
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J$a;->wz()Lmobi/tikl/wire/control/a$J;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 21623
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J$a;->wA()Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 21623
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J$a;->wB()Lmobi/tikl/wire/control/a$J;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 21623
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J$a;->wB()Lmobi/tikl/wire/control/a$J;

    move-result-object v0

    return-object v0
.end method

.method public af(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$J$a;
    .registers 5

    .prologue
    .line 21722
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 21726
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 21727
    sparse-switch v1, :sswitch_data_46

    .line 21732
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$J$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 21734
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$J$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 21735
    :goto_1c
    return-object p0

    .line 21729
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$J$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 21740
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$J$a;->aQ(Ljava/lang/String;)Lmobi/tikl/wire/control/a$J$a;

    goto :goto_8

    .line 21744
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$J$a;->bf(I)Lmobi/tikl/wire/control/a$J$a;

    goto :goto_8

    .line 21748
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$J$a;->aR(Ljava/lang/String;)Lmobi/tikl/wire/control/a$J$a;

    goto :goto_8

    .line 21752
    :sswitch_3d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$J$a;->bg(I)Lmobi/tikl/wire/control/a$J$a;

    goto :goto_8

    .line 21727
    nop

    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x10 -> :sswitch_2d
        0x1a -> :sswitch_35
        0x50 -> :sswitch_3d
    .end sparse-switch
.end method

.method public ah(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$J$a;
    .registers 3

    .prologue
    .line 21692
    instance-of v0, p1, Lmobi/tikl/wire/control/a$J;

    if-eqz v0, :cond_b

    .line 21693
    check-cast p1, Lmobi/tikl/wire/control/a$J;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$J$a;->b(Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$J$a;

    move-result-object p0

    .line 21696
    :goto_a
    return-object p0

    .line 21695
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 21623
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J$a;->wA()Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 21623
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$J$a;->af(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$J$a;
    .registers 3

    .prologue
    .line 21701
    invoke-static {}, Lmobi/tikl/wire/control/a$J;->wo()Lmobi/tikl/wire/control/a$J;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 21715
    :goto_6
    return-object p0

    .line 21702
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$J;->wq()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 21703
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$J;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$J$a;->aQ(Ljava/lang/String;)Lmobi/tikl/wire/control/a$J$a;

    .line 21705
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$J;->cp()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 21706
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$J;->wr()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$J$a;->bf(I)Lmobi/tikl/wire/control/a$J$a;

    .line 21708
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$J;->ws()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 21709
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$J;->wt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$J$a;->aR(Ljava/lang/String;)Lmobi/tikl/wire/control/a$J$a;

    .line 21711
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$J;->wu()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 21712
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$J;->getSequenceNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$J$a;->bg(I)Lmobi/tikl/wire/control/a$J$a;

    .line 21714
    :cond_3b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$J;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$J$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public bf(I)Lmobi/tikl/wire/control/a$J$a;
    .registers 4

    .prologue
    .line 21789
    iget-object v0, p0, Lmobi/tikl/wire/control/a$J$a;->ry:Lmobi/tikl/wire/control/a$J;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$J;->b(Lmobi/tikl/wire/control/a$J;Z)Z

    .line 21790
    iget-object v0, p0, Lmobi/tikl/wire/control/a$J$a;->ry:Lmobi/tikl/wire/control/a$J;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$J;->a(Lmobi/tikl/wire/control/a$J;I)I

    .line 21791
    return-object p0
.end method

.method public bg(I)Lmobi/tikl/wire/control/a$J$a;
    .registers 4

    .prologue
    .line 21828
    iget-object v0, p0, Lmobi/tikl/wire/control/a$J$a;->ry:Lmobi/tikl/wire/control/a$J;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$J;->d(Lmobi/tikl/wire/control/a$J;Z)Z

    .line 21829
    iget-object v0, p0, Lmobi/tikl/wire/control/a$J$a;->ry:Lmobi/tikl/wire/control/a$J;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$J;->b(Lmobi/tikl/wire/control/a$J;I)I

    .line 21830
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 21623
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J$a;->wA()Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 21623
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$J$a;->af(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 21623
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J$a;->wA()Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 21623
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$J$a;->ah(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 21663
    iget-object v0, p0, Lmobi/tikl/wire/control/a$J$a;->ry:Lmobi/tikl/wire/control/a$J;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$J;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public wA()Lmobi/tikl/wire/control/a$J$a;
    .registers 3

    .prologue
    .line 21650
    invoke-static {}, Lmobi/tikl/wire/control/a$J$a;->wy()Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$J$a;->ry:Lmobi/tikl/wire/control/a$J;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$J$a;->b(Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$J$a;

    move-result-object v0

    return-object v0
.end method

.method public wB()Lmobi/tikl/wire/control/a$J;
    .registers 2

    .prologue
    .line 21666
    iget-object v0, p0, Lmobi/tikl/wire/control/a$J$a;->ry:Lmobi/tikl/wire/control/a$J;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 21667
    iget-object v0, p0, Lmobi/tikl/wire/control/a$J$a;->ry:Lmobi/tikl/wire/control/a$J;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$J$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 21669
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$J$a;->wC()Lmobi/tikl/wire/control/a$J;

    move-result-object v0

    return-object v0
.end method

.method public wC()Lmobi/tikl/wire/control/a$J;
    .registers 3

    .prologue
    .line 21682
    iget-object v0, p0, Lmobi/tikl/wire/control/a$J$a;->ry:Lmobi/tikl/wire/control/a$J;

    if-nez v0, :cond_c

    .line 21683
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21686
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$J$a;->ry:Lmobi/tikl/wire/control/a$J;

    .line 21687
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$J$a;->ry:Lmobi/tikl/wire/control/a$J;

    .line 21688
    return-object v0
.end method

.method protected wz()Lmobi/tikl/wire/control/a$J;
    .registers 2

    .prologue
    .line 21637
    iget-object v0, p0, Lmobi/tikl/wire/control/a$J$a;->ry:Lmobi/tikl/wire/control/a$J;

    return-object v0
.end method
