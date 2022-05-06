.class public final Lmobi/tikl/wire/control/a$e;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$e$a;
    }
.end annotation


# static fields
.field private static final pq:Lmobi/tikl/wire/control/a$e;


# instance fields
.field private ai:I

.field private oA:Z

.field private oB:Lmobi/tikl/wire/control/a$G;

.field private oy:Z

.field private oz:I

.field private pr:Z

.field private ps:Lmobi/tikl/wire/control/a$G;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14230
    new-instance v0, Lmobi/tikl/wire/control/a$e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$e;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$e;->pq:Lmobi/tikl/wire/control/a$e;

    .line 14231
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 14232
    sget-object v0, Lmobi/tikl/wire/control/a$e;->pq:Lmobi/tikl/wire/control/a$e;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$e;->aJ()V

    .line 14233
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13824
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 13851
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$e;->oz:I

    .line 13897
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$e;->ai:I

    .line 13825
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$e;->aJ()V

    .line 13826
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 13821
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$e;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 13827
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 13851
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$e;->oz:I

    .line 13897
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$e;->ai:I

    .line 13827
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$e;I)I
    .registers 2

    .prologue
    .line 13821
    iput p1, p0, Lmobi/tikl/wire/control/a$e;->oz:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$e;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 13821
    iput-object p1, p0, Lmobi/tikl/wire/control/a$e;->oB:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$e;Z)Z
    .registers 2

    .prologue
    .line 13821
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$e;->oy:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 13870
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$e;->oB:Lmobi/tikl/wire/control/a$G;

    .line 13871
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$e;->ps:Lmobi/tikl/wire/control/a$G;

    .line 13872
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 13840
    invoke-static {}, Lmobi/tikl/wire/control/a;->le()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$e;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 13821
    iput-object p1, p0, Lmobi/tikl/wire/control/a$e;->ps:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$e;Z)Z
    .registers 2

    .prologue
    .line 13821
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$e;->oA:Z

    return p1
.end method

.method public static c(Lmobi/tikl/wire/control/a$e;)Lmobi/tikl/wire/control/a$e$a;
    .registers 2

    .prologue
    .line 13990
    invoke-static {}, Lmobi/tikl/wire/control/a$e;->oZ()Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$e$a;->f(Lmobi/tikl/wire/control/a$e;)Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$e;Z)Z
    .registers 2

    .prologue
    .line 13821
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$e;->pr:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$e;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 13821
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$e;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 13821
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e;->ps:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public static oV()Lmobi/tikl/wire/control/a$e;
    .registers 1

    .prologue
    .line 13831
    sget-object v0, Lmobi/tikl/wire/control/a$e;->pq:Lmobi/tikl/wire/control/a$e;

    return-object v0
.end method

.method public static oZ()Lmobi/tikl/wire/control/a$e$a;
    .registers 1

    .prologue
    .line 13987
    invoke-static {}, Lmobi/tikl/wire/control/a$e$a;->ph()Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 13899
    iget v0, p0, Lmobi/tikl/wire/control/a$e;->ai:I

    .line 13900
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 13917
    :goto_5
    return v0

    .line 13902
    :cond_6
    const/4 v0, 0x0

    .line 13903
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->oc()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 13904
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->getMsgId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 13907
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->od()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 13908
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13911
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->oX()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 13912
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->oY()Lmobi/tikl/wire/control/a$G;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13915
    :cond_38
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 13916
    iput v0, p0, Lmobi/tikl/wire/control/a$e;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 13884
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->a()I

    .line 13885
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->oc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 13886
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->getMsgId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 13888
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->od()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 13889
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 13891
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->oX()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 13892
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->oY()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 13894
    :cond_2d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 13895
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 13821
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->pa()Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 13821
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->oW()Lmobi/tikl/wire/control/a$e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 13821
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->pb()Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 13845
    invoke-static {}, Lmobi/tikl/wire/control/a;->lf()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 13853
    iget v0, p0, Lmobi/tikl/wire/control/a$e;->oz:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 13874
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$e;->oy:Z

    if-nez v1, :cond_6

    .line 13879
    :cond_5
    :goto_5
    return v0

    .line 13875
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$e;->oA:Z

    if-eqz v1, :cond_5

    .line 13876
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$e;->pr:Z

    if-eqz v1, :cond_5

    .line 13877
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->oe()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13878
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$e;->oY()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13879
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public oW()Lmobi/tikl/wire/control/a$e;
    .registers 2

    .prologue
    .line 13835
    sget-object v0, Lmobi/tikl/wire/control/a$e;->pq:Lmobi/tikl/wire/control/a$e;

    return-object v0
.end method

.method public oX()Z
    .registers 2

    .prologue
    .line 13866
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$e;->pr:Z

    return v0
.end method

.method public oY()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 13867
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e;->ps:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public oc()Z
    .registers 2

    .prologue
    .line 13852
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$e;->oy:Z

    return v0
.end method

.method public od()Z
    .registers 2

    .prologue
    .line 13859
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$e;->oA:Z

    return v0
.end method

.method public oe()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 13860
    iget-object v0, p0, Lmobi/tikl/wire/control/a$e;->oB:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public pa()Lmobi/tikl/wire/control/a$e$a;
    .registers 2

    .prologue
    .line 13988
    invoke-static {}, Lmobi/tikl/wire/control/a$e;->oZ()Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public pb()Lmobi/tikl/wire/control/a$e$a;
    .registers 2

    .prologue
    .line 13992
    invoke-static {p0}, Lmobi/tikl/wire/control/a$e;->c(Lmobi/tikl/wire/control/a$e;)Lmobi/tikl/wire/control/a$e$a;

    move-result-object v0

    return-object v0
.end method
