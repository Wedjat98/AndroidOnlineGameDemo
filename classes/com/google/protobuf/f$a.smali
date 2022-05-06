.class public final Lcom/google/protobuf/f$a;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$a$a;,
        Lcom/google/protobuf/f$a$b;
    }
.end annotation


# static fields
.field private static final Y:Lcom/google/protobuf/f$a;


# instance fields
.field private Z:Z

.field private aa:Ljava/lang/String;

.field private ab:Ljava/util/List;

.field private ac:Ljava/util/List;

.field private ad:Ljava/util/List;

.field private ae:Ljava/util/List;

.field private af:Ljava/util/List;

.field private ag:Z

.field private ah:Lcom/google/protobuf/f$k;

.field private ai:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2286
    new-instance v0, Lcom/google/protobuf/f$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$a;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$a;->Y:Lcom/google/protobuf/f$a;

    .line 2287
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 2288
    sget-object v0, Lcom/google/protobuf/f$a;->Y:Lcom/google/protobuf/f$a;

    invoke-direct {v0}, Lcom/google/protobuf/f$a;->aJ()V

    .line 2289
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1178
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 1528
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$a;->aa:Ljava/lang/String;

    .line 1534
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$a;->ab:Ljava/util/List;

    .line 1546
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$a;->ac:Ljava/util/List;

    .line 1558
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$a;->ad:Ljava/util/List;

    .line 1570
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$a;->ae:Ljava/util/List;

    .line 1582
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$a;->af:Ljava/util/List;

    .line 1648
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$a;->ai:I

    .line 1179
    invoke-direct {p0}, Lcom/google/protobuf/f$a;->aJ()V

    .line 1180
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 1175
    invoke-direct {p0}, Lcom/google/protobuf/f$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 1181
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 1528
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$a;->aa:Ljava/lang/String;

    .line 1534
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$a;->ab:Ljava/util/List;

    .line 1546
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$a;->ac:Ljava/util/List;

    .line 1558
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$a;->ad:Ljava/util/List;

    .line 1570
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$a;->ae:Ljava/util/List;

    .line 1582
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$a;->af:Ljava/util/List;

    .line 1648
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$a;->ai:I

    .line 1181
    return-void
.end method

.method public static a(Lcom/google/protobuf/f$a;)Lcom/google/protobuf/f$a$a;
    .registers 2

    .prologue
    .line 1757
    invoke-static {}, Lcom/google/protobuf/f$a;->aK()Lcom/google/protobuf/f$a$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$a$a;->h(Lcom/google/protobuf/f$a;)Lcom/google/protobuf/f$a$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/protobuf/f$a;Lcom/google/protobuf/f$k;)Lcom/google/protobuf/f$k;
    .registers 2

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/google/protobuf/f$a;->ah:Lcom/google/protobuf/f$k;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/google/protobuf/f$a;->aa:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/google/protobuf/f$a;->ab:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$a;Z)Z
    .registers 2

    .prologue
    .line 1175
    iput-boolean p1, p0, Lcom/google/protobuf/f$a;->Z:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 1600
    invoke-static {}, Lcom/google/protobuf/f$k;->ef()Lcom/google/protobuf/f$k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$a;->ah:Lcom/google/protobuf/f$k;

    .line 1601
    return-void
.end method

.method public static aK()Lcom/google/protobuf/f$a$a;
    .registers 1

    .prologue
    .line 1754
    invoke-static {}, Lcom/google/protobuf/f$a$a;->ba()Lcom/google/protobuf/f$a$a;

    move-result-object v0

    return-object v0
.end method

.method public static av()Lcom/google/protobuf/f$a;
    .registers 1

    .prologue
    .line 1185
    sget-object v0, Lcom/google/protobuf/f$a;->Y:Lcom/google/protobuf/f$a;

    return-object v0
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 1194
    invoke-static {}, Lcom/google/protobuf/f;->P()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$a;)Ljava/util/List;
    .registers 2

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ab:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/google/protobuf/f$a;->ac:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/google/protobuf/f$a;Z)Z
    .registers 2

    .prologue
    .line 1175
    iput-boolean p1, p0, Lcom/google/protobuf/f$a;->ag:Z

    return p1
.end method

.method static synthetic c(Lcom/google/protobuf/f$a;)Ljava/util/List;
    .registers 2

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ac:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/google/protobuf/f$a;->ad:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/google/protobuf/f$a;)Ljava/util/List;
    .registers 2

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ad:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/google/protobuf/f$a;->ae:Ljava/util/List;

    return-object p1
.end method

.method static synthetic e(Lcom/google/protobuf/f$a;)Ljava/util/List;
    .registers 2

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ae:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/google/protobuf/f$a;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/google/protobuf/f$a;->af:Ljava/util/List;

    return-object p1
.end method

.method static synthetic f(Lcom/google/protobuf/f$a;)Ljava/util/List;
    .registers 2

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/google/protobuf/f$a;->af:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/google/protobuf/f$a;)Lcom/google/protobuf/f$k;
    .registers 2

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ah:Lcom/google/protobuf/f$k;

    return-object v0
.end method


# virtual methods
.method public D(I)Lcom/google/protobuf/f$f;
    .registers 3

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ab:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$f;

    return-object v0
.end method

.method public E(I)Lcom/google/protobuf/f$f;
    .registers 3

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ac:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$f;

    return-object v0
.end method

.method public F(I)Lcom/google/protobuf/f$a;
    .registers 3

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ad:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$a;

    return-object v0
.end method

.method public G(I)Lcom/google/protobuf/f$b;
    .registers 3

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ae:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$b;

    return-object v0
.end method

.method public a()I
    .registers 5

    .prologue
    .line 1650
    iget v0, p0, Lcom/google/protobuf/f$a;->ai:I

    .line 1651
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1684
    :goto_5
    return v0

    .line 1653
    :cond_6
    const/4 v0, 0x0

    .line 1654
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->hasName()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1655
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1658
    :cond_18
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->az()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$f;

    .line 1659
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_21

    .line 1662
    :cond_35
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$a;

    .line 1663
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_3d

    .line 1666
    :cond_50
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aE()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$b;

    .line 1667
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_58

    .line 1670
    :cond_6b
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aG()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$a$b;

    .line 1671
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_73

    .line 1674
    :cond_86
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aA()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$f;

    .line 1675
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_8e

    .line 1678
    :cond_a1
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aH()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 1679
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aI()Lcom/google/protobuf/f$k;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1682
    :cond_b1
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 1683
    iput v0, p0, Lcom/google/protobuf/f$a;->ai:I

    goto/16 :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 1623
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->a()I

    .line 1624
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->hasName()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1625
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 1627
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->az()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$f;

    .line 1628
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_19

    .line 1630
    :cond_2a
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$a;

    .line 1631
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_32

    .line 1633
    :cond_43
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aE()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$b;

    .line 1634
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_4b

    .line 1636
    :cond_5c
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aG()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$a$b;

    .line 1637
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_64

    .line 1639
    :cond_75
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aA()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$f;

    .line 1640
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_7d

    .line 1642
    :cond_8e
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aH()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1643
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aI()Lcom/google/protobuf/f$k;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 1645
    :cond_9c
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 1646
    return-void
.end method

.method public aA()Ljava/util/List;
    .registers 2

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ac:Ljava/util/List;

    return-object v0
.end method

.method public aB()I
    .registers 2

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public aC()Ljava/util/List;
    .registers 2

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ad:Ljava/util/List;

    return-object v0
.end method

.method public aD()I
    .registers 2

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public aE()Ljava/util/List;
    .registers 2

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ae:Ljava/util/List;

    return-object v0
.end method

.method public aF()I
    .registers 2

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public aG()Ljava/util/List;
    .registers 2

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/google/protobuf/f$a;->af:Ljava/util/List;

    return-object v0
.end method

.method public aH()Z
    .registers 2

    .prologue
    .line 1596
    iget-boolean v0, p0, Lcom/google/protobuf/f$a;->ag:Z

    return v0
.end method

.method public aI()Lcom/google/protobuf/f$k;
    .registers 2

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ah:Lcom/google/protobuf/f$k;

    return-object v0
.end method

.method public aL()Lcom/google/protobuf/f$a$a;
    .registers 2

    .prologue
    .line 1755
    invoke-static {}, Lcom/google/protobuf/f$a;->aK()Lcom/google/protobuf/f$a$a;

    move-result-object v0

    return-object v0
.end method

.method public aM()Lcom/google/protobuf/f$a$a;
    .registers 2

    .prologue
    .line 1759
    invoke-static {p0}, Lcom/google/protobuf/f$a;->a(Lcom/google/protobuf/f$a;)Lcom/google/protobuf/f$a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aL()Lcom/google/protobuf/f$a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aw()Lcom/google/protobuf/f$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aM()Lcom/google/protobuf/f$a$a;

    move-result-object v0

    return-object v0
.end method

.method public aw()Lcom/google/protobuf/f$a;
    .registers 2

    .prologue
    .line 1189
    sget-object v0, Lcom/google/protobuf/f$a;->Y:Lcom/google/protobuf/f$a;

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 1199
    invoke-static {}, Lcom/google/protobuf/f;->Q()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public az()Ljava/util/List;
    .registers 2

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ab:Ljava/util/List;

    return-object v0
.end method

.method public getFieldCount()I
    .registers 2

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/google/protobuf/f$a;->ab:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/google/protobuf/f$a;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 1529
    iget-boolean v0, p0, Lcom/google/protobuf/f$a;->Z:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1603
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->az()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$f;

    .line 1604
    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 1618
    :goto_1c
    return v0

    .line 1606
    :cond_1d
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aA()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$f;

    .line 1607
    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v1

    goto :goto_1c

    .line 1609
    :cond_39
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$a;

    .line 1610
    invoke-virtual {v0}, Lcom/google/protobuf/f$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_41

    move v0, v1

    goto :goto_1c

    .line 1612
    :cond_55
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aE()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$b;

    .line 1613
    invoke-virtual {v0}, Lcom/google/protobuf/f$b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5d

    move v0, v1

    goto :goto_1c

    .line 1615
    :cond_71
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aH()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1616
    invoke-virtual {p0}, Lcom/google/protobuf/f$a;->aI()Lcom/google/protobuf/f$k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/f$k;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_83

    move v0, v1

    goto :goto_1c

    .line 1618
    :cond_83
    const/4 v0, 0x1

    goto :goto_1c
.end method
