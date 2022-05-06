.class public final Lmobi/tikl/wire/control/a$au;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "au"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$au$a;
    }
.end annotation


# static fields
.field private static final wk:Lmobi/tikl/wire/control/a$au;


# instance fields
.field private ai:I

.field private wl:Ljava/util/List;

.field private wm:Z

.field private wn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15590
    new-instance v0, Lmobi/tikl/wire/control/a$au;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$au;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$au;->wk:Lmobi/tikl/wire/control/a$au;

    .line 15591
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 15592
    sget-object v0, Lmobi/tikl/wire/control/a$au;->wk:Lmobi/tikl/wire/control/a$au;

    .line 15593
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15227
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 15253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$au;->wl:Ljava/util/List;

    .line 15266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$au;->wn:Z

    .line 15292
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$au;->ai:I

    .line 15228
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 15224
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$au;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 15230
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 15253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$au;->wl:Ljava/util/List;

    .line 15266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$au;->wn:Z

    .line 15292
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$au;->ai:I

    .line 15230
    return-void
.end method

.method public static Hu()Lmobi/tikl/wire/control/a$au;
    .registers 1

    .prologue
    .line 15234
    sget-object v0, Lmobi/tikl/wire/control/a$au;->wk:Lmobi/tikl/wire/control/a$au;

    return-object v0
.end method

.method public static Hz()Lmobi/tikl/wire/control/a$au$a;
    .registers 1

    .prologue
    .line 15378
    invoke-static {}, Lmobi/tikl/wire/control/a$au$a;->HH()Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$au;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 15224
    iput-object p1, p0, Lmobi/tikl/wire/control/a$au;->wl:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$au;Z)Z
    .registers 2

    .prologue
    .line 15224
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$au;->wm:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 15243
    invoke-static {}, Lmobi/tikl/wire/control/a;->lm()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lmobi/tikl/wire/control/a$au;)Lmobi/tikl/wire/control/a$au$a;
    .registers 2

    .prologue
    .line 15381
    invoke-static {}, Lmobi/tikl/wire/control/a$au;->Hz()Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$au$a;->d(Lmobi/tikl/wire/control/a$au;)Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$au;Z)Z
    .registers 2

    .prologue
    .line 15224
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$au;->wn:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$au;)Ljava/util/List;
    .registers 2

    .prologue
    .line 15224
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au;->wl:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public HA()Lmobi/tikl/wire/control/a$au$a;
    .registers 2

    .prologue
    .line 15379
    invoke-static {}, Lmobi/tikl/wire/control/a$au;->Hz()Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    return-object v0
.end method

.method public HB()Lmobi/tikl/wire/control/a$au$a;
    .registers 2

    .prologue
    .line 15383
    invoke-static {p0}, Lmobi/tikl/wire/control/a$au;->b(Lmobi/tikl/wire/control/a$au;)Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    return-object v0
.end method

.method public Hv()Lmobi/tikl/wire/control/a$au;
    .registers 2

    .prologue
    .line 15238
    sget-object v0, Lmobi/tikl/wire/control/a$au;->wk:Lmobi/tikl/wire/control/a$au;

    return-object v0
.end method

.method public Hw()Ljava/util/List;
    .registers 2

    .prologue
    .line 15256
    iget-object v0, p0, Lmobi/tikl/wire/control/a$au;->wl:Ljava/util/List;

    return-object v0
.end method

.method public Hx()Z
    .registers 2

    .prologue
    .line 15267
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$au;->wm:Z

    return v0
.end method

.method public Hy()Z
    .registers 2

    .prologue
    .line 15268
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$au;->wn:Z

    return v0
.end method

.method public a()I
    .registers 5

    .prologue
    .line 15294
    iget v0, p0, Lmobi/tikl/wire/control/a$au;->ai:I

    .line 15295
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 15308
    :goto_5
    return v0

    .line 15297
    :cond_6
    const/4 v0, 0x0

    .line 15298
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au;->Hw()Ljava/util/List;

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

    check-cast v0, Lmobi/tikl/wire/control/a$az;

    .line 15299
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 15301
    goto :goto_10

    .line 15302
    :cond_24
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au;->Hx()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 15303
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au;->Hy()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 15306
    :cond_34
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 15307
    iput v0, p0, Lmobi/tikl/wire/control/a$au;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 15282
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au;->a()I

    .line 15283
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au;->Hw()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$az;

    .line 15284
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_b

    .line 15286
    :cond_1c
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au;->Hx()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 15287
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au;->Hy()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 15289
    :cond_2a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 15290
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 15224
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au;->HA()Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 15224
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au;->Hv()Lmobi/tikl/wire/control/a$au;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 15224
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au;->HB()Lmobi/tikl/wire/control/a$au$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 15248
    invoke-static {}, Lmobi/tikl/wire/control/a;->ln()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 15273
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$au;->wm:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 15277
    :goto_6
    return v0

    .line 15274
    :cond_7
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$au;->Hw()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$az;

    .line 15275
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$az;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_6

    .line 15277
    :cond_23
    const/4 v0, 0x1

    goto :goto_6
.end method
