.class public final Lcom/google/protobuf/f$e;
.super Lcom/google/protobuf/q$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$e$a;
    }
.end annotation


# static fields
.field private static final aC:Lcom/google/protobuf/f$e;


# instance fields
.field private ai:I

.field private av:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 7172
    new-instance v0, Lcom/google/protobuf/f$e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$e;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$e;->aC:Lcom/google/protobuf/f$e;

    .line 7173
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 7174
    sget-object v0, Lcom/google/protobuf/f$e;->aC:Lcom/google/protobuf/f$e;

    .line 7175
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 6842
    invoke-direct {p0}, Lcom/google/protobuf/q$c;-><init>()V

    .line 6868
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$e;->av:Ljava/util/List;

    .line 6900
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$e;->ai:I

    .line 6843
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 6838
    invoke-direct {p0}, Lcom/google/protobuf/f$e;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 6845
    invoke-direct {p0}, Lcom/google/protobuf/q$c;-><init>()V

    .line 6868
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$e;->av:Ljava/util/List;

    .line 6900
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$e;->ai:I

    .line 6845
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/f$e;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 6838
    iput-object p1, p0, Lcom/google/protobuf/f$e;->av:Ljava/util/List;

    return-object p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 6858
    invoke-static {}, Lcom/google/protobuf/f;->al()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/google/protobuf/f$e;)Lcom/google/protobuf/f$e$a;
    .registers 2

    .prologue
    .line 6986
    invoke-static {}, Lcom/google/protobuf/f$e;->ce()Lcom/google/protobuf/f$e$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$e$a;->e(Lcom/google/protobuf/f$e;)Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method

.method public static cc()Lcom/google/protobuf/f$e;
    .registers 1

    .prologue
    .line 6849
    sget-object v0, Lcom/google/protobuf/f$e;->aC:Lcom/google/protobuf/f$e;

    return-object v0
.end method

.method public static ce()Lcom/google/protobuf/f$e$a;
    .registers 1

    .prologue
    .line 6983
    invoke-static {}, Lcom/google/protobuf/f$e$a;->cm()Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/protobuf/f$e;)Ljava/util/List;
    .registers 2

    .prologue
    .line 6838
    iget-object v0, p0, Lcom/google/protobuf/f$e;->av:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 6902
    iget v0, p0, Lcom/google/protobuf/f$e;->ai:I

    .line 6903
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 6913
    :goto_5
    return v0

    .line 6905
    :cond_6
    const/4 v0, 0x0

    .line 6906
    invoke-virtual {p0}, Lcom/google/protobuf/f$e;->bD()Ljava/util/List;

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

    .line 6907
    const/16 v3, 0x3e7

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_10

    .line 6910
    :cond_25
    invoke-virtual {p0}, Lcom/google/protobuf/f$e;->gV()I

    move-result v0

    add-int/2addr v0, v1

    .line 6911
    invoke-virtual {p0}, Lcom/google/protobuf/f$e;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 6912
    iput v0, p0, Lcom/google/protobuf/f$e;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 6

    .prologue
    .line 6890
    invoke-virtual {p0}, Lcom/google/protobuf/f$e;->a()I

    .line 6892
    invoke-virtual {p0}, Lcom/google/protobuf/f$e;->gU()Lcom/google/protobuf/q$c$a;

    move-result-object v1

    .line 6893
    invoke-virtual {p0}, Lcom/google/protobuf/f$e;->bD()Ljava/util/List;

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

    .line 6894
    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_f

    .line 6896
    :cond_21
    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/q$c$a;->a(ILcom/google/protobuf/e;)V

    .line 6897
    invoke-virtual {p0}, Lcom/google/protobuf/f$e;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 6898
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 6838
    invoke-virtual {p0}, Lcom/google/protobuf/f$e;->cf()Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 6838
    invoke-virtual {p0}, Lcom/google/protobuf/f$e;->cd()Lcom/google/protobuf/f$e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 6838
    invoke-virtual {p0}, Lcom/google/protobuf/f$e;->cg()Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 6863
    invoke-static {}, Lcom/google/protobuf/f;->am()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public bD()Ljava/util/List;
    .registers 2

    .prologue
    .line 6871
    iget-object v0, p0, Lcom/google/protobuf/f$e;->av:Ljava/util/List;

    return-object v0
.end method

.method public cd()Lcom/google/protobuf/f$e;
    .registers 2

    .prologue
    .line 6853
    sget-object v0, Lcom/google/protobuf/f$e;->aC:Lcom/google/protobuf/f$e;

    return-object v0
.end method

.method public cf()Lcom/google/protobuf/f$e$a;
    .registers 2

    .prologue
    .line 6984
    invoke-static {}, Lcom/google/protobuf/f$e;->ce()Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method

.method public cg()Lcom/google/protobuf/f$e$a;
    .registers 2

    .prologue
    .line 6988
    invoke-static {p0}, Lcom/google/protobuf/f$e;->c(Lcom/google/protobuf/f$e;)Lcom/google/protobuf/f$e$a;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 6881
    invoke-virtual {p0}, Lcom/google/protobuf/f$e;->bD()Ljava/util/List;

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

    .line 6882
    invoke-virtual {v0}, Lcom/google/protobuf/f$p;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 6885
    :goto_1c
    return v0

    .line 6884
    :cond_1d
    invoke-virtual {p0}, Lcom/google/protobuf/f$e;->gT()Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v1

    goto :goto_1c

    .line 6885
    :cond_25
    const/4 v0, 0x1

    goto :goto_1c
.end method
