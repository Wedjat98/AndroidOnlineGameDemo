.class public final Lcom/google/protobuf/f$f$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private aQ:Lcom/google/protobuf/f$f;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2709
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static cA()Lcom/google/protobuf/f$f$a;
    .registers 3

    .prologue
    .line 2712
    new-instance v0, Lcom/google/protobuf/f$f$a;

    invoke-direct {v0}, Lcom/google/protobuf/f$f$a;-><init>()V

    .line 2713
    new-instance v1, Lcom/google/protobuf/f$f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/f$f;-><init>(Lcom/google/protobuf/g;)V

    iput-object v1, v0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    .line 2714
    return-object v0
.end method

.method static synthetic cF()Lcom/google/protobuf/f$f$a;
    .registers 1

    .prologue
    .line 2704
    invoke-static {}, Lcom/google/protobuf/f$f$a;->cA()Lcom/google/protobuf/f$f$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public L(I)Lcom/google/protobuf/f$f$a;
    .registers 4

    .prologue
    .line 2915
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$f;->b(Lcom/google/protobuf/f$f;Z)Z

    .line 2916
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$f;->a(Lcom/google/protobuf/f$f;I)I

    .line 2917
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 2704
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$f$a;->j(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$f$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 2704
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$f$a;->l(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$f$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/f$f$b;)Lcom/google/protobuf/f$f$a;
    .registers 4

    .prologue
    .line 2933
    if-nez p1, :cond_8

    .line 2934
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2936
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$f;->c(Lcom/google/protobuf/f$f;Z)Z

    .line 2937
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$f;->a(Lcom/google/protobuf/f$f;Lcom/google/protobuf/f$f$b;)Lcom/google/protobuf/f$f$b;

    .line 2938
    return-object p0
.end method

.method public a(Lcom/google/protobuf/f$f$c;)Lcom/google/protobuf/f$f$a;
    .registers 4

    .prologue
    .line 2954
    if-nez p1, :cond_8

    .line 2955
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2957
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$f;->d(Lcom/google/protobuf/f$f;Z)Z

    .line 2958
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$f;->a(Lcom/google/protobuf/f$f;Lcom/google/protobuf/f$f$c;)Lcom/google/protobuf/f$f$c;

    .line 2959
    return-object p0
.end method

.method public a(Lcom/google/protobuf/f$g;)Lcom/google/protobuf/f$f$a;
    .registers 4

    .prologue
    .line 3038
    if-nez p1, :cond_8

    .line 3039
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3041
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$f;->h(Lcom/google/protobuf/f$f;Z)Z

    .line 3042
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$f;->a(Lcom/google/protobuf/f$f;Lcom/google/protobuf/f$g;)Lcom/google/protobuf/f$g;

    .line 3043
    return-object p0
.end method

.method public aH()Z
    .registers 2

    .prologue
    .line 3032
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->aH()Z

    move-result v0

    return v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 2736
    invoke-static {}, Lcom/google/protobuf/f$f;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 2704
    invoke-virtual {p0}, Lcom/google/protobuf/f$f$a;->cB()Lcom/google/protobuf/f$f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 2704
    invoke-virtual {p0}, Lcom/google/protobuf/f$f$a;->cC()Lcom/google/protobuf/f$f$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 2704
    invoke-virtual {p0}, Lcom/google/protobuf/f$f$a;->cD()Lcom/google/protobuf/f$f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 2704
    invoke-virtual {p0}, Lcom/google/protobuf/f$f$a;->cD()Lcom/google/protobuf/f$f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 2704
    invoke-virtual {p0}, Lcom/google/protobuf/f$f$a;->cC()Lcom/google/protobuf/f$f$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 2704
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$f$a;->j(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$f$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/protobuf/f$g;)Lcom/google/protobuf/f$f$a;
    .registers 4

    .prologue
    .line 3051
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->aH()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    invoke-static {v0}, Lcom/google/protobuf/f$f;->d(Lcom/google/protobuf/f$f;)Lcom/google/protobuf/f$g;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/f$g;->cH()Lcom/google/protobuf/f$g;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 3053
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    iget-object v1, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    invoke-static {v1}, Lcom/google/protobuf/f$f;->d(Lcom/google/protobuf/f$f;)Lcom/google/protobuf/f$g;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/f$g;->c(Lcom/google/protobuf/f$g;)Lcom/google/protobuf/f$g$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/f$g$a;->e(Lcom/google/protobuf/f$g;)Lcom/google/protobuf/f$g$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/f$g$a;->cY()Lcom/google/protobuf/f$g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$f;->a(Lcom/google/protobuf/f$f;Lcom/google/protobuf/f$g;)Lcom/google/protobuf/f$g;

    .line 3058
    :goto_2b
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$f;->h(Lcom/google/protobuf/f$f;Z)Z

    .line 3059
    return-object p0

    .line 3056
    :cond_32
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$f;->a(Lcom/google/protobuf/f$f;Lcom/google/protobuf/f$g;)Lcom/google/protobuf/f$g;

    goto :goto_2b
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 2704
    invoke-virtual {p0}, Lcom/google/protobuf/f$f$a;->cC()Lcom/google/protobuf/f$f$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 2704
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$f$a;->j(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$f$a;

    move-result-object v0

    return-object v0
.end method

.method protected cB()Lcom/google/protobuf/f$f;
    .registers 2

    .prologue
    .line 2718
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    return-object v0
.end method

.method public cC()Lcom/google/protobuf/f$f$a;
    .registers 3

    .prologue
    .line 2731
    invoke-static {}, Lcom/google/protobuf/f$f$a;->cA()Lcom/google/protobuf/f$f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/f$f$a;->e(Lcom/google/protobuf/f$f;)Lcom/google/protobuf/f$f$a;

    move-result-object v0

    return-object v0
.end method

.method public cD()Lcom/google/protobuf/f$f;
    .registers 2

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/f$f$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2748
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    invoke-static {v0}, Lcom/google/protobuf/f$f$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 2750
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$f$a;->cE()Lcom/google/protobuf/f$f;

    move-result-object v0

    return-object v0
.end method

.method public cE()Lcom/google/protobuf/f$f;
    .registers 3

    .prologue
    .line 2763
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    if-nez v0, :cond_c

    .line 2764
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2767
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    .line 2768
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    .line 2769
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2704
    invoke-virtual {p0}, Lcom/google/protobuf/f$f$a;->cC()Lcom/google/protobuf/f$f$a;

    move-result-object v0

    return-object v0
.end method

.method public cw()Lcom/google/protobuf/f$g;
    .registers 2

    .prologue
    .line 3035
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->cw()Lcom/google/protobuf/f$g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 2704
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$f$a;->l(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$f$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/google/protobuf/f$f;)Lcom/google/protobuf/f$f$a;
    .registers 3

    .prologue
    .line 2782
    invoke-static {}, Lcom/google/protobuf/f$f;->cn()Lcom/google/protobuf/f$f;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2808
    :goto_6
    return-object p0

    .line 2783
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->hasName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2784
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$f$a;->m(Ljava/lang/String;)Lcom/google/protobuf/f$f$a;

    .line 2786
    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->bR()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2787
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$f$a;->L(I)Lcom/google/protobuf/f$f$a;

    .line 2789
    :cond_21
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->cp()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2790
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->cq()Lcom/google/protobuf/f$f$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$f$a;->a(Lcom/google/protobuf/f$f$b;)Lcom/google/protobuf/f$f$a;

    .line 2792
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->cr()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2793
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->cs()Lcom/google/protobuf/f$f$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$f$a;->a(Lcom/google/protobuf/f$f$c;)Lcom/google/protobuf/f$f$a;

    .line 2795
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->ct()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2796
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$f$a;->n(Ljava/lang/String;)Lcom/google/protobuf/f$f$a;

    .line 2798
    :cond_48
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->cu()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2799
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->cv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$f$a;->o(Ljava/lang/String;)Lcom/google/protobuf/f$f$a;

    .line 2801
    :cond_55
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->hasDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2802
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$f$a;->p(Ljava/lang/String;)Lcom/google/protobuf/f$f$a;

    .line 2804
    :cond_62
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->aH()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 2805
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->cw()Lcom/google/protobuf/f$g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$f$a;->b(Lcom/google/protobuf/f$g;)Lcom/google/protobuf/f$f$a;

    .line 2807
    :cond_6f
    invoke-virtual {p1}, Lcom/google/protobuf/f$f;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$f$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 2744
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public j(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$f$a;
    .registers 6

    .prologue
    .line 2815
    invoke-virtual {p0}, Lcom/google/protobuf/f$f$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 2819
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 2820
    sparse-switch v1, :sswitch_data_90

    .line 2825
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/protobuf/f$f$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2827
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$f$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 2828
    :goto_1c
    return-object p0

    .line 2822
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$f$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 2833
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$f$a;->m(Ljava/lang/String;)Lcom/google/protobuf/f$f$a;

    goto :goto_8

    .line 2837
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$f$a;->o(Ljava/lang/String;)Lcom/google/protobuf/f$f$a;

    goto :goto_8

    .line 2841
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$f$a;->L(I)Lcom/google/protobuf/f$f$a;

    goto :goto_8

    .line 2845
    :sswitch_3d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->o()I

    move-result v1

    .line 2846
    invoke-static {v1}, Lcom/google/protobuf/f$f$b;->M(I)Lcom/google/protobuf/f$f$b;

    move-result-object v2

    .line 2847
    if-nez v2, :cond_4c

    .line 2848
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/z$a;->j(II)Lcom/google/protobuf/z$a;

    goto :goto_8

    .line 2850
    :cond_4c
    invoke-virtual {p0, v2}, Lcom/google/protobuf/f$f$a;->a(Lcom/google/protobuf/f$f$b;)Lcom/google/protobuf/f$f$a;

    goto :goto_8

    .line 2855
    :sswitch_50
    invoke-virtual {p1}, Lcom/google/protobuf/d;->o()I

    move-result v1

    .line 2856
    invoke-static {v1}, Lcom/google/protobuf/f$f$c;->N(I)Lcom/google/protobuf/f$f$c;

    move-result-object v2

    .line 2857
    if-nez v2, :cond_5f

    .line 2858
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/z$a;->j(II)Lcom/google/protobuf/z$a;

    goto :goto_8

    .line 2860
    :cond_5f
    invoke-virtual {p0, v2}, Lcom/google/protobuf/f$f$a;->a(Lcom/google/protobuf/f$f$c;)Lcom/google/protobuf/f$f$a;

    goto :goto_8

    .line 2865
    :sswitch_63
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$f$a;->n(Ljava/lang/String;)Lcom/google/protobuf/f$f$a;

    goto :goto_8

    .line 2869
    :sswitch_6b
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$f$a;->p(Ljava/lang/String;)Lcom/google/protobuf/f$f$a;

    goto :goto_8

    .line 2873
    :sswitch_73
    invoke-static {}, Lcom/google/protobuf/f$g;->cR()Lcom/google/protobuf/f$g$a;

    move-result-object v1

    .line 2874
    invoke-virtual {p0}, Lcom/google/protobuf/f$f$a;->aH()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 2875
    invoke-virtual {p0}, Lcom/google/protobuf/f$f$a;->cw()Lcom/google/protobuf/f$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/f$g$a;->e(Lcom/google/protobuf/f$g;)Lcom/google/protobuf/f$g$a;

    .line 2877
    :cond_84
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 2878
    invoke-virtual {v1}, Lcom/google/protobuf/f$g$a;->cY()Lcom/google/protobuf/f$g;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$f$a;->a(Lcom/google/protobuf/f$g;)Lcom/google/protobuf/f$f$a;

    goto/16 :goto_8

    .line 2820
    :sswitch_data_90
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x12 -> :sswitch_2d
        0x18 -> :sswitch_35
        0x20 -> :sswitch_3d
        0x28 -> :sswitch_50
        0x32 -> :sswitch_63
        0x3a -> :sswitch_6b
        0x42 -> :sswitch_73
    .end sparse-switch
.end method

.method public l(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$f$a;
    .registers 3

    .prologue
    .line 2773
    instance-of v0, p1, Lcom/google/protobuf/f$f;

    if-eqz v0, :cond_b

    .line 2774
    check-cast p1, Lcom/google/protobuf/f$f;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$f$a;->e(Lcom/google/protobuf/f$f;)Lcom/google/protobuf/f$f$a;

    move-result-object p0

    .line 2777
    :goto_a
    return-object p0

    .line 2776
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public m(Ljava/lang/String;)Lcom/google/protobuf/f$f$a;
    .registers 4

    .prologue
    .line 2894
    if-nez p1, :cond_8

    .line 2895
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2897
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$f;->a(Lcom/google/protobuf/f$f;Z)Z

    .line 2898
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$f;->a(Lcom/google/protobuf/f$f;Ljava/lang/String;)Ljava/lang/String;

    .line 2899
    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/google/protobuf/f$f$a;
    .registers 4

    .prologue
    .line 2975
    if-nez p1, :cond_8

    .line 2976
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2978
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$f;->e(Lcom/google/protobuf/f$f;Z)Z

    .line 2979
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$f;->b(Lcom/google/protobuf/f$f;Ljava/lang/String;)Ljava/lang/String;

    .line 2980
    return-object p0
.end method

.method public o(Ljava/lang/String;)Lcom/google/protobuf/f$f$a;
    .registers 4

    .prologue
    .line 2996
    if-nez p1, :cond_8

    .line 2997
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2999
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$f;->f(Lcom/google/protobuf/f$f;Z)Z

    .line 3000
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$f;->c(Lcom/google/protobuf/f$f;Ljava/lang/String;)Ljava/lang/String;

    .line 3001
    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/google/protobuf/f$f$a;
    .registers 4

    .prologue
    .line 3017
    if-nez p1, :cond_8

    .line 3018
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3020
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$f;->g(Lcom/google/protobuf/f$f;Z)Z

    .line 3021
    iget-object v0, p0, Lcom/google/protobuf/f$f$a;->aQ:Lcom/google/protobuf/f$f;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$f;->d(Lcom/google/protobuf/f$f;Ljava/lang/String;)Ljava/lang/String;

    .line 3022
    return-object p0
.end method
