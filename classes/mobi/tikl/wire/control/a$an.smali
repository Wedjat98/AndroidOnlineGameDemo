.class public final Lmobi/tikl/wire/control/a$an;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "an"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$an$a;
    }
.end annotation


# static fields
.field private static final vE:Lmobi/tikl/wire/control/a$an;


# instance fields
.field private ai:I

.field private vF:Z

.field private vG:Lmobi/tikl/wire/control/a$G;

.field private vc:Z

.field private vd:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23580
    new-instance v0, Lmobi/tikl/wire/control/a$an;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$an;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$an;->vE:Lmobi/tikl/wire/control/a$an;

    .line 23581
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 23582
    sget-object v0, Lmobi/tikl/wire/control/a$an;->vE:Lmobi/tikl/wire/control/a$an;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$an;->aJ()V

    .line 23583
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23240
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 23274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$an;->vd:Z

    .line 23300
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$an;->ai:I

    .line 23241
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$an;->aJ()V

    .line 23242
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 23237
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$an;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 23243
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 23274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$an;->vd:Z

    .line 23300
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$an;->ai:I

    .line 23243
    return-void
.end method

.method public static FD()Lmobi/tikl/wire/control/a$an;
    .registers 1

    .prologue
    .line 23247
    sget-object v0, Lmobi/tikl/wire/control/a$an;->vE:Lmobi/tikl/wire/control/a$an;

    return-object v0
.end method

.method public static FH()Lmobi/tikl/wire/control/a$an$a;
    .registers 1

    .prologue
    .line 23386
    invoke-static {}, Lmobi/tikl/wire/control/a$an$a;->FP()Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$an;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 23237
    iput-object p1, p0, Lmobi/tikl/wire/control/a$an;->vG:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$an;)Lmobi/tikl/wire/control/a$an$a;
    .registers 2

    .prologue
    .line 23389
    invoke-static {}, Lmobi/tikl/wire/control/a$an;->FH()Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$an$a;->c(Lmobi/tikl/wire/control/a$an;)Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$an;Z)Z
    .registers 2

    .prologue
    .line 23237
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$an;->vF:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 23279
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$an;->vG:Lmobi/tikl/wire/control/a$G;

    .line 23280
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 23256
    invoke-static {}, Lmobi/tikl/wire/control/a;->mc()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$an;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 23237
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an;->vG:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$an;Z)Z
    .registers 2

    .prologue
    .line 23237
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$an;->vc:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$an;Z)Z
    .registers 2

    .prologue
    .line 23237
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$an;->vd:Z

    return p1
.end method


# virtual methods
.method public Er()Z
    .registers 2

    .prologue
    .line 23275
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$an;->vc:Z

    return v0
.end method

.method public Es()Z
    .registers 2

    .prologue
    .line 23276
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$an;->vd:Z

    return v0
.end method

.method public FE()Lmobi/tikl/wire/control/a$an;
    .registers 2

    .prologue
    .line 23251
    sget-object v0, Lmobi/tikl/wire/control/a$an;->vE:Lmobi/tikl/wire/control/a$an;

    return-object v0
.end method

.method public FF()Z
    .registers 2

    .prologue
    .line 23268
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$an;->vF:Z

    return v0
.end method

.method public FG()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 23269
    iget-object v0, p0, Lmobi/tikl/wire/control/a$an;->vG:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public FI()Lmobi/tikl/wire/control/a$an$a;
    .registers 2

    .prologue
    .line 23387
    invoke-static {}, Lmobi/tikl/wire/control/a$an;->FH()Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    return-object v0
.end method

.method public FJ()Lmobi/tikl/wire/control/a$an$a;
    .registers 2

    .prologue
    .line 23391
    invoke-static {p0}, Lmobi/tikl/wire/control/a$an;->a(Lmobi/tikl/wire/control/a$an;)Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 4

    .prologue
    .line 23302
    iget v0, p0, Lmobi/tikl/wire/control/a$an;->ai:I

    .line 23303
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 23316
    :goto_5
    return v0

    .line 23305
    :cond_6
    const/4 v0, 0x0

    .line 23306
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an;->FF()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 23307
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an;->FG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 23310
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an;->Er()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 23311
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an;->Es()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 23314
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 23315
    iput v0, p0, Lmobi/tikl/wire/control/a$an;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 23290
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an;->a()I

    .line 23291
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an;->FF()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 23292
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an;->FG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 23294
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an;->Er()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 23295
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an;->Es()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 23297
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 23298
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 23237
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an;->FI()Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 23237
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an;->FE()Lmobi/tikl/wire/control/a$an;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 23237
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an;->FJ()Lmobi/tikl/wire/control/a$an$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 23261
    invoke-static {}, Lmobi/tikl/wire/control/a;->md()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 23282
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$an;->vF:Z

    if-nez v1, :cond_6

    .line 23285
    :cond_5
    :goto_5
    return v0

    .line 23283
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$an;->vc:Z

    if-eqz v1, :cond_5

    .line 23284
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$an;->FG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23285
    const/4 v0, 0x1

    goto :goto_5
.end method
