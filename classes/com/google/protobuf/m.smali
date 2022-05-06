.class public final Lcom/google/protobuf/m;
.super Lcom/google/protobuf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/m$a;
    }
.end annotation


# instance fields
.field private a:I

.field private final eb:Lcom/google/protobuf/l$a;

.field private final ec:Lcom/google/protobuf/p;

.field private final ed:Lcom/google/protobuf/z;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/l$a;Lcom/google/protobuf/p;Lcom/google/protobuf/z;)V
    .registers 5

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/protobuf/a;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/m;->a:I

    .line 57
    iput-object p1, p0, Lcom/google/protobuf/m;->eb:Lcom/google/protobuf/l$a;

    .line 58
    iput-object p2, p0, Lcom/google/protobuf/m;->ec:Lcom/google/protobuf/p;

    .line 59
    iput-object p3, p0, Lcom/google/protobuf/m;->ed:Lcom/google/protobuf/z;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/l$a;Lcom/google/protobuf/p;Lcom/google/protobuf/z;Lcom/google/protobuf/d;)V
    .registers 5

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/m;-><init>(Lcom/google/protobuf/l$a;Lcom/google/protobuf/p;Lcom/google/protobuf/z;)V

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/m;)Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/protobuf/m;->eb:Lcom/google/protobuf/l$a;

    return-object v0
.end method

.method private static a(Lcom/google/protobuf/l$a;Lcom/google/protobuf/p;)Z
    .registers 5

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/protobuf/l$a;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$f;

    .line 190
    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->isRequired()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 191
    invoke-virtual {p1, v0}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/p$a;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 192
    const/4 v0, 0x0

    .line 198
    :goto_21
    return v0

    :cond_22
    invoke-virtual {p1}, Lcom/google/protobuf/p;->isInitialized()Z

    move-result v0

    goto :goto_21
.end method

.method static synthetic b(Lcom/google/protobuf/m;)Lcom/google/protobuf/p;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/protobuf/m;->ec:Lcom/google/protobuf/p;

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/l$a;Lcom/google/protobuf/p;)Z
    .registers 3

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/protobuf/m;->a(Lcom/google/protobuf/l$a;Lcom/google/protobuf/p;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/google/protobuf/m;)Lcom/google/protobuf/z;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/protobuf/m;->ed:Lcom/google/protobuf/z;

    return-object v0
.end method

.method private e(Lcom/google/protobuf/l$f;)V
    .registers 4

    .prologue
    .line 241
    invoke-virtual {p1}, Lcom/google/protobuf/l$f;->gv()Lcom/google/protobuf/l$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/m;->eb:Lcom/google/protobuf/l$a;

    if-eq v0, v1, :cond_10

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_10
    return-void
.end method

.method public static t(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/m;
    .registers 4

    .prologue
    .line 67
    new-instance v0, Lcom/google/protobuf/m;

    invoke-static {}, Lcom/google/protobuf/p;->gQ()Lcom/google/protobuf/p;

    move-result-object v1

    invoke-static {}, Lcom/google/protobuf/z;->hi()Lcom/google/protobuf/z;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/m;-><init>(Lcom/google/protobuf/l$a;Lcom/google/protobuf/p;Lcom/google/protobuf/z;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 216
    iget v0, p0, Lcom/google/protobuf/m;->a:I

    .line 217
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 228
    :goto_5
    return v0

    .line 219
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/m;->eb:Lcom/google/protobuf/l$a;

    invoke-virtual {v0}, Lcom/google/protobuf/l$a;->aI()Lcom/google/protobuf/f$k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/f$k;->ei()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 220
    iget-object v0, p0, Lcom/google/protobuf/m;->ec:Lcom/google/protobuf/p;

    invoke-virtual {v0}, Lcom/google/protobuf/p;->gR()I

    move-result v0

    .line 221
    iget-object v1, p0, Lcom/google/protobuf/m;->ed:Lcom/google/protobuf/z;

    invoke-virtual {v1}, Lcom/google/protobuf/z;->hk()I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    :goto_1f
    iput v0, p0, Lcom/google/protobuf/m;->a:I

    goto :goto_5

    .line 223
    :cond_22
    iget-object v0, p0, Lcom/google/protobuf/m;->ec:Lcom/google/protobuf/p;

    invoke-virtual {v0}, Lcom/google/protobuf/p;->a()I

    move-result v0

    .line 224
    iget-object v1, p0, Lcom/google/protobuf/m;->ed:Lcom/google/protobuf/z;

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1f
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/protobuf/m;->eb:Lcom/google/protobuf/l$a;

    invoke-virtual {v0}, Lcom/google/protobuf/l$a;->aI()Lcom/google/protobuf/f$k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/f$k;->ei()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 207
    iget-object v0, p0, Lcom/google/protobuf/m;->ec:Lcom/google/protobuf/p;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->b(Lcom/google/protobuf/e;)V

    .line 208
    iget-object v0, p0, Lcom/google/protobuf/m;->ed:Lcom/google/protobuf/z;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->c(Lcom/google/protobuf/e;)V

    .line 213
    :goto_16
    return-void

    .line 210
    :cond_17
    iget-object v0, p0, Lcom/google/protobuf/m;->ec:Lcom/google/protobuf/p;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/e;)V

    .line 211
    iget-object v0, p0, Lcom/google/protobuf/m;->ed:Lcom/google/protobuf/z;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    goto :goto_16
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/protobuf/m;->gI()Lcom/google/protobuf/m$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/protobuf/m;->gF()Lcom/google/protobuf/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/protobuf/m;->gJ()Lcom/google/protobuf/m$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/protobuf/m;->eb:Lcom/google/protobuf/l$a;

    return-object v0
.end method

.method public d(Lcom/google/protobuf/l$f;)Z
    .registers 3

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/google/protobuf/m;->e(Lcom/google/protobuf/l$f;)V

    .line 156
    iget-object v0, p0, Lcom/google/protobuf/m;->ec:Lcom/google/protobuf/p;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/p$a;)Z

    move-result v0

    return v0
.end method

.method public gF()Lcom/google/protobuf/m;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/protobuf/m;->eb:Lcom/google/protobuf/l$a;

    invoke-static {v0}, Lcom/google/protobuf/m;->t(Lcom/google/protobuf/l$a;)Lcom/google/protobuf/m;

    move-result-object v0

    return-object v0
.end method

.method public gG()Ljava/util/Map;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/protobuf/m;->ec:Lcom/google/protobuf/p;

    invoke-virtual {v0}, Lcom/google/protobuf/p;->gG()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public gH()Lcom/google/protobuf/z;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/protobuf/m;->ed:Lcom/google/protobuf/z;

    return-object v0
.end method

.method public gI()Lcom/google/protobuf/m$a;
    .registers 4

    .prologue
    .line 232
    new-instance v0, Lcom/google/protobuf/m$a;

    iget-object v1, p0, Lcom/google/protobuf/m;->eb:Lcom/google/protobuf/l$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/m$a;-><init>(Lcom/google/protobuf/l$a;Lcom/google/protobuf/d;)V

    return-object v0
.end method

.method public gJ()Lcom/google/protobuf/m$a;
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/protobuf/m;->gI()Lcom/google/protobuf/m$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/m$a;->x(Lcom/google/protobuf/t;)Lcom/google/protobuf/m$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/protobuf/m;->eb:Lcom/google/protobuf/l$a;

    iget-object v1, p0, Lcom/google/protobuf/m;->ec:Lcom/google/protobuf/p;

    invoke-static {v0, v1}, Lcom/google/protobuf/m;->a(Lcom/google/protobuf/l$a;Lcom/google/protobuf/p;)Z

    move-result v0

    return v0
.end method
