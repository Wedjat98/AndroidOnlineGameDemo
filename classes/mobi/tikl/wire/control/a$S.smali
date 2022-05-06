.class public final Lmobi/tikl/wire/control/a$S;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$S$a;
    }
.end annotation


# static fields
.field private static final sJ:Lmobi/tikl/wire/control/a$S;


# instance fields
.field private ai:I

.field private pU:Z

.field private pV:Lmobi/tikl/wire/control/a$G;

.field private sK:Z

.field private sL:Lmobi/tikl/wire/control/a$G;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6987
    new-instance v0, Lmobi/tikl/wire/control/a$S;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$S;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$S;->sJ:Lmobi/tikl/wire/control/a$S;

    .line 6988
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 6989
    sget-object v0, Lmobi/tikl/wire/control/a$S;->sJ:Lmobi/tikl/wire/control/a$S;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$S;->aJ()V

    .line 6990
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 6621
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 6683
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$S;->ai:I

    .line 6622
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$S;->aJ()V

    .line 6623
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 6618
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$S;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 6624
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 6683
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$S;->ai:I

    .line 6624
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$S;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 6618
    iput-object p1, p0, Lmobi/tikl/wire/control/a$S;->pV:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$S;)Lmobi/tikl/wire/control/a$S$a;
    .registers 2

    .prologue
    .line 6772
    invoke-static {}, Lmobi/tikl/wire/control/a$S;->zh()Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$S$a;->d(Lmobi/tikl/wire/control/a$S;)Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$S;Z)Z
    .registers 2

    .prologue
    .line 6618
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$S;->pU:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 6660
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$S;->pV:Lmobi/tikl/wire/control/a$G;

    .line 6661
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$S;->sL:Lmobi/tikl/wire/control/a$G;

    .line 6662
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 6637
    invoke-static {}, Lmobi/tikl/wire/control/a;->kE()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$S;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 6618
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S;->pV:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$S;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 6618
    iput-object p1, p0, Lmobi/tikl/wire/control/a$S;->sL:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$S;Z)Z
    .registers 2

    .prologue
    .line 6618
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$S;->sK:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$S;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 6618
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S;->sL:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public static zd()Lmobi/tikl/wire/control/a$S;
    .registers 1

    .prologue
    .line 6628
    sget-object v0, Lmobi/tikl/wire/control/a$S;->sJ:Lmobi/tikl/wire/control/a$S;

    return-object v0
.end method

.method public static zh()Lmobi/tikl/wire/control/a$S$a;
    .registers 1

    .prologue
    .line 6769
    invoke-static {}, Lmobi/tikl/wire/control/a$S$a;->zp()Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 6685
    iget v0, p0, Lmobi/tikl/wire/control/a$S;->ai:I

    .line 6686
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 6699
    :goto_5
    return v0

    .line 6688
    :cond_6
    const/4 v0, 0x0

    .line 6689
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S;->rd()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 6690
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 6693
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S;->zf()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 6694
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S;->zg()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6697
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 6698
    iput v0, p0, Lmobi/tikl/wire/control/a$S;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 6673
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S;->a()I

    .line 6674
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S;->rd()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6675
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 6677
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S;->zf()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 6678
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S;->zg()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 6680
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 6681
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 6618
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S;->zi()Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 6618
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S;->ze()Lmobi/tikl/wire/control/a$S;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 6618
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S;->zj()Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 6642
    invoke-static {}, Lmobi/tikl/wire/control/a;->kF()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 6664
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$S;->pU:Z

    if-nez v1, :cond_6

    .line 6668
    :cond_5
    :goto_5
    return v0

    .line 6665
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$S;->sK:Z

    if-eqz v1, :cond_5

    .line 6666
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S;->re()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6667
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$S;->zg()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6668
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public rd()Z
    .registers 2

    .prologue
    .line 6649
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$S;->pU:Z

    return v0
.end method

.method public re()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 6650
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S;->pV:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public ze()Lmobi/tikl/wire/control/a$S;
    .registers 2

    .prologue
    .line 6632
    sget-object v0, Lmobi/tikl/wire/control/a$S;->sJ:Lmobi/tikl/wire/control/a$S;

    return-object v0
.end method

.method public zf()Z
    .registers 2

    .prologue
    .line 6656
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$S;->sK:Z

    return v0
.end method

.method public zg()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 6657
    iget-object v0, p0, Lmobi/tikl/wire/control/a$S;->sL:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public zi()Lmobi/tikl/wire/control/a$S$a;
    .registers 2

    .prologue
    .line 6770
    invoke-static {}, Lmobi/tikl/wire/control/a$S;->zh()Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    return-object v0
.end method

.method public zj()Lmobi/tikl/wire/control/a$S$a;
    .registers 2

    .prologue
    .line 6774
    invoke-static {p0}, Lmobi/tikl/wire/control/a$S;->a(Lmobi/tikl/wire/control/a$S;)Lmobi/tikl/wire/control/a$S$a;

    move-result-object v0

    return-object v0
.end method
