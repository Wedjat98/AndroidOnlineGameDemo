.class public final Lmobi/tikl/wire/control/a$Z;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Z"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$Z$a;
    }
.end annotation


# static fields
.field private static final tp:Lmobi/tikl/wire/control/a$Z;


# instance fields
.field private ai:I

.field private tq:Z

.field private tr:Lmobi/tikl/wire/control/a$G;

.field private ts:Z

.field private tt:Ljava/lang/String;

.field private tu:Z

.field private tv:Lmobi/tikl/wire/control/a$G;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29015
    new-instance v0, Lmobi/tikl/wire/control/a$Z;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$Z;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$Z;->tp:Lmobi/tikl/wire/control/a$Z;

    .line 29016
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 29017
    sget-object v0, Lmobi/tikl/wire/control/a$Z;->tp:Lmobi/tikl/wire/control/a$Z;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$Z;->aJ()V

    .line 29018
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28606
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 28640
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$Z;->tt:Ljava/lang/String;

    .line 28679
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$Z;->ai:I

    .line 28607
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$Z;->aJ()V

    .line 28608
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 28603
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$Z;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 28609
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 28640
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$Z;->tt:Ljava/lang/String;

    .line 28679
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$Z;->ai:I

    .line 28609
    return-void
.end method

.method public static AU()Lmobi/tikl/wire/control/a$Z;
    .registers 1

    .prologue
    .line 28613
    sget-object v0, Lmobi/tikl/wire/control/a$Z;->tp:Lmobi/tikl/wire/control/a$Z;

    return-object v0
.end method

.method public static Bc()Lmobi/tikl/wire/control/a$Z$a;
    .registers 1

    .prologue
    .line 28769
    invoke-static {}, Lmobi/tikl/wire/control/a$Z$a;->Bk()Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$Z;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 28603
    iput-object p1, p0, Lmobi/tikl/wire/control/a$Z;->tt:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$Z;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 28603
    iput-object p1, p0, Lmobi/tikl/wire/control/a$Z;->tr:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$Z$a;
    .registers 2

    .prologue
    .line 28772
    invoke-static {}, Lmobi/tikl/wire/control/a$Z;->Bc()Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$Z$a;->d(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$Z;Z)Z
    .registers 2

    .prologue
    .line 28603
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$Z;->tq:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 28652
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$Z;->tr:Lmobi/tikl/wire/control/a$G;

    .line 28653
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$Z;->tv:Lmobi/tikl/wire/control/a$G;

    .line 28654
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 28622
    invoke-static {}, Lmobi/tikl/wire/control/a;->mA()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 28603
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z;->tr:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$Z;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 28603
    iput-object p1, p0, Lmobi/tikl/wire/control/a$Z;->tv:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$Z;Z)Z
    .registers 2

    .prologue
    .line 28603
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$Z;->ts:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 28603
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z;->tv:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$Z;Z)Z
    .registers 2

    .prologue
    .line 28603
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$Z;->tu:Z

    return p1
.end method


# virtual methods
.method public AV()Lmobi/tikl/wire/control/a$Z;
    .registers 2

    .prologue
    .line 28617
    sget-object v0, Lmobi/tikl/wire/control/a$Z;->tp:Lmobi/tikl/wire/control/a$Z;

    return-object v0
.end method

.method public AW()Z
    .registers 2

    .prologue
    .line 28634
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$Z;->tq:Z

    return v0
.end method

.method public AX()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 28635
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z;->tr:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public AY()Z
    .registers 2

    .prologue
    .line 28641
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$Z;->ts:Z

    return v0
.end method

.method public AZ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28642
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z;->tt:Ljava/lang/String;

    return-object v0
.end method

.method public Ba()Z
    .registers 2

    .prologue
    .line 28648
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$Z;->tu:Z

    return v0
.end method

.method public Bb()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 28649
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Z;->tv:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public Bd()Lmobi/tikl/wire/control/a$Z$a;
    .registers 2

    .prologue
    .line 28770
    invoke-static {}, Lmobi/tikl/wire/control/a$Z;->Bc()Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    return-object v0
.end method

.method public Be()Lmobi/tikl/wire/control/a$Z$a;
    .registers 2

    .prologue
    .line 28774
    invoke-static {p0}, Lmobi/tikl/wire/control/a$Z;->a(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 4

    .prologue
    .line 28681
    iget v0, p0, Lmobi/tikl/wire/control/a$Z;->ai:I

    .line 28682
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 28699
    :goto_5
    return v0

    .line 28684
    :cond_6
    const/4 v0, 0x0

    .line 28685
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->AW()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 28686
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->AX()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 28689
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->AY()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 28690
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->AZ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28693
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->Ba()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 28694
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->Bb()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28697
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 28698
    iput v0, p0, Lmobi/tikl/wire/control/a$Z;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 28666
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->a()I

    .line 28667
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->AW()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 28668
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->AX()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 28670
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->AY()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 28671
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->AZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 28673
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->Ba()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 28674
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->Bb()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 28676
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 28677
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 28603
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->Bd()Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 28603
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->AV()Lmobi/tikl/wire/control/a$Z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 28603
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->Be()Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 28627
    invoke-static {}, Lmobi/tikl/wire/control/a;->mB()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 28656
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$Z;->tq:Z

    if-nez v1, :cond_6

    .line 28661
    :cond_5
    :goto_5
    return v0

    .line 28657
    :cond_6
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->AX()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28658
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->Ba()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 28659
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Z;->Bb()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28661
    :cond_20
    const/4 v0, 0x1

    goto :goto_5
.end method
