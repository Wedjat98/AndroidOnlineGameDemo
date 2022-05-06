.class public final Lmobi/tikl/wire/control/a$ar;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$ar$a;
    }
.end annotation


# static fields
.field private static final wa:Lmobi/tikl/wire/control/a$ar;


# instance fields
.field private ai:I

.field private wb:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17291
    new-instance v0, Lmobi/tikl/wire/control/a$ar;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$ar;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$ar;->wa:Lmobi/tikl/wire/control/a$ar;

    .line 17292
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 17293
    sget-object v0, Lmobi/tikl/wire/control/a$ar;->wa:Lmobi/tikl/wire/control/a$ar;

    .line 17294
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16968
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 16994
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ar;->wb:Ljava/util/List;

    .line 17022
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ar;->ai:I

    .line 16969
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 16965
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ar;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 16971
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 16994
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ar;->wb:Ljava/util/List;

    .line 17022
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ar;->ai:I

    .line 16971
    return-void
.end method

.method public static GJ()Lmobi/tikl/wire/control/a$ar;
    .registers 1

    .prologue
    .line 16975
    sget-object v0, Lmobi/tikl/wire/control/a$ar;->wa:Lmobi/tikl/wire/control/a$ar;

    return-object v0
.end method

.method public static GM()Lmobi/tikl/wire/control/a$ar$a;
    .registers 1

    .prologue
    .line 17104
    invoke-static {}, Lmobi/tikl/wire/control/a$ar$a;->GU()Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ar;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 16965
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ar;->wb:Ljava/util/List;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$ar;)Lmobi/tikl/wire/control/a$ar$a;
    .registers 2

    .prologue
    .line 17107
    invoke-static {}, Lmobi/tikl/wire/control/a$ar;->GM()Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$ar$a;->c(Lmobi/tikl/wire/control/a$ar;)Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    return-object v0
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 16984
    invoke-static {}, Lmobi/tikl/wire/control/a;->lw()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ar;)Ljava/util/List;
    .registers 2

    .prologue
    .line 16965
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ar;->wb:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public GK()Lmobi/tikl/wire/control/a$ar;
    .registers 2

    .prologue
    .line 16979
    sget-object v0, Lmobi/tikl/wire/control/a$ar;->wa:Lmobi/tikl/wire/control/a$ar;

    return-object v0
.end method

.method public GL()Ljava/util/List;
    .registers 2

    .prologue
    .line 16997
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ar;->wb:Ljava/util/List;

    return-object v0
.end method

.method public GN()Lmobi/tikl/wire/control/a$ar$a;
    .registers 2

    .prologue
    .line 17105
    invoke-static {}, Lmobi/tikl/wire/control/a$ar;->GM()Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    return-object v0
.end method

.method public GO()Lmobi/tikl/wire/control/a$ar$a;
    .registers 2

    .prologue
    .line 17109
    invoke-static {p0}, Lmobi/tikl/wire/control/a$ar;->a(Lmobi/tikl/wire/control/a$ar;)Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 5

    .prologue
    .line 17024
    iget v0, p0, Lmobi/tikl/wire/control/a$ar;->ai:I

    .line 17025
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 17034
    :goto_5
    return v0

    .line 17027
    :cond_6
    const/4 v0, 0x0

    .line 17028
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar;->GL()Ljava/util/List;

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

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 17029
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 17031
    goto :goto_10

    .line 17032
    :cond_24
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 17033
    iput v0, p0, Lmobi/tikl/wire/control/a$ar;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 17015
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar;->a()I

    .line 17016
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar;->GL()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 17017
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_b

    .line 17019
    :cond_1c
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 17020
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 16965
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar;->GN()Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 16965
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar;->GK()Lmobi/tikl/wire/control/a$ar;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 16965
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar;->GO()Lmobi/tikl/wire/control/a$ar$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 16989
    invoke-static {}, Lmobi/tikl/wire/control/a;->lx()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 17007
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ar;->GL()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 17008
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 17010
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method
