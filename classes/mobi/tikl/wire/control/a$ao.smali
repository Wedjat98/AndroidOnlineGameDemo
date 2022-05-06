.class public final Lmobi/tikl/wire/control/a$ao;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ao"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$ao$a;
    }
.end annotation


# static fields
.field private static final vI:Lmobi/tikl/wire/control/a$ao;


# instance fields
.field private ai:I

.field private qu:Z

.field private qv:Lmobi/tikl/wire/control/a$G;

.field private vJ:Ljava/util/List;

.field private vK:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4059
    new-instance v0, Lmobi/tikl/wire/control/a$ao;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$ao;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$ao;->vI:Lmobi/tikl/wire/control/a$ao;

    .line 4060
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 4061
    sget-object v0, Lmobi/tikl/wire/control/a$ao;->vI:Lmobi/tikl/wire/control/a$ao;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ao;->aJ()V

    .line 4062
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3592
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 3625
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ao;->vJ:Ljava/util/List;

    .line 3637
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ao;->vK:Ljava/util/List;

    .line 3674
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ao;->ai:I

    .line 3593
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ao;->aJ()V

    .line 3594
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 3589
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ao;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 3595
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 3625
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ao;->vJ:Ljava/util/List;

    .line 3637
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ao;->vK:Ljava/util/List;

    .line 3674
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ao;->ai:I

    .line 3595
    return-void
.end method

.method public static FQ()Lmobi/tikl/wire/control/a$ao;
    .registers 1

    .prologue
    .line 3599
    sget-object v0, Lmobi/tikl/wire/control/a$ao;->vI:Lmobi/tikl/wire/control/a$ao;

    return-object v0
.end method

.method public static FU()Lmobi/tikl/wire/control/a$ao$a;
    .registers 1

    .prologue
    .line 3769
    invoke-static {}, Lmobi/tikl/wire/control/a$ao$a;->Gc()Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ao;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 3589
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ao;->vJ:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ao;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 3589
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ao;->qv:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$ao;)Lmobi/tikl/wire/control/a$ao$a;
    .registers 2

    .prologue
    .line 3772
    invoke-static {}, Lmobi/tikl/wire/control/a$ao;->FU()Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$ao$a;->e(Lmobi/tikl/wire/control/a$ao;)Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ao;Z)Z
    .registers 2

    .prologue
    .line 3589
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ao;->qu:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 3648
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ao;->qv:Lmobi/tikl/wire/control/a$G;

    .line 3649
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 3608
    invoke-static {}, Lmobi/tikl/wire/control/a;->ks()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;
    .registers 2

    .prologue
    .line 3589
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao;->vJ:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ao;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 3589
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ao;->vK:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$ao;)Ljava/util/List;
    .registers 2

    .prologue
    .line 3589
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao;->vK:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$ao;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 3589
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao;->qv:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method


# virtual methods
.method public FR()Lmobi/tikl/wire/control/a$ao;
    .registers 2

    .prologue
    .line 3603
    sget-object v0, Lmobi/tikl/wire/control/a$ao;->vI:Lmobi/tikl/wire/control/a$ao;

    return-object v0
.end method

.method public FS()Ljava/util/List;
    .registers 2

    .prologue
    .line 3628
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao;->vJ:Ljava/util/List;

    return-object v0
.end method

.method public FT()Ljava/util/List;
    .registers 2

    .prologue
    .line 3640
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao;->vK:Ljava/util/List;

    return-object v0
.end method

.method public FV()Lmobi/tikl/wire/control/a$ao$a;
    .registers 2

    .prologue
    .line 3770
    invoke-static {}, Lmobi/tikl/wire/control/a$ao;->FU()Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    return-object v0
.end method

.method public FW()Lmobi/tikl/wire/control/a$ao$a;
    .registers 2

    .prologue
    .line 3774
    invoke-static {p0}, Lmobi/tikl/wire/control/a$ao;->a(Lmobi/tikl/wire/control/a$ao;)Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 3676
    iget v0, p0, Lmobi/tikl/wire/control/a$ao;->ai:I

    .line 3677
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 3699
    :goto_6
    return v0

    .line 3680
    :cond_7
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao;->sO()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 3681
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao;->sP()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    move v1, v0

    .line 3686
    :goto_19
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao;->FS()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3687
    invoke-static {v0}, Lcom/google/protobuf/e;->i(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3689
    goto :goto_21

    .line 3690
    :cond_33
    add-int v0, v1, v2

    .line 3691
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao;->FS()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 3693
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao;->FT()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 3694
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 3696
    goto :goto_49

    .line 3697
    :cond_5d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 3698
    iput v0, p0, Lmobi/tikl/wire/control/a$ao;->ai:I

    goto :goto_6

    :cond_69
    move v1, v2

    goto :goto_19
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 3661
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao;->a()I

    .line 3662
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao;->sO()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3663
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao;->sP()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 3665
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao;->FS()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3666
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    goto :goto_19

    .line 3668
    :cond_2a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao;->FT()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 3669
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_32

    .line 3671
    :cond_43
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 3672
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 3589
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao;->FV()Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 3589
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao;->FR()Lmobi/tikl/wire/control/a$ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 3589
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao;->FW()Lmobi/tikl/wire/control/a$ao$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 3613
    invoke-static {}, Lmobi/tikl/wire/control/a;->kt()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3651
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ao;->qu:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 3656
    :goto_6
    return v0

    .line 3652
    :cond_7
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao;->sP()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    goto :goto_6

    .line 3653
    :cond_13
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ao;->FT()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 3654
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1b

    move v0, v1

    goto :goto_6

    .line 3656
    :cond_2f
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public sO()Z
    .registers 2

    .prologue
    .line 3620
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ao;->qu:Z

    return v0
.end method

.method public sP()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 3621
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ao;->qv:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method
