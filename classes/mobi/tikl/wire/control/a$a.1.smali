.class public final Lmobi/tikl/wire/control/a$a;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$a$a;
    }
.end annotation


# static fields
.field private static final oo:Lmobi/tikl/wire/control/a$a;


# instance fields
.field private ai:I

.field private op:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18926
    new-instance v0, Lmobi/tikl/wire/control/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$a;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$a;->oo:Lmobi/tikl/wire/control/a$a;

    .line 18927
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 18928
    sget-object v0, Lmobi/tikl/wire/control/a$a;->oo:Lmobi/tikl/wire/control/a$a;

    .line 18929
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 18603
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 18629
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$a;->op:Ljava/util/List;

    .line 18657
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$a;->ai:I

    .line 18604
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 18600
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 18606
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 18629
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$a;->op:Ljava/util/List;

    .line 18657
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$a;->ai:I

    .line 18606
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$a;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 18600
    iput-object p1, p0, Lmobi/tikl/wire/control/a$a;->op:Ljava/util/List;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$a;)Lmobi/tikl/wire/control/a$a$a;
    .registers 2

    .prologue
    .line 18742
    invoke-static {}, Lmobi/tikl/wire/control/a$a;->nt()Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$a$a;->c(Lmobi/tikl/wire/control/a$a;)Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 18619
    invoke-static {}, Lmobi/tikl/wire/control/a;->lG()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$a;)Ljava/util/List;
    .registers 2

    .prologue
    .line 18600
    iget-object v0, p0, Lmobi/tikl/wire/control/a$a;->op:Ljava/util/List;

    return-object v0
.end method

.method public static nq()Lmobi/tikl/wire/control/a$a;
    .registers 1

    .prologue
    .line 18610
    sget-object v0, Lmobi/tikl/wire/control/a$a;->oo:Lmobi/tikl/wire/control/a$a;

    return-object v0
.end method

.method public static nt()Lmobi/tikl/wire/control/a$a$a;
    .registers 1

    .prologue
    .line 18739
    invoke-static {}, Lmobi/tikl/wire/control/a$a$a;->nB()Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 18659
    iget v0, p0, Lmobi/tikl/wire/control/a$a;->ai:I

    .line 18660
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 18669
    :goto_5
    return v0

    .line 18662
    :cond_6
    const/4 v0, 0x0

    .line 18663
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a;->ns()Ljava/util/List;

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

    check-cast v0, Lmobi/tikl/wire/control/a$M;

    .line 18664
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 18666
    goto :goto_10

    .line 18667
    :cond_24
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 18668
    iput v0, p0, Lmobi/tikl/wire/control/a$a;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 18650
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a;->a()I

    .line 18651
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a;->ns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$M;

    .line 18652
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_b

    .line 18654
    :cond_1c
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 18655
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 18600
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a;->nu()Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 18600
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a;->nr()Lmobi/tikl/wire/control/a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 18600
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a;->nv()Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 18624
    invoke-static {}, Lmobi/tikl/wire/control/a;->lH()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 18642
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$a;->ns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$M;

    .line 18643
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$M;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 18645
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method public nr()Lmobi/tikl/wire/control/a$a;
    .registers 2

    .prologue
    .line 18614
    sget-object v0, Lmobi/tikl/wire/control/a$a;->oo:Lmobi/tikl/wire/control/a$a;

    return-object v0
.end method

.method public ns()Ljava/util/List;
    .registers 2

    .prologue
    .line 18632
    iget-object v0, p0, Lmobi/tikl/wire/control/a$a;->op:Ljava/util/List;

    return-object v0
.end method

.method public nu()Lmobi/tikl/wire/control/a$a$a;
    .registers 2

    .prologue
    .line 18740
    invoke-static {}, Lmobi/tikl/wire/control/a$a;->nt()Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public nv()Lmobi/tikl/wire/control/a$a$a;
    .registers 2

    .prologue
    .line 18744
    invoke-static {p0}, Lmobi/tikl/wire/control/a$a;->a(Lmobi/tikl/wire/control/a$a;)Lmobi/tikl/wire/control/a$a$a;

    move-result-object v0

    return-object v0
.end method
