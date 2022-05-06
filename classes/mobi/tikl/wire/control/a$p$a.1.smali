.class public final Lmobi/tikl/wire/control/a$p$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qg:Lmobi/tikl/wire/control/a$p;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33690
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static rK()Lmobi/tikl/wire/control/a$p$a;
    .registers 3

    .prologue
    .line 33693
    new-instance v0, Lmobi/tikl/wire/control/a$p$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$p$a;-><init>()V

    .line 33694
    new-instance v1, Lmobi/tikl/wire/control/a$p;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$p;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$p$a;->qg:Lmobi/tikl/wire/control/a$p;

    .line 33695
    return-object v0
.end method

.method static synthetic rP()Lmobi/tikl/wire/control/a$p$a;
    .registers 1

    .prologue
    .line 33685
    invoke-static {}, Lmobi/tikl/wire/control/a$p$a;->rK()Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public L(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$p$a;
    .registers 5

    .prologue
    .line 33781
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 33785
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 33786
    sparse-switch v1, :sswitch_data_3e

    .line 33791
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$p$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 33793
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$p$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 33794
    :goto_1c
    return-object p0

    .line 33788
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$p$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 33799
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$p$a;->aU(I)Lmobi/tikl/wire/control/a$p$a;

    goto :goto_8

    .line 33803
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$p$a;->au(Ljava/lang/String;)Lmobi/tikl/wire/control/a$p$a;

    goto :goto_8

    .line 33807
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$p$a;->aV(I)Lmobi/tikl/wire/control/a$p$a;

    goto :goto_8

    .line 33786
    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x18 -> :sswitch_35
    .end sparse-switch
.end method

.method public N(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$p$a;
    .registers 3

    .prologue
    .line 33754
    instance-of v0, p1, Lmobi/tikl/wire/control/a$p;

    if-eqz v0, :cond_b

    .line 33755
    check-cast p1, Lmobi/tikl/wire/control/a$p;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$p$a;->c(Lmobi/tikl/wire/control/a$p;)Lmobi/tikl/wire/control/a$p$a;

    move-result-object p0

    .line 33758
    :goto_a
    return-object p0

    .line 33757
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 33685
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$p$a;->L(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 33685
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$p$a;->N(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 33717
    invoke-static {}, Lmobi/tikl/wire/control/a$p;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public aU(I)Lmobi/tikl/wire/control/a$p$a;
    .registers 4

    .prologue
    .line 33823
    iget-object v0, p0, Lmobi/tikl/wire/control/a$p$a;->qg:Lmobi/tikl/wire/control/a$p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$p;->a(Lmobi/tikl/wire/control/a$p;Z)Z

    .line 33824
    iget-object v0, p0, Lmobi/tikl/wire/control/a$p$a;->qg:Lmobi/tikl/wire/control/a$p;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$p;->a(Lmobi/tikl/wire/control/a$p;I)I

    .line 33825
    return-object p0
.end method

.method public aV(I)Lmobi/tikl/wire/control/a$p$a;
    .registers 4

    .prologue
    .line 33862
    iget-object v0, p0, Lmobi/tikl/wire/control/a$p$a;->qg:Lmobi/tikl/wire/control/a$p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$p;->c(Lmobi/tikl/wire/control/a$p;Z)Z

    .line 33863
    iget-object v0, p0, Lmobi/tikl/wire/control/a$p$a;->qg:Lmobi/tikl/wire/control/a$p;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$p;->b(Lmobi/tikl/wire/control/a$p;I)I

    .line 33864
    return-object p0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 33685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p$a;->rL()Lmobi/tikl/wire/control/a$p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 33685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p$a;->rM()Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 33685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p$a;->rN()Lmobi/tikl/wire/control/a$p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 33685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p$a;->rN()Lmobi/tikl/wire/control/a$p;

    move-result-object v0

    return-object v0
.end method

.method public au(Ljava/lang/String;)Lmobi/tikl/wire/control/a$p$a;
    .registers 4

    .prologue
    .line 33841
    if-nez p1, :cond_8

    .line 33842
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33844
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$p$a;->qg:Lmobi/tikl/wire/control/a$p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$p;->b(Lmobi/tikl/wire/control/a$p;Z)Z

    .line 33845
    iget-object v0, p0, Lmobi/tikl/wire/control/a$p$a;->qg:Lmobi/tikl/wire/control/a$p;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$p;->a(Lmobi/tikl/wire/control/a$p;Ljava/lang/String;)Ljava/lang/String;

    .line 33846
    return-object p0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 33685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p$a;->rM()Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 33685
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$p$a;->L(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 33685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p$a;->rM()Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 33685
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$p$a;->L(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$p;)Lmobi/tikl/wire/control/a$p$a;
    .registers 3

    .prologue
    .line 33763
    invoke-static {}, Lmobi/tikl/wire/control/a$p;->rF()Lmobi/tikl/wire/control/a$p;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 33774
    :goto_6
    return-object p0

    .line 33764
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$p;->oc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 33765
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$p;->getMsgId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$p$a;->aU(I)Lmobi/tikl/wire/control/a$p$a;

    .line 33767
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$p;->pS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 33768
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$p;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$p$a;->au(Ljava/lang/String;)Lmobi/tikl/wire/control/a$p$a;

    .line 33770
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$p;->qq()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 33771
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$p;->qr()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$p$a;->aV(I)Lmobi/tikl/wire/control/a$p$a;

    .line 33773
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$p;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$p$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 33685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p$a;->rM()Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 33685
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$p$a;->N(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 33725
    iget-object v0, p0, Lmobi/tikl/wire/control/a$p$a;->qg:Lmobi/tikl/wire/control/a$p;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$p;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected rL()Lmobi/tikl/wire/control/a$p;
    .registers 2

    .prologue
    .line 33699
    iget-object v0, p0, Lmobi/tikl/wire/control/a$p$a;->qg:Lmobi/tikl/wire/control/a$p;

    return-object v0
.end method

.method public rM()Lmobi/tikl/wire/control/a$p$a;
    .registers 3

    .prologue
    .line 33712
    invoke-static {}, Lmobi/tikl/wire/control/a$p$a;->rK()Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$p$a;->qg:Lmobi/tikl/wire/control/a$p;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$p$a;->c(Lmobi/tikl/wire/control/a$p;)Lmobi/tikl/wire/control/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public rN()Lmobi/tikl/wire/control/a$p;
    .registers 2

    .prologue
    .line 33728
    iget-object v0, p0, Lmobi/tikl/wire/control/a$p$a;->qg:Lmobi/tikl/wire/control/a$p;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 33729
    iget-object v0, p0, Lmobi/tikl/wire/control/a$p$a;->qg:Lmobi/tikl/wire/control/a$p;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$p$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 33731
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$p$a;->rO()Lmobi/tikl/wire/control/a$p;

    move-result-object v0

    return-object v0
.end method

.method public rO()Lmobi/tikl/wire/control/a$p;
    .registers 3

    .prologue
    .line 33744
    iget-object v0, p0, Lmobi/tikl/wire/control/a$p$a;->qg:Lmobi/tikl/wire/control/a$p;

    if-nez v0, :cond_c

    .line 33745
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33748
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$p$a;->qg:Lmobi/tikl/wire/control/a$p;

    .line 33749
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$p$a;->qg:Lmobi/tikl/wire/control/a$p;

    .line 33750
    return-object v0
.end method
