.class public final Lmobi/tikl/wire/control/a$am;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "am"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$am$a;
    }
.end annotation


# static fields
.field private static final vC:Lmobi/tikl/wire/control/a$am;


# instance fields
.field private ai:I

.field private pC:Z

.field private pD:Ljava/lang/String;

.field private qE:Ljava/util/List;

.field private uk:Z

.field private ul:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23996
    new-instance v0, Lmobi/tikl/wire/control/a$am;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$am;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$am;->vC:Lmobi/tikl/wire/control/a$am;

    .line 23997
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 23998
    sget-object v0, Lmobi/tikl/wire/control/a$am;->vC:Lmobi/tikl/wire/control/a$am;

    .line 23999
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23591
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 23618
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$am;->ul:I

    .line 23624
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$am;->qE:Ljava/util/List;

    .line 23637
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$am;->pD:Ljava/lang/String;

    .line 23666
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$am;->ai:I

    .line 23592
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 23588
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$am;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 23594
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 23618
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$am;->ul:I

    .line 23624
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$am;->qE:Ljava/util/List;

    .line 23637
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$am;->pD:Ljava/lang/String;

    .line 23666
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$am;->ai:I

    .line 23594
    return-void
.end method

.method public static Fs()Lmobi/tikl/wire/control/a$am;
    .registers 1

    .prologue
    .line 23598
    sget-object v0, Lmobi/tikl/wire/control/a$am;->vC:Lmobi/tikl/wire/control/a$am;

    return-object v0
.end method

.method public static Fu()Lmobi/tikl/wire/control/a$am$a;
    .registers 1

    .prologue
    .line 23756
    invoke-static {}, Lmobi/tikl/wire/control/a$am$a;->FC()Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$am;I)I
    .registers 2

    .prologue
    .line 23588
    iput p1, p0, Lmobi/tikl/wire/control/a$am;->ul:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$am;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23588
    iput-object p1, p0, Lmobi/tikl/wire/control/a$am;->pD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$am;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 23588
    iput-object p1, p0, Lmobi/tikl/wire/control/a$am;->qE:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$am;Z)Z
    .registers 2

    .prologue
    .line 23588
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$am;->uk:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 23607
    invoke-static {}, Lmobi/tikl/wire/control/a;->me()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$am;Z)Z
    .registers 2

    .prologue
    .line 23588
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$am;->pC:Z

    return p1
.end method

.method public static c(Lmobi/tikl/wire/control/a$am;)Lmobi/tikl/wire/control/a$am$a;
    .registers 2

    .prologue
    .line 23759
    invoke-static {}, Lmobi/tikl/wire/control/a$am;->Fu()Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$am$a;->e(Lmobi/tikl/wire/control/a$am;)Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$am;)Ljava/util/List;
    .registers 2

    .prologue
    .line 23588
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am;->qE:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public Db()Z
    .registers 2

    .prologue
    .line 23619
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$am;->uk:Z

    return v0
.end method

.method public Dc()I
    .registers 2

    .prologue
    .line 23620
    iget v0, p0, Lmobi/tikl/wire/control/a$am;->ul:I

    return v0
.end method

.method public Ft()Lmobi/tikl/wire/control/a$am;
    .registers 2

    .prologue
    .line 23602
    sget-object v0, Lmobi/tikl/wire/control/a$am;->vC:Lmobi/tikl/wire/control/a$am;

    return-object v0
.end method

.method public Fv()Lmobi/tikl/wire/control/a$am$a;
    .registers 2

    .prologue
    .line 23757
    invoke-static {}, Lmobi/tikl/wire/control/a$am;->Fu()Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    return-object v0
.end method

.method public Fw()Lmobi/tikl/wire/control/a$am$a;
    .registers 2

    .prologue
    .line 23761
    invoke-static {p0}, Lmobi/tikl/wire/control/a$am;->c(Lmobi/tikl/wire/control/a$am;)Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 5

    .prologue
    .line 23668
    iget v0, p0, Lmobi/tikl/wire/control/a$am;->ai:I

    .line 23669
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 23686
    :goto_5
    return v0

    .line 23671
    :cond_6
    const/4 v0, 0x0

    .line 23672
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am;->Db()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 23673
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am;->Dc()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 23676
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am;->tz()Ljava/util/List;

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

    .line 23677
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 23679
    goto :goto_21

    .line 23680
    :cond_35
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am;->pS()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 23681
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am;->pT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 23684
    :cond_45
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 23685
    iput v0, p0, Lmobi/tikl/wire/control/a$am;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 23653
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am;->a()I

    .line 23654
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am;->Db()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 23655
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am;->Dc()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 23657
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am;->tz()Ljava/util/List;

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

    .line 23658
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_19

    .line 23660
    :cond_2a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am;->pS()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 23661
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 23663
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 23664
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 23588
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am;->Fv()Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 23588
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am;->Ft()Lmobi/tikl/wire/control/a$am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 23588
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am;->Fw()Lmobi/tikl/wire/control/a$am$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 23612
    invoke-static {}, Lmobi/tikl/wire/control/a;->mf()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 23644
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$am;->uk:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 23648
    :goto_6
    return v0

    .line 23645
    :cond_7
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$am;->tz()Ljava/util/List;

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

    .line 23646
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_6

    .line 23648
    :cond_23
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 23638
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$am;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23639
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public tz()Ljava/util/List;
    .registers 2

    .prologue
    .line 23627
    iget-object v0, p0, Lmobi/tikl/wire/control/a$am;->qE:Ljava/util/List;

    return-object v0
.end method
