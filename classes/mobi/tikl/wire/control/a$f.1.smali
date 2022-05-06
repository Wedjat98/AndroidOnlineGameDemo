.class public final Lmobi/tikl/wire/control/a$f;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$f$a;
    }
.end annotation


# static fields
.field private static final pu:Lmobi/tikl/wire/control/a$f;


# instance fields
.field private ai:I

.field private oy:Z

.field private oz:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14515
    new-instance v0, Lmobi/tikl/wire/control/a$f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$f;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$f;->pu:Lmobi/tikl/wire/control/a$f;

    .line 14516
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 14517
    sget-object v0, Lmobi/tikl/wire/control/a$f;->pu:Lmobi/tikl/wire/control/a$f;

    .line 14518
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14241
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 14268
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$f;->oz:I

    .line 14288
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$f;->ai:I

    .line 14242
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 14238
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$f;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 14244
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 14268
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$f;->oz:I

    .line 14288
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$f;->ai:I

    .line 14244
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$f;I)I
    .registers 2

    .prologue
    .line 14238
    iput p1, p0, Lmobi/tikl/wire/control/a$f;->oz:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$f;Z)Z
    .registers 2

    .prologue
    .line 14238
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$f;->oy:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 14257
    invoke-static {}, Lmobi/tikl/wire/control/a;->lg()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lmobi/tikl/wire/control/a$f;)Lmobi/tikl/wire/control/a$f$a;
    .registers 2

    .prologue
    .line 14373
    invoke-static {}, Lmobi/tikl/wire/control/a$f;->pk()Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$f$a;->d(Lmobi/tikl/wire/control/a$f;)Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public static pi()Lmobi/tikl/wire/control/a$f;
    .registers 1

    .prologue
    .line 14248
    sget-object v0, Lmobi/tikl/wire/control/a$f;->pu:Lmobi/tikl/wire/control/a$f;

    return-object v0
.end method

.method public static pk()Lmobi/tikl/wire/control/a$f$a;
    .registers 1

    .prologue
    .line 14370
    invoke-static {}, Lmobi/tikl/wire/control/a$f$a;->ps()Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 14290
    iget v0, p0, Lmobi/tikl/wire/control/a$f;->ai:I

    .line 14291
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 14300
    :goto_5
    return v0

    .line 14293
    :cond_6
    const/4 v0, 0x0

    .line 14294
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f;->oc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 14295
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f;->getMsgId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 14298
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 14299
    iput v0, p0, Lmobi/tikl/wire/control/a$f;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 14281
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f;->a()I

    .line 14282
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f;->oc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 14283
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f;->getMsgId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 14285
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 14286
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 14238
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f;->pl()Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 14238
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f;->pj()Lmobi/tikl/wire/control/a$f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 14238
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$f;->pm()Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 14262
    invoke-static {}, Lmobi/tikl/wire/control/a;->lh()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 14270
    iget v0, p0, Lmobi/tikl/wire/control/a$f;->oz:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 14275
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$f;->oy:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 14276
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public oc()Z
    .registers 2

    .prologue
    .line 14269
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$f;->oy:Z

    return v0
.end method

.method public pj()Lmobi/tikl/wire/control/a$f;
    .registers 2

    .prologue
    .line 14252
    sget-object v0, Lmobi/tikl/wire/control/a$f;->pu:Lmobi/tikl/wire/control/a$f;

    return-object v0
.end method

.method public pl()Lmobi/tikl/wire/control/a$f$a;
    .registers 2

    .prologue
    .line 14371
    invoke-static {}, Lmobi/tikl/wire/control/a$f;->pk()Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public pm()Lmobi/tikl/wire/control/a$f$a;
    .registers 2

    .prologue
    .line 14375
    invoke-static {p0}, Lmobi/tikl/wire/control/a$f;->c(Lmobi/tikl/wire/control/a$f;)Lmobi/tikl/wire/control/a$f$a;

    move-result-object v0

    return-object v0
.end method
