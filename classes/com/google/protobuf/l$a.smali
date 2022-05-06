.class public final Lcom/google/protobuf/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/l$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private cT:Lcom/google/protobuf/f$a;

.field private final cU:Lcom/google/protobuf/l$g;

.field private final cV:[Lcom/google/protobuf/l$a;

.field private final cW:[Lcom/google/protobuf/l$d;

.field private final cX:[Lcom/google/protobuf/l$f;

.field private final cY:[Lcom/google/protobuf/l$f;

.field private final fullName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/f$a;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;I)V
    .registers 13

    .prologue
    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p1, p0, Lcom/google/protobuf/l$a;->cT:Lcom/google/protobuf/f$a;

    .line 560
    invoke-virtual {p1}, Lcom/google/protobuf/f$a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/google/protobuf/l;->b(Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$a;->fullName:Ljava/lang/String;

    .line 561
    iput-object p2, p0, Lcom/google/protobuf/l$a;->cU:Lcom/google/protobuf/l$g;

    .line 562
    invoke-virtual {p1}, Lcom/google/protobuf/f$a;->aD()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/l$a;

    iput-object v0, p0, Lcom/google/protobuf/l$a;->cV:[Lcom/google/protobuf/l$a;

    .line 565
    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {p1}, Lcom/google/protobuf/f$a;->aD()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 566
    iget-object v1, p0, Lcom/google/protobuf/l$a;->cV:[Lcom/google/protobuf/l$a;

    new-instance v2, Lcom/google/protobuf/l$a;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/f$a;->F(I)Lcom/google/protobuf/f$a;

    move-result-object v3

    invoke-direct {v2, v3, p2, p0, v0}, Lcom/google/protobuf/l$a;-><init>(Lcom/google/protobuf/f$a;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;I)V

    aput-object v2, v1, v0

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 570
    :cond_30
    invoke-virtual {p1}, Lcom/google/protobuf/f$a;->aF()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/l$d;

    iput-object v0, p0, Lcom/google/protobuf/l$a;->cW:[Lcom/google/protobuf/l$d;

    .line 571
    const/4 v4, 0x0

    :goto_39
    invoke-virtual {p1}, Lcom/google/protobuf/f$a;->aF()I

    move-result v0

    if-ge v4, v0, :cond_52

    .line 572
    iget-object v6, p0, Lcom/google/protobuf/l$a;->cW:[Lcom/google/protobuf/l$d;

    new-instance v0, Lcom/google/protobuf/l$d;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/f$a;->G(I)Lcom/google/protobuf/f$b;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/l$d;-><init>(Lcom/google/protobuf/f$b;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;ILcom/google/protobuf/l$1;)V

    aput-object v0, v6, v4

    .line 571
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 576
    :cond_52
    invoke-virtual {p1}, Lcom/google/protobuf/f$a;->getFieldCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/l$f;

    iput-object v0, p0, Lcom/google/protobuf/l$a;->cX:[Lcom/google/protobuf/l$f;

    .line 577
    const/4 v4, 0x0

    :goto_5b
    invoke-virtual {p1}, Lcom/google/protobuf/f$a;->getFieldCount()I

    move-result v0

    if-ge v4, v0, :cond_75

    .line 578
    iget-object v7, p0, Lcom/google/protobuf/l$a;->cX:[Lcom/google/protobuf/l$f;

    new-instance v0, Lcom/google/protobuf/l$f;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/f$a;->D(I)Lcom/google/protobuf/f$f;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/l$f;-><init>(Lcom/google/protobuf/f$f;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;IZLcom/google/protobuf/l$1;)V

    aput-object v0, v7, v4

    .line 577
    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    .line 582
    :cond_75
    invoke-virtual {p1}, Lcom/google/protobuf/f$a;->aB()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/l$f;

    iput-object v0, p0, Lcom/google/protobuf/l$a;->cY:[Lcom/google/protobuf/l$f;

    .line 583
    const/4 v4, 0x0

    :goto_7e
    invoke-virtual {p1}, Lcom/google/protobuf/f$a;->aB()I

    move-result v0

    if-ge v4, v0, :cond_98

    .line 584
    iget-object v7, p0, Lcom/google/protobuf/l$a;->cY:[Lcom/google/protobuf/l$f;

    new-instance v0, Lcom/google/protobuf/l$f;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/f$a;->E(I)Lcom/google/protobuf/f$f;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/l$f;-><init>(Lcom/google/protobuf/f$f;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;IZLcom/google/protobuf/l$1;)V

    aput-object v0, v7, v4

    .line 583
    add-int/lit8 v4, v4, 0x1

    goto :goto_7e

    .line 588
    :cond_98
    invoke-static {p2}, Lcom/google/protobuf/l$g;->c(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/l$b;->a(Lcom/google/protobuf/l$h;)V

    .line 589
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/f$a;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;ILcom/google/protobuf/l$1;)V
    .registers 6

    .prologue
    .line 413
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/l$a;-><init>(Lcom/google/protobuf/f$a;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/l$a;Lcom/google/protobuf/f$a;)V
    .registers 2

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/google/protobuf/l$a;->k(Lcom/google/protobuf/f$a;)V

    return-void
.end method

.method private gh()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 593
    iget-object v2, p0, Lcom/google/protobuf/l$a;->cV:[Lcom/google/protobuf/l$a;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_f

    aget-object v4, v2, v1

    .line 594
    invoke-direct {v4}, Lcom/google/protobuf/l$a;->gh()V

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 597
    :cond_f
    iget-object v2, p0, Lcom/google/protobuf/l$a;->cX:[Lcom/google/protobuf/l$f;

    array-length v3, v2

    move v1, v0

    :goto_13
    if-ge v1, v3, :cond_1d

    aget-object v4, v2, v1

    .line 598
    invoke-static {v4}, Lcom/google/protobuf/l$f;->c(Lcom/google/protobuf/l$f;)V

    .line 597
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 601
    :cond_1d
    iget-object v1, p0, Lcom/google/protobuf/l$a;->cY:[Lcom/google/protobuf/l$f;

    array-length v2, v1

    :goto_20
    if-ge v0, v2, :cond_2a

    aget-object v3, v1, v0

    .line 602
    invoke-static {v3}, Lcom/google/protobuf/l$f;->c(Lcom/google/protobuf/l$f;)V

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 604
    :cond_2a
    return-void
.end method

.method private k(Lcom/google/protobuf/f$a;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 608
    iput-object p1, p0, Lcom/google/protobuf/l$a;->cT:Lcom/google/protobuf/f$a;

    move v0, v1

    .line 610
    :goto_4
    iget-object v2, p0, Lcom/google/protobuf/l$a;->cV:[Lcom/google/protobuf/l$a;

    array-length v2, v2

    if-ge v0, v2, :cond_17

    .line 611
    iget-object v2, p0, Lcom/google/protobuf/l$a;->cV:[Lcom/google/protobuf/l$a;

    aget-object v2, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/f$a;->F(I)Lcom/google/protobuf/f$a;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/protobuf/l$a;->k(Lcom/google/protobuf/f$a;)V

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_17
    move v0, v1

    .line 614
    :goto_18
    iget-object v2, p0, Lcom/google/protobuf/l$a;->cW:[Lcom/google/protobuf/l$d;

    array-length v2, v2

    if-ge v0, v2, :cond_2b

    .line 615
    iget-object v2, p0, Lcom/google/protobuf/l$a;->cW:[Lcom/google/protobuf/l$d;

    aget-object v2, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/f$a;->G(I)Lcom/google/protobuf/f$b;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/l$d;->a(Lcom/google/protobuf/l$d;Lcom/google/protobuf/f$b;)V

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2b
    move v0, v1

    .line 618
    :goto_2c
    iget-object v2, p0, Lcom/google/protobuf/l$a;->cX:[Lcom/google/protobuf/l$f;

    array-length v2, v2

    if-ge v0, v2, :cond_3f

    .line 619
    iget-object v2, p0, Lcom/google/protobuf/l$a;->cX:[Lcom/google/protobuf/l$f;

    aget-object v2, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/f$a;->D(I)Lcom/google/protobuf/f$f;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/l$f;->a(Lcom/google/protobuf/l$f;Lcom/google/protobuf/f$f;)V

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 622
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/google/protobuf/l$a;->cY:[Lcom/google/protobuf/l$f;

    array-length v0, v0

    if-ge v1, v0, :cond_52

    .line 623
    iget-object v0, p0, Lcom/google/protobuf/l$a;->cY:[Lcom/google/protobuf/l$f;

    aget-object v0, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/f$a;->E(I)Lcom/google/protobuf/f$f;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/l$f;->a(Lcom/google/protobuf/l$f;Lcom/google/protobuf/f$f;)V

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 625
    :cond_52
    return-void
.end method

.method static synthetic s(Lcom/google/protobuf/l$a;)V
    .registers 1

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/google/protobuf/l$a;->gh()V

    return-void
.end method


# virtual methods
.method public U(I)Z
    .registers 5

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/protobuf/l$a;->cT:Lcom/google/protobuf/f$a;

    invoke-virtual {v0}, Lcom/google/protobuf/f$a;->aG()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$a$b;

    .line 481
    invoke-virtual {v0}, Lcom/google/protobuf/f$a$b;->getStart()I

    move-result v2

    if-gt v2, p1, :cond_a

    invoke-virtual {v0}, Lcom/google/protobuf/f$a$b;->getEnd()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 482
    const/4 v0, 0x1

    .line 485
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public V(I)Lcom/google/protobuf/l$f;
    .registers 4

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/protobuf/l$a;->cU:Lcom/google/protobuf/l$g;

    invoke-static {v0}, Lcom/google/protobuf/l$g;->c(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/l$b;->a(Lcom/google/protobuf/l$b;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/protobuf/l$b$a;

    invoke-direct {v1, p0, p1}, Lcom/google/protobuf/l$b$a;-><init>(Lcom/google/protobuf/l$h;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$f;

    return-object v0
.end method

.method public aI()Lcom/google/protobuf/f$k;
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/protobuf/l$a;->cT:Lcom/google/protobuf/f$a;

    invoke-virtual {v0}, Lcom/google/protobuf/f$a;->aI()Lcom/google/protobuf/f$k;

    move-result-object v0

    return-object v0
.end method

.method public ge()Lcom/google/protobuf/f$a;
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/protobuf/l$a;->cT:Lcom/google/protobuf/f$a;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/protobuf/l$a;->cX:[Lcom/google/protobuf/l$f;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/protobuf/l$a;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/protobuf/l$a;->cT:Lcom/google/protobuf/f$a;

    invoke-virtual {v0}, Lcom/google/protobuf/f$a;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gf()Lcom/google/protobuf/l$g;
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/protobuf/l$a;->cU:Lcom/google/protobuf/l$g;

    return-object v0
.end method

.method public gg()Ljava/util/List;
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/protobuf/l$a;->cV:[Lcom/google/protobuf/l$a;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic gi()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/google/protobuf/l$a;->ge()Lcom/google/protobuf/f$a;

    move-result-object v0

    return-object v0
.end method
