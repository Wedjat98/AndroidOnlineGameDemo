.class public final Lmobi/tikl/wire/control/a$Z$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private tw:Lmobi/tikl/wire/control/a$Z;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28781
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static Bf()Lmobi/tikl/wire/control/a$Z$a;
    .registers 3

    .prologue
    .line 28784
    new-instance v0, Lmobi/tikl/wire/control/a$Z$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$Z$a;-><init>()V

    .line 28785
    new-instance v1, Lmobi/tikl/wire/control/a$Z;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$Z;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    .line 28786
    return-object v0
.end method

.method static synthetic Bk()Lmobi/tikl/wire/control/a$Z$a;
    .registers 1

    .prologue
    .line 28776
    invoke-static {}, Lmobi/tikl/wire/control/a$Z$a;->Bf()Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public AW()Z
    .registers 2

    .prologue
    .line 28918
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$Z;->AW()Z

    move-result v0

    return v0
.end method

.method public AX()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 28921
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$Z;->AX()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method public Ba()Z
    .registers 2

    .prologue
    .line 28976
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$Z;->Ba()Z

    move-result v0

    return v0
.end method

.method public Bb()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 28979
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$Z;->Bb()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    return-object v0
.end method

.method protected Bg()Lmobi/tikl/wire/control/a$Z;
    .registers 2

    .prologue
    .line 28790
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    return-object v0
.end method

.method public Bh()Lmobi/tikl/wire/control/a$Z$a;
    .registers 3

    .prologue
    .line 28803
    invoke-static {}, Lmobi/tikl/wire/control/a$Z$a;->Bf()Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$Z$a;->d(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    return-object v0
.end method

.method public Bi()Lmobi/tikl/wire/control/a$Z;
    .registers 2

    .prologue
    .line 28819
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 28820
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$Z$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 28822
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z$a;->Bj()Lmobi/tikl/wire/control/a$Z;

    move-result-object v0

    return-object v0
.end method

.method public Bj()Lmobi/tikl/wire/control/a$Z;
    .registers 3

    .prologue
    .line 28835
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    if-nez v0, :cond_c

    .line 28836
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28839
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    .line 28840
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    .line 28841
    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 28776
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$Z$a;->av(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 28776
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$Z$a;->ax(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 28808
    invoke-static {}, Lmobi/tikl/wire/control/a$Z;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 28776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z$a;->Bg()Lmobi/tikl/wire/control/a$Z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 28776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z$a;->Bh()Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 28776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z$a;->Bi()Lmobi/tikl/wire/control/a$Z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 28776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z$a;->Bi()Lmobi/tikl/wire/control/a$Z;

    move-result-object v0

    return-object v0
.end method

.method public am(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$Z$a;
    .registers 4

    .prologue
    .line 28924
    if-nez p1, :cond_8

    .line 28925
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28927
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Z;->a(Lmobi/tikl/wire/control/a$Z;Z)Z

    .line 28928
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$Z;->a(Lmobi/tikl/wire/control/a$Z;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 28929
    return-object p0
.end method

.method public an(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$Z$a;
    .registers 4

    .prologue
    .line 28937
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$Z;->AW()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$Z;->b(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 28939
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$Z;->b(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Z;->a(Lmobi/tikl/wire/control/a$Z;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 28944
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Z;->a(Lmobi/tikl/wire/control/a$Z;Z)Z

    .line 28945
    return-object p0

    .line 28942
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$Z;->a(Lmobi/tikl/wire/control/a$Z;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public ao(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$Z$a;
    .registers 4

    .prologue
    .line 28982
    if-nez p1, :cond_8

    .line 28983
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28985
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Z;->c(Lmobi/tikl/wire/control/a$Z;Z)Z

    .line 28986
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$Z;->b(Lmobi/tikl/wire/control/a$Z;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 28987
    return-object p0
.end method

.method public ap(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$Z$a;
    .registers 4

    .prologue
    .line 28995
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$Z;->Ba()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$Z;->c(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 28997
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$Z;->c(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$G;->I(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Z;->b(Lmobi/tikl/wire/control/a$Z;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    .line 29002
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Z;->c(Lmobi/tikl/wire/control/a$Z;Z)Z

    .line 29003
    return-object p0

    .line 29000
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$Z;->b(Lmobi/tikl/wire/control/a$Z;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;

    goto :goto_2b
.end method

.method public av(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$Z$a;
    .registers 6

    .prologue
    .line 28872
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 28876
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 28877
    sparse-switch v1, :sswitch_data_66

    .line 28882
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$Z$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 28884
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Z$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 28885
    :goto_1c
    return-object p0

    .line 28879
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Z$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 28890
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 28891
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z$a;->AW()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 28892
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z$a;->AX()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 28894
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 28895
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$Z$a;->am(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$Z$a;

    goto :goto_8

    .line 28899
    :sswitch_41
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$Z$a;->be(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Z$a;

    goto :goto_8

    .line 28903
    :sswitch_49
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vF()Lmobi/tikl/wire/control/a$G$a;

    move-result-object v1

    .line 28904
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z$a;->Ba()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 28905
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z$a;->Bb()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$G$a;->J(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G$a;

    .line 28907
    :cond_5a
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 28908
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G$a;->vM()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$Z$a;->ao(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$Z$a;

    goto :goto_8

    .line 28877
    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x12 -> :sswitch_41
        0x1a -> :sswitch_49
    .end sparse-switch
.end method

.method public ax(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$Z$a;
    .registers 3

    .prologue
    .line 28845
    instance-of v0, p1, Lmobi/tikl/wire/control/a$Z;

    if-eqz v0, :cond_b

    .line 28846
    check-cast p1, Lmobi/tikl/wire/control/a$Z;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$Z$a;->d(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$Z$a;

    move-result-object p0

    .line 28849
    :goto_a
    return-object p0

    .line 28848
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 28776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z$a;->Bh()Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 28776
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$Z$a;->av(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    return-object v0
.end method

.method public be(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Z$a;
    .registers 4

    .prologue
    .line 28961
    if-nez p1, :cond_8

    .line 28962
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28964
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Z;->b(Lmobi/tikl/wire/control/a$Z;Z)Z

    .line 28965
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$Z;->a(Lmobi/tikl/wire/control/a$Z;Ljava/lang/String;)Ljava/lang/String;

    .line 28966
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 28776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z$a;->Bh()Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 28776
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$Z$a;->av(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 28776
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z$a;->Bh()Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 28776
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$Z$a;->ax(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$Z$a;
    .registers 3

    .prologue
    .line 28854
    invoke-static {}, Lmobi/tikl/wire/control/a$Z;->AU()Lmobi/tikl/wire/control/a$Z;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 28865
    :goto_6
    return-object p0

    .line 28855
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Z;->AW()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 28856
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Z;->AX()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Z$a;->an(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$Z$a;

    .line 28858
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Z;->AY()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 28859
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Z;->AZ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Z$a;->be(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Z$a;

    .line 28861
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Z;->Ba()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 28862
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Z;->Bb()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Z$a;->ap(Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$Z$a;

    .line 28864
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Z;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Z$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 28816
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z$a;->tw:Lmobi/tikl/wire/control/a$Z;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$Z;->isInitialized()Z

    move-result v0

    return v0
.end method
