.class public final Lcom/google/protobuf/f$h$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private bH:Lcom/google/protobuf/f$h;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/f$h$a;)Lcom/google/protobuf/f$h;
    .registers 2

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/google/protobuf/f$h$a;->dr()Lcom/google/protobuf/f$h;

    move-result-object v0

    return-object v0
.end method

.method private static dn()Lcom/google/protobuf/f$h$a;
    .registers 3

    .prologue
    .line 635
    new-instance v0, Lcom/google/protobuf/f$h$a;

    invoke-direct {v0}, Lcom/google/protobuf/f$h$a;-><init>()V

    .line 636
    new-instance v1, Lcom/google/protobuf/f$h;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/f$h;-><init>(Lcom/google/protobuf/g;)V

    iput-object v1, v0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    .line 637
    return-object v0
.end method

.method private dr()Lcom/google/protobuf/f$h;
    .registers 2

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/google/protobuf/f$h$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 679
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/y;->hg()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 682
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$h$a;->ds()Lcom/google/protobuf/f$h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic dt()Lcom/google/protobuf/f$h$a;
    .registers 1

    .prologue
    .line 627
    invoke-static {}, Lcom/google/protobuf/f$h$a;->dn()Lcom/google/protobuf/f$h$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 627
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$h$a;->l(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$h$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 627
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$h$a;->n(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$h$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/f$j;)Lcom/google/protobuf/f$h$a;
    .registers 4

    .prologue
    .line 1134
    if-nez p1, :cond_8

    .line 1135
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1137
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->c(Lcom/google/protobuf/f$h;Z)Z

    .line 1138
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$h;->a(Lcom/google/protobuf/f$h;Lcom/google/protobuf/f$j;)Lcom/google/protobuf/f$j;

    .line 1139
    return-object p0
.end method

.method public a(Lcom/google/protobuf/f$n;)Lcom/google/protobuf/f$h$a;
    .registers 4

    .prologue
    .line 1046
    if-nez p1, :cond_8

    .line 1047
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1049
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->e(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1050
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->d(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;

    .line 1052
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->e(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    return-object p0
.end method

.method public aH()Z
    .registers 2

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-virtual {v0}, Lcom/google/protobuf/f$h;->aH()Z

    move-result v0

    return v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 659
    invoke-static {}, Lcom/google/protobuf/f$h;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/google/protobuf/f$h$a;->do()Lcom/google/protobuf/f$h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/google/protobuf/f$h$a;->dp()Lcom/google/protobuf/f$h$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/google/protobuf/f$h$a;->dq()Lcom/google/protobuf/f$h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/google/protobuf/f$h$a;->dq()Lcom/google/protobuf/f$h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/google/protobuf/f$h$a;->dp()Lcom/google/protobuf/f$h$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 627
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$h$a;->l(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$h$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/protobuf/f$j;)Lcom/google/protobuf/f$h$a;
    .registers 4

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-virtual {v0}, Lcom/google/protobuf/f$h;->aH()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->g(Lcom/google/protobuf/f$h;)Lcom/google/protobuf/f$j;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/f$j;->dG()Lcom/google/protobuf/f$j;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 1149
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    iget-object v1, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v1}, Lcom/google/protobuf/f$h;->g(Lcom/google/protobuf/f$h;)Lcom/google/protobuf/f$j;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/f$j;->c(Lcom/google/protobuf/f$j;)Lcom/google/protobuf/f$j$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/f$j$a;->e(Lcom/google/protobuf/f$j;)Lcom/google/protobuf/f$j$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/f$j$a;->ed()Lcom/google/protobuf/f$j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->a(Lcom/google/protobuf/f$h;Lcom/google/protobuf/f$j;)Lcom/google/protobuf/f$j;

    .line 1154
    :goto_2b
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->c(Lcom/google/protobuf/f$h;Z)Z

    .line 1155
    return-object p0

    .line 1152
    :cond_32
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$h;->a(Lcom/google/protobuf/f$h;Lcom/google/protobuf/f$j;)Lcom/google/protobuf/f$j;

    goto :goto_2b
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/google/protobuf/f$h$a;->dp()Lcom/google/protobuf/f$h$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 627
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$h$a;->l(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$h$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/google/protobuf/f$h$a;->dp()Lcom/google/protobuf/f$h$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 627
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$h$a;->n(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$h$a;

    move-result-object v0

    return-object v0
.end method

.method public dj()Lcom/google/protobuf/f$j;
    .registers 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-virtual {v0}, Lcom/google/protobuf/f$h;->dj()Lcom/google/protobuf/f$j;

    move-result-object v0

    return-object v0
.end method

.method protected do()Lcom/google/protobuf/f$h;
    .registers 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    return-object v0
.end method

.method public dp()Lcom/google/protobuf/f$h$a;
    .registers 3

    .prologue
    .line 654
    invoke-static {}, Lcom/google/protobuf/f$h$a;->dn()Lcom/google/protobuf/f$h$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/f$h$a;->h(Lcom/google/protobuf/f$h;)Lcom/google/protobuf/f$h$a;

    move-result-object v0

    return-object v0
.end method

.method public dq()Lcom/google/protobuf/f$h;
    .registers 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/f$h$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 671
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 673
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$h$a;->ds()Lcom/google/protobuf/f$h;

    move-result-object v0

    return-object v0
.end method

.method public ds()Lcom/google/protobuf/f$h;
    .registers 3

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    if-nez v0, :cond_c

    .line 687
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->b(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 691
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    iget-object v1, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v1}, Lcom/google/protobuf/f$h;->b(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->a(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;

    .line 694
    :cond_25
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->c(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_3e

    .line 695
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    iget-object v1, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v1}, Lcom/google/protobuf/f$h;->c(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->b(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;

    .line 698
    :cond_3e
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->d(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_57

    .line 699
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    iget-object v1, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v1}, Lcom/google/protobuf/f$h;->d(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->c(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;

    .line 702
    :cond_57
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->e(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_70

    .line 703
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    iget-object v1, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v1}, Lcom/google/protobuf/f$h;->e(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->d(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;

    .line 706
    :cond_70
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->f(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_89

    .line 707
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    iget-object v1, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v1}, Lcom/google/protobuf/f$h;->f(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->e(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;

    .line 710
    :cond_89
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    .line 711
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    .line 712
    return-object v0
.end method

.method public f(Lcom/google/protobuf/f$b;)Lcom/google/protobuf/f$h$a;
    .registers 4

    .prologue
    .line 995
    if-nez p1, :cond_8

    .line 996
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 998
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->d(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 999
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->c(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;

    .line 1001
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->d(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    return-object p0
.end method

.method public f(Lcom/google/protobuf/f$f;)Lcom/google/protobuf/f$h$a;
    .registers 4

    .prologue
    .line 1097
    if-nez p1, :cond_8

    .line 1098
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1100
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->f(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1101
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->e(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;

    .line 1103
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->f(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    return-object p0
.end method

.method public h(Lcom/google/protobuf/f$h;)Lcom/google/protobuf/f$h$a;
    .registers 4

    .prologue
    .line 725
    invoke-static {}, Lcom/google/protobuf/f$h;->da()Lcom/google/protobuf/f$h;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 766
    :goto_6
    return-object p0

    .line 726
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/f$h;->hasName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 727
    invoke-virtual {p1}, Lcom/google/protobuf/f$h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$h$a;->r(Ljava/lang/String;)Lcom/google/protobuf/f$h$a;

    .line 729
    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/f$h;->dc()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 730
    invoke-virtual {p1}, Lcom/google/protobuf/f$h;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$h$a;->s(Ljava/lang/String;)Lcom/google/protobuf/f$h$a;

    .line 732
    :cond_21
    invoke-static {p1}, Lcom/google/protobuf/f$h;->b(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 733
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->b(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 734
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->a(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;

    .line 736
    :cond_41
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->b(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$h;->b(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 738
    :cond_4e
    invoke-static {p1}, Lcom/google/protobuf/f$h;->c(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 739
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->c(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 740
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->b(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;

    .line 742
    :cond_6e
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->c(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$h;->c(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 744
    :cond_7b
    invoke-static {p1}, Lcom/google/protobuf/f$h;->d(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a8

    .line 745
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->d(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 746
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->c(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;

    .line 748
    :cond_9b
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->d(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$h;->d(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 750
    :cond_a8
    invoke-static {p1}, Lcom/google/protobuf/f$h;->e(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d5

    .line 751
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->e(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 752
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->d(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;

    .line 754
    :cond_c8
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->e(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$h;->e(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 756
    :cond_d5
    invoke-static {p1}, Lcom/google/protobuf/f$h;->f(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_102

    .line 757
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->f(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 758
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->e(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;

    .line 760
    :cond_f5
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->f(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$h;->f(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 762
    :cond_102
    invoke-virtual {p1}, Lcom/google/protobuf/f$h;->aH()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 763
    invoke-virtual {p1}, Lcom/google/protobuf/f$h;->dj()Lcom/google/protobuf/f$j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$h$a;->b(Lcom/google/protobuf/f$j;)Lcom/google/protobuf/f$h$a;

    .line 765
    :cond_10f
    invoke-virtual {p1}, Lcom/google/protobuf/f$h;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$h$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto/16 :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-virtual {v0}, Lcom/google/protobuf/f$h;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public j(Lcom/google/protobuf/f$a;)Lcom/google/protobuf/f$h$a;
    .registers 4

    .prologue
    .line 944
    if-nez p1, :cond_8

    .line 945
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 947
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->c(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 948
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->b(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;

    .line 950
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->c(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    return-object p0
.end method

.method public l(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$h$a;
    .registers 6

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/google/protobuf/f$h$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 777
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 778
    sparse-switch v1, :sswitch_data_96

    .line 783
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/protobuf/f$h$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 785
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$h$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 786
    :goto_1c
    return-object p0

    .line 780
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$h$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 791
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$h$a;->r(Ljava/lang/String;)Lcom/google/protobuf/f$h$a;

    goto :goto_8

    .line 795
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$h$a;->s(Ljava/lang/String;)Lcom/google/protobuf/f$h$a;

    goto :goto_8

    .line 799
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$h$a;->t(Ljava/lang/String;)Lcom/google/protobuf/f$h$a;

    goto :goto_8

    .line 803
    :sswitch_3d
    invoke-static {}, Lcom/google/protobuf/f$a;->aK()Lcom/google/protobuf/f$a$a;

    move-result-object v1

    .line 804
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 805
    invoke-virtual {v1}, Lcom/google/protobuf/f$a$a;->aV()Lcom/google/protobuf/f$a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$h$a;->j(Lcom/google/protobuf/f$a;)Lcom/google/protobuf/f$h$a;

    goto :goto_8

    .line 809
    :sswitch_4c
    invoke-static {}, Lcom/google/protobuf/f$b;->bs()Lcom/google/protobuf/f$b$a;

    move-result-object v1

    .line 810
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 811
    invoke-virtual {v1}, Lcom/google/protobuf/f$b$a;->bz()Lcom/google/protobuf/f$b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$h$a;->f(Lcom/google/protobuf/f$b;)Lcom/google/protobuf/f$h$a;

    goto :goto_8

    .line 815
    :sswitch_5b
    invoke-static {}, Lcom/google/protobuf/f$n;->fa()Lcom/google/protobuf/f$n$a;

    move-result-object v1

    .line 816
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 817
    invoke-virtual {v1}, Lcom/google/protobuf/f$n$a;->fh()Lcom/google/protobuf/f$n;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$h$a;->a(Lcom/google/protobuf/f$n;)Lcom/google/protobuf/f$h$a;

    goto :goto_8

    .line 821
    :sswitch_6a
    invoke-static {}, Lcom/google/protobuf/f$f;->cx()Lcom/google/protobuf/f$f$a;

    move-result-object v1

    .line 822
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 823
    invoke-virtual {v1}, Lcom/google/protobuf/f$f$a;->cE()Lcom/google/protobuf/f$f;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$h$a;->f(Lcom/google/protobuf/f$f;)Lcom/google/protobuf/f$h$a;

    goto :goto_8

    .line 827
    :sswitch_79
    invoke-static {}, Lcom/google/protobuf/f$j;->dW()Lcom/google/protobuf/f$j$a;

    move-result-object v1

    .line 828
    invoke-virtual {p0}, Lcom/google/protobuf/f$h$a;->aH()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 829
    invoke-virtual {p0}, Lcom/google/protobuf/f$h$a;->dj()Lcom/google/protobuf/f$j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/f$j$a;->e(Lcom/google/protobuf/f$j;)Lcom/google/protobuf/f$j$a;

    .line 831
    :cond_8a
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 832
    invoke-virtual {v1}, Lcom/google/protobuf/f$j$a;->ed()Lcom/google/protobuf/f$j;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$h$a;->a(Lcom/google/protobuf/f$j;)Lcom/google/protobuf/f$h$a;

    goto/16 :goto_8

    .line 778
    :sswitch_data_96
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_35
        0x22 -> :sswitch_3d
        0x2a -> :sswitch_4c
        0x32 -> :sswitch_5b
        0x3a -> :sswitch_6a
        0x42 -> :sswitch_79
    .end sparse-switch
.end method

.method public n(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$h$a;
    .registers 3

    .prologue
    .line 716
    instance-of v0, p1, Lcom/google/protobuf/f$h;

    if-eqz v0, :cond_b

    .line 717
    check-cast p1, Lcom/google/protobuf/f$h;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$h$a;->h(Lcom/google/protobuf/f$h;)Lcom/google/protobuf/f$h$a;

    move-result-object p0

    .line 720
    :goto_a
    return-object p0

    .line 719
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public r(Ljava/lang/String;)Lcom/google/protobuf/f$h$a;
    .registers 4

    .prologue
    .line 848
    if-nez p1, :cond_8

    .line 849
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 851
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->a(Lcom/google/protobuf/f$h;Z)Z

    .line 852
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$h;->a(Lcom/google/protobuf/f$h;Ljava/lang/String;)Ljava/lang/String;

    .line 853
    return-object p0
.end method

.method public s(Ljava/lang/String;)Lcom/google/protobuf/f$h$a;
    .registers 4

    .prologue
    .line 869
    if-nez p1, :cond_8

    .line 870
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 872
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->b(Lcom/google/protobuf/f$h;Z)Z

    .line 873
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$h;->b(Lcom/google/protobuf/f$h;Ljava/lang/String;)Ljava/lang/String;

    .line 874
    return-object p0
.end method

.method public t(Ljava/lang/String;)Lcom/google/protobuf/f$h$a;
    .registers 4

    .prologue
    .line 900
    if-nez p1, :cond_8

    .line 901
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 903
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->b(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 904
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$h;->a(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;

    .line 906
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$h$a;->bH:Lcom/google/protobuf/f$h;

    invoke-static {v0}, Lcom/google/protobuf/f$h;->b(Lcom/google/protobuf/f$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    return-object p0
.end method
