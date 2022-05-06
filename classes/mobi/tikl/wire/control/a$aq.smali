.class public final Lmobi/tikl/wire/control/a$aq;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "aq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$aq$a;
    }
.end annotation


# static fields
.field private static final vV:Lmobi/tikl/wire/control/a$aq;


# instance fields
.field private ai:I

.field private vW:Ljava/util/List;

.field private vX:Z

.field private vY:Lmobi/tikl/wire/control/a$H;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23229
    new-instance v0, Lmobi/tikl/wire/control/a$aq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$aq;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$aq;->vV:Lmobi/tikl/wire/control/a$aq;

    .line 23230
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 23231
    sget-object v0, Lmobi/tikl/wire/control/a$aq;->vV:Lmobi/tikl/wire/control/a$aq;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$aq;->aJ()V

    .line 23232
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 22839
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 22865
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$aq;->vW:Ljava/util/List;

    .line 22907
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$aq;->ai:I

    .line 22840
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$aq;->aJ()V

    .line 22841
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 22836
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$aq;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 22842
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 22865
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$aq;->vW:Ljava/util/List;

    .line 22907
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$aq;->ai:I

    .line 22842
    return-void
.end method

.method public static GA()Lmobi/tikl/wire/control/a$aq$a;
    .registers 1

    .prologue
    .line 22993
    invoke-static {}, Lmobi/tikl/wire/control/a$aq$a;->GI()Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    return-object v0
.end method

.method public static Gu()Lmobi/tikl/wire/control/a$aq;
    .registers 1

    .prologue
    .line 22846
    sget-object v0, Lmobi/tikl/wire/control/a$aq;->vV:Lmobi/tikl/wire/control/a$aq;

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$aq;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 22836
    iput-object p1, p0, Lmobi/tikl/wire/control/a$aq;->vW:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$aq;Lmobi/tikl/wire/control/a$H;)Lmobi/tikl/wire/control/a$H;
    .registers 2

    .prologue
    .line 22836
    iput-object p1, p0, Lmobi/tikl/wire/control/a$aq;->vY:Lmobi/tikl/wire/control/a$H;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$aq;Z)Z
    .registers 2

    .prologue
    .line 22836
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$aq;->vX:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 22883
    invoke-static {}, Lmobi/tikl/wire/control/a$H;->vO()Lmobi/tikl/wire/control/a$H;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$aq;->vY:Lmobi/tikl/wire/control/a$H;

    .line 22884
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 22855
    invoke-static {}, Lmobi/tikl/wire/control/a;->ma()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$aq$a;
    .registers 2

    .prologue
    .line 22996
    invoke-static {}, Lmobi/tikl/wire/control/a$aq;->GA()Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$aq$a;->g(Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$aq;)Ljava/util/List;
    .registers 2

    .prologue
    .line 22836
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq;->vW:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$H;
    .registers 2

    .prologue
    .line 22836
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq;->vY:Lmobi/tikl/wire/control/a$H;

    return-object v0
.end method


# virtual methods
.method public GB()Lmobi/tikl/wire/control/a$aq$a;
    .registers 2

    .prologue
    .line 22994
    invoke-static {}, Lmobi/tikl/wire/control/a$aq;->GA()Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    return-object v0
.end method

.method public GC()Lmobi/tikl/wire/control/a$aq$a;
    .registers 2

    .prologue
    .line 22998
    invoke-static {p0}, Lmobi/tikl/wire/control/a$aq;->d(Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    return-object v0
.end method

.method public Gv()Lmobi/tikl/wire/control/a$aq;
    .registers 2

    .prologue
    .line 22850
    sget-object v0, Lmobi/tikl/wire/control/a$aq;->vV:Lmobi/tikl/wire/control/a$aq;

    return-object v0
.end method

.method public Gw()Ljava/util/List;
    .registers 2

    .prologue
    .line 22868
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq;->vW:Ljava/util/List;

    return-object v0
.end method

.method public Gx()I
    .registers 2

    .prologue
    .line 22870
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq;->vW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public Gy()Z
    .registers 2

    .prologue
    .line 22879
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$aq;->vX:Z

    return v0
.end method

.method public Gz()Lmobi/tikl/wire/control/a$H;
    .registers 2

    .prologue
    .line 22880
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aq;->vY:Lmobi/tikl/wire/control/a$H;

    return-object v0
.end method

.method public a()I
    .registers 5

    .prologue
    .line 22909
    iget v0, p0, Lmobi/tikl/wire/control/a$aq;->ai:I

    .line 22910
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 22923
    :goto_5
    return v0

    .line 22912
    :cond_6
    const/4 v0, 0x0

    .line 22913
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq;->Gw()Ljava/util/List;

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

    check-cast v0, Lmobi/tikl/wire/control/a$an;

    .line 22914
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 22916
    goto :goto_10

    .line 22917
    :cond_24
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq;->Gy()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 22918
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq;->Gz()Lmobi/tikl/wire/control/a$H;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v1, v0

    .line 22921
    :cond_34
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 22922
    iput v0, p0, Lmobi/tikl/wire/control/a$aq;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 22897
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq;->a()I

    .line 22898
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq;->Gw()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$an;

    .line 22899
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_b

    .line 22901
    :cond_1c
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq;->Gy()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 22902
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq;->Gz()Lmobi/tikl/wire/control/a$H;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 22904
    :cond_2a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 22905
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 22836
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq;->GB()Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 22836
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq;->Gv()Lmobi/tikl/wire/control/a$aq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 22836
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq;->GC()Lmobi/tikl/wire/control/a$aq$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 22860
    invoke-static {}, Lmobi/tikl/wire/control/a;->mb()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 22886
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq;->Gw()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$an;

    .line 22887
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$an;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 22892
    :goto_1c
    return v0

    .line 22889
    :cond_1d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq;->Gy()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 22890
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aq;->Gz()Lmobi/tikl/wire/control/a$H;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$H;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2f

    move v0, v1

    goto :goto_1c

    .line 22892
    :cond_2f
    const/4 v0, 0x1

    goto :goto_1c
.end method
