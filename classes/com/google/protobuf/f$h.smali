.class public final Lcom/google/protobuf/f$h;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$h$a;
    }
.end annotation


# static fields
.field private static final bA:Lcom/google/protobuf/f$h;


# instance fields
.field private Z:Z

.field private aa:Ljava/lang/String;

.field private ac:Ljava/util/List;

.field private ae:Ljava/util/List;

.field private ag:Z

.field private ai:I

.field private bB:Z

.field private bC:Ljava/lang/String;

.field private bD:Ljava/util/List;

.field private bE:Ljava/util/List;

.field private bF:Ljava/util/List;

.field private bG:Lcom/google/protobuf/f$j;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1167
    new-instance v0, Lcom/google/protobuf/f$h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$h;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$h;->bA:Lcom/google/protobuf/f$h;

    .line 1168
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 1169
    sget-object v0, Lcom/google/protobuf/f$h;->bA:Lcom/google/protobuf/f$h;

    invoke-direct {v0}, Lcom/google/protobuf/f$h;->aJ()V

    .line 1170
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 375
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$h;->aa:Ljava/lang/String;

    .line 382
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$h;->bC:Ljava/lang/String;

    .line 388
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$h;->bD:Ljava/util/List;

    .line 400
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$h;->bE:Ljava/util/List;

    .line 412
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$h;->ae:Ljava/util/List;

    .line 424
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$h;->bF:Ljava/util/List;

    .line 436
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$h;->ac:Ljava/util/List;

    .line 505
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$h;->ai:I

    .line 349
    invoke-direct {p0}, Lcom/google/protobuf/f$h;->aJ()V

    .line 350
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/google/protobuf/f$h;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 375
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$h;->aa:Ljava/lang/String;

    .line 382
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$h;->bC:Ljava/lang/String;

    .line 388
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$h;->bD:Ljava/util/List;

    .line 400
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$h;->bE:Ljava/util/List;

    .line 412
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$h;->ae:Ljava/util/List;

    .line 424
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$h;->bF:Ljava/util/List;

    .line 436
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$h;->ac:Ljava/util/List;

    .line 505
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$h;->ai:I

    .line 351
    return-void
.end method

.method public static a(Lcom/google/protobuf/f$h;)Lcom/google/protobuf/f$h$a;
    .registers 2

    .prologue
    .line 623
    invoke-static {}, Lcom/google/protobuf/f$h;->dk()Lcom/google/protobuf/f$h$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$h$a;->h(Lcom/google/protobuf/f$h;)Lcom/google/protobuf/f$h$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/protobuf/f$h;Lcom/google/protobuf/f$j;)Lcom/google/protobuf/f$j;
    .registers 2

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/protobuf/f$h;->bG:Lcom/google/protobuf/f$j;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$h;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/protobuf/f$h;->aa:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/protobuf/f$h;->bD:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$h;Z)Z
    .registers 2

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/google/protobuf/f$h;->Z:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 454
    invoke-static {}, Lcom/google/protobuf/f$j;->dG()Lcom/google/protobuf/f$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$h;->bG:Lcom/google/protobuf/f$j;

    .line 455
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 364
    invoke-static {}, Lcom/google/protobuf/f;->N()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$h;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/protobuf/f$h;->bC:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/protobuf/f$h;)Ljava/util/List;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/protobuf/f$h;->bD:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/protobuf/f$h;->bE:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/google/protobuf/f$h;Z)Z
    .registers 2

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/google/protobuf/f$h;->bB:Z

    return p1
.end method

.method public static c([BLcom/google/protobuf/o;)Lcom/google/protobuf/f$h;
    .registers 3

    .prologue
    .line 573
    invoke-static {}, Lcom/google/protobuf/f$h;->dk()Lcom/google/protobuf/f$h$a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/f$h$a;->a([BLcom/google/protobuf/o;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$h$a;

    invoke-static {v0}, Lcom/google/protobuf/f$h$a;->a(Lcom/google/protobuf/f$h$a;)Lcom/google/protobuf/f$h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/protobuf/f$h;)Ljava/util/List;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/protobuf/f$h;->bE:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/protobuf/f$h;->ae:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/google/protobuf/f$h;Z)Z
    .registers 2

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/google/protobuf/f$h;->ag:Z

    return p1
.end method

.method static synthetic d(Lcom/google/protobuf/f$h;)Ljava/util/List;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/protobuf/f$h;->ae:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/protobuf/f$h;->bF:Ljava/util/List;

    return-object p1
.end method

.method public static da()Lcom/google/protobuf/f$h;
    .registers 1

    .prologue
    .line 355
    sget-object v0, Lcom/google/protobuf/f$h;->bA:Lcom/google/protobuf/f$h;

    return-object v0
.end method

.method public static dk()Lcom/google/protobuf/f$h$a;
    .registers 1

    .prologue
    .line 620
    invoke-static {}, Lcom/google/protobuf/f$h$a;->dt()Lcom/google/protobuf/f$h$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/protobuf/f$h;)Ljava/util/List;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/protobuf/f$h;->bF:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/google/protobuf/f$h;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/protobuf/f$h;->ac:Ljava/util/List;

    return-object p1
.end method

.method static synthetic f(Lcom/google/protobuf/f$h;)Ljava/util/List;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/protobuf/f$h;->ac:Ljava/util/List;

    return-object v0
.end method

.method public static g([B)Lcom/google/protobuf/f$h;
    .registers 2

    .prologue
    .line 567
    invoke-static {}, Lcom/google/protobuf/f$h;->dk()Lcom/google/protobuf/f$h$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$h$a;->a([B)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$h$a;

    invoke-static {v0}, Lcom/google/protobuf/f$h$a;->a(Lcom/google/protobuf/f$h$a;)Lcom/google/protobuf/f$h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/google/protobuf/f$h;)Lcom/google/protobuf/f$j;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/protobuf/f$h;->bG:Lcom/google/protobuf/f$j;

    return-object v0
.end method


# virtual methods
.method public E(I)Lcom/google/protobuf/f$f;
    .registers 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/protobuf/f$h;->ac:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$f;

    return-object v0
.end method

.method public G(I)Lcom/google/protobuf/f$b;
    .registers 3

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/protobuf/f$h;->ae:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$b;

    return-object v0
.end method

.method public P(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/protobuf/f$h;->bD:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public Q(I)Lcom/google/protobuf/f$a;
    .registers 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/protobuf/f$h;->bE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$a;

    return-object v0
.end method

.method public R(I)Lcom/google/protobuf/f$n;
    .registers 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/protobuf/f$h;->bF:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$n;

    return-object v0
.end method

.method public a()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 507
    iget v0, p0, Lcom/google/protobuf/f$h;->ai:I

    .line 508
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    .line 550
    :goto_6
    return v0

    .line 511
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->hasName()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 512
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 515
    :goto_18
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->dc()Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 516
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    .line 521
    :goto_29
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->dd()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 522
    invoke-static {v0}, Lcom/google/protobuf/e;->i(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_31

    .line 525
    :cond_43
    add-int v0, v2, v1

    .line 526
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->dd()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 528
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->df()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$a;

    .line 529
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_59

    .line 532
    :cond_6d
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->aE()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$b;

    .line 533
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_75

    .line 536
    :cond_88
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->dh()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_90
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$n;

    .line 537
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_90

    .line 540
    :cond_a3
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->aA()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ab
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$f;

    .line 541
    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_ab

    .line 544
    :cond_be
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->aH()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 545
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->dj()Lcom/google/protobuf/f$j;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v1, v0

    .line 548
    :cond_cf
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 549
    iput v0, p0, Lcom/google/protobuf/f$h;->ai:I

    goto/16 :goto_6

    :cond_dc
    move v2, v0

    goto/16 :goto_29

    :cond_df
    move v0, v1

    goto/16 :goto_18
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->a()I

    .line 478
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->hasName()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 479
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 481
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->dc()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 482
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 484
    :cond_1f
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->dd()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 485
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    goto :goto_27

    .line 487
    :cond_38
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->df()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$a;

    .line 488
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_40

    .line 490
    :cond_51
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->aE()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$b;

    .line 491
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_59

    .line 493
    :cond_6a
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->dh()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$n;

    .line 494
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_72

    .line 496
    :cond_83
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->aA()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$f;

    .line 497
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_8b

    .line 499
    :cond_9c
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->aH()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 500
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->dj()Lcom/google/protobuf/f$j;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 502
    :cond_ab
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 503
    return-void
.end method

.method public aA()Ljava/util/List;
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/protobuf/f$h;->ac:Ljava/util/List;

    return-object v0
.end method

.method public aB()I
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/protobuf/f$h;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public aE()Ljava/util/List;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/protobuf/f$h;->ae:Ljava/util/List;

    return-object v0
.end method

.method public aF()I
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/protobuf/f$h;->ae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public aH()Z
    .registers 2

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/google/protobuf/f$h;->ag:Z

    return v0
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->dl()Lcom/google/protobuf/f$h$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->db()Lcom/google/protobuf/f$h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->dm()Lcom/google/protobuf/f$h$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 369
    invoke-static {}, Lcom/google/protobuf/f;->O()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public db()Lcom/google/protobuf/f$h;
    .registers 2

    .prologue
    .line 359
    sget-object v0, Lcom/google/protobuf/f$h;->bA:Lcom/google/protobuf/f$h;

    return-object v0
.end method

.method public dc()Z
    .registers 2

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/google/protobuf/f$h;->bB:Z

    return v0
.end method

.method public dd()Ljava/util/List;
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/protobuf/f$h;->bD:Ljava/util/List;

    return-object v0
.end method

.method public de()I
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/protobuf/f$h;->bD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public df()Ljava/util/List;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/protobuf/f$h;->bE:Ljava/util/List;

    return-object v0
.end method

.method public dg()I
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/protobuf/f$h;->bE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public dh()Ljava/util/List;
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/protobuf/f$h;->bF:Ljava/util/List;

    return-object v0
.end method

.method public di()I
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/protobuf/f$h;->bF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public dj()Lcom/google/protobuf/f$j;
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/protobuf/f$h;->bG:Lcom/google/protobuf/f$j;

    return-object v0
.end method

.method public dl()Lcom/google/protobuf/f$h$a;
    .registers 2

    .prologue
    .line 621
    invoke-static {}, Lcom/google/protobuf/f$h;->dk()Lcom/google/protobuf/f$h$a;

    move-result-object v0

    return-object v0
.end method

.method public dm()Lcom/google/protobuf/f$h$a;
    .registers 2

    .prologue
    .line 625
    invoke-static {p0}, Lcom/google/protobuf/f$h;->a(Lcom/google/protobuf/f$h;)Lcom/google/protobuf/f$h$a;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/protobuf/f$h;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/protobuf/f$h;->bC:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/google/protobuf/f$h;->Z:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 457
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->df()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$a;

    .line 458
    invoke-virtual {v0}, Lcom/google/protobuf/f$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 472
    :goto_1c
    return v0

    .line 460
    :cond_1d
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->aE()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$b;

    .line 461
    invoke-virtual {v0}, Lcom/google/protobuf/f$b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v1

    goto :goto_1c

    .line 463
    :cond_39
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->dh()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$n;

    .line 464
    invoke-virtual {v0}, Lcom/google/protobuf/f$n;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_41

    move v0, v1

    goto :goto_1c

    .line 466
    :cond_55
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->aA()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$f;

    .line 467
    invoke-virtual {v0}, Lcom/google/protobuf/f$f;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5d

    move v0, v1

    goto :goto_1c

    .line 469
    :cond_71
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->aH()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 470
    invoke-virtual {p0}, Lcom/google/protobuf/f$h;->dj()Lcom/google/protobuf/f$j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/f$j;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_83

    move v0, v1

    goto :goto_1c

    .line 472
    :cond_83
    const/4 v0, 0x1

    goto :goto_1c
.end method
