.class public final Lmobi/tikl/wire/control/a$D;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "D"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$D$a;
    }
.end annotation


# static fields
.field private static final qU:Lmobi/tikl/wire/control/a$D;


# instance fields
.field private Z:Z

.field private aa:Ljava/lang/String;

.field private ai:I

.field private pC:Z

.field private pD:Ljava/lang/String;

.field private qE:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36097
    new-instance v0, Lmobi/tikl/wire/control/a$D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$D;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$D;->qU:Lmobi/tikl/wire/control/a$D;

    .line 36098
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 36099
    sget-object v0, Lmobi/tikl/wire/control/a$D;->qU:Lmobi/tikl/wire/control/a$D;

    .line 36100
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 35688
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 35715
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$D;->pD:Ljava/lang/String;

    .line 35721
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$D;->qE:Ljava/util/List;

    .line 35734
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$D;->aa:Ljava/lang/String;

    .line 35764
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$D;->ai:I

    .line 35689
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 35685
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$D;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 35691
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 35715
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$D;->pD:Ljava/lang/String;

    .line 35721
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$D;->qE:Ljava/util/List;

    .line 35734
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$D;->aa:Ljava/lang/String;

    .line 35764
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$D;->ai:I

    .line 35691
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$D;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35685
    iput-object p1, p0, Lmobi/tikl/wire/control/a$D;->pD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$D;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 35685
    iput-object p1, p0, Lmobi/tikl/wire/control/a$D;->qE:Ljava/util/List;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$D;)Lmobi/tikl/wire/control/a$D$a;
    .registers 2

    .prologue
    .line 35857
    invoke-static {}, Lmobi/tikl/wire/control/a$D;->uS()Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$D$a;->c(Lmobi/tikl/wire/control/a$D;)Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$D;Z)Z
    .registers 2

    .prologue
    .line 35685
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$D;->pC:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 35704
    invoke-static {}, Lmobi/tikl/wire/control/a;->nk()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$D;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35685
    iput-object p1, p0, Lmobi/tikl/wire/control/a$D;->aa:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$D;)Ljava/util/List;
    .registers 2

    .prologue
    .line 35685
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D;->qE:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$D;Z)Z
    .registers 2

    .prologue
    .line 35685
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$D;->Z:Z

    return p1
.end method

.method public static uQ()Lmobi/tikl/wire/control/a$D;
    .registers 1

    .prologue
    .line 35695
    sget-object v0, Lmobi/tikl/wire/control/a$D;->qU:Lmobi/tikl/wire/control/a$D;

    return-object v0
.end method

.method public static uS()Lmobi/tikl/wire/control/a$D$a;
    .registers 1

    .prologue
    .line 35854
    invoke-static {}, Lmobi/tikl/wire/control/a$D$a;->va()Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 35766
    iget v0, p0, Lmobi/tikl/wire/control/a$D;->ai:I

    .line 35767
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 35784
    :goto_5
    return v0

    .line 35769
    :cond_6
    const/4 v0, 0x0

    .line 35770
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D;->pS()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 35771
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 35774
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D;->tz()Ljava/util/List;

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

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 35775
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 35777
    goto :goto_21

    .line 35778
    :cond_35
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D;->hasName()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 35779
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 35782
    :cond_45
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 35783
    iput v0, p0, Lmobi/tikl/wire/control/a$D;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 35751
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D;->a()I

    .line 35752
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D;->pS()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 35753
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 35755
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D;->tz()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 35756
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_19

    .line 35758
    :cond_2a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D;->hasName()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 35759
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 35761
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 35762
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 35685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D;->uT()Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 35685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D;->uR()Lmobi/tikl/wire/control/a$D;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 35685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D;->uU()Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 35709
    invoke-static {}, Lmobi/tikl/wire/control/a;->nl()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35736
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 35735
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$D;->Z:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 35741
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$D;->pC:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 35746
    :goto_6
    return v0

    .line 35742
    :cond_7
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$D;->Z:Z

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_6

    .line 35743
    :cond_d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$D;->tz()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 35744
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    goto :goto_6

    .line 35746
    :cond_29
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 35716
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$D;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35717
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public tz()Ljava/util/List;
    .registers 2

    .prologue
    .line 35724
    iget-object v0, p0, Lmobi/tikl/wire/control/a$D;->qE:Ljava/util/List;

    return-object v0
.end method

.method public uR()Lmobi/tikl/wire/control/a$D;
    .registers 2

    .prologue
    .line 35699
    sget-object v0, Lmobi/tikl/wire/control/a$D;->qU:Lmobi/tikl/wire/control/a$D;

    return-object v0
.end method

.method public uT()Lmobi/tikl/wire/control/a$D$a;
    .registers 2

    .prologue
    .line 35855
    invoke-static {}, Lmobi/tikl/wire/control/a$D;->uS()Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    return-object v0
.end method

.method public uU()Lmobi/tikl/wire/control/a$D$a;
    .registers 2

    .prologue
    .line 35859
    invoke-static {p0}, Lmobi/tikl/wire/control/a$D;->a(Lmobi/tikl/wire/control/a$D;)Lmobi/tikl/wire/control/a$D$a;

    move-result-object v0

    return-object v0
.end method
