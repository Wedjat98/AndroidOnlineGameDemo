.class public final Lmobi/tikl/wire/control/a$ag$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private uU:Lmobi/tikl/wire/control/a$ag;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 5659
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static DL()Lmobi/tikl/wire/control/a$ag$a;
    .registers 3

    .prologue
    .line 5662
    new-instance v0, Lmobi/tikl/wire/control/a$ag$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ag$a;-><init>()V

    .line 5663
    new-instance v1, Lmobi/tikl/wire/control/a$ag;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$ag;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    .line 5664
    return-object v0
.end method

.method static synthetic DQ()Lmobi/tikl/wire/control/a$ag$a;
    .registers 1

    .prologue
    .line 5654
    invoke-static {}, Lmobi/tikl/wire/control/a$ag$a;->DL()Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected DM()Lmobi/tikl/wire/control/a$ag;
    .registers 2

    .prologue
    .line 5668
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    return-object v0
.end method

.method public DN()Lmobi/tikl/wire/control/a$ag$a;
    .registers 3

    .prologue
    .line 5681
    invoke-static {}, Lmobi/tikl/wire/control/a$ag$a;->DL()Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ag$a;->c(Lmobi/tikl/wire/control/a$ag;)Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    return-object v0
.end method

.method public DO()Lmobi/tikl/wire/control/a$ag;
    .registers 2

    .prologue
    .line 5697
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 5698
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ag$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 5700
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag$a;->DP()Lmobi/tikl/wire/control/a$ag;

    move-result-object v0

    return-object v0
.end method

.method public DP()Lmobi/tikl/wire/control/a$ag;
    .registers 3

    .prologue
    .line 5713
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    if-nez v0, :cond_c

    .line 5714
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5717
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    .line 5718
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    .line 5719
    return-object v0
.end method

.method public Dd()Z
    .registers 2

    .prologue
    .line 5914
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ag;->Dd()Z

    move-result v0

    return v0
.end method

.method public De()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 5917
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ag;->De()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 5654
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ag$a;->aC(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 5654
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ag$a;->aE(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    return-object v0
.end method

.method public aA(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 5920
    if-nez p1, :cond_8

    .line 5921
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5923
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->b(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 5924
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->a(Lmobi/tikl/wire/control/a$ag;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 5925
    return-object p0
.end method

.method public aB(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 5933
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ag;->Dd()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ag;->b(Lmobi/tikl/wire/control/a$ag;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 5935
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ag;->b(Lmobi/tikl/wire/control/a$ag;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->a(Lmobi/tikl/wire/control/a$ag;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 5940
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->b(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 5941
    return-object p0

    .line 5938
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->a(Lmobi/tikl/wire/control/a$ag;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public aC(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 6

    .prologue
    .line 5795
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 5799
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 5800
    sparse-switch v1, :sswitch_data_d2

    .line 5805
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$ag$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 5807
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 5808
    :goto_1c
    return-object p0

    .line 5802
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 5813
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bD(I)Lmobi/tikl/wire/control/a$ag$a;

    goto :goto_8

    .line 5817
    :sswitch_2d
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 5818
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag$a;->Dd()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 5819
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag$a;->De()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 5821
    :cond_3e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 5822
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->aA(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ag$a;

    goto :goto_8

    .line 5826
    :sswitch_49
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bi(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    goto :goto_8

    .line 5830
    :sswitch_51
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bj(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    goto :goto_8

    .line 5834
    :sswitch_59
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bk(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    goto :goto_8

    .line 5838
    :sswitch_61
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bl(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    goto :goto_8

    .line 5842
    :sswitch_69
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bm(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    goto :goto_8

    .line 5846
    :sswitch_71
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bn(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    goto :goto_8

    .line 5850
    :sswitch_79
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bo(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    goto :goto_8

    .line 5854
    :sswitch_81
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bE(I)Lmobi/tikl/wire/control/a$ag$a;

    goto :goto_8

    .line 5858
    :sswitch_89
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bp(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    goto/16 :goto_8

    .line 5862
    :sswitch_92
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bF(I)Lmobi/tikl/wire/control/a$ag$a;

    goto/16 :goto_8

    .line 5866
    :sswitch_9b
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bq(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    goto/16 :goto_8

    .line 5870
    :sswitch_a4
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->br(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    goto/16 :goto_8

    .line 5874
    :sswitch_ad
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bs(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    goto/16 :goto_8

    .line 5878
    :sswitch_b6
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bt(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    goto/16 :goto_8

    .line 5882
    :sswitch_bf
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bu(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    goto/16 :goto_8

    .line 5886
    :sswitch_c8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ag$a;->bv(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    goto/16 :goto_8

    .line 5800
    nop

    :sswitch_data_d2
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x322 -> :sswitch_49
        0x32a -> :sswitch_51
        0x332 -> :sswitch_59
        0x33a -> :sswitch_61
        0x342 -> :sswitch_69
        0x34a -> :sswitch_71
        0x352 -> :sswitch_79
        0x368 -> :sswitch_81
        0x372 -> :sswitch_89
        0x378 -> :sswitch_92
        0x3c2 -> :sswitch_9b
        0x3ca -> :sswitch_a4
        0x412 -> :sswitch_ad
        0x41a -> :sswitch_b6
        0x642 -> :sswitch_bf
        0x64a -> :sswitch_c8
    .end sparse-switch
.end method

.method public aE(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 3

    .prologue
    .line 5723
    instance-of v0, p1, Lmobi/tikl/wire/control/a$ag;

    if-eqz v0, :cond_b

    .line 5724
    check-cast p1, Lmobi/tikl/wire/control/a$ag;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ag$a;->c(Lmobi/tikl/wire/control/a$ag;)Lmobi/tikl/wire/control/a$ag$a;

    move-result-object p0

    .line 5727
    :goto_a
    return-object p0

    .line 5726
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 5686
    invoke-static {}, Lmobi/tikl/wire/control/a$ag;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 5654
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag$a;->DM()Lmobi/tikl/wire/control/a$ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 5654
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag$a;->DN()Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 5654
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag$a;->DO()Lmobi/tikl/wire/control/a$ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 5654
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag$a;->DO()Lmobi/tikl/wire/control/a$ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 5654
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag$a;->DN()Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 5654
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ag$a;->aC(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    return-object v0
.end method

.method public bD(I)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 5902
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->a(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 5903
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->a(Lmobi/tikl/wire/control/a$ag;I)I

    .line 5904
    return-object p0
.end method

.method public bE(I)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 6104
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->j(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 6105
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->b(Lmobi/tikl/wire/control/a$ag;I)I

    .line 6106
    return-object p0
.end method

.method public bF(I)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 6143
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->l(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 6144
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->c(Lmobi/tikl/wire/control/a$ag;I)I

    .line 6145
    return-object p0
.end method

.method public bi(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 5957
    if-nez p1, :cond_8

    .line 5958
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5960
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->c(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 5961
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->a(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;

    .line 5962
    return-object p0
.end method

.method public bj(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 5978
    if-nez p1, :cond_8

    .line 5979
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5981
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->d(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 5982
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->b(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;

    .line 5983
    return-object p0
.end method

.method public bk(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 5999
    if-nez p1, :cond_8

    .line 6000
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6002
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->e(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 6003
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->c(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;

    .line 6004
    return-object p0
.end method

.method public bl(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 6020
    if-nez p1, :cond_8

    .line 6021
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6023
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->f(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 6024
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->d(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;

    .line 6025
    return-object p0
.end method

.method public bm(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 6041
    if-nez p1, :cond_8

    .line 6042
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6044
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->g(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 6045
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->e(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;

    .line 6046
    return-object p0
.end method

.method public bn(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 6062
    if-nez p1, :cond_8

    .line 6063
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6065
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->h(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 6066
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->f(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;

    .line 6067
    return-object p0
.end method

.method public bo(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 6083
    if-nez p1, :cond_8

    .line 6084
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6086
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->i(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 6087
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->g(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;

    .line 6088
    return-object p0
.end method

.method public bp(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 6122
    if-nez p1, :cond_8

    .line 6123
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6125
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->k(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 6126
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->h(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;

    .line 6127
    return-object p0
.end method

.method public bq(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 6161
    if-nez p1, :cond_8

    .line 6162
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6164
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->m(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 6165
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->i(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;

    .line 6166
    return-object p0
.end method

.method public br(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 6182
    if-nez p1, :cond_8

    .line 6183
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6185
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->n(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 6186
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->j(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;

    .line 6187
    return-object p0
.end method

.method public bs(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 6203
    if-nez p1, :cond_8

    .line 6204
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6206
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->o(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 6207
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->k(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;

    .line 6208
    return-object p0
.end method

.method public bt(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 6224
    if-nez p1, :cond_8

    .line 6225
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6227
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->p(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 6228
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->l(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;

    .line 6229
    return-object p0
.end method

.method public bu(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 6245
    if-nez p1, :cond_8

    .line 6246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6248
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->q(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 6249
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->m(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;

    .line 6250
    return-object p0
.end method

.method public bv(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 4

    .prologue
    .line 6266
    if-nez p1, :cond_8

    .line 6267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6269
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ag;->r(Lmobi/tikl/wire/control/a$ag;Z)Z

    .line 6270
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ag;->n(Lmobi/tikl/wire/control/a$ag;Ljava/lang/String;)Ljava/lang/String;

    .line 6271
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 5654
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag$a;->DN()Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 5654
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ag$a;->aC(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$ag;)Lmobi/tikl/wire/control/a$ag$a;
    .registers 3

    .prologue
    .line 5732
    invoke-static {}, Lmobi/tikl/wire/control/a$ag;->CZ()Lmobi/tikl/wire/control/a$ag;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5788
    :goto_6
    return-object p0

    .line 5733
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Db()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5734
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dc()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->bD(I)Lmobi/tikl/wire/control/a$ag$a;

    .line 5736
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dd()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5737
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->De()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->aB(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$ag$a;

    .line 5739
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Df()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 5740
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->bi(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 5742
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dg()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 5743
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->bj(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 5745
    :cond_3b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Di()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 5746
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->bk(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 5748
    :cond_48
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dk()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 5749
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->bl(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 5751
    :cond_55
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dm()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 5752
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->bm(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 5754
    :cond_62
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Do()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 5755
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->bn(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 5757
    :cond_6f
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dq()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 5758
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->bo(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 5760
    :cond_7c
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Ds()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 5761
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dt()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->bE(I)Lmobi/tikl/wire/control/a$ag$a;

    .line 5763
    :cond_89
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Du()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 5764
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->bp(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 5766
    :cond_96
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dw()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 5767
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dx()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->bF(I)Lmobi/tikl/wire/control/a$ag$a;

    .line 5769
    :cond_a3
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dy()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 5770
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->Dz()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->bq(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 5772
    :cond_b0
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->DA()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 5773
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->DB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->br(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 5775
    :cond_bd
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->DC()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 5776
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->bs(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 5778
    :cond_ca
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->DD()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 5779
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->DE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->bt(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 5781
    :cond_d7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->DF()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 5782
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->hM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->bu(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 5784
    :cond_e4
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->DG()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 5785
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->DH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->bv(Ljava/lang/String;)Lmobi/tikl/wire/control/a$ag$a;

    .line 5787
    :cond_f1
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ag;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ag$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto/16 :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 5654
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ag$a;->DN()Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 5654
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ag$a;->aE(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ag$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 5694
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ag$a;->uU:Lmobi/tikl/wire/control/a$ag;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ag;->isInitialized()Z

    move-result v0

    return v0
.end method
