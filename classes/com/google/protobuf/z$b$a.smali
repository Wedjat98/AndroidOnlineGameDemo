.class public final Lcom/google/protobuf/z$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/z$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private eL:Lcom/google/protobuf/z$b;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hx()Lcom/google/protobuf/z$b$a;
    .registers 3

    .prologue
    .line 816
    new-instance v0, Lcom/google/protobuf/z$b$a;

    invoke-direct {v0}, Lcom/google/protobuf/z$b$a;-><init>()V

    .line 817
    new-instance v1, Lcom/google/protobuf/z$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/z$b;-><init>(Lcom/google/protobuf/d;)V

    iput-object v1, v0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    .line 818
    return-object v0
.end method

.method static synthetic hz()Lcom/google/protobuf/z$b$a;
    .registers 1

    .prologue
    .line 811
    invoke-static {}, Lcom/google/protobuf/z$b$a;->hx()Lcom/google/protobuf/z$b$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ab(I)Lcom/google/protobuf/z$b$a;
    .registers 4

    .prologue
    .line 918
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->b(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 919
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->b(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    .line 921
    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->b(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    return-object p0
.end method

.method public e(Lcom/google/protobuf/c;)Lcom/google/protobuf/z$b$a;
    .registers 4

    .prologue
    .line 936
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->d(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 937
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->d(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    .line 939
    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->d(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    return-object p0
.end method

.method public f(Lcom/google/protobuf/z$b;)Lcom/google/protobuf/z$b$a;
    .registers 4

    .prologue
    .line 874
    invoke-static {p1}, Lcom/google/protobuf/z$b;->a(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 875
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->a(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 876
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->a(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    .line 878
    :cond_1c
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->a(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/z$b;->a(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 880
    :cond_29
    invoke-static {p1}, Lcom/google/protobuf/z$b;->b(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    .line 881
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->b(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_45

    .line 882
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->b(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    .line 884
    :cond_45
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->b(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/z$b;->b(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 886
    :cond_52
    invoke-static {p1}, Lcom/google/protobuf/z$b;->c(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 887
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->c(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6e

    .line 888
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->c(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    .line 890
    :cond_6e
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->c(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/z$b;->c(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 892
    :cond_7b
    invoke-static {p1}, Lcom/google/protobuf/z$b;->d(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 893
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->d(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_97

    .line 894
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->d(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    .line 896
    :cond_97
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->d(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/z$b;->d(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 898
    :cond_a4
    invoke-static {p1}, Lcom/google/protobuf/z$b;->e(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cd

    .line 899
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->e(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c0

    .line 900
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->e(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    .line 902
    :cond_c0
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->e(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/z$b;->e(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 904
    :cond_cd
    return-object p0
.end method

.method public hy()Lcom/google/protobuf/z$b;
    .registers 3

    .prologue
    .line 830
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->a(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5b

    .line 831
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->a(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    .line 835
    :goto_11
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->b(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6b

    .line 836
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->b(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    .line 840
    :goto_22
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->c(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7b

    .line 841
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->c(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    .line 845
    :goto_33
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->d(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8b

    .line 846
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->d(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    .line 851
    :goto_44
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->e(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9b

    .line 852
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->e(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    .line 857
    :goto_55
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    .line 858
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    .line 859
    return-object v0

    .line 833
    :cond_5b
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    iget-object v1, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v1}, Lcom/google/protobuf/z$b;->a(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->a(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    goto :goto_11

    .line 838
    :cond_6b
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    iget-object v1, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v1}, Lcom/google/protobuf/z$b;->b(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->b(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    goto :goto_22

    .line 843
    :cond_7b
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    iget-object v1, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v1}, Lcom/google/protobuf/z$b;->c(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->c(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    goto :goto_33

    .line 848
    :cond_8b
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    iget-object v1, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v1}, Lcom/google/protobuf/z$b;->d(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->d(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    goto :goto_44

    .line 854
    :cond_9b
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    iget-object v1, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v1}, Lcom/google/protobuf/z$b;->e(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->e(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    goto :goto_55
.end method

.method public k(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$b$a;
    .registers 4

    .prologue
    .line 945
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->e(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 946
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->e(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    .line 948
    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->e(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    return-object p0
.end method

.method public s(J)Lcom/google/protobuf/z$b$a;
    .registers 6

    .prologue
    .line 909
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->a(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 910
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->a(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    .line 912
    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->a(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    return-object p0
.end method

.method public t(J)Lcom/google/protobuf/z$b$a;
    .registers 6

    .prologue
    .line 927
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->c(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 928
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/z$b;->c(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;

    .line 930
    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/z$b$a;->eL:Lcom/google/protobuf/z$b;

    invoke-static {v0}, Lcom/google/protobuf/z$b;->c(Lcom/google/protobuf/z$b;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    return-object p0
.end method
