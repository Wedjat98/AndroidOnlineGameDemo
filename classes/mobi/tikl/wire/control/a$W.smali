.class public final Lmobi/tikl/wire/control/a$W;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "W"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$W$a;
    }
.end annotation


# static fields
.field private static final sZ:Lmobi/tikl/wire/control/a$W;


# instance fields
.field private ai:I

.field private sS:Z

.field private sT:Lmobi/tikl/wire/control/a$G;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15901
    new-instance v0, Lmobi/tikl/wire/control/a$W;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$W;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$W;->sZ:Lmobi/tikl/wire/control/a$W;

    .line 15902
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 15903
    sget-object v0, Lmobi/tikl/wire/control/a$W;->sZ:Lmobi/tikl/wire/control/a$W;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$W;->aJ()V

    .line 15904
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15601
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 15650
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$W;->ai:I

    .line 15602
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$W;->aJ()V

    .line 15603
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 15598
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$W;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 15604
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 15650
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$W;->ai:I

    .line 15604
    return-void
.end method

.method public static Ad()Lmobi/tikl/wire/control/a$W;
    .registers 1

    .prologue
    .line 15608
    sget-object v0, Lmobi/tikl/wire/control/a$W;->sZ:Lmobi/tikl/wire/control/a$W;

    return-object v0
.end method

.method public static Af()Lmobi/tikl/wire/control/a$W$a;
    .registers 1

    .prologue
    .line 15732
    invoke-static {}, Lmobi/tikl/wire/control/a$W$a;->An()Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$W;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 15598
    iput-object p1, p0, Lmobi/tikl/wire/control/a$W;->sT:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$W;)Lmobi/tikl/wire/control/a$W$a;
    .registers 2

    .prologue
    .line 15735
    invoke-static {}, Lmobi/tikl/wire/control/a$W;->Af()Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$W$a;->c(Lmobi/tikl/wire/control/a$W;)Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$W;Z)Z
    .registers 2

    .prologue
    .line 15598
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$W;->sS:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 15633
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$W;->sT:Lmobi/tikl/wire/control/a$G;

    .line 15634
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 15617
    invoke-static {}, Lmobi/tikl/wire/control/a;->lo()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$W;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 15598
    iget-object v0, p0, Lmobi/tikl/wire/control/a$W;->sT:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method


# virtual methods
.method public Ae()Lmobi/tikl/wire/control/a$W;
    .registers 2

    .prologue
    .line 15612
    sget-object v0, Lmobi/tikl/wire/control/a$W;->sZ:Lmobi/tikl/wire/control/a$W;

    return-object v0
.end method

.method public Ag()Lmobi/tikl/wire/control/a$W$a;
    .registers 2

    .prologue
    .line 15733
    invoke-static {}, Lmobi/tikl/wire/control/a$W;->Af()Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    return-object v0
.end method

.method public Ah()Lmobi/tikl/wire/control/a$W$a;
    .registers 2

    .prologue
    .line 15737
    invoke-static {p0}, Lmobi/tikl/wire/control/a$W;->a(Lmobi/tikl/wire/control/a$W;)Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 3

    .prologue
    .line 15652
    iget v0, p0, Lmobi/tikl/wire/control/a$W;->ai:I

    .line 15653
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 15662
    :goto_5
    return v0

    .line 15655
    :cond_6
    const/4 v0, 0x0

    .line 15656
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W;->zF()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 15657
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 15660
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 15661
    iput v0, p0, Lmobi/tikl/wire/control/a$W;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 15643
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W;->a()I

    .line 15644
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W;->zF()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 15645
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 15647
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 15648
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 15598
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W;->Ag()Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 15598
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W;->Ae()Lmobi/tikl/wire/control/a$W;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 15598
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W;->Ah()Lmobi/tikl/wire/control/a$W$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 15622
    invoke-static {}, Lmobi/tikl/wire/control/a;->lp()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 15636
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$W;->sS:Z

    if-nez v1, :cond_6

    .line 15638
    :cond_5
    :goto_5
    return v0

    .line 15637
    :cond_6
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$W;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15638
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public zF()Z
    .registers 2

    .prologue
    .line 15629
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$W;->sS:Z

    return v0
.end method

.method public zG()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 15630
    iget-object v0, p0, Lmobi/tikl/wire/control/a$W;->sT:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method
