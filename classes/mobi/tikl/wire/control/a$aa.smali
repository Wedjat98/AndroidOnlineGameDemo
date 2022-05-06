.class public final Lmobi/tikl/wire/control/a$aa;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$aa$a;
    }
.end annotation


# static fields
.field private static final tx:Lmobi/tikl/wire/control/a$aa;


# instance fields
.field private ai:I

.field private qm:Z

.field private qn:Lmobi/tikl/wire/control/a$G;

.field private ty:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26740
    new-instance v0, Lmobi/tikl/wire/control/a$aa;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$aa;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$aa;->tx:Lmobi/tikl/wire/control/a$aa;

    .line 26741
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 26742
    sget-object v0, Lmobi/tikl/wire/control/a$aa;->tx:Lmobi/tikl/wire/control/a$aa;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$aa;->aJ()V

    .line 26743
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 26351
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 26384
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$aa;->ty:Ljava/util/List;

    .line 26418
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$aa;->ai:I

    .line 26352
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$aa;->aJ()V

    .line 26353
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 26348
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$aa;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 26354
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 26384
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$aa;->ty:Ljava/util/List;

    .line 26418
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$aa;->ai:I

    .line 26354
    return-void
.end method

.method public static Bl()Lmobi/tikl/wire/control/a$aa;
    .registers 1

    .prologue
    .line 26358
    sget-object v0, Lmobi/tikl/wire/control/a$aa;->tx:Lmobi/tikl/wire/control/a$aa;

    return-object v0
.end method

.method public static Bo()Lmobi/tikl/wire/control/a$aa$a;
    .registers 1

    .prologue
    .line 26504
    invoke-static {}, Lmobi/tikl/wire/control/a$aa$a;->Bw()Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$aa;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 26348
    iput-object p1, p0, Lmobi/tikl/wire/control/a$aa;->ty:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$aa;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 26348
    iput-object p1, p0, Lmobi/tikl/wire/control/a$aa;->qn:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$aa$a;
    .registers 2

    .prologue
    .line 26507
    invoke-static {}, Lmobi/tikl/wire/control/a$aa;->Bo()Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$aa$a;->d(Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$aa;Z)Z
    .registers 2

    .prologue
    .line 26348
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$aa;->qm:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 26395
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$aa;->qn:Lmobi/tikl/wire/control/a$G;

    .line 26396
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 26367
    invoke-static {}, Lmobi/tikl/wire/control/a;->mo()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$aa;)Ljava/util/List;
    .registers 2

    .prologue
    .line 26348
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa;->ty:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 26348
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa;->qn:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method


# virtual methods
.method public Bm()Lmobi/tikl/wire/control/a$aa;
    .registers 2

    .prologue
    .line 26362
    sget-object v0, Lmobi/tikl/wire/control/a$aa;->tx:Lmobi/tikl/wire/control/a$aa;

    return-object v0
.end method

.method public Bn()Ljava/util/List;
    .registers 2

    .prologue
    .line 26387
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa;->ty:Ljava/util/List;

    return-object v0
.end method

.method public Bp()Lmobi/tikl/wire/control/a$aa$a;
    .registers 2

    .prologue
    .line 26505
    invoke-static {}, Lmobi/tikl/wire/control/a$aa;->Bo()Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    return-object v0
.end method

.method public Bq()Lmobi/tikl/wire/control/a$aa$a;
    .registers 2

    .prologue
    .line 26509
    invoke-static {p0}, Lmobi/tikl/wire/control/a$aa;->a(Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 5

    .prologue
    .line 26420
    iget v0, p0, Lmobi/tikl/wire/control/a$aa;->ai:I

    .line 26421
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 26434
    :goto_5
    return v0

    .line 26423
    :cond_6
    const/4 v0, 0x0

    .line 26424
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa;->so()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 26425
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 26428
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa;->Bn()Ljava/util/List;

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

    .line 26429
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 26431
    goto :goto_21

    .line 26432
    :cond_35
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 26433
    iput v0, p0, Lmobi/tikl/wire/control/a$aa;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 26408
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa;->a()I

    .line 26409
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa;->so()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 26410
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 26412
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa;->Bn()Ljava/util/List;

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

    .line 26413
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_19

    .line 26415
    :cond_2a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 26416
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 26348
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa;->Bp()Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 26348
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa;->Bm()Lmobi/tikl/wire/control/a$aa;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 26348
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa;->Bq()Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 26372
    invoke-static {}, Lmobi/tikl/wire/control/a;->mp()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 26398
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$aa;->qm:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 26403
    :goto_6
    return v0

    .line 26399
    :cond_7
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    goto :goto_6

    .line 26400
    :cond_13
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aa;->Bn()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 26401
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1b

    move v0, v1

    goto :goto_6

    .line 26403
    :cond_2f
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public so()Z
    .registers 2

    .prologue
    .line 26379
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$aa;->qm:Z

    return v0
.end method

.method public sp()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 26380
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aa;->qn:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method
