.class public final Lcom/google/protobuf/z$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/z$b$a;
    }
.end annotation


# instance fields
.field private eG:Ljava/util/List;

.field private eH:Ljava/util/List;

.field private eI:Ljava/util/List;

.field private eJ:Ljava/util/List;

.field private eK:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 676
    invoke-static {}, Lcom/google/protobuf/z$b;->hq()Lcom/google/protobuf/z$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z$b$a;->hy()Lcom/google/protobuf/z$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/d;)V
    .registers 2

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/google/protobuf/z$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/z$b;)Ljava/util/List;
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eG:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 656
    iput-object p1, p0, Lcom/google/protobuf/z$b;->eG:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/google/protobuf/z$b;)Ljava/util/List;
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eH:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 656
    iput-object p1, p0, Lcom/google/protobuf/z$b;->eH:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/google/protobuf/z$b;)Ljava/util/List;
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eI:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 656
    iput-object p1, p0, Lcom/google/protobuf/z$b;->eI:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/google/protobuf/z$b;)Ljava/util/List;
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eJ:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 656
    iput-object p1, p0, Lcom/google/protobuf/z$b;->eJ:Ljava/util/List;

    return-object p1
.end method

.method static synthetic e(Lcom/google/protobuf/z$b;)Ljava/util/List;
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eK:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/google/protobuf/z$b;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 656
    iput-object p1, p0, Lcom/google/protobuf/z$b;->eK:Ljava/util/List;

    return-object p1
.end method

.method public static hq()Lcom/google/protobuf/z$b$a;
    .registers 1

    .prologue
    .line 661
    invoke-static {}, Lcom/google/protobuf/z$b$a;->hz()Lcom/google/protobuf/z$b$a;

    move-result-object v0

    return-object v0
.end method

.method private hw()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 719
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/protobuf/z$b;->eG:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protobuf/z$b;->eH:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/z$b;->eI:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protobuf/z$b;->eJ:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/protobuf/z$b;->eK:Ljava/util/List;

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public Z(I)I
    .registers 8

    .prologue
    .line 755
    const/4 v0, 0x0

    .line 756
    iget-object v1, p0, Lcom/google/protobuf/z$b;->eG:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 757
    invoke-static {p1, v4, v5}, Lcom/google/protobuf/e;->d(IJ)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_8

    .line 759
    :cond_1f
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 760
    invoke-static {p1, v0}, Lcom/google/protobuf/e;->f(II)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_25

    .line 762
    :cond_3b
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 763
    invoke-static {p1, v4, v5}, Lcom/google/protobuf/e;->f(IJ)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_41

    .line 765
    :cond_57
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/c;

    .line 766
    invoke-static {p1, v0}, Lcom/google/protobuf/e;->c(ILcom/google/protobuf/c;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_5d

    .line 768
    :cond_6f
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/z;

    .line 769
    invoke-static {p1, v0}, Lcom/google/protobuf/e;->d(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_75

    .line 771
    :cond_87
    return v1
.end method

.method public aa(I)I
    .registers 5

    .prologue
    .line 792
    const/4 v0, 0x0

    .line 793
    iget-object v1, p0, Lcom/google/protobuf/z$b;->eJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/c;

    .line 794
    invoke-static {p1, v0}, Lcom/google/protobuf/e;->d(ILcom/google/protobuf/c;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_8

    .line 797
    :cond_1b
    return v1
.end method

.method public b(ILcom/google/protobuf/e;)V
    .registers 7

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 734
    invoke-virtual {p2, p1, v2, v3}, Lcom/google/protobuf/e;->a(IJ)V

    goto :goto_6

    .line 736
    :cond_1a
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 737
    invoke-virtual {p2, p1, v0}, Lcom/google/protobuf/e;->b(II)V

    goto :goto_20

    .line 739
    :cond_34
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 740
    invoke-virtual {p2, p1, v2, v3}, Lcom/google/protobuf/e;->c(IJ)V

    goto :goto_3a

    .line 742
    :cond_4e
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/c;

    .line 743
    invoke-virtual {p2, p1, v0}, Lcom/google/protobuf/e;->a(ILcom/google/protobuf/c;)V

    goto :goto_54

    .line 745
    :cond_64
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/z;

    .line 746
    invoke-virtual {p2, p1, v0}, Lcom/google/protobuf/e;->a(ILcom/google/protobuf/u;)V

    goto :goto_6a

    .line 748
    :cond_7a
    return-void
.end method

.method public c(ILcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 782
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/c;

    .line 783
    invoke-virtual {p2, p1, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/c;)V

    goto :goto_6

    .line 785
    :cond_16
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 699
    if-ne p0, p1, :cond_4

    .line 700
    const/4 v0, 0x1

    .line 705
    :goto_3
    return v0

    .line 702
    :cond_4
    instance-of v0, p1, Lcom/google/protobuf/z$b;

    if-nez v0, :cond_a

    .line 703
    const/4 v0, 0x0

    goto :goto_3

    .line 705
    :cond_a
    invoke-direct {p0}, Lcom/google/protobuf/z$b;->hw()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/google/protobuf/z$b;

    invoke-direct {p1}, Lcom/google/protobuf/z$b;->hw()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/google/protobuf/z$b;->hw()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hr()Ljava/util/List;
    .registers 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eG:Ljava/util/List;

    return-object v0
.end method

.method public hs()Ljava/util/List;
    .registers 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eH:Ljava/util/List;

    return-object v0
.end method

.method public ht()Ljava/util/List;
    .registers 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eI:Ljava/util/List;

    return-object v0
.end method

.method public hu()Ljava/util/List;
    .registers 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eJ:Ljava/util/List;

    return-object v0
.end method

.method public hv()Ljava/util/List;
    .registers 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/google/protobuf/z$b;->eK:Ljava/util/List;

    return-object v0
.end method
