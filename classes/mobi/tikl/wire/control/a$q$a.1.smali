.class public final Lmobi/tikl/wire/control/a$q$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qi:Lmobi/tikl/wire/control/a$q;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32838
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static rV()Lmobi/tikl/wire/control/a$q$a;
    .registers 3

    .prologue
    .line 32841
    new-instance v0, Lmobi/tikl/wire/control/a$q$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$q$a;-><init>()V

    .line 32842
    new-instance v1, Lmobi/tikl/wire/control/a$q;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$q;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    .line 32843
    return-object v0
.end method

.method static synthetic sa()Lmobi/tikl/wire/control/a$q$a;
    .registers 1

    .prologue
    .line 32833
    invoke-static {}, Lmobi/tikl/wire/control/a$q$a;->rV()Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public M(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$q$a;
    .registers 6

    .prologue
    .line 32929
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 32933
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 32934
    sparse-switch v1, :sswitch_data_52

    .line 32939
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$q$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 32941
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$q$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 32942
    :goto_1c
    return-object p0

    .line 32936
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$q$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 32947
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$q$a;->aW(I)Lmobi/tikl/wire/control/a$q$a;

    goto :goto_8

    .line 32951
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$q$a;->av(Ljava/lang/String;)Lmobi/tikl/wire/control/a$q$a;

    goto :goto_8

    .line 32955
    :sswitch_35
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 32956
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q$a;->od()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 32957
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q$a;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 32959
    :cond_46
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 32960
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$q$a;->u(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$q$a;

    goto :goto_8

    .line 32934
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_35
    .end sparse-switch
.end method

.method public O(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$q$a;
    .registers 3

    .prologue
    .line 32902
    instance-of v0, p1, Lmobi/tikl/wire/control/a$q;

    if-eqz v0, :cond_b

    .line 32903
    check-cast p1, Lmobi/tikl/wire/control/a$q;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$q$a;->c(Lmobi/tikl/wire/control/a$q;)Lmobi/tikl/wire/control/a$q$a;

    move-result-object p0

    .line 32906
    :goto_a
    return-object p0

    .line 32905
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 32833
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$q$a;->M(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 32833
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$q$a;->O(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 32865
    invoke-static {}, Lmobi/tikl/wire/control/a$q;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 32833
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q$a;->rW()Lmobi/tikl/wire/control/a$q;

    move-result-object v0

    return-object v0
.end method

.method public aW(I)Lmobi/tikl/wire/control/a$q$a;
    .registers 4

    .prologue
    .line 32976
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$q;->a(Lmobi/tikl/wire/control/a$q;Z)Z

    .line 32977
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$q;->a(Lmobi/tikl/wire/control/a$q;I)I

    .line 32978
    return-object p0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 32833
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q$a;->rX()Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 32833
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q$a;->rY()Lmobi/tikl/wire/control/a$q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 32833
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q$a;->rY()Lmobi/tikl/wire/control/a$q;

    move-result-object v0

    return-object v0
.end method

.method public av(Ljava/lang/String;)Lmobi/tikl/wire/control/a$q$a;
    .registers 4

    .prologue
    .line 32994
    if-nez p1, :cond_8

    .line 32995
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32997
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$q;->b(Lmobi/tikl/wire/control/a$q;Z)Z

    .line 32998
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$q;->a(Lmobi/tikl/wire/control/a$q;Ljava/lang/String;)Ljava/lang/String;

    .line 32999
    return-object p0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 32833
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q$a;->rX()Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 32833
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$q$a;->M(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 32833
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q$a;->rX()Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 32833
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$q$a;->M(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmobi/tikl/wire/control/a$q;)Lmobi/tikl/wire/control/a$q$a;
    .registers 3

    .prologue
    .line 32911
    invoke-static {}, Lmobi/tikl/wire/control/a$q;->rQ()Lmobi/tikl/wire/control/a$q;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 32922
    :goto_6
    return-object p0

    .line 32912
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$q;->oc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 32913
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$q;->getMsgId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$q$a;->aW(I)Lmobi/tikl/wire/control/a$q$a;

    .line 32915
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$q;->pS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 32916
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$q;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$q$a;->av(Ljava/lang/String;)Lmobi/tikl/wire/control/a$q$a;

    .line 32918
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$q;->od()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 32919
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$q;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$q$a;->v(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$q$a;

    .line 32921
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$q;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$q$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 32833
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q$a;->rX()Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 32833
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$q$a;->O(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 32873
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$q;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 33009
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$q;->od()Z

    move-result v0

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 33012
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$q;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected rW()Lmobi/tikl/wire/control/a$q;
    .registers 2

    .prologue
    .line 32847
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    return-object v0
.end method

.method public rX()Lmobi/tikl/wire/control/a$q$a;
    .registers 3

    .prologue
    .line 32860
    invoke-static {}, Lmobi/tikl/wire/control/a$q$a;->rV()Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$q$a;->c(Lmobi/tikl/wire/control/a$q;)Lmobi/tikl/wire/control/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method public rY()Lmobi/tikl/wire/control/a$q;
    .registers 2

    .prologue
    .line 32876
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 32877
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$q$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 32879
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$q$a;->rZ()Lmobi/tikl/wire/control/a$q;

    move-result-object v0

    return-object v0
.end method

.method public rZ()Lmobi/tikl/wire/control/a$q;
    .registers 3

    .prologue
    .line 32892
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    if-nez v0, :cond_c

    .line 32893
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32896
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    .line 32897
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    .line 32898
    return-object v0
.end method

.method public u(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$q$a;
    .registers 4

    .prologue
    .line 33015
    if-nez p1, :cond_8

    .line 33016
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33018
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$q;->c(Lmobi/tikl/wire/control/a$q;Z)Z

    .line 33019
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$q;->a(Lmobi/tikl/wire/control/a$q;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 33020
    return-object p0
.end method

.method public v(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$q$a;
    .registers 4

    .prologue
    .line 33028
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$q;->od()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$q;->b(Lmobi/tikl/wire/control/a$q;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 33030
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$q;->b(Lmobi/tikl/wire/control/a$q;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$q;->a(Lmobi/tikl/wire/control/a$q;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 33035
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$q;->c(Lmobi/tikl/wire/control/a$q;Z)Z

    .line 33036
    return-object p0

    .line 33033
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$q$a;->qi:Lmobi/tikl/wire/control/a$q;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$q;->a(Lmobi/tikl/wire/control/a$q;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method
