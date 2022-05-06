.class public final Lmobi/tikl/wire/control/a$N$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private sf:Lmobi/tikl/wire/control/a$N;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 7681
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static xP()Lmobi/tikl/wire/control/a$N$a;
    .registers 3

    .prologue
    .line 7684
    new-instance v0, Lmobi/tikl/wire/control/a$N$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$N$a;-><init>()V

    .line 7685
    new-instance v1, Lmobi/tikl/wire/control/a$N;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$N;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    .line 7686
    return-object v0
.end method

.method static synthetic xU()Lmobi/tikl/wire/control/a$N$a;
    .registers 1

    .prologue
    .line 7676
    invoke-static {}, Lmobi/tikl/wire/control/a$N$a;->xP()Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(Z)Lmobi/tikl/wire/control/a$N$a;
    .registers 4

    .prologue
    .line 7863
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$N;->a(Lmobi/tikl/wire/control/a$N;Z)Z

    .line 7864
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$N;->b(Lmobi/tikl/wire/control/a$N;Z)Z

    .line 7865
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 7676
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$N$a;->aj(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 7676
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$N$a;->al(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 7708
    invoke-static {}, Lmobi/tikl/wire/control/a$N;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 7676
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N$a;->xQ()Lmobi/tikl/wire/control/a$N;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 7676
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N$a;->xR()Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 7676
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N$a;->xS()Lmobi/tikl/wire/control/a$N;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 7676
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N$a;->xS()Lmobi/tikl/wire/control/a$N;

    move-result-object v0

    return-object v0
.end method

.method public aj(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$N$a;
    .registers 5

    .prologue
    .line 7793
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 7797
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 7798
    sparse-switch v1, :sswitch_data_76

    .line 7803
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$N$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 7805
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$N$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 7806
    :goto_1c
    return-object p0

    .line 7800
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$N$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 7811
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$N$a;->A(Z)Lmobi/tikl/wire/control/a$N$a;

    goto :goto_8

    .line 7815
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$N$a;->bo(I)Lmobi/tikl/wire/control/a$N$a;

    goto :goto_8

    .line 7819
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$N$a;->bp(I)Lmobi/tikl/wire/control/a$N$a;

    goto :goto_8

    .line 7823
    :sswitch_3d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$N$a;->bq(I)Lmobi/tikl/wire/control/a$N$a;

    goto :goto_8

    .line 7827
    :sswitch_45
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$N$a;->br(I)Lmobi/tikl/wire/control/a$N$a;

    goto :goto_8

    .line 7831
    :sswitch_4d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$N$a;->bs(I)Lmobi/tikl/wire/control/a$N$a;

    goto :goto_8

    .line 7835
    :sswitch_55
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$N$a;->bt(I)Lmobi/tikl/wire/control/a$N$a;

    goto :goto_8

    .line 7839
    :sswitch_5d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$N$a;->bu(I)Lmobi/tikl/wire/control/a$N$a;

    goto :goto_8

    .line 7843
    :sswitch_65
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$N$a;->bv(I)Lmobi/tikl/wire/control/a$N$a;

    goto :goto_8

    .line 7847
    :sswitch_6d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$N$a;->bw(I)Lmobi/tikl/wire/control/a$N$a;

    goto :goto_8

    .line 7798
    nop

    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x10 -> :sswitch_2d
        0x18 -> :sswitch_35
        0x20 -> :sswitch_3d
        0x28 -> :sswitch_45
        0x30 -> :sswitch_4d
        0x38 -> :sswitch_55
        0x40 -> :sswitch_5d
        0x48 -> :sswitch_65
        0x50 -> :sswitch_6d
    .end sparse-switch
.end method

.method public al(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$N$a;
    .registers 3

    .prologue
    .line 7745
    instance-of v0, p1, Lmobi/tikl/wire/control/a$N;

    if-eqz v0, :cond_b

    .line 7746
    check-cast p1, Lmobi/tikl/wire/control/a$N;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$N$a;->b(Lmobi/tikl/wire/control/a$N;)Lmobi/tikl/wire/control/a$N$a;

    move-result-object p0

    .line 7749
    :goto_a
    return-object p0

    .line 7748
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 7676
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N$a;->xR()Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 7676
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$N$a;->aj(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$N;)Lmobi/tikl/wire/control/a$N$a;
    .registers 3

    .prologue
    .line 7754
    invoke-static {}, Lmobi/tikl/wire/control/a$N;->xq()Lmobi/tikl/wire/control/a$N;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7786
    :goto_6
    return-object p0

    .line 7755
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xs()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7756
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xt()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$N$a;->A(Z)Lmobi/tikl/wire/control/a$N$a;

    .line 7758
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xu()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7759
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xv()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$N$a;->bo(I)Lmobi/tikl/wire/control/a$N$a;

    .line 7761
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xw()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 7762
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xx()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$N$a;->bp(I)Lmobi/tikl/wire/control/a$N$a;

    .line 7764
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xy()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 7765
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xz()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$N$a;->bq(I)Lmobi/tikl/wire/control/a$N$a;

    .line 7767
    :cond_3b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xA()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 7768
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xB()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$N$a;->br(I)Lmobi/tikl/wire/control/a$N$a;

    .line 7770
    :cond_48
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xC()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 7771
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xD()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$N$a;->bs(I)Lmobi/tikl/wire/control/a$N$a;

    .line 7773
    :cond_55
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xE()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 7774
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xF()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$N$a;->bt(I)Lmobi/tikl/wire/control/a$N$a;

    .line 7776
    :cond_62
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xG()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 7777
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xH()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$N$a;->bu(I)Lmobi/tikl/wire/control/a$N$a;

    .line 7779
    :cond_6f
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xI()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 7780
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xJ()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$N$a;->bv(I)Lmobi/tikl/wire/control/a$N$a;

    .line 7782
    :cond_7c
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xK()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 7783
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->xL()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$N$a;->bw(I)Lmobi/tikl/wire/control/a$N$a;

    .line 7785
    :cond_89
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$N;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$N$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto/16 :goto_6
.end method

.method public bo(I)Lmobi/tikl/wire/control/a$N$a;
    .registers 4

    .prologue
    .line 7881
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$N;->c(Lmobi/tikl/wire/control/a$N;Z)Z

    .line 7882
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$N;->a(Lmobi/tikl/wire/control/a$N;I)I

    .line 7883
    return-object p0
.end method

.method public bp(I)Lmobi/tikl/wire/control/a$N$a;
    .registers 4

    .prologue
    .line 7899
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$N;->d(Lmobi/tikl/wire/control/a$N;Z)Z

    .line 7900
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$N;->b(Lmobi/tikl/wire/control/a$N;I)I

    .line 7901
    return-object p0
.end method

.method public bq(I)Lmobi/tikl/wire/control/a$N$a;
    .registers 4

    .prologue
    .line 7917
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$N;->e(Lmobi/tikl/wire/control/a$N;Z)Z

    .line 7918
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$N;->c(Lmobi/tikl/wire/control/a$N;I)I

    .line 7919
    return-object p0
.end method

.method public br(I)Lmobi/tikl/wire/control/a$N$a;
    .registers 4

    .prologue
    .line 7935
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$N;->f(Lmobi/tikl/wire/control/a$N;Z)Z

    .line 7936
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$N;->d(Lmobi/tikl/wire/control/a$N;I)I

    .line 7937
    return-object p0
.end method

.method public bs(I)Lmobi/tikl/wire/control/a$N$a;
    .registers 4

    .prologue
    .line 7953
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$N;->g(Lmobi/tikl/wire/control/a$N;Z)Z

    .line 7954
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$N;->e(Lmobi/tikl/wire/control/a$N;I)I

    .line 7955
    return-object p0
.end method

.method public bt(I)Lmobi/tikl/wire/control/a$N$a;
    .registers 4

    .prologue
    .line 7971
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$N;->h(Lmobi/tikl/wire/control/a$N;Z)Z

    .line 7972
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$N;->f(Lmobi/tikl/wire/control/a$N;I)I

    .line 7973
    return-object p0
.end method

.method public bu(I)Lmobi/tikl/wire/control/a$N$a;
    .registers 4

    .prologue
    .line 7989
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$N;->i(Lmobi/tikl/wire/control/a$N;Z)Z

    .line 7990
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$N;->g(Lmobi/tikl/wire/control/a$N;I)I

    .line 7991
    return-object p0
.end method

.method public bv(I)Lmobi/tikl/wire/control/a$N$a;
    .registers 4

    .prologue
    .line 8007
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$N;->j(Lmobi/tikl/wire/control/a$N;Z)Z

    .line 8008
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$N;->h(Lmobi/tikl/wire/control/a$N;I)I

    .line 8009
    return-object p0
.end method

.method public bw(I)Lmobi/tikl/wire/control/a$N$a;
    .registers 4

    .prologue
    .line 8025
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$N;->k(Lmobi/tikl/wire/control/a$N;Z)Z

    .line 8026
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$N;->i(Lmobi/tikl/wire/control/a$N;I)I

    .line 8027
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 7676
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N$a;->xR()Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 7676
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$N$a;->aj(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 7676
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N$a;->xR()Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 7676
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$N$a;->al(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 7716
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$N;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected xQ()Lmobi/tikl/wire/control/a$N;
    .registers 2

    .prologue
    .line 7690
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    return-object v0
.end method

.method public xR()Lmobi/tikl/wire/control/a$N$a;
    .registers 3

    .prologue
    .line 7703
    invoke-static {}, Lmobi/tikl/wire/control/a$N$a;->xP()Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$N$a;->b(Lmobi/tikl/wire/control/a$N;)Lmobi/tikl/wire/control/a$N$a;

    move-result-object v0

    return-object v0
.end method

.method public xS()Lmobi/tikl/wire/control/a$N;
    .registers 2

    .prologue
    .line 7719
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 7720
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$N$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 7722
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$N$a;->xT()Lmobi/tikl/wire/control/a$N;

    move-result-object v0

    return-object v0
.end method

.method public xT()Lmobi/tikl/wire/control/a$N;
    .registers 3

    .prologue
    .line 7735
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    if-nez v0, :cond_c

    .line 7736
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7739
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    .line 7740
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$N$a;->sf:Lmobi/tikl/wire/control/a$N;

    .line 7741
    return-object v0
.end method
