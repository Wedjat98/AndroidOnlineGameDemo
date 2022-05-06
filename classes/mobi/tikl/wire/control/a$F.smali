.class public final Lmobi/tikl/wire/control/a$F;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "F"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$F$a;
    }
.end annotation


# static fields
.field private static final qY:Lmobi/tikl/wire/control/a$F;


# instance fields
.field private ai:I

.field private kM:I

.field private kN:I

.field private kO:Ljava/lang/String;

.field private qZ:Z

.field private ra:Z

.field private rb:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19626
    new-instance v0, Lmobi/tikl/wire/control/a$F;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$F;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$F;->qY:Lmobi/tikl/wire/control/a$F;

    .line 19627
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 19628
    sget-object v0, Lmobi/tikl/wire/control/a$F;->qY:Lmobi/tikl/wire/control/a$F;

    .line 19629
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 19271
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 19298
    iput v0, p0, Lmobi/tikl/wire/control/a$F;->kM:I

    .line 19305
    iput v0, p0, Lmobi/tikl/wire/control/a$F;->kN:I

    .line 19312
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$F;->kO:Ljava/lang/String;

    .line 19338
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$F;->ai:I

    .line 19272
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 19268
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$F;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 19274
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 19298
    iput v0, p0, Lmobi/tikl/wire/control/a$F;->kM:I

    .line 19305
    iput v0, p0, Lmobi/tikl/wire/control/a$F;->kN:I

    .line 19312
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$F;->kO:Ljava/lang/String;

    .line 19338
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$F;->ai:I

    .line 19274
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$F;I)I
    .registers 2

    .prologue
    .line 19268
    iput p1, p0, Lmobi/tikl/wire/control/a$F;->kM:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$F;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 19268
    iput-object p1, p0, Lmobi/tikl/wire/control/a$F;->kO:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$F;)Lmobi/tikl/wire/control/a$F$a;
    .registers 2

    .prologue
    .line 19431
    invoke-static {}, Lmobi/tikl/wire/control/a$F;->vr()Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$F$a;->b(Lmobi/tikl/wire/control/a$F;)Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$F;Z)Z
    .registers 2

    .prologue
    .line 19268
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$F;->qZ:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 19287
    invoke-static {}, Lmobi/tikl/wire/control/a;->lK()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$F;I)I
    .registers 2

    .prologue
    .line 19268
    iput p1, p0, Lmobi/tikl/wire/control/a$F;->kN:I

    return p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$F;Z)Z
    .registers 2

    .prologue
    .line 19268
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$F;->ra:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$F;Z)Z
    .registers 2

    .prologue
    .line 19268
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$F;->rb:Z

    return p1
.end method

.method public static vm()Lmobi/tikl/wire/control/a$F;
    .registers 1

    .prologue
    .line 19278
    sget-object v0, Lmobi/tikl/wire/control/a$F;->qY:Lmobi/tikl/wire/control/a$F;

    return-object v0
.end method

.method public static vr()Lmobi/tikl/wire/control/a$F$a;
    .registers 1

    .prologue
    .line 19428
    invoke-static {}, Lmobi/tikl/wire/control/a$F$a;->vz()Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 19340
    iget v0, p0, Lmobi/tikl/wire/control/a$F;->ai:I

    .line 19341
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 19358
    :goto_5
    return v0

    .line 19343
    :cond_6
    const/4 v0, 0x0

    .line 19344
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->vo()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 19345
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->getEventType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 19348
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->vp()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 19349
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->kp()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 19352
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->vq()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 19353
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->kq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19356
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 19357
    iput v0, p0, Lmobi/tikl/wire/control/a$F;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 19325
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->a()I

    .line 19326
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->vo()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 19327
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->getEventType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 19329
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->vp()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 19330
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->kp()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 19332
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->vq()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 19333
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->kq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 19335
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 19336
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 19268
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->vs()Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 19268
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->vn()Lmobi/tikl/wire/control/a$F;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 19268
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$F;->vt()Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 19292
    invoke-static {}, Lmobi/tikl/wire/control/a;->lL()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()I
    .registers 2

    .prologue
    .line 19300
    iget v0, p0, Lmobi/tikl/wire/control/a$F;->kM:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 19319
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$F;->qZ:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 19320
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public kp()I
    .registers 2

    .prologue
    .line 19307
    iget v0, p0, Lmobi/tikl/wire/control/a$F;->kN:I

    return v0
.end method

.method public kq()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19314
    iget-object v0, p0, Lmobi/tikl/wire/control/a$F;->kO:Ljava/lang/String;

    return-object v0
.end method

.method public vn()Lmobi/tikl/wire/control/a$F;
    .registers 2

    .prologue
    .line 19282
    sget-object v0, Lmobi/tikl/wire/control/a$F;->qY:Lmobi/tikl/wire/control/a$F;

    return-object v0
.end method

.method public vo()Z
    .registers 2

    .prologue
    .line 19299
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$F;->qZ:Z

    return v0
.end method

.method public vp()Z
    .registers 2

    .prologue
    .line 19306
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$F;->ra:Z

    return v0
.end method

.method public vq()Z
    .registers 2

    .prologue
    .line 19313
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$F;->rb:Z

    return v0
.end method

.method public vs()Lmobi/tikl/wire/control/a$F$a;
    .registers 2

    .prologue
    .line 19429
    invoke-static {}, Lmobi/tikl/wire/control/a$F;->vr()Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    return-object v0
.end method

.method public vt()Lmobi/tikl/wire/control/a$F$a;
    .registers 2

    .prologue
    .line 19433
    invoke-static {p0}, Lmobi/tikl/wire/control/a$F;->a(Lmobi/tikl/wire/control/a$F;)Lmobi/tikl/wire/control/a$F$a;

    move-result-object v0

    return-object v0
.end method
