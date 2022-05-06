.class public final Lmobi/tikl/wire/control/a$h;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$h$a;
    }
.end annotation


# static fields
.field private static final py:Lmobi/tikl/wire/control/a$h;


# instance fields
.field private ai:I

.field private pz:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19260
    new-instance v0, Lmobi/tikl/wire/control/a$h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$h;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$h;->py:Lmobi/tikl/wire/control/a$h;

    .line 19261
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 19262
    sget-object v0, Lmobi/tikl/wire/control/a$h;->py:Lmobi/tikl/wire/control/a$h;

    .line 19263
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 18937
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 18963
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$h;->pz:Ljava/util/List;

    .line 18991
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$h;->ai:I

    .line 18938
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 18934
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$h;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 18940
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 18963
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$h;->pz:Ljava/util/List;

    .line 18991
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$h;->ai:I

    .line 18940
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$h;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 18934
    iput-object p1, p0, Lmobi/tikl/wire/control/a$h;->pz:Ljava/util/List;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$h;)Lmobi/tikl/wire/control/a$h$a;
    .registers 2

    .prologue
    .line 19076
    invoke-static {}, Lmobi/tikl/wire/control/a$h;->pH()Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$h$a;->c(Lmobi/tikl/wire/control/a$h;)Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 18953
    invoke-static {}, Lmobi/tikl/wire/control/a;->lI()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$h;)Ljava/util/List;
    .registers 2

    .prologue
    .line 18934
    iget-object v0, p0, Lmobi/tikl/wire/control/a$h;->pz:Ljava/util/List;

    return-object v0
.end method

.method public static pE()Lmobi/tikl/wire/control/a$h;
    .registers 1

    .prologue
    .line 18944
    sget-object v0, Lmobi/tikl/wire/control/a$h;->py:Lmobi/tikl/wire/control/a$h;

    return-object v0
.end method

.method public static pH()Lmobi/tikl/wire/control/a$h$a;
    .registers 1

    .prologue
    .line 19073
    invoke-static {}, Lmobi/tikl/wire/control/a$h$a;->pP()Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 18993
    iget v0, p0, Lmobi/tikl/wire/control/a$h;->ai:I

    .line 18994
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 19003
    :goto_5
    return v0

    .line 18996
    :cond_6
    const/4 v0, 0x0

    .line 18997
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h;->pG()Ljava/util/List;

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

    check-cast v0, Lmobi/tikl/wire/control/a$n;

    .line 18998
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 19000
    goto :goto_10

    .line 19001
    :cond_24
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 19002
    iput v0, p0, Lmobi/tikl/wire/control/a$h;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 18984
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h;->a()I

    .line 18985
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h;->pG()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$n;

    .line 18986
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_b

    .line 18988
    :cond_1c
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 18989
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 18934
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h;->pI()Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 18934
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h;->pF()Lmobi/tikl/wire/control/a$h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 18934
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h;->pJ()Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 18958
    invoke-static {}, Lmobi/tikl/wire/control/a;->lJ()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 18976
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$h;->pG()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$n;

    .line 18977
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$n;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 18979
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method public pF()Lmobi/tikl/wire/control/a$h;
    .registers 2

    .prologue
    .line 18948
    sget-object v0, Lmobi/tikl/wire/control/a$h;->py:Lmobi/tikl/wire/control/a$h;

    return-object v0
.end method

.method public pG()Ljava/util/List;
    .registers 2

    .prologue
    .line 18966
    iget-object v0, p0, Lmobi/tikl/wire/control/a$h;->pz:Ljava/util/List;

    return-object v0
.end method

.method public pI()Lmobi/tikl/wire/control/a$h$a;
    .registers 2

    .prologue
    .line 19074
    invoke-static {}, Lmobi/tikl/wire/control/a$h;->pH()Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public pJ()Lmobi/tikl/wire/control/a$h$a;
    .registers 2

    .prologue
    .line 19078
    invoke-static {p0}, Lmobi/tikl/wire/control/a$h;->a(Lmobi/tikl/wire/control/a$h;)Lmobi/tikl/wire/control/a$h$a;

    move-result-object v0

    return-object v0
.end method
