.class public final Lcom/google/protobuf/f$c$a;
.super Lcom/google/protobuf/q$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private aw:Lcom/google/protobuf/f$c;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 6654
    invoke-direct {p0}, Lcom/google/protobuf/q$b;-><init>()V

    return-void
.end method

.method private static bH()Lcom/google/protobuf/f$c$a;
    .registers 3

    .prologue
    .line 6657
    new-instance v0, Lcom/google/protobuf/f$c$a;

    invoke-direct {v0}, Lcom/google/protobuf/f$c$a;-><init>()V

    .line 6658
    new-instance v1, Lcom/google/protobuf/f$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/f$c;-><init>(Lcom/google/protobuf/g;)V

    iput-object v1, v0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    .line 6659
    return-object v0
.end method

.method static synthetic bO()Lcom/google/protobuf/f$c$a;
    .registers 1

    .prologue
    .line 6648
    invoke-static {}, Lcom/google/protobuf/f$c$a;->bH()Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 6648
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$c$a;->g(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 6648
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$c$a;->i(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/f$p;)Lcom/google/protobuf/f$c$a;
    .registers 4

    .prologue
    .line 6797
    if-nez p1, :cond_8

    .line 6798
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6800
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    invoke-static {v0}, Lcom/google/protobuf/f$c;->d(Lcom/google/protobuf/f$c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 6801
    iget-object v0, p0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$c;->a(Lcom/google/protobuf/f$c;Ljava/util/List;)Ljava/util/List;

    .line 6803
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    invoke-static {v0}, Lcom/google/protobuf/f$c;->d(Lcom/google/protobuf/f$c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6804
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 6681
    invoke-static {}, Lcom/google/protobuf/f$c;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 6648
    invoke-virtual {p0}, Lcom/google/protobuf/f$c$a;->bI()Lcom/google/protobuf/f$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 6648
    invoke-virtual {p0}, Lcom/google/protobuf/f$c$a;->bJ()Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 6648
    invoke-virtual {p0}, Lcom/google/protobuf/f$c$a;->bK()Lcom/google/protobuf/f$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 6648
    invoke-virtual {p0}, Lcom/google/protobuf/f$c$a;->bK()Lcom/google/protobuf/f$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 6648
    invoke-virtual {p0}, Lcom/google/protobuf/f$c$a;->bJ()Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 6648
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$c$a;->g(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method

.method protected bI()Lcom/google/protobuf/f$c;
    .registers 2

    .prologue
    .line 6663
    iget-object v0, p0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    return-object v0
.end method

.method public bJ()Lcom/google/protobuf/f$c$a;
    .registers 3

    .prologue
    .line 6676
    invoke-static {}, Lcom/google/protobuf/f$c$a;->bH()Lcom/google/protobuf/f$c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/f$c$a;->e(Lcom/google/protobuf/f$c;)Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method

.method public bK()Lcom/google/protobuf/f$c;
    .registers 2

    .prologue
    .line 6692
    iget-object v0, p0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/f$c$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 6693
    iget-object v0, p0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    invoke-static {v0}, Lcom/google/protobuf/f$c$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 6695
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$c$a;->bL()Lcom/google/protobuf/f$c;

    move-result-object v0

    return-object v0
.end method

.method public bL()Lcom/google/protobuf/f$c;
    .registers 3

    .prologue
    .line 6708
    iget-object v0, p0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    if-nez v0, :cond_c

    .line 6709
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6712
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    invoke-static {v0}, Lcom/google/protobuf/f$c;->d(Lcom/google/protobuf/f$c;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 6713
    iget-object v0, p0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    iget-object v1, p0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    invoke-static {v1}, Lcom/google/protobuf/f$c;->d(Lcom/google/protobuf/f$c;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$c;->a(Lcom/google/protobuf/f$c;Ljava/util/List;)Ljava/util/List;

    .line 6716
    :cond_25
    iget-object v0, p0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    .line 6717
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    .line 6718
    return-object v0
.end method

.method protected synthetic bM()Lcom/google/protobuf/q$c;
    .registers 2

    .prologue
    .line 6648
    invoke-virtual {p0}, Lcom/google/protobuf/f$c$a;->bI()Lcom/google/protobuf/f$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic bN()Lcom/google/protobuf/q$b;
    .registers 2

    .prologue
    .line 6648
    invoke-virtual {p0}, Lcom/google/protobuf/f$c$a;->bJ()Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 6648
    invoke-virtual {p0}, Lcom/google/protobuf/f$c$a;->bJ()Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 6648
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$c$a;->g(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 6648
    invoke-virtual {p0}, Lcom/google/protobuf/f$c$a;->bJ()Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 6648
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$c$a;->i(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$c$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/google/protobuf/f$c;)Lcom/google/protobuf/f$c$a;
    .registers 4

    .prologue
    .line 6731
    invoke-static {}, Lcom/google/protobuf/f$c;->bB()Lcom/google/protobuf/f$c;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 6740
    :goto_6
    return-object p0

    .line 6732
    :cond_7
    invoke-static {p1}, Lcom/google/protobuf/f$c;->d(Lcom/google/protobuf/f$c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 6733
    iget-object v0, p0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    invoke-static {v0}, Lcom/google/protobuf/f$c;->d(Lcom/google/protobuf/f$c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 6734
    iget-object v0, p0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$c;->a(Lcom/google/protobuf/f$c;Ljava/util/List;)Ljava/util/List;

    .line 6736
    :cond_27
    iget-object v0, p0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    invoke-static {v0}, Lcom/google/protobuf/f$c;->d(Lcom/google/protobuf/f$c;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$c;->d(Lcom/google/protobuf/f$c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6738
    :cond_34
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$c$a;->a(Lcom/google/protobuf/q$c;)V

    .line 6739
    invoke-virtual {p1}, Lcom/google/protobuf/f$c;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$c$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public g(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$c$a;
    .registers 5

    .prologue
    .line 6747
    invoke-virtual {p0}, Lcom/google/protobuf/f$c$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 6751
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 6752
    sparse-switch v1, :sswitch_data_34

    .line 6757
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/protobuf/f$c$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 6759
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$c$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 6760
    :goto_1c
    return-object p0

    .line 6754
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$c$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 6765
    :sswitch_25
    invoke-static {}, Lcom/google/protobuf/f$p;->fG()Lcom/google/protobuf/f$p$a;

    move-result-object v1

    .line 6766
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 6767
    invoke-virtual {v1}, Lcom/google/protobuf/f$p$a;->fN()Lcom/google/protobuf/f$p;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$c$a;->a(Lcom/google/protobuf/f$p;)Lcom/google/protobuf/f$c$a;

    goto :goto_8

    .line 6752
    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_1d
        0x1f3a -> :sswitch_25
    .end sparse-switch
.end method

.method public i(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$c$a;
    .registers 3

    .prologue
    .line 6722
    instance-of v0, p1, Lcom/google/protobuf/f$c;

    if-eqz v0, :cond_b

    .line 6723
    check-cast p1, Lcom/google/protobuf/f$c;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$c$a;->e(Lcom/google/protobuf/f$c;)Lcom/google/protobuf/f$c$a;

    move-result-object p0

    .line 6726
    :goto_a
    return-object p0

    .line 6725
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$b;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 6689
    iget-object v0, p0, Lcom/google/protobuf/f$c$a;->aw:Lcom/google/protobuf/f$c;

    invoke-virtual {v0}, Lcom/google/protobuf/f$c;->isInitialized()Z

    move-result v0

    return v0
.end method
