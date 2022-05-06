.class public final Lcom/google/protobuf/f$o;
.super Lcom/google/protobuf/q$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$o$a;
    }
.end annotation


# static fields
.field private static final cx:Lcom/google/protobuf/f$o;


# instance fields
.field private ai:I

.field private av:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 7514
    new-instance v0, Lcom/google/protobuf/f$o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$o;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$o;->cx:Lcom/google/protobuf/f$o;

    .line 7515
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 7516
    sget-object v0, Lcom/google/protobuf/f$o;->cx:Lcom/google/protobuf/f$o;

    .line 7517
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 7184
    invoke-direct {p0}, Lcom/google/protobuf/q$c;-><init>()V

    .line 7210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$o;->av:Ljava/util/List;

    .line 7242
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$o;->ai:I

    .line 7185
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 7180
    invoke-direct {p0}, Lcom/google/protobuf/f$o;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 7187
    invoke-direct {p0}, Lcom/google/protobuf/q$c;-><init>()V

    .line 7210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$o;->av:Ljava/util/List;

    .line 7242
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$o;->ai:I

    .line 7187
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/f$o;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 7180
    iput-object p1, p0, Lcom/google/protobuf/f$o;->av:Ljava/util/List;

    return-object p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 7200
    invoke-static {}, Lcom/google/protobuf/f;->an()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/google/protobuf/f$o;)Lcom/google/protobuf/f$o$a;
    .registers 2

    .prologue
    .line 7328
    invoke-static {}, Lcom/google/protobuf/f$o;->fl()Lcom/google/protobuf/f$o$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$o$a;->e(Lcom/google/protobuf/f$o;)Lcom/google/protobuf/f$o$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/protobuf/f$o;)Ljava/util/List;
    .registers 2

    .prologue
    .line 7180
    iget-object v0, p0, Lcom/google/protobuf/f$o;->av:Ljava/util/List;

    return-object v0
.end method

.method public static fj()Lcom/google/protobuf/f$o;
    .registers 1

    .prologue
    .line 7191
    sget-object v0, Lcom/google/protobuf/f$o;->cx:Lcom/google/protobuf/f$o;

    return-object v0
.end method

.method public static fl()Lcom/google/protobuf/f$o$a;
    .registers 1

    .prologue
    .line 7325
    invoke-static {}, Lcom/google/protobuf/f$o$a;->ft()Lcom/google/protobuf/f$o$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 7244
    iget v0, p0, Lcom/google/protobuf/f$o;->ai:I

    .line 7245
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 7255
    :goto_5
    return v0

    .line 7247
    :cond_6
    const/4 v0, 0x0

    .line 7248
    invoke-virtual {p0}, Lcom/google/protobuf/f$o;->bD()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$p;

    .line 7249
    const/16 v3, 0x3e7

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_10

    .line 7252
    :cond_25
    invoke-virtual {p0}, Lcom/google/protobuf/f$o;->gV()I

    move-result v0

    add-int/2addr v0, v1

    .line 7253
    invoke-virtual {p0}, Lcom/google/protobuf/f$o;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 7254
    iput v0, p0, Lcom/google/protobuf/f$o;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 6

    .prologue
    .line 7232
    invoke-virtual {p0}, Lcom/google/protobuf/f$o;->a()I

    .line 7234
    invoke-virtual {p0}, Lcom/google/protobuf/f$o;->gU()Lcom/google/protobuf/q$c$a;

    move-result-object v1

    .line 7235
    invoke-virtual {p0}, Lcom/google/protobuf/f$o;->bD()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$p;

    .line 7236
    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_f

    .line 7238
    :cond_21
    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/q$c$a;->a(ILcom/google/protobuf/e;)V

    .line 7239
    invoke-virtual {p0}, Lcom/google/protobuf/f$o;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 7240
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 7180
    invoke-virtual {p0}, Lcom/google/protobuf/f$o;->fm()Lcom/google/protobuf/f$o$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 7180
    invoke-virtual {p0}, Lcom/google/protobuf/f$o;->fk()Lcom/google/protobuf/f$o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 7180
    invoke-virtual {p0}, Lcom/google/protobuf/f$o;->fn()Lcom/google/protobuf/f$o$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 7205
    invoke-static {}, Lcom/google/protobuf/f;->ao()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public bD()Ljava/util/List;
    .registers 2

    .prologue
    .line 7213
    iget-object v0, p0, Lcom/google/protobuf/f$o;->av:Ljava/util/List;

    return-object v0
.end method

.method public fk()Lcom/google/protobuf/f$o;
    .registers 2

    .prologue
    .line 7195
    sget-object v0, Lcom/google/protobuf/f$o;->cx:Lcom/google/protobuf/f$o;

    return-object v0
.end method

.method public fm()Lcom/google/protobuf/f$o$a;
    .registers 2

    .prologue
    .line 7326
    invoke-static {}, Lcom/google/protobuf/f$o;->fl()Lcom/google/protobuf/f$o$a;

    move-result-object v0

    return-object v0
.end method

.method public fn()Lcom/google/protobuf/f$o$a;
    .registers 2

    .prologue
    .line 7330
    invoke-static {p0}, Lcom/google/protobuf/f$o;->c(Lcom/google/protobuf/f$o;)Lcom/google/protobuf/f$o$a;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 7223
    invoke-virtual {p0}, Lcom/google/protobuf/f$o;->bD()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$p;

    .line 7224
    invoke-virtual {v0}, Lcom/google/protobuf/f$p;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 7227
    :goto_1c
    return v0

    .line 7226
    :cond_1d
    invoke-virtual {p0}, Lcom/google/protobuf/f$o;->gT()Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v1

    goto :goto_1c

    .line 7227
    :cond_25
    const/4 v0, 0x1

    goto :goto_1c
.end method
