.class public final Lmobi/tikl/wire/control/a$b;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$b$a;
    }
.end annotation


# static fields
.field private static final or:Lmobi/tikl/wire/control/a$b;


# instance fields
.field private ai:I

.field private os:Z

.field private ot:Lmobi/tikl/wire/control/a$G;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18592
    new-instance v0, Lmobi/tikl/wire/control/a$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$b;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$b;->or:Lmobi/tikl/wire/control/a$b;

    .line 18593
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 18594
    sget-object v0, Lmobi/tikl/wire/control/a$b;->or:Lmobi/tikl/wire/control/a$b;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$b;->aJ()V

    .line 18595
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 18292
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 18341
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$b;->ai:I

    .line 18293
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$b;->aJ()V

    .line 18294
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 18289
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 18295
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 18341
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$b;->ai:I

    .line 18295
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$b;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 18289
    iput-object p1, p0, Lmobi/tikl/wire/control/a$b;->ot:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$b;)Lmobi/tikl/wire/control/a$b$a;
    .registers 2

    .prologue
    .line 18426
    invoke-static {}, Lmobi/tikl/wire/control/a$b;->nG()Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$b$a;->c(Lmobi/tikl/wire/control/a$b;)Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$b;Z)Z
    .registers 2

    .prologue
    .line 18289
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$b;->os:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 18324
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$b;->ot:Lmobi/tikl/wire/control/a$G;

    .line 18325
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 18308
    invoke-static {}, Lmobi/tikl/wire/control/a;->lE()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$b;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 18289
    iget-object v0, p0, Lmobi/tikl/wire/control/a$b;->ot:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public static nC()Lmobi/tikl/wire/control/a$b;
    .registers 1

    .prologue
    .line 18299
    sget-object v0, Lmobi/tikl/wire/control/a$b;->or:Lmobi/tikl/wire/control/a$b;

    return-object v0
.end method

.method public static nG()Lmobi/tikl/wire/control/a$b$a;
    .registers 1

    .prologue
    .line 18423
    invoke-static {}, Lmobi/tikl/wire/control/a$b$a;->nO()Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 18343
    iget v0, p0, Lmobi/tikl/wire/control/a$b;->ai:I

    .line 18344
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 18353
    :goto_5
    return v0

    .line 18346
    :cond_6
    const/4 v0, 0x0

    .line 18347
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b;->nE()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 18348
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b;->nF()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 18351
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 18352
    iput v0, p0, Lmobi/tikl/wire/control/a$b;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 18334
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b;->a()I

    .line 18335
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b;->nE()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 18336
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b;->nF()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 18338
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 18339
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 18289
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b;->nH()Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 18289
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b;->nD()Lmobi/tikl/wire/control/a$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 18289
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b;->nI()Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 18313
    invoke-static {}, Lmobi/tikl/wire/control/a;->lF()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 18327
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$b;->os:Z

    if-nez v1, :cond_6

    .line 18329
    :cond_5
    :goto_5
    return v0

    .line 18328
    :cond_6
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$b;->nF()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18329
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public nD()Lmobi/tikl/wire/control/a$b;
    .registers 2

    .prologue
    .line 18303
    sget-object v0, Lmobi/tikl/wire/control/a$b;->or:Lmobi/tikl/wire/control/a$b;

    return-object v0
.end method

.method public nE()Z
    .registers 2

    .prologue
    .line 18320
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$b;->os:Z

    return v0
.end method

.method public nF()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 18321
    iget-object v0, p0, Lmobi/tikl/wire/control/a$b;->ot:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public nH()Lmobi/tikl/wire/control/a$b$a;
    .registers 2

    .prologue
    .line 18424
    invoke-static {}, Lmobi/tikl/wire/control/a$b;->nG()Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public nI()Lmobi/tikl/wire/control/a$b$a;
    .registers 2

    .prologue
    .line 18428
    invoke-static {p0}, Lmobi/tikl/wire/control/a$b;->a(Lmobi/tikl/wire/control/a$b;)Lmobi/tikl/wire/control/a$b$a;

    move-result-object v0

    return-object v0
.end method
