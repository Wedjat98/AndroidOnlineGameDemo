.class final Lcom/google/protobuf/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/l$b$a;,
        Lcom/google/protobuf/l$b$b;
    }
.end annotation


# static fields
.field private static synthetic $assertionsDisabled:Z


# instance fields
.field private final cZ:[Lcom/google/protobuf/l$b;

.field private final da:Ljava/util/Map;

.field private final db:Ljava/util/Map;

.field private final dc:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1584
    const-class v0, Lcom/google/protobuf/l;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/protobuf/l$b;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>([Lcom/google/protobuf/l$g;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1606
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/l$b;->da:Ljava/util/Map;

    .line 1608
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/l$b;->db:Ljava/util/Map;

    .line 1610
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/l$b;->dc:Ljava/util/Map;

    .line 1586
    array-length v0, p1

    new-array v0, v0, [Lcom/google/protobuf/l$b;

    iput-object v0, p0, Lcom/google/protobuf/l$b;->cZ:[Lcom/google/protobuf/l$b;

    move v0, v1

    .line 1588
    :goto_1f
    array-length v2, p1

    if-ge v0, v2, :cond_2f

    .line 1589
    iget-object v2, p0, Lcom/google/protobuf/l$b;->cZ:[Lcom/google/protobuf/l$b;

    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/google/protobuf/l$g;->c(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$b;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1588
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1592
    :cond_2f
    array-length v0, p1

    :goto_30
    if-ge v1, v0, :cond_49

    aget-object v2, p1, v1

    .line 1594
    :try_start_34
    invoke-virtual {v2}, Lcom/google/protobuf/l$g;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/google/protobuf/l$b;->a(Ljava/lang/String;Lcom/google/protobuf/l$g;)V
    :try_end_3b
    .catch Lcom/google/protobuf/l$c; {:try_start_34 .. :try_end_3b} :catch_3e

    .line 1592
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 1599
    :catch_3e
    move-exception v2

    sget-boolean v2, Lcom/google/protobuf/l$b;->$assertionsDisabled:Z

    if-nez v2, :cond_3b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1602
    :cond_49
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/l$b;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/google/protobuf/l$b;->db:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/l$b;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/google/protobuf/l$b;->dc:Ljava/util/Map;

    return-object v0
.end method

.method static b(Lcom/google/protobuf/l$h;)V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1851
    invoke-interface {p0}, Lcom/google/protobuf/l$h;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1852
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 1853
    new-instance v0, Lcom/google/protobuf/l$c;

    const-string v1, "Missing name."

    invoke-direct {v0, p0, v1, v6}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 1855
    :cond_14
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    .line 1856
    :goto_17
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3c

    .line 1857
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1860
    const/16 v5, 0x80

    if-lt v4, v5, :cond_26

    move v2, v1

    .line 1865
    :cond_26
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_39

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_39

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_38

    if-gtz v0, :cond_39

    :cond_38
    move v2, v1

    .line 1856
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1872
    :cond_3c
    if-nez v2, :cond_59

    .line 1873
    new-instance v0, Lcom/google/protobuf/l$c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a valid identifier."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v6}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 1877
    :cond_59
    return-void
.end method


# virtual methods
.method C(Ljava/lang/String;)Lcom/google/protobuf/l$h;
    .registers 6

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/google/protobuf/l$b;->da:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$h;

    .line 1616
    if-eqz v0, :cond_b

    .line 1627
    :cond_a
    :goto_a
    return-object v0

    .line 1620
    :cond_b
    iget-object v2, p0, Lcom/google/protobuf/l$b;->cZ:[Lcom/google/protobuf/l$b;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v3, :cond_22

    aget-object v0, v2, v1

    .line 1621
    iget-object v0, v0, Lcom/google/protobuf/l$b;->da:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$h;

    .line 1622
    if-nez v0, :cond_a

    .line 1620
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 1627
    :cond_22
    const/4 v0, 0x0

    goto :goto_a
.end method

.method a(Ljava/lang/String;Lcom/google/protobuf/l$h;)Lcom/google/protobuf/l$h;
    .registers 9

    .prologue
    const/4 v5, -0x1

    .line 1642
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1644
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/l$b;->C(Ljava/lang/String;)Lcom/google/protobuf/l$h;

    move-result-object v0

    .line 1692
    :goto_12
    if-nez v0, :cond_7e

    .line 1693
    new-instance v0, Lcom/google/protobuf/l$c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not defined."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 1648
    :cond_30
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1650
    if-ne v2, v5, :cond_4f

    move-object v0, p1

    .line 1658
    :goto_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/google/protobuf/l$h;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1663
    :goto_42
    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 1664
    if-ne v4, v5, :cond_55

    .line 1665
    invoke-virtual {p0, p1}, Lcom/google/protobuf/l$b;->C(Ljava/lang/String;)Lcom/google/protobuf/l$h;

    move-result-object v0

    goto :goto_12

    .line 1653
    :cond_4f
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 1668
    :cond_55
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1671
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/l$b;->C(Ljava/lang/String;)Lcom/google/protobuf/l$h;

    move-result-object v1

    .line 1674
    if-eqz v1, :cond_7a

    .line 1675
    if-eq v2, v5, :cond_7f

    .line 1679
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1680
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/l$b;->C(Ljava/lang/String;)Lcom/google/protobuf/l$h;

    move-result-object v0

    goto :goto_12

    .line 1687
    :cond_7a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_42

    .line 1696
    :cond_7e
    return-object v0

    :cond_7f
    move-object v0, v1

    goto :goto_12
.end method

.method a(Lcom/google/protobuf/l$e;)V
    .registers 5

    .prologue
    .line 1835
    new-instance v1, Lcom/google/protobuf/l$b$a;

    invoke-virtual {p1}, Lcom/google/protobuf/l$e;->gm()Lcom/google/protobuf/l$d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/l$e;->getNumber()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/l$b$a;-><init>(Lcom/google/protobuf/l$h;I)V

    .line 1837
    iget-object v0, p0, Lcom/google/protobuf/l$b;->dc:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$e;

    .line 1838
    if-eqz v0, :cond_1c

    .line 1839
    iget-object v2, p0, Lcom/google/protobuf/l$b;->dc:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    :cond_1c
    return-void
.end method

.method a(Lcom/google/protobuf/l$f;)V
    .registers 6

    .prologue
    .line 1816
    new-instance v1, Lcom/google/protobuf/l$b$a;

    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->gv()Lcom/google/protobuf/l$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->getNumber()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/l$b$a;-><init>(Lcom/google/protobuf/l$h;I)V

    .line 1818
    iget-object v0, p0, Lcom/google/protobuf/l$b;->db:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$f;

    .line 1819
    if-eqz v0, :cond_5c

    .line 1820
    iget-object v2, p0, Lcom/google/protobuf/l$b;->db:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    new-instance v1, Lcom/google/protobuf/l$c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field number "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->getNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "has already been used in \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->gv()Lcom/google/protobuf/l$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/l$a;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" by field \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v1

    .line 1827
    :cond_5c
    return-void
.end method

.method a(Lcom/google/protobuf/l$h;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 1706
    invoke-static {p1}, Lcom/google/protobuf/l$b;->b(Lcom/google/protobuf/l$h;)V

    .line 1708
    invoke-interface {p1}, Lcom/google/protobuf/l$h;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 1709
    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1711
    iget-object v0, p0, Lcom/google/protobuf/l$b;->da:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$h;

    .line 1712
    if-eqz v0, :cond_a2

    .line 1713
    iget-object v3, p0, Lcom/google/protobuf/l$b;->da:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    invoke-interface {p1}, Lcom/google/protobuf/l$h;->gf()Lcom/google/protobuf/l$g;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/protobuf/l$h;->gf()Lcom/google/protobuf/l$g;

    move-result-object v4

    if-ne v3, v4, :cond_75

    .line 1716
    const/4 v0, -0x1

    if-ne v2, v0, :cond_45

    .line 1717
    new-instance v0, Lcom/google/protobuf/l$c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is already defined."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, v5}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 1720
    :cond_45
    new-instance v0, Lcom/google/protobuf/l$c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is already defined in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, v5}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 1726
    :cond_75
    new-instance v2, Lcom/google/protobuf/l$c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" is already defined in file \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/protobuf/l$h;->gf()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0, v5}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v2

    .line 1731
    :cond_a2
    return-void
.end method

.method a(Ljava/lang/String;Lcom/google/protobuf/l$g;)V
    .registers 8

    .prologue
    .line 1764
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1766
    const/4 v1, -0x1

    if-ne v0, v1, :cond_50

    move-object v1, p1

    .line 1773
    :goto_a
    iget-object v0, p0, Lcom/google/protobuf/l$b;->da:Ljava/util/Map;

    new-instance v2, Lcom/google/protobuf/l$b$b;

    invoke-direct {v2, v1, p1, p2}, Lcom/google/protobuf/l$b$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/l$g;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$h;

    .line 1776
    if-eqz v0, :cond_60

    .line 1777
    iget-object v2, p0, Lcom/google/protobuf/l$b;->da:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    instance-of v2, v0, Lcom/google/protobuf/l$b$b;

    if-nez v2, :cond_60

    .line 1779
    new-instance v2, Lcom/google/protobuf/l$c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" is already defined (as something other than a package) in file \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/protobuf/l$h;->gf()Lcom/google/protobuf/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, p2, v0, v1}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$g;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v2

    .line 1769
    :cond_50
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/l$b;->a(Ljava/lang/String;Lcom/google/protobuf/l$g;)V

    .line 1770
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_a

    .line 1784
    :cond_60
    return-void
.end method
