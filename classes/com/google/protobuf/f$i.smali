.class public final Lcom/google/protobuf/f$i;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$i$a;
    }
.end annotation


# static fields
.field private static final bI:Lcom/google/protobuf/f$i;


# instance fields
.field private ai:I

.field private bJ:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 337
    new-instance v0, Lcom/google/protobuf/f$i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$i;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$i;->bI:Lcom/google/protobuf/f$i;

    .line 338
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 339
    sget-object v0, Lcom/google/protobuf/f$i;->bI:Lcom/google/protobuf/f$i;

    .line 340
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$i;->bJ:Ljava/util/List;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$i;->ai:I

    .line 15
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/protobuf/f$i;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$i;->bJ:Ljava/util/List;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$i;->ai:I

    .line 17
    return-void
.end method

.method public static a(Lcom/google/protobuf/f$i;)Lcom/google/protobuf/f$i$a;
    .registers 2

    .prologue
    .line 153
    invoke-static {}, Lcom/google/protobuf/f$i;->dx()Lcom/google/protobuf/f$i$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$i$a;->c(Lcom/google/protobuf/f$i;)Lcom/google/protobuf/f$i$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/protobuf/f$i;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/protobuf/f$i;->bJ:Ljava/util/List;

    return-object p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/protobuf/f;->L()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$i;)Ljava/util/List;
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/protobuf/f$i;->bJ:Ljava/util/List;

    return-object v0
.end method

.method public static du()Lcom/google/protobuf/f$i;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/protobuf/f$i;->bI:Lcom/google/protobuf/f$i;

    return-object v0
.end method

.method public static dx()Lcom/google/protobuf/f$i$a;
    .registers 1

    .prologue
    .line 150
    invoke-static {}, Lcom/google/protobuf/f$i$a;->dF()Lcom/google/protobuf/f$i$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 70
    iget v0, p0, Lcom/google/protobuf/f$i;->ai:I

    .line 71
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 80
    :goto_5
    return v0

    .line 73
    :cond_6
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/google/protobuf/f$i;->dw()Ljava/util/List;

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

    check-cast v0, Lcom/google/protobuf/f$h;

    .line 75
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_10

    .line 78
    :cond_24
    invoke-virtual {p0}, Lcom/google/protobuf/f$i;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 79
    iput v0, p0, Lcom/google/protobuf/f$i;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/protobuf/f$i;->a()I

    .line 62
    invoke-virtual {p0}, Lcom/google/protobuf/f$i;->dw()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$h;

    .line 63
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_b

    .line 65
    :cond_1c
    invoke-virtual {p0}, Lcom/google/protobuf/f$i;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 66
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/f$i;->dy()Lcom/google/protobuf/f$i$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/f$i;->dv()Lcom/google/protobuf/f$i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/f$i;->dz()Lcom/google/protobuf/f$i$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 35
    invoke-static {}, Lcom/google/protobuf/f;->M()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public dv()Lcom/google/protobuf/f$i;
    .registers 2

    .prologue
    .line 25
    sget-object v0, Lcom/google/protobuf/f$i;->bI:Lcom/google/protobuf/f$i;

    return-object v0
.end method

.method public dw()Ljava/util/List;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/protobuf/f$i;->bJ:Ljava/util/List;

    return-object v0
.end method

.method public dy()Lcom/google/protobuf/f$i$a;
    .registers 2

    .prologue
    .line 151
    invoke-static {}, Lcom/google/protobuf/f$i;->dx()Lcom/google/protobuf/f$i$a;

    move-result-object v0

    return-object v0
.end method

.method public dz()Lcom/google/protobuf/f$i$a;
    .registers 2

    .prologue
    .line 155
    invoke-static {p0}, Lcom/google/protobuf/f$i;->a(Lcom/google/protobuf/f$i;)Lcom/google/protobuf/f$i$a;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/protobuf/f$i;->dw()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$h;

    .line 54
    invoke-virtual {v0}, Lcom/google/protobuf/f$h;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 56
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method
