.class public final Lmobi/tikl/wire/control/a$K;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "K"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$K$a;
    }
.end annotation


# static fields
.field private static final rz:Lmobi/tikl/wire/control/a$K;


# instance fields
.field private ai:I

.field private iY:I

.field private pT:Z

.field private qm:Z

.field private qn:Lmobi/tikl/wire/control/a$G;

.field private rA:Z

.field private rB:Lmobi/tikl/wire/control/a$G;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10021
    new-instance v0, Lmobi/tikl/wire/control/a$K;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$K;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$K;->rz:Lmobi/tikl/wire/control/a$K;

    .line 10022
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 10023
    sget-object v0, Lmobi/tikl/wire/control/a$K;->rz:Lmobi/tikl/wire/control/a$K;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$K;->aJ()V

    .line 10024
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 9615
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 9642
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$K;->iY:I

    .line 9688
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$K;->ai:I

    .line 9616
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$K;->aJ()V

    .line 9617
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 9612
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$K;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 9618
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 9642
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$K;->iY:I

    .line 9688
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$K;->ai:I

    .line 9618
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$K;I)I
    .registers 2

    .prologue
    .line 9612
    iput p1, p0, Lmobi/tikl/wire/control/a$K;->iY:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$K;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 9612
    iput-object p1, p0, Lmobi/tikl/wire/control/a$K;->qn:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$K;)Lmobi/tikl/wire/control/a$K$a;
    .registers 2

    .prologue
    .line 9781
    invoke-static {}, Lmobi/tikl/wire/control/a$K;->wI()Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$K$a;->d(Lmobi/tikl/wire/control/a$K;)Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$K;Z)Z
    .registers 2

    .prologue
    .line 9612
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$K;->pT:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 9661
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$K;->qn:Lmobi/tikl/wire/control/a$G;

    .line 9662
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$K;->rB:Lmobi/tikl/wire/control/a$G;

    .line 9663
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 9631
    invoke-static {}, Lmobi/tikl/wire/control/a;->kQ()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$K;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 9612
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K;->qn:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$K;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 9612
    iput-object p1, p0, Lmobi/tikl/wire/control/a$K;->rB:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$K;Z)Z
    .registers 2

    .prologue
    .line 9612
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$K;->qm:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$K;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 9612
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K;->rB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$K;Z)Z
    .registers 2

    .prologue
    .line 9612
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$K;->rA:Z

    return p1
.end method

.method public static wE()Lmobi/tikl/wire/control/a$K;
    .registers 1

    .prologue
    .line 9622
    sget-object v0, Lmobi/tikl/wire/control/a$K;->rz:Lmobi/tikl/wire/control/a$K;

    return-object v0
.end method

.method public static wI()Lmobi/tikl/wire/control/a$K$a;
    .registers 1

    .prologue
    .line 9778
    invoke-static {}, Lmobi/tikl/wire/control/a$K$a;->wQ()Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 9690
    iget v0, p0, Lmobi/tikl/wire/control/a$K;->ai:I

    .line 9691
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 9708
    :goto_5
    return v0

    .line 9693
    :cond_6
    const/4 v0, 0x0

    .line 9694
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->rc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 9695
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->jQ()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 9698
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->so()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 9699
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9702
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->wG()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 9703
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->wH()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9706
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 9707
    iput v0, p0, Lmobi/tikl/wire/control/a$K;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 9675
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->a()I

    .line 9676
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->rc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 9677
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->jQ()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 9679
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->so()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 9680
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 9682
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->wG()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 9683
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->wH()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 9685
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 9686
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 9612
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->wJ()Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 9612
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->wF()Lmobi/tikl/wire/control/a$K;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 9612
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->wK()Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 9636
    invoke-static {}, Lmobi/tikl/wire/control/a;->kR()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 9665
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$K;->pT:Z

    if-nez v1, :cond_6

    .line 9670
    :cond_5
    :goto_5
    return v0

    .line 9666
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$K;->qm:Z

    if-eqz v1, :cond_5

    .line 9667
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$K;->rA:Z

    if-eqz v1, :cond_5

    .line 9668
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9669
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$K;->wH()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9670
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public jQ()I
    .registers 2

    .prologue
    .line 9644
    iget v0, p0, Lmobi/tikl/wire/control/a$K;->iY:I

    return v0
.end method

.method public rc()Z
    .registers 2

    .prologue
    .line 9643
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$K;->pT:Z

    return v0
.end method

.method public so()Z
    .registers 2

    .prologue
    .line 9650
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$K;->qm:Z

    return v0
.end method

.method public sp()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 9651
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K;->qn:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public wF()Lmobi/tikl/wire/control/a$K;
    .registers 2

    .prologue
    .line 9626
    sget-object v0, Lmobi/tikl/wire/control/a$K;->rz:Lmobi/tikl/wire/control/a$K;

    return-object v0
.end method

.method public wG()Z
    .registers 2

    .prologue
    .line 9657
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$K;->rA:Z

    return v0
.end method

.method public wH()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 9658
    iget-object v0, p0, Lmobi/tikl/wire/control/a$K;->rB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public wJ()Lmobi/tikl/wire/control/a$K$a;
    .registers 2

    .prologue
    .line 9779
    invoke-static {}, Lmobi/tikl/wire/control/a$K;->wI()Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    return-object v0
.end method

.method public wK()Lmobi/tikl/wire/control/a$K$a;
    .registers 2

    .prologue
    .line 9783
    invoke-static {p0}, Lmobi/tikl/wire/control/a$K;->a(Lmobi/tikl/wire/control/a$K;)Lmobi/tikl/wire/control/a$K$a;

    move-result-object v0

    return-object v0
.end method
