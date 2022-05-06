.class public final Lmobi/tikl/wire/control/a$H;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$H$a;
    }
.end annotation


# static fields
.field private static final rh:Lmobi/tikl/wire/control/a$H;


# instance fields
.field private ai:I

.field private ri:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19960
    new-instance v0, Lmobi/tikl/wire/control/a$H;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$H;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$H;->rh:Lmobi/tikl/wire/control/a$H;

    .line 19961
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 19962
    sget-object v0, Lmobi/tikl/wire/control/a$H;->rh:Lmobi/tikl/wire/control/a$H;

    .line 19963
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 19637
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 19663
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$H;->ri:Ljava/util/List;

    .line 19691
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$H;->ai:I

    .line 19638
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 19634
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$H;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 19640
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 19663
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$H;->ri:Ljava/util/List;

    .line 19691
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$H;->ai:I

    .line 19640
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$H;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 19634
    iput-object p1, p0, Lmobi/tikl/wire/control/a$H;->ri:Ljava/util/List;

    return-object p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 19653
    invoke-static {}, Lmobi/tikl/wire/control/a;->lM()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lmobi/tikl/wire/control/a$H;)Lmobi/tikl/wire/control/a$H$a;
    .registers 2

    .prologue
    .line 19776
    invoke-static {}, Lmobi/tikl/wire/control/a$H;->vS()Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$H$a;->d(Lmobi/tikl/wire/control/a$H;)Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$H;)Ljava/util/List;
    .registers 2

    .prologue
    .line 19634
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H;->ri:Ljava/util/List;

    return-object v0
.end method

.method public static vO()Lmobi/tikl/wire/control/a$H;
    .registers 1

    .prologue
    .line 19644
    sget-object v0, Lmobi/tikl/wire/control/a$H;->rh:Lmobi/tikl/wire/control/a$H;

    return-object v0
.end method

.method public static vS()Lmobi/tikl/wire/control/a$H$a;
    .registers 1

    .prologue
    .line 19773
    invoke-static {}, Lmobi/tikl/wire/control/a$H$a;->wa()Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 19693
    iget v0, p0, Lmobi/tikl/wire/control/a$H;->ai:I

    .line 19694
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 19703
    :goto_5
    return v0

    .line 19696
    :cond_6
    const/4 v0, 0x0

    .line 19697
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H;->vQ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 19698
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 19700
    goto :goto_10

    .line 19701
    :cond_24
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 19702
    iput v0, p0, Lmobi/tikl/wire/control/a$H;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 19684
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H;->a()I

    .line 19685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H;->vQ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 19686
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_b

    .line 19688
    :cond_1c
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 19689
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 19634
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H;->vT()Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 19634
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H;->vP()Lmobi/tikl/wire/control/a$H;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 19634
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H;->vU()Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 19658
    invoke-static {}, Lmobi/tikl/wire/control/a;->lN()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public bd(I)Lmobi/tikl/wire/control/a$G;
    .registers 3

    .prologue
    .line 19670
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H;->ri:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 19676
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$H;->vQ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 19677
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 19679
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method public vP()Lmobi/tikl/wire/control/a$H;
    .registers 2

    .prologue
    .line 19648
    sget-object v0, Lmobi/tikl/wire/control/a$H;->rh:Lmobi/tikl/wire/control/a$H;

    return-object v0
.end method

.method public vQ()Ljava/util/List;
    .registers 2

    .prologue
    .line 19666
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H;->ri:Ljava/util/List;

    return-object v0
.end method

.method public vR()I
    .registers 2

    .prologue
    .line 19668
    iget-object v0, p0, Lmobi/tikl/wire/control/a$H;->ri:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public vT()Lmobi/tikl/wire/control/a$H$a;
    .registers 2

    .prologue
    .line 19774
    invoke-static {}, Lmobi/tikl/wire/control/a$H;->vS()Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    return-object v0
.end method

.method public vU()Lmobi/tikl/wire/control/a$H$a;
    .registers 2

    .prologue
    .line 19778
    invoke-static {p0}, Lmobi/tikl/wire/control/a$H;->b(Lmobi/tikl/wire/control/a$H;)Lmobi/tikl/wire/control/a$H$a;

    move-result-object v0

    return-object v0
.end method
