.class public final Lmobi/tikl/wire/control/a$V;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "V"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$V$a;
    }
.end annotation


# static fields
.field private static final sX:Lmobi/tikl/wire/control/a$V;


# instance fields
.field private ai:I

.field private sS:Z

.field private sT:Lmobi/tikl/wire/control/a$G;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16957
    new-instance v0, Lmobi/tikl/wire/control/a$V;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$V;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$V;->sX:Lmobi/tikl/wire/control/a$V;

    .line 16958
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 16959
    sget-object v0, Lmobi/tikl/wire/control/a$V;->sX:Lmobi/tikl/wire/control/a$V;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$V;->aJ()V

    .line 16960
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16657
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 16706
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$V;->ai:I

    .line 16658
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$V;->aJ()V

    .line 16659
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 16654
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$V;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 16660
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 16706
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$V;->ai:I

    .line 16660
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$V;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 16654
    iput-object p1, p0, Lmobi/tikl/wire/control/a$V;->sT:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$V;)Lmobi/tikl/wire/control/a$V$a;
    .registers 2

    .prologue
    .line 16791
    invoke-static {}, Lmobi/tikl/wire/control/a$V;->zU()Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$V$a;->c(Lmobi/tikl/wire/control/a$V;)Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$V;Z)Z
    .registers 2

    .prologue
    .line 16654
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$V;->sS:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 16689
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$V;->sT:Lmobi/tikl/wire/control/a$G;

    .line 16690
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 16673
    invoke-static {}, Lmobi/tikl/wire/control/a;->lu()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$V;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 16654
    iget-object v0, p0, Lmobi/tikl/wire/control/a$V;->sT:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public static zS()Lmobi/tikl/wire/control/a$V;
    .registers 1

    .prologue
    .line 16664
    sget-object v0, Lmobi/tikl/wire/control/a$V;->sX:Lmobi/tikl/wire/control/a$V;

    return-object v0
.end method

.method public static zU()Lmobi/tikl/wire/control/a$V$a;
    .registers 1

    .prologue
    .line 16788
    invoke-static {}, Lmobi/tikl/wire/control/a$V$a;->Ac()Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 16708
    iget v0, p0, Lmobi/tikl/wire/control/a$V;->ai:I

    .line 16709
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 16718
    :goto_5
    return v0

    .line 16711
    :cond_6
    const/4 v0, 0x0

    .line 16712
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V;->zF()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 16713
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 16716
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 16717
    iput v0, p0, Lmobi/tikl/wire/control/a$V;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 16699
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V;->a()I

    .line 16700
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V;->zF()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 16701
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 16703
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 16704
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 16654
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V;->zV()Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 16654
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V;->zT()Lmobi/tikl/wire/control/a$V;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 16654
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V;->zW()Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 16678
    invoke-static {}, Lmobi/tikl/wire/control/a;->lv()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 16692
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$V;->sS:Z

    if-nez v1, :cond_6

    .line 16694
    :cond_5
    :goto_5
    return v0

    .line 16693
    :cond_6
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$V;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16694
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public zF()Z
    .registers 2

    .prologue
    .line 16685
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$V;->sS:Z

    return v0
.end method

.method public zG()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 16686
    iget-object v0, p0, Lmobi/tikl/wire/control/a$V;->sT:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public zT()Lmobi/tikl/wire/control/a$V;
    .registers 2

    .prologue
    .line 16668
    sget-object v0, Lmobi/tikl/wire/control/a$V;->sX:Lmobi/tikl/wire/control/a$V;

    return-object v0
.end method

.method public zV()Lmobi/tikl/wire/control/a$V$a;
    .registers 2

    .prologue
    .line 16789
    invoke-static {}, Lmobi/tikl/wire/control/a$V;->zU()Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    return-object v0
.end method

.method public zW()Lmobi/tikl/wire/control/a$V$a;
    .registers 2

    .prologue
    .line 16793
    invoke-static {p0}, Lmobi/tikl/wire/control/a$V;->a(Lmobi/tikl/wire/control/a$V;)Lmobi/tikl/wire/control/a$V$a;

    move-result-object v0

    return-object v0
.end method
