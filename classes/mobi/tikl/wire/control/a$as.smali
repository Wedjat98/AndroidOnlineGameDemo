.class public final Lmobi/tikl/wire/control/a$as;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "as"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$as$a;
    }
.end annotation


# static fields
.field private static final wd:Lmobi/tikl/wire/control/a$as;


# instance fields
.field private ai:I

.field private qA:Z

.field private qB:Z

.field private wb:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17953
    new-instance v0, Lmobi/tikl/wire/control/a$as;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$as;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$as;->wd:Lmobi/tikl/wire/control/a$as;

    .line 17954
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 17955
    sget-object v0, Lmobi/tikl/wire/control/a$as;->wd:Lmobi/tikl/wire/control/a$as;

    .line 17956
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 17590
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 17616
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$as;->wb:Ljava/util/List;

    .line 17629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$as;->qB:Z

    .line 17655
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$as;->ai:I

    .line 17591
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 17587
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$as;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 17593
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 17616
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$as;->wb:Ljava/util/List;

    .line 17629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$as;->qB:Z

    .line 17655
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$as;->ai:I

    .line 17593
    return-void
.end method

.method public static GV()Lmobi/tikl/wire/control/a$as;
    .registers 1

    .prologue
    .line 17597
    sget-object v0, Lmobi/tikl/wire/control/a$as;->wd:Lmobi/tikl/wire/control/a$as;

    return-object v0
.end method

.method public static GX()Lmobi/tikl/wire/control/a$as$a;
    .registers 1

    .prologue
    .line 17741
    invoke-static {}, Lmobi/tikl/wire/control/a$as$a;->Hf()Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$as;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 17587
    iput-object p1, p0, Lmobi/tikl/wire/control/a$as;->wb:Ljava/util/List;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$as;)Lmobi/tikl/wire/control/a$as$a;
    .registers 2

    .prologue
    .line 17744
    invoke-static {}, Lmobi/tikl/wire/control/a$as;->GX()Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$as$a;->c(Lmobi/tikl/wire/control/a$as;)Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$as;Z)Z
    .registers 2

    .prologue
    .line 17587
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$as;->qA:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 17606
    invoke-static {}, Lmobi/tikl/wire/control/a;->lA()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$as;)Ljava/util/List;
    .registers 2

    .prologue
    .line 17587
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as;->wb:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$as;Z)Z
    .registers 2

    .prologue
    .line 17587
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$as;->qB:Z

    return p1
.end method


# virtual methods
.method public GL()Ljava/util/List;
    .registers 2

    .prologue
    .line 17619
    iget-object v0, p0, Lmobi/tikl/wire/control/a$as;->wb:Ljava/util/List;

    return-object v0
.end method

.method public GW()Lmobi/tikl/wire/control/a$as;
    .registers 2

    .prologue
    .line 17601
    sget-object v0, Lmobi/tikl/wire/control/a$as;->wd:Lmobi/tikl/wire/control/a$as;

    return-object v0
.end method

.method public GY()Lmobi/tikl/wire/control/a$as$a;
    .registers 2

    .prologue
    .line 17742
    invoke-static {}, Lmobi/tikl/wire/control/a$as;->GX()Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    return-object v0
.end method

.method public GZ()Lmobi/tikl/wire/control/a$as$a;
    .registers 2

    .prologue
    .line 17746
    invoke-static {p0}, Lmobi/tikl/wire/control/a$as;->a(Lmobi/tikl/wire/control/a$as;)Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 5

    .prologue
    .line 17657
    iget v0, p0, Lmobi/tikl/wire/control/a$as;->ai:I

    .line 17658
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 17671
    :goto_5
    return v0

    .line 17660
    :cond_6
    const/4 v0, 0x0

    .line 17661
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as;->GL()Ljava/util/List;

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

    .line 17662
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 17664
    goto :goto_10

    .line 17665
    :cond_24
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as;->tm()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 17666
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as;->tn()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 17669
    :cond_34
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 17670
    iput v0, p0, Lmobi/tikl/wire/control/a$as;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 17645
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as;->a()I

    .line 17646
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as;->GL()Ljava/util/List;

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

    .line 17647
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_b

    .line 17649
    :cond_1c
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as;->tm()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 17650
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as;->tn()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 17652
    :cond_2a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 17653
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 17587
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as;->GY()Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 17587
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as;->GW()Lmobi/tikl/wire/control/a$as;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 17587
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as;->GZ()Lmobi/tikl/wire/control/a$as$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 17611
    invoke-static {}, Lmobi/tikl/wire/control/a;->lB()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 17636
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$as;->qA:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 17640
    :goto_6
    return v0

    .line 17637
    :cond_7
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$as;->GL()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 17638
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_6

    .line 17640
    :cond_23
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public tm()Z
    .registers 2

    .prologue
    .line 17630
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$as;->qA:Z

    return v0
.end method

.method public tn()Z
    .registers 2

    .prologue
    .line 17631
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$as;->qB:Z

    return v0
.end method
