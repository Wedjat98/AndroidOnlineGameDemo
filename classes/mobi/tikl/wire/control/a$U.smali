.class public final Lmobi/tikl/wire/control/a$U;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "U"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$U$a;
    }
.end annotation


# static fields
.field private static final sR:Lmobi/tikl/wire/control/a$U;


# instance fields
.field private ai:I

.field private sS:Z

.field private sT:Lmobi/tikl/wire/control/a$G;

.field private sU:Z

.field private sV:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16646
    new-instance v0, Lmobi/tikl/wire/control/a$U;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$U;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$U;->sR:Lmobi/tikl/wire/control/a$U;

    .line 16647
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 16648
    sget-object v0, Lmobi/tikl/wire/control/a$U;->sR:Lmobi/tikl/wire/control/a$U;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$U;->aJ()V

    .line 16649
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16307
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 16341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$U;->sV:Z

    .line 16366
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$U;->ai:I

    .line 16308
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$U;->aJ()V

    .line 16309
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 16304
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$U;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 16310
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 16341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$U;->sV:Z

    .line 16366
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$U;->ai:I

    .line 16310
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$U;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 16304
    iput-object p1, p0, Lmobi/tikl/wire/control/a$U;->sT:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$U;)Lmobi/tikl/wire/control/a$U$a;
    .registers 2

    .prologue
    .line 16455
    invoke-static {}, Lmobi/tikl/wire/control/a$U;->zJ()Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$U$a;->c(Lmobi/tikl/wire/control/a$U;)Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$U;Z)Z
    .registers 2

    .prologue
    .line 16304
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$U;->sS:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 16346
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$U;->sT:Lmobi/tikl/wire/control/a$G;

    .line 16347
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 16323
    invoke-static {}, Lmobi/tikl/wire/control/a;->ls()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$U;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 16304
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U;->sT:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$U;Z)Z
    .registers 2

    .prologue
    .line 16304
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$U;->sU:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$U;Z)Z
    .registers 2

    .prologue
    .line 16304
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$U;->sV:Z

    return p1
.end method

.method public static zD()Lmobi/tikl/wire/control/a$U;
    .registers 1

    .prologue
    .line 16314
    sget-object v0, Lmobi/tikl/wire/control/a$U;->sR:Lmobi/tikl/wire/control/a$U;

    return-object v0
.end method

.method public static zJ()Lmobi/tikl/wire/control/a$U$a;
    .registers 1

    .prologue
    .line 16452
    invoke-static {}, Lmobi/tikl/wire/control/a$U$a;->zR()Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 16368
    iget v0, p0, Lmobi/tikl/wire/control/a$U;->ai:I

    .line 16369
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 16382
    :goto_5
    return v0

    .line 16371
    :cond_6
    const/4 v0, 0x0

    .line 16372
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U;->zF()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 16373
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 16376
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U;->zH()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 16377
    const/16 v1, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U;->zI()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16380
    :cond_29
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 16381
    iput v0, p0, Lmobi/tikl/wire/control/a$U;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 16356
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U;->a()I

    .line 16357
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U;->zF()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 16358
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 16360
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U;->zH()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 16361
    const/16 v0, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U;->zI()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 16363
    :cond_20
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 16364
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 16304
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U;->zK()Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 16304
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U;->zE()Lmobi/tikl/wire/control/a$U;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 16304
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U;->zL()Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 16328
    invoke-static {}, Lmobi/tikl/wire/control/a;->lt()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 16349
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$U;->sS:Z

    if-nez v1, :cond_6

    .line 16351
    :cond_5
    :goto_5
    return v0

    .line 16350
    :cond_6
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$U;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16351
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public zE()Lmobi/tikl/wire/control/a$U;
    .registers 2

    .prologue
    .line 16318
    sget-object v0, Lmobi/tikl/wire/control/a$U;->sR:Lmobi/tikl/wire/control/a$U;

    return-object v0
.end method

.method public zF()Z
    .registers 2

    .prologue
    .line 16335
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$U;->sS:Z

    return v0
.end method

.method public zG()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 16336
    iget-object v0, p0, Lmobi/tikl/wire/control/a$U;->sT:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public zH()Z
    .registers 2

    .prologue
    .line 16342
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$U;->sU:Z

    return v0
.end method

.method public zI()Z
    .registers 2

    .prologue
    .line 16343
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$U;->sV:Z

    return v0
.end method

.method public zK()Lmobi/tikl/wire/control/a$U$a;
    .registers 2

    .prologue
    .line 16453
    invoke-static {}, Lmobi/tikl/wire/control/a$U;->zJ()Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    return-object v0
.end method

.method public zL()Lmobi/tikl/wire/control/a$U$a;
    .registers 2

    .prologue
    .line 16457
    invoke-static {p0}, Lmobi/tikl/wire/control/a$U;->a(Lmobi/tikl/wire/control/a$U;)Lmobi/tikl/wire/control/a$U$a;

    move-result-object v0

    return-object v0
.end method
