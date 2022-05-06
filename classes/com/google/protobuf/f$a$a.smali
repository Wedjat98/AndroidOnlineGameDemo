.class public final Lcom/google/protobuf/f$a$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private aj:Lcom/google/protobuf/f$a;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1766
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static aQ()Lcom/google/protobuf/f$a$a;
    .registers 3

    .prologue
    .line 1769
    new-instance v0, Lcom/google/protobuf/f$a$a;

    invoke-direct {v0}, Lcom/google/protobuf/f$a$a;-><init>()V

    .line 1770
    new-instance v1, Lcom/google/protobuf/f$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/f$a;-><init>(Lcom/google/protobuf/g;)V

    iput-object v1, v0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    .line 1771
    return-object v0
.end method

.method static synthetic ba()Lcom/google/protobuf/f$a$a;
    .registers 1

    .prologue
    .line 1761
    invoke-static {}, Lcom/google/protobuf/f$a$a;->aQ()Lcom/google/protobuf/f$a$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 1761
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$a$a;->d(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 1761
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$a$a;->f(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$a$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/f$a$b;)Lcom/google/protobuf/f$a$a;
    .registers 4

    .prologue
    .line 2216
    if-nez p1, :cond_8

    .line 2217
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2219
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->f(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2220
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->e(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;

    .line 2222
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->f(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2223
    return-object p0
.end method

.method public a(Lcom/google/protobuf/f$b;)Lcom/google/protobuf/f$a$a;
    .registers 4

    .prologue
    .line 2165
    if-nez p1, :cond_8

    .line 2166
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2168
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->e(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2169
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->d(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;

    .line 2171
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->e(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2172
    return-object p0
.end method

.method public a(Lcom/google/protobuf/f$f;)Lcom/google/protobuf/f$a$a;
    .registers 4

    .prologue
    .line 2012
    if-nez p1, :cond_8

    .line 2013
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2015
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->b(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2016
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->a(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;

    .line 2018
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->b(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2019
    return-object p0
.end method

.method public a(Lcom/google/protobuf/f$k;)Lcom/google/protobuf/f$a$a;
    .registers 4

    .prologue
    .line 2253
    if-nez p1, :cond_8

    .line 2254
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2256
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->b(Lcom/google/protobuf/f$a;Z)Z

    .line 2257
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$a;->a(Lcom/google/protobuf/f$a;Lcom/google/protobuf/f$k;)Lcom/google/protobuf/f$k;

    .line 2258
    return-object p0
.end method

.method public aH()Z
    .registers 2

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-virtual {v0}, Lcom/google/protobuf/f$a;->aH()Z

    move-result v0

    return v0
.end method

.method public aI()Lcom/google/protobuf/f$k;
    .registers 2

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-virtual {v0}, Lcom/google/protobuf/f$a;->aI()Lcom/google/protobuf/f$k;

    move-result-object v0

    return-object v0
.end method

.method protected aR()Lcom/google/protobuf/f$a;
    .registers 2

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    return-object v0
.end method

.method public aS()Lcom/google/protobuf/f$a$a;
    .registers 3

    .prologue
    .line 1788
    invoke-static {}, Lcom/google/protobuf/f$a$a;->aQ()Lcom/google/protobuf/f$a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/f$a$a;->h(Lcom/google/protobuf/f$a;)Lcom/google/protobuf/f$a$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 1793
    invoke-static {}, Lcom/google/protobuf/f$a;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public aU()Lcom/google/protobuf/f$a;
    .registers 2

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/f$a$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1805
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 1807
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$a;->aV()Lcom/google/protobuf/f$a;

    move-result-object v0

    return-object v0
.end method

.method public aV()Lcom/google/protobuf/f$a;
    .registers 3

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    if-nez v0, :cond_c

    .line 1821
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1824
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->b(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_25

    .line 1825
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    iget-object v1, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v1}, Lcom/google/protobuf/f$a;->b(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->a(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;

    .line 1828
    :cond_25
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->c(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_3e

    .line 1829
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    iget-object v1, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v1}, Lcom/google/protobuf/f$a;->c(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->b(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;

    .line 1832
    :cond_3e
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->d(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_57

    .line 1833
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    iget-object v1, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v1}, Lcom/google/protobuf/f$a;->d(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->c(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;

    .line 1836
    :cond_57
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->e(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_70

    .line 1837
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    iget-object v1, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v1}, Lcom/google/protobuf/f$a;->e(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->d(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;

    .line 1840
    :cond_70
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->f(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_89

    .line 1841
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    iget-object v1, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v1}, Lcom/google/protobuf/f$a;->f(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->e(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;

    .line 1844
    :cond_89
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    .line 1845
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    .line 1846
    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$a;->aR()Lcom/google/protobuf/f$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$a;->aS()Lcom/google/protobuf/f$a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$a;->aU()Lcom/google/protobuf/f$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$a;->aU()Lcom/google/protobuf/f$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$a;->aS()Lcom/google/protobuf/f$a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 1761
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$a$a;->d(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$a$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/protobuf/f$f;)Lcom/google/protobuf/f$a$a;
    .registers 4

    .prologue
    .line 2063
    if-nez p1, :cond_8

    .line 2064
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2066
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->c(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2067
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->b(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;

    .line 2069
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->c(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2070
    return-object p0
.end method

.method public b(Lcom/google/protobuf/f$k;)Lcom/google/protobuf/f$a$a;
    .registers 4

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-virtual {v0}, Lcom/google/protobuf/f$a;->aH()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->g(Lcom/google/protobuf/f$a;)Lcom/google/protobuf/f$k;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/f$k;->ef()Lcom/google/protobuf/f$k;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 2268
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    iget-object v1, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v1}, Lcom/google/protobuf/f$a;->g(Lcom/google/protobuf/f$a;)Lcom/google/protobuf/f$k;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/f$k;->c(Lcom/google/protobuf/f$k;)Lcom/google/protobuf/f$k$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/f$k$a;->e(Lcom/google/protobuf/f$k;)Lcom/google/protobuf/f$k$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/f$k$a;->es()Lcom/google/protobuf/f$k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->a(Lcom/google/protobuf/f$a;Lcom/google/protobuf/f$k;)Lcom/google/protobuf/f$k;

    .line 2273
    :goto_2b
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->b(Lcom/google/protobuf/f$a;Z)Z

    .line 2274
    return-object p0

    .line 2271
    :cond_32
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$a;->a(Lcom/google/protobuf/f$a;Lcom/google/protobuf/f$k;)Lcom/google/protobuf/f$k;

    goto :goto_2b
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$a;->aS()Lcom/google/protobuf/f$a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 1761
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$a$a;->d(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$a;->aS()Lcom/google/protobuf/f$a$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$a$a;
    .registers 6

    .prologue
    .line 1904
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 1908
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 1909
    sparse-switch v1, :sswitch_data_96

    .line 1914
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/protobuf/f$a$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1916
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$a$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 1917
    :goto_1c
    return-object p0

    .line 1911
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$a$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 1922
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$a$a;->j(Ljava/lang/String;)Lcom/google/protobuf/f$a$a;

    goto :goto_8

    .line 1926
    :sswitch_2d
    invoke-static {}, Lcom/google/protobuf/f$f;->cx()Lcom/google/protobuf/f$f$a;

    move-result-object v1

    .line 1927
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 1928
    invoke-virtual {v1}, Lcom/google/protobuf/f$f$a;->cE()Lcom/google/protobuf/f$f;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$a$a;->a(Lcom/google/protobuf/f$f;)Lcom/google/protobuf/f$a$a;

    goto :goto_8

    .line 1932
    :sswitch_3c
    invoke-static {}, Lcom/google/protobuf/f$a;->aK()Lcom/google/protobuf/f$a$a;

    move-result-object v1

    .line 1933
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 1934
    invoke-virtual {v1}, Lcom/google/protobuf/f$a$a;->aV()Lcom/google/protobuf/f$a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$a$a;->i(Lcom/google/protobuf/f$a;)Lcom/google/protobuf/f$a$a;

    goto :goto_8

    .line 1938
    :sswitch_4b
    invoke-static {}, Lcom/google/protobuf/f$b;->bs()Lcom/google/protobuf/f$b$a;

    move-result-object v1

    .line 1939
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 1940
    invoke-virtual {v1}, Lcom/google/protobuf/f$b$a;->bz()Lcom/google/protobuf/f$b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$a$a;->a(Lcom/google/protobuf/f$b;)Lcom/google/protobuf/f$a$a;

    goto :goto_8

    .line 1944
    :sswitch_5a
    invoke-static {}, Lcom/google/protobuf/f$a$b;->bf()Lcom/google/protobuf/f$a$b$a;

    move-result-object v1

    .line 1945
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 1946
    invoke-virtual {v1}, Lcom/google/protobuf/f$a$b$a;->bm()Lcom/google/protobuf/f$a$b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$a$a;->a(Lcom/google/protobuf/f$a$b;)Lcom/google/protobuf/f$a$a;

    goto :goto_8

    .line 1950
    :sswitch_69
    invoke-static {}, Lcom/google/protobuf/f$f;->cx()Lcom/google/protobuf/f$f$a;

    move-result-object v1

    .line 1951
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 1952
    invoke-virtual {v1}, Lcom/google/protobuf/f$f$a;->cE()Lcom/google/protobuf/f$f;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$a$a;->b(Lcom/google/protobuf/f$f;)Lcom/google/protobuf/f$a$a;

    goto :goto_8

    .line 1956
    :sswitch_78
    invoke-static {}, Lcom/google/protobuf/f$k;->el()Lcom/google/protobuf/f$k$a;

    move-result-object v1

    .line 1957
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$a;->aH()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 1958
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$a;->aI()Lcom/google/protobuf/f$k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/f$k$a;->e(Lcom/google/protobuf/f$k;)Lcom/google/protobuf/f$k$a;

    .line 1960
    :cond_89
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 1961
    invoke-virtual {v1}, Lcom/google/protobuf/f$k$a;->es()Lcom/google/protobuf/f$k;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$a$a;->a(Lcom/google/protobuf/f$k;)Lcom/google/protobuf/f$a$a;

    goto/16 :goto_8

    .line 1909
    nop

    :sswitch_data_96
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_3c
        0x22 -> :sswitch_4b
        0x2a -> :sswitch_5a
        0x32 -> :sswitch_69
        0x3a -> :sswitch_78
    .end sparse-switch
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 1761
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$a$a;->f(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$a$a;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$a$a;
    .registers 3

    .prologue
    .line 1850
    instance-of v0, p1, Lcom/google/protobuf/f$a;

    if-eqz v0, :cond_b

    .line 1851
    check-cast p1, Lcom/google/protobuf/f$a;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$a$a;->h(Lcom/google/protobuf/f$a;)Lcom/google/protobuf/f$a$a;

    move-result-object p0

    .line 1854
    :goto_a
    return-object p0

    .line 1853
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public h(Lcom/google/protobuf/f$a;)Lcom/google/protobuf/f$a$a;
    .registers 4

    .prologue
    .line 1859
    invoke-static {}, Lcom/google/protobuf/f$a;->av()Lcom/google/protobuf/f$a;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1897
    :goto_6
    return-object p0

    .line 1860
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/f$a;->hasName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1861
    invoke-virtual {p1}, Lcom/google/protobuf/f$a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$a$a;->j(Ljava/lang/String;)Lcom/google/protobuf/f$a$a;

    .line 1863
    :cond_14
    invoke-static {p1}, Lcom/google/protobuf/f$a;->b(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1864
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->b(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1865
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->a(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;

    .line 1867
    :cond_34
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->b(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$a;->b(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1869
    :cond_41
    invoke-static {p1}, Lcom/google/protobuf/f$a;->c(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 1870
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->c(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1871
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->b(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;

    .line 1873
    :cond_61
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->c(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$a;->c(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1875
    :cond_6e
    invoke-static {p1}, Lcom/google/protobuf/f$a;->d(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 1876
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->d(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1877
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->c(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;

    .line 1879
    :cond_8e
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->d(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$a;->d(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1881
    :cond_9b
    invoke-static {p1}, Lcom/google/protobuf/f$a;->e(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c8

    .line 1882
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->e(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1883
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->d(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;

    .line 1885
    :cond_bb
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->e(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$a;->e(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1887
    :cond_c8
    invoke-static {p1}, Lcom/google/protobuf/f$a;->f(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f5

    .line 1888
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->f(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 1889
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->e(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;

    .line 1891
    :cond_e8
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->f(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/f$a;->f(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1893
    :cond_f5
    invoke-virtual {p1}, Lcom/google/protobuf/f$a;->aH()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 1894
    invoke-virtual {p1}, Lcom/google/protobuf/f$a;->aI()Lcom/google/protobuf/f$k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$a$a;->b(Lcom/google/protobuf/f$k;)Lcom/google/protobuf/f$a$a;

    .line 1896
    :cond_102
    invoke-virtual {p1}, Lcom/google/protobuf/f$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$a$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto/16 :goto_6
.end method

.method public i(Lcom/google/protobuf/f$a;)Lcom/google/protobuf/f$a$a;
    .registers 4

    .prologue
    .line 2114
    if-nez p1, :cond_8

    .line 2115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2117
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->d(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2118
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->c(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;

    .line 2120
    :cond_1e
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0}, Lcom/google/protobuf/f$a;->d(Lcom/google/protobuf/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2121
    return-object p0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-virtual {v0}, Lcom/google/protobuf/f$a;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public j(Ljava/lang/String;)Lcom/google/protobuf/f$a$a;
    .registers 4

    .prologue
    .line 1977
    if-nez p1, :cond_8

    .line 1978
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1980
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a;->a(Lcom/google/protobuf/f$a;Z)Z

    .line 1981
    iget-object v0, p0, Lcom/google/protobuf/f$a$a;->aj:Lcom/google/protobuf/f$a;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$a;->a(Lcom/google/protobuf/f$a;Ljava/lang/String;)Ljava/lang/String;

    .line 1982
    return-object p0
.end method
