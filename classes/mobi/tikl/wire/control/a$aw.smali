.class public final Lmobi/tikl/wire/control/a$aw;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "aw"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$aw$a;
    }
.end annotation


# static fields
.field private static final yn:Lmobi/tikl/wire/control/a$aw;


# instance fields
.field private ai:I

.field private oA:Z

.field private oB:Lmobi/tikl/wire/control/a$G;

.field private oC:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13459
    new-instance v0, Lmobi/tikl/wire/control/a$aw;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$aw;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$aw;->yn:Lmobi/tikl/wire/control/a$aw;

    .line 13460
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 13461
    sget-object v0, Lmobi/tikl/wire/control/a$aw;->yn:Lmobi/tikl/wire/control/a$aw;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$aw;->aJ()V

    .line 13462
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13070
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 13103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$aw;->oC:Ljava/util/List;

    .line 13137
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$aw;->ai:I

    .line 13071
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$aw;->aJ()V

    .line 13072
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 13067
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$aw;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 13073
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 13103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$aw;->oC:Ljava/util/List;

    .line 13137
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$aw;->ai:I

    .line 13073
    return-void
.end method

.method public static JO()Lmobi/tikl/wire/control/a$aw;
    .registers 1

    .prologue
    .line 13077
    sget-object v0, Lmobi/tikl/wire/control/a$aw;->yn:Lmobi/tikl/wire/control/a$aw;

    return-object v0
.end method

.method public static JQ()Lmobi/tikl/wire/control/a$aw$a;
    .registers 1

    .prologue
    .line 13223
    invoke-static {}, Lmobi/tikl/wire/control/a$aw$a;->JY()Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$aw;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 13067
    iput-object p1, p0, Lmobi/tikl/wire/control/a$aw;->oC:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$aw;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 13067
    iput-object p1, p0, Lmobi/tikl/wire/control/a$aw;->oB:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$aw;Z)Z
    .registers 2

    .prologue
    .line 13067
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$aw;->oA:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 13114
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$aw;->oB:Lmobi/tikl/wire/control/a$G;

    .line 13115
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 13086
    invoke-static {}, Lmobi/tikl/wire/control/a;->la()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lmobi/tikl/wire/control/a$aw;)Lmobi/tikl/wire/control/a$aw$a;
    .registers 2

    .prologue
    .line 13226
    invoke-static {}, Lmobi/tikl/wire/control/a$aw;->JQ()Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$aw$a;->f(Lmobi/tikl/wire/control/a$aw;)Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$aw;)Ljava/util/List;
    .registers 2

    .prologue
    .line 13067
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw;->oC:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$aw;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 13067
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method


# virtual methods
.method public JP()Lmobi/tikl/wire/control/a$aw;
    .registers 2

    .prologue
    .line 13081
    sget-object v0, Lmobi/tikl/wire/control/a$aw;->yn:Lmobi/tikl/wire/control/a$aw;

    return-object v0
.end method

.method public JR()Lmobi/tikl/wire/control/a$aw$a;
    .registers 2

    .prologue
    .line 13224
    invoke-static {}, Lmobi/tikl/wire/control/a$aw;->JQ()Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    return-object v0
.end method

.method public JS()Lmobi/tikl/wire/control/a$aw$a;
    .registers 2

    .prologue
    .line 13228
    invoke-static {p0}, Lmobi/tikl/wire/control/a$aw;->c(Lmobi/tikl/wire/control/a$aw;)Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 5

    .prologue
    .line 13139
    iget v0, p0, Lmobi/tikl/wire/control/a$aw;->ai:I

    .line 13140
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 13153
    :goto_5
    return v0

    .line 13142
    :cond_6
    const/4 v0, 0x0

    .line 13143
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw;->od()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 13144
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 13147
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw;->of()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 13148
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 13150
    goto :goto_21

    .line 13151
    :cond_35
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 13152
    iput v0, p0, Lmobi/tikl/wire/control/a$aw;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 13127
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw;->a()I

    .line 13128
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw;->od()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 13129
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 13131
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw;->of()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 13132
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_19

    .line 13134
    :cond_2a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 13135
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 13067
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw;->JR()Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 13067
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw;->JP()Lmobi/tikl/wire/control/a$aw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 13067
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw;->JS()Lmobi/tikl/wire/control/a$aw$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 13091
    invoke-static {}, Lmobi/tikl/wire/control/a;->lb()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 13117
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$aw;->oA:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 13122
    :goto_6
    return v0

    .line 13118
    :cond_7
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    goto :goto_6

    .line 13119
    :cond_13
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aw;->of()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$G;

    .line 13120
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1b

    move v0, v1

    goto :goto_6

    .line 13122
    :cond_2f
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 13098
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$aw;->oA:Z

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 13099
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public of()Ljava/util/List;
    .registers 2

    .prologue
    .line 13106
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aw;->oC:Ljava/util/List;

    return-object v0
.end method
