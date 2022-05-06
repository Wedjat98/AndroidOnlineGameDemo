.class public final Lcom/google/protobuf/f$p;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$p$a;,
        Lcom/google/protobuf/f$p$b;
    }
.end annotation


# static fields
.field private static final cz:Lcom/google/protobuf/f$p;


# instance fields
.field private ai:I

.field private cA:Ljava/util/List;

.field private cB:Z

.field private cC:Ljava/lang/String;

.field private cD:Z

.field private cE:J

.field private cF:Z

.field private cG:J

.field private cH:Z

.field private cI:D

.field private cJ:Z

.field private cK:Lcom/google/protobuf/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8719
    new-instance v0, Lcom/google/protobuf/f$p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$p;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$p;->cz:Lcom/google/protobuf/f$p;

    .line 8720
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 8721
    sget-object v0, Lcom/google/protobuf/f$p;->cz:Lcom/google/protobuf/f$p;

    .line 8722
    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 7867
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 8221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$p;->cA:Ljava/util/List;

    .line 8234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$p;->cC:Ljava/lang/String;

    .line 8241
    iput-wide v2, p0, Lcom/google/protobuf/f$p;->cE:J

    .line 8248
    iput-wide v2, p0, Lcom/google/protobuf/f$p;->cG:J

    .line 8255
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protobuf/f$p;->cI:D

    .line 8262
    sget-object v0, Lcom/google/protobuf/c;->c:Lcom/google/protobuf/c;

    iput-object v0, p0, Lcom/google/protobuf/f$p;->cK:Lcom/google/protobuf/c;

    .line 8299
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$p;->ai:I

    .line 7868
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 7864
    invoke-direct {p0}, Lcom/google/protobuf/f$p;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 7870
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 8221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$p;->cA:Ljava/util/List;

    .line 8234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$p;->cC:Ljava/lang/String;

    .line 8241
    iput-wide v2, p0, Lcom/google/protobuf/f$p;->cE:J

    .line 8248
    iput-wide v2, p0, Lcom/google/protobuf/f$p;->cG:J

    .line 8255
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protobuf/f$p;->cI:D

    .line 8262
    sget-object v0, Lcom/google/protobuf/c;->c:Lcom/google/protobuf/c;

    iput-object v0, p0, Lcom/google/protobuf/f$p;->cK:Lcom/google/protobuf/c;

    .line 8299
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$p;->ai:I

    .line 7870
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/f$p;D)D
    .registers 4

    .prologue
    .line 7864
    iput-wide p1, p0, Lcom/google/protobuf/f$p;->cI:D

    return-wide p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$p;J)J
    .registers 4

    .prologue
    .line 7864
    iput-wide p1, p0, Lcom/google/protobuf/f$p;->cE:J

    return-wide p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$p;Lcom/google/protobuf/c;)Lcom/google/protobuf/c;
    .registers 2

    .prologue
    .line 7864
    iput-object p1, p0, Lcom/google/protobuf/f$p;->cK:Lcom/google/protobuf/c;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$p;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 7864
    iput-object p1, p0, Lcom/google/protobuf/f$p;->cC:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$p;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 7864
    iput-object p1, p0, Lcom/google/protobuf/f$p;->cA:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$p;Z)Z
    .registers 2

    .prologue
    .line 7864
    iput-boolean p1, p0, Lcom/google/protobuf/f$p;->cB:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 7883
    invoke-static {}, Lcom/google/protobuf/f;->ar()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$p;J)J
    .registers 4

    .prologue
    .line 7864
    iput-wide p1, p0, Lcom/google/protobuf/f$p;->cG:J

    return-wide p1
.end method

.method static synthetic b(Lcom/google/protobuf/f$p;Z)Z
    .registers 2

    .prologue
    .line 7864
    iput-boolean p1, p0, Lcom/google/protobuf/f$p;->cD:Z

    return p1
.end method

.method static synthetic c(Lcom/google/protobuf/f$p;Z)Z
    .registers 2

    .prologue
    .line 7864
    iput-boolean p1, p0, Lcom/google/protobuf/f$p;->cF:Z

    return p1
.end method

.method static synthetic d(Lcom/google/protobuf/f$p;Z)Z
    .registers 2

    .prologue
    .line 7864
    iput-boolean p1, p0, Lcom/google/protobuf/f$p;->cH:Z

    return p1
.end method

.method static synthetic e(Lcom/google/protobuf/f$p;Z)Z
    .registers 2

    .prologue
    .line 7864
    iput-boolean p1, p0, Lcom/google/protobuf/f$p;->cJ:Z

    return p1
.end method

.method public static fG()Lcom/google/protobuf/f$p$a;
    .registers 1

    .prologue
    .line 8401
    invoke-static {}, Lcom/google/protobuf/f$p$a;->fO()Lcom/google/protobuf/f$p$a;

    move-result-object v0

    return-object v0
.end method

.method public static fu()Lcom/google/protobuf/f$p;
    .registers 1

    .prologue
    .line 7874
    sget-object v0, Lcom/google/protobuf/f$p;->cz:Lcom/google/protobuf/f$p;

    return-object v0
.end method

.method public static h(Lcom/google/protobuf/f$p;)Lcom/google/protobuf/f$p$a;
    .registers 2

    .prologue
    .line 8404
    invoke-static {}, Lcom/google/protobuf/f$p;->fG()Lcom/google/protobuf/f$p$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$p$a;->j(Lcom/google/protobuf/f$p;)Lcom/google/protobuf/f$p$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/google/protobuf/f$p;)Ljava/util/List;
    .registers 2

    .prologue
    .line 7864
    iget-object v0, p0, Lcom/google/protobuf/f$p;->cA:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 8301
    iget v0, p0, Lcom/google/protobuf/f$p;->ai:I

    .line 8302
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 8331
    :goto_5
    return v0

    .line 8304
    :cond_6
    const/4 v0, 0x0

    .line 8305
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fw()Ljava/util/List;

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

    check-cast v0, Lcom/google/protobuf/f$p$b;

    .line 8306
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_10

    .line 8309
    :cond_24
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fx()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 8310
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fy()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 8313
    :cond_34
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fz()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 8314
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fA()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/e;->d(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 8317
    :cond_44
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fB()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 8318
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fC()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/e;->e(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 8321
    :cond_54
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fD()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 8322
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fE()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/e;->b(ID)I

    move-result v0

    add-int/2addr v1, v0

    .line 8325
    :cond_64
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 8326
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fF()Lcom/google/protobuf/c;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->c(ILcom/google/protobuf/c;)I

    move-result v0

    add-int/2addr v1, v0

    .line 8329
    :cond_74
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 8330
    iput v0, p0, Lcom/google/protobuf/f$p;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 6

    .prologue
    .line 8277
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->a()I

    .line 8278
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fw()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$p$b;

    .line 8279
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_b

    .line 8281
    :cond_1c
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fx()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 8282
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 8284
    :cond_2a
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fz()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 8285
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fA()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/e;->a(IJ)V

    .line 8287
    :cond_38
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fB()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 8288
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fC()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/e;->b(IJ)V

    .line 8290
    :cond_46
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fD()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 8291
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fE()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/e;->a(ID)V

    .line 8293
    :cond_54
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 8294
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fF()Lcom/google/protobuf/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILcom/google/protobuf/c;)V

    .line 8296
    :cond_62
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 8297
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 7864
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fH()Lcom/google/protobuf/f$p$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 7864
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fv()Lcom/google/protobuf/f$p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 7864
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fI()Lcom/google/protobuf/f$p$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 7888
    invoke-static {}, Lcom/google/protobuf/f;->as()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public fA()J
    .registers 3

    .prologue
    .line 8243
    iget-wide v0, p0, Lcom/google/protobuf/f$p;->cE:J

    return-wide v0
.end method

.method public fB()Z
    .registers 2

    .prologue
    .line 8249
    iget-boolean v0, p0, Lcom/google/protobuf/f$p;->cF:Z

    return v0
.end method

.method public fC()J
    .registers 3

    .prologue
    .line 8250
    iget-wide v0, p0, Lcom/google/protobuf/f$p;->cG:J

    return-wide v0
.end method

.method public fD()Z
    .registers 2

    .prologue
    .line 8256
    iget-boolean v0, p0, Lcom/google/protobuf/f$p;->cH:Z

    return v0
.end method

.method public fE()D
    .registers 3

    .prologue
    .line 8257
    iget-wide v0, p0, Lcom/google/protobuf/f$p;->cI:D

    return-wide v0
.end method

.method public fF()Lcom/google/protobuf/c;
    .registers 2

    .prologue
    .line 8264
    iget-object v0, p0, Lcom/google/protobuf/f$p;->cK:Lcom/google/protobuf/c;

    return-object v0
.end method

.method public fH()Lcom/google/protobuf/f$p$a;
    .registers 2

    .prologue
    .line 8402
    invoke-static {}, Lcom/google/protobuf/f$p;->fG()Lcom/google/protobuf/f$p$a;

    move-result-object v0

    return-object v0
.end method

.method public fI()Lcom/google/protobuf/f$p$a;
    .registers 2

    .prologue
    .line 8406
    invoke-static {p0}, Lcom/google/protobuf/f$p;->h(Lcom/google/protobuf/f$p;)Lcom/google/protobuf/f$p$a;

    move-result-object v0

    return-object v0
.end method

.method public fv()Lcom/google/protobuf/f$p;
    .registers 2

    .prologue
    .line 7878
    sget-object v0, Lcom/google/protobuf/f$p;->cz:Lcom/google/protobuf/f$p;

    return-object v0
.end method

.method public fw()Ljava/util/List;
    .registers 2

    .prologue
    .line 8224
    iget-object v0, p0, Lcom/google/protobuf/f$p;->cA:Ljava/util/List;

    return-object v0
.end method

.method public fx()Z
    .registers 2

    .prologue
    .line 8235
    iget-boolean v0, p0, Lcom/google/protobuf/f$p;->cB:Z

    return v0
.end method

.method public fy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8236
    iget-object v0, p0, Lcom/google/protobuf/f$p;->cC:Ljava/lang/String;

    return-object v0
.end method

.method public fz()Z
    .registers 2

    .prologue
    .line 8242
    iget-boolean v0, p0, Lcom/google/protobuf/f$p;->cD:Z

    return v0
.end method

.method public hasStringValue()Z
    .registers 2

    .prologue
    .line 8263
    iget-boolean v0, p0, Lcom/google/protobuf/f$p;->cJ:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 8269
    invoke-virtual {p0}, Lcom/google/protobuf/f$p;->fw()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$p$b;

    .line 8270
    invoke-virtual {v0}, Lcom/google/protobuf/f$p$b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 8272
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method
