.class public final Lmobi/tikl/wire/control/a$i;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$i$a;
    }
.end annotation


# static fields
.field private static final pB:Lmobi/tikl/wire/control/a$i;


# instance fields
.field private ai:I

.field private oA:Z

.field private oB:Lmobi/tikl/wire/control/a$G;

.field private oD:Z

.field private oE:Ljava/lang/String;

.field private oF:Z

.field private oG:I

.field private oH:Z

.field private oI:Ljava/lang/String;

.field private oJ:Z

.field private oK:Ljava/lang/String;

.field private oL:Z

.field private oM:I

.field private oN:Z

.field private oO:I

.field private oP:Z

.field private oQ:I

.field private oR:Z

.field private oS:Ljava/lang/String;

.field private oT:Z

.field private oU:Ljava/lang/String;

.field private oV:Z

.field private oW:Lmobi/tikl/wire/control/a$P;

.field private oX:Z

.field private oY:Ljava/lang/String;

.field private oZ:Z

.field private oy:Z

.field private oz:I

.field private pC:Z

.field private pD:Ljava/lang/String;

.field private pa:Ljava/lang/String;

.field private pb:Z

.field private pc:Ljava/lang/String;

.field private pd:Z

.field private pe:I

.field private pf:Z

.field private pg:Z

.field private ph:Z

.field private pi:Z

.field private pj:Z

.field private pk:Ljava/lang/String;

.field private pl:Z

.field private pm:I

.field private pn:Z

.field private po:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12734
    new-instance v0, Lmobi/tikl/wire/control/a$i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$i;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$i;->pB:Lmobi/tikl/wire/control/a$i;

    .line 12735
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 12736
    sget-object v0, Lmobi/tikl/wire/control/a$i;->pB:Lmobi/tikl/wire/control/a$i;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$i;->aJ()V

    .line 12737
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 11554
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 11581
    iput v1, p0, Lmobi/tikl/wire/control/a$i;->oz:I

    .line 11595
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->pD:Ljava/lang/String;

    .line 11602
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->oE:Ljava/lang/String;

    .line 11609
    iput v1, p0, Lmobi/tikl/wire/control/a$i;->oG:I

    .line 11616
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->oI:Ljava/lang/String;

    .line 11623
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->oK:Ljava/lang/String;

    .line 11630
    iput v1, p0, Lmobi/tikl/wire/control/a$i;->oM:I

    .line 11637
    iput v1, p0, Lmobi/tikl/wire/control/a$i;->oO:I

    .line 11644
    iput v1, p0, Lmobi/tikl/wire/control/a$i;->oQ:I

    .line 11651
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->oS:Ljava/lang/String;

    .line 11658
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->oU:Ljava/lang/String;

    .line 11672
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->oY:Ljava/lang/String;

    .line 11679
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->pa:Ljava/lang/String;

    .line 11686
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->pc:Ljava/lang/String;

    .line 11693
    iput v1, p0, Lmobi/tikl/wire/control/a$i;->pe:I

    .line 11700
    iput-boolean v1, p0, Lmobi/tikl/wire/control/a$i;->pg:Z

    .line 11707
    iput-boolean v1, p0, Lmobi/tikl/wire/control/a$i;->pi:Z

    .line 11714
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->pk:Ljava/lang/String;

    .line 11721
    iput v1, p0, Lmobi/tikl/wire/control/a$i;->pm:I

    .line 11728
    iput-boolean v1, p0, Lmobi/tikl/wire/control/a$i;->po:Z

    .line 11820
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$i;->ai:I

    .line 11555
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$i;->aJ()V

    .line 11556
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 11551
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$i;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 11557
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 11581
    iput v1, p0, Lmobi/tikl/wire/control/a$i;->oz:I

    .line 11595
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->pD:Ljava/lang/String;

    .line 11602
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->oE:Ljava/lang/String;

    .line 11609
    iput v1, p0, Lmobi/tikl/wire/control/a$i;->oG:I

    .line 11616
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->oI:Ljava/lang/String;

    .line 11623
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->oK:Ljava/lang/String;

    .line 11630
    iput v1, p0, Lmobi/tikl/wire/control/a$i;->oM:I

    .line 11637
    iput v1, p0, Lmobi/tikl/wire/control/a$i;->oO:I

    .line 11644
    iput v1, p0, Lmobi/tikl/wire/control/a$i;->oQ:I

    .line 11651
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->oS:Ljava/lang/String;

    .line 11658
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->oU:Ljava/lang/String;

    .line 11672
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->oY:Ljava/lang/String;

    .line 11679
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->pa:Ljava/lang/String;

    .line 11686
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->pc:Ljava/lang/String;

    .line 11693
    iput v1, p0, Lmobi/tikl/wire/control/a$i;->pe:I

    .line 11700
    iput-boolean v1, p0, Lmobi/tikl/wire/control/a$i;->pg:Z

    .line 11707
    iput-boolean v1, p0, Lmobi/tikl/wire/control/a$i;->pi:Z

    .line 11714
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->pk:Ljava/lang/String;

    .line 11721
    iput v1, p0, Lmobi/tikl/wire/control/a$i;->pm:I

    .line 11728
    iput-boolean v1, p0, Lmobi/tikl/wire/control/a$i;->po:Z

    .line 11820
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$i;->ai:I

    .line 11557
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$i;I)I
    .registers 2

    .prologue
    .line 11551
    iput p1, p0, Lmobi/tikl/wire/control/a$i;->oz:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11551
    iput-object p1, p0, Lmobi/tikl/wire/control/a$i;->pD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$i;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 11551
    iput-object p1, p0, Lmobi/tikl/wire/control/a$i;->oB:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$i;Lmobi/tikl/wire/control/a$P;)Lmobi/tikl/wire/control/a$P;
    .registers 2

    .prologue
    .line 11551
    iput-object p1, p0, Lmobi/tikl/wire/control/a$i;->oW:Lmobi/tikl/wire/control/a$P;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->oy:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 11733
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->oB:Lmobi/tikl/wire/control/a$G;

    .line 11734
    invoke-static {}, Lmobi/tikl/wire/control/a$P;->ym()Lmobi/tikl/wire/control/a$P;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$i;->oW:Lmobi/tikl/wire/control/a$P;

    .line 11735
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 11570
    invoke-static {}, Lmobi/tikl/wire/control/a;->kW()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$i;I)I
    .registers 2

    .prologue
    .line 11551
    iput p1, p0, Lmobi/tikl/wire/control/a$i;->oG:I

    return p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11551
    iput-object p1, p0, Lmobi/tikl/wire/control/a$i;->oE:Ljava/lang/String;

    return-object p1
.end method

.method public static b(Lmobi/tikl/wire/control/a$i;)Lmobi/tikl/wire/control/a$i$a;
    .registers 2

    .prologue
    .line 11989
    invoke-static {}, Lmobi/tikl/wire/control/a$i;->pU()Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$i$a;->e(Lmobi/tikl/wire/control/a$i;)Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->oA:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$i;I)I
    .registers 2

    .prologue
    .line 11551
    iput p1, p0, Lmobi/tikl/wire/control/a$i;->oM:I

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11551
    iput-object p1, p0, Lmobi/tikl/wire/control/a$i;->oI:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$i;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 11551
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->pC:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$i;I)I
    .registers 2

    .prologue
    .line 11551
    iput p1, p0, Lmobi/tikl/wire/control/a$i;->oO:I

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11551
    iput-object p1, p0, Lmobi/tikl/wire/control/a$i;->oK:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$i;)Lmobi/tikl/wire/control/a$P;
    .registers 2

    .prologue
    .line 11551
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i;->oW:Lmobi/tikl/wire/control/a$P;

    return-object v0
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->oD:Z

    return p1
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$i;I)I
    .registers 2

    .prologue
    .line 11551
    iput p1, p0, Lmobi/tikl/wire/control/a$i;->oQ:I

    return p1
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11551
    iput-object p1, p0, Lmobi/tikl/wire/control/a$i;->oS:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->oF:Z

    return p1
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$i;I)I
    .registers 2

    .prologue
    .line 11551
    iput p1, p0, Lmobi/tikl/wire/control/a$i;->pe:I

    return p1
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11551
    iput-object p1, p0, Lmobi/tikl/wire/control/a$i;->oU:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->oH:Z

    return p1
.end method

.method static synthetic g(Lmobi/tikl/wire/control/a$i;I)I
    .registers 2

    .prologue
    .line 11551
    iput p1, p0, Lmobi/tikl/wire/control/a$i;->pm:I

    return p1
.end method

.method static synthetic g(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11551
    iput-object p1, p0, Lmobi/tikl/wire/control/a$i;->oY:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->oJ:Z

    return p1
.end method

.method static synthetic h(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11551
    iput-object p1, p0, Lmobi/tikl/wire/control/a$i;->pa:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->oL:Z

    return p1
.end method

.method static synthetic i(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11551
    iput-object p1, p0, Lmobi/tikl/wire/control/a$i;->pc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->oN:Z

    return p1
.end method

.method static synthetic j(Lmobi/tikl/wire/control/a$i;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11551
    iput-object p1, p0, Lmobi/tikl/wire/control/a$i;->pk:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->oP:Z

    return p1
.end method

.method static synthetic k(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->oR:Z

    return p1
.end method

.method static synthetic l(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->oT:Z

    return p1
.end method

.method static synthetic m(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->oV:Z

    return p1
.end method

.method static synthetic n(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->oX:Z

    return p1
.end method

.method static synthetic o(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->oZ:Z

    return p1
.end method

.method static synthetic p(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->pb:Z

    return p1
.end method

.method public static pQ()Lmobi/tikl/wire/control/a$i;
    .registers 1

    .prologue
    .line 11561
    sget-object v0, Lmobi/tikl/wire/control/a$i;->pB:Lmobi/tikl/wire/control/a$i;

    return-object v0
.end method

.method public static pU()Lmobi/tikl/wire/control/a$i$a;
    .registers 1

    .prologue
    .line 11986
    invoke-static {}, Lmobi/tikl/wire/control/a$i$a;->qc()Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->pd:Z

    return p1
.end method

.method static synthetic r(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->pf:Z

    return p1
.end method

.method static synthetic s(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->pg:Z

    return p1
.end method

.method static synthetic t(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->ph:Z

    return p1
.end method

.method static synthetic u(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->pi:Z

    return p1
.end method

.method static synthetic v(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->pj:Z

    return p1
.end method

.method static synthetic w(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->pl:Z

    return p1
.end method

.method static synthetic x(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->pn:Z

    return p1
.end method

.method static synthetic y(Lmobi/tikl/wire/control/a$i;Z)Z
    .registers 2

    .prologue
    .line 11551
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$i;->po:Z

    return p1
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 11822
    iget v0, p0, Lmobi/tikl/wire/control/a$i;->ai:I

    .line 11823
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 11916
    :goto_5
    return v0

    .line 11825
    :cond_6
    const/4 v0, 0x0

    .line 11826
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 11827
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->getMsgId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 11830
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->od()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 11831
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11834
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->pS()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 11835
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->pT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11838
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oh()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 11839
    const/4 v1, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11842
    :cond_48
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oi()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 11843
    const/4 v1, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->jr()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11846
    :cond_58
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oj()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 11847
    const/4 v1, 0x6

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11850
    :cond_68
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ok()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 11851
    const/4 v1, 0x7

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->js()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11854
    :cond_78
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ol()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 11855
    const/16 v1, 0x8

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->getLength()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11858
    :cond_89
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->om()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 11859
    const/16 v1, 0x9

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->on()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11862
    :cond_9a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oo()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 11863
    const/16 v1, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->op()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11866
    :cond_ab
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oq()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 11867
    const/16 v1, 0xb

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->or()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11870
    :cond_bc
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->os()Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 11871
    const/16 v1, 0xc

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->jt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11874
    :cond_cd
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ot()Z

    move-result v1

    if-eqz v1, :cond_de

    .line 11875
    const/16 v1, 0x14

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ou()Lmobi/tikl/wire/control/a$P;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11878
    :cond_de
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ov()Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 11879
    const/16 v1, 0x1e

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ow()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11882
    :cond_ef
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ox()Z

    move-result v1

    if-eqz v1, :cond_100

    .line 11883
    const/16 v1, 0x1f

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oy()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11886
    :cond_100
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oz()Z

    move-result v1

    if-eqz v1, :cond_111

    .line 11887
    const/16 v1, 0x28

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oA()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11890
    :cond_111
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oB()Z

    move-result v1

    if-eqz v1, :cond_122

    .line 11891
    const/16 v1, 0x64

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oC()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11894
    :cond_122
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oD()Z

    move-result v1

    if-eqz v1, :cond_133

    .line 11895
    const/16 v1, 0x65

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oE()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11898
    :cond_133
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oF()Z

    move-result v1

    if-eqz v1, :cond_144

    .line 11899
    const/16 v1, 0x66

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oG()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11902
    :cond_144
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oH()Z

    move-result v1

    if-eqz v1, :cond_155

    .line 11903
    const/16 v1, 0x67

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->jv()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11906
    :cond_155
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oI()Z

    move-result v1

    if-eqz v1, :cond_166

    .line 11907
    const/16 v1, 0x68

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oJ()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11910
    :cond_166
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oK()Z

    move-result v1

    if-eqz v1, :cond_177

    .line 11911
    const/16 v1, 0x78

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oL()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11914
    :cond_177
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 11915
    iput v0, p0, Lmobi/tikl/wire/control/a$i;->ai:I

    goto/16 :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 11750
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->a()I

    .line 11751
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11752
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->getMsgId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 11754
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->od()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 11755
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 11757
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->pS()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 11758
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 11760
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oh()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 11761
    const/4 v0, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 11763
    :cond_3b
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oi()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 11764
    const/4 v0, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->jr()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 11766
    :cond_49
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oj()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 11767
    const/4 v0, 0x6

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 11769
    :cond_57
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ok()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 11770
    const/4 v0, 0x7

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->js()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 11772
    :cond_65
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ol()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 11773
    const/16 v0, 0x8

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->getLength()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 11775
    :cond_74
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->om()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 11776
    const/16 v0, 0x9

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->on()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 11778
    :cond_83
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oo()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 11779
    const/16 v0, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->op()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 11781
    :cond_92
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oq()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 11782
    const/16 v0, 0xb

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->or()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 11784
    :cond_a1
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->os()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 11785
    const/16 v0, 0xc

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->jt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 11787
    :cond_b0
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ot()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 11788
    const/16 v0, 0x14

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ou()Lmobi/tikl/wire/control/a$P;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 11790
    :cond_bf
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ov()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 11791
    const/16 v0, 0x1e

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 11793
    :cond_ce
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ox()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 11794
    const/16 v0, 0x1f

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 11796
    :cond_dd
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oz()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 11797
    const/16 v0, 0x28

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 11799
    :cond_ec
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oB()Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 11800
    const/16 v0, 0x64

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oC()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 11802
    :cond_fb
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oD()Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 11803
    const/16 v0, 0x65

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oE()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 11805
    :cond_10a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oF()Z

    move-result v0

    if-eqz v0, :cond_119

    .line 11806
    const/16 v0, 0x66

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oG()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 11808
    :cond_119
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oH()Z

    move-result v0

    if-eqz v0, :cond_128

    .line 11809
    const/16 v0, 0x67

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->jv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 11811
    :cond_128
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oI()Z

    move-result v0

    if-eqz v0, :cond_137

    .line 11812
    const/16 v0, 0x68

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oJ()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 11814
    :cond_137
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oK()Z

    move-result v0

    if-eqz v0, :cond_146

    .line 11815
    const/16 v0, 0x78

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oL()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 11817
    :cond_146
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 11818
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 11551
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->pV()Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 11551
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->pR()Lmobi/tikl/wire/control/a$i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 11551
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->pW()Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 11575
    invoke-static {}, Lmobi/tikl/wire/control/a;->kX()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 11632
    iget v0, p0, Lmobi/tikl/wire/control/a$i;->oM:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11604
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i;->oE:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 11583
    iget v0, p0, Lmobi/tikl/wire/control/a$i;->oz:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11618
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i;->oI:Ljava/lang/String;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 11737
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$i;->oy:Z

    if-nez v1, :cond_6

    .line 11745
    :cond_5
    :goto_5
    return v0

    .line 11738
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$i;->oA:Z

    if-eqz v1, :cond_5

    .line 11739
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$i;->pC:Z

    if-eqz v1, :cond_5

    .line 11740
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$i;->oD:Z

    if-eqz v1, :cond_5

    .line 11741
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11742
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ot()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 11743
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$i;->ou()Lmobi/tikl/wire/control/a$P;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$P;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11745
    :cond_2c
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public jr()I
    .registers 2

    .prologue
    .line 11611
    iget v0, p0, Lmobi/tikl/wire/control/a$i;->oG:I

    return v0
.end method

.method public js()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11625
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i;->oK:Ljava/lang/String;

    return-object v0
.end method

.method public jt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11660
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i;->oU:Ljava/lang/String;

    return-object v0
.end method

.method public jv()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11716
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i;->pk:Ljava/lang/String;

    return-object v0
.end method

.method public oA()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11688
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i;->pc:Ljava/lang/String;

    return-object v0
.end method

.method public oB()Z
    .registers 2

    .prologue
    .line 11694
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->pd:Z

    return v0
.end method

.method public oC()I
    .registers 2

    .prologue
    .line 11695
    iget v0, p0, Lmobi/tikl/wire/control/a$i;->pe:I

    return v0
.end method

.method public oD()Z
    .registers 2

    .prologue
    .line 11701
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->pf:Z

    return v0
.end method

.method public oE()Z
    .registers 2

    .prologue
    .line 11702
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->pg:Z

    return v0
.end method

.method public oF()Z
    .registers 2

    .prologue
    .line 11708
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->ph:Z

    return v0
.end method

.method public oG()Z
    .registers 2

    .prologue
    .line 11709
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->pi:Z

    return v0
.end method

.method public oH()Z
    .registers 2

    .prologue
    .line 11715
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->pj:Z

    return v0
.end method

.method public oI()Z
    .registers 2

    .prologue
    .line 11722
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->pl:Z

    return v0
.end method

.method public oJ()I
    .registers 2

    .prologue
    .line 11723
    iget v0, p0, Lmobi/tikl/wire/control/a$i;->pm:I

    return v0
.end method

.method public oK()Z
    .registers 2

    .prologue
    .line 11729
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->pn:Z

    return v0
.end method

.method public oL()Z
    .registers 2

    .prologue
    .line 11730
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->po:Z

    return v0
.end method

.method public oc()Z
    .registers 2

    .prologue
    .line 11582
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->oy:Z

    return v0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 11589
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->oA:Z

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 11590
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public oh()Z
    .registers 2

    .prologue
    .line 11603
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->oD:Z

    return v0
.end method

.method public oi()Z
    .registers 2

    .prologue
    .line 11610
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->oF:Z

    return v0
.end method

.method public oj()Z
    .registers 2

    .prologue
    .line 11617
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->oH:Z

    return v0
.end method

.method public ok()Z
    .registers 2

    .prologue
    .line 11624
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->oJ:Z

    return v0
.end method

.method public ol()Z
    .registers 2

    .prologue
    .line 11631
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->oL:Z

    return v0
.end method

.method public om()Z
    .registers 2

    .prologue
    .line 11638
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->oN:Z

    return v0
.end method

.method public on()I
    .registers 2

    .prologue
    .line 11639
    iget v0, p0, Lmobi/tikl/wire/control/a$i;->oO:I

    return v0
.end method

.method public oo()Z
    .registers 2

    .prologue
    .line 11645
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->oP:Z

    return v0
.end method

.method public op()I
    .registers 2

    .prologue
    .line 11646
    iget v0, p0, Lmobi/tikl/wire/control/a$i;->oQ:I

    return v0
.end method

.method public oq()Z
    .registers 2

    .prologue
    .line 11652
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->oR:Z

    return v0
.end method

.method public or()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11653
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i;->oS:Ljava/lang/String;

    return-object v0
.end method

.method public os()Z
    .registers 2

    .prologue
    .line 11659
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->oT:Z

    return v0
.end method

.method public ot()Z
    .registers 2

    .prologue
    .line 11666
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->oV:Z

    return v0
.end method

.method public ou()Lmobi/tikl/wire/control/a$P;
    .registers 2

    .prologue
    .line 11667
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i;->oW:Lmobi/tikl/wire/control/a$P;

    return-object v0
.end method

.method public ov()Z
    .registers 2

    .prologue
    .line 11673
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->oX:Z

    return v0
.end method

.method public ow()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11674
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i;->oY:Ljava/lang/String;

    return-object v0
.end method

.method public ox()Z
    .registers 2

    .prologue
    .line 11680
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->oZ:Z

    return v0
.end method

.method public oy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11681
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i;->pa:Ljava/lang/String;

    return-object v0
.end method

.method public oz()Z
    .registers 2

    .prologue
    .line 11687
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->pb:Z

    return v0
.end method

.method public pR()Lmobi/tikl/wire/control/a$i;
    .registers 2

    .prologue
    .line 11565
    sget-object v0, Lmobi/tikl/wire/control/a$i;->pB:Lmobi/tikl/wire/control/a$i;

    return-object v0
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 11596
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$i;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11597
    iget-object v0, p0, Lmobi/tikl/wire/control/a$i;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public pV()Lmobi/tikl/wire/control/a$i$a;
    .registers 2

    .prologue
    .line 11987
    invoke-static {}, Lmobi/tikl/wire/control/a$i;->pU()Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method public pW()Lmobi/tikl/wire/control/a$i$a;
    .registers 2

    .prologue
    .line 11991
    invoke-static {p0}, Lmobi/tikl/wire/control/a$i;->b(Lmobi/tikl/wire/control/a$i;)Lmobi/tikl/wire/control/a$i$a;

    move-result-object v0

    return-object v0
.end method
