.class public final Lcom/google/protobuf/f$p$b;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$p$b$a;
    }
.end annotation


# static fields
.field private static final cM:Lcom/google/protobuf/f$p$b;


# instance fields
.field private ai:I

.field private cN:Z

.field private cO:Ljava/lang/String;

.field private cP:Z

.field private cQ:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8211
    new-instance v0, Lcom/google/protobuf/f$p$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$p$b;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$p$b;->cM:Lcom/google/protobuf/f$p$b;

    .line 8212
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 8213
    sget-object v0, Lcom/google/protobuf/f$p$b;->cM:Lcom/google/protobuf/f$p$b;

    .line 8214
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 7894
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 7921
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$p$b;->cO:Ljava/lang/String;

    .line 7928
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/f$p$b;->cQ:Z

    .line 7952
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$p$b;->ai:I

    .line 7895
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 7891
    invoke-direct {p0}, Lcom/google/protobuf/f$p$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 7897
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 7921
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$p$b;->cO:Ljava/lang/String;

    .line 7928
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/f$p$b;->cQ:Z

    .line 7952
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$p$b;->ai:I

    .line 7897
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/f$p$b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 7891
    iput-object p1, p0, Lcom/google/protobuf/f$p$b;->cO:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$p$b;Z)Z
    .registers 2

    .prologue
    .line 7891
    iput-boolean p1, p0, Lcom/google/protobuf/f$p$b;->cN:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 7910
    invoke-static {}, Lcom/google/protobuf/f;->at()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/protobuf/f$p$b;)Lcom/google/protobuf/f$p$b$a;
    .registers 2

    .prologue
    .line 8041
    invoke-static {}, Lcom/google/protobuf/f$p$b;->fV()Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$p$b$a;->c(Lcom/google/protobuf/f$p$b;)Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$p$b;Z)Z
    .registers 2

    .prologue
    .line 7891
    iput-boolean p1, p0, Lcom/google/protobuf/f$p$b;->cP:Z

    return p1
.end method

.method static synthetic c(Lcom/google/protobuf/f$p$b;Z)Z
    .registers 2

    .prologue
    .line 7891
    iput-boolean p1, p0, Lcom/google/protobuf/f$p$b;->cQ:Z

    return p1
.end method

.method public static fP()Lcom/google/protobuf/f$p$b;
    .registers 1

    .prologue
    .line 7901
    sget-object v0, Lcom/google/protobuf/f$p$b;->cM:Lcom/google/protobuf/f$p$b;

    return-object v0
.end method

.method public static fV()Lcom/google/protobuf/f$p$b$a;
    .registers 1

    .prologue
    .line 8038
    invoke-static {}, Lcom/google/protobuf/f$p$b$a;->gd()Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 7954
    iget v0, p0, Lcom/google/protobuf/f$p$b;->ai:I

    .line 7955
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 7968
    :goto_5
    return v0

    .line 7957
    :cond_6
    const/4 v0, 0x0

    .line 7958
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b;->fR()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 7959
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b;->fS()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 7962
    :cond_18
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b;->fT()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 7963
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b;->fU()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7966
    :cond_28
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 7967
    iput v0, p0, Lcom/google/protobuf/f$p$b;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 7942
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b;->a()I

    .line 7943
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b;->fR()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7944
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b;->fS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 7946
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b;->fT()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 7947
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b;->fU()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 7949
    :cond_1f
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 7950
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 7891
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b;->fW()Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 7891
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b;->fQ()Lcom/google/protobuf/f$p$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 7891
    invoke-virtual {p0}, Lcom/google/protobuf/f$p$b;->fX()Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 7915
    invoke-static {}, Lcom/google/protobuf/f;->au()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public fQ()Lcom/google/protobuf/f$p$b;
    .registers 2

    .prologue
    .line 7905
    sget-object v0, Lcom/google/protobuf/f$p$b;->cM:Lcom/google/protobuf/f$p$b;

    return-object v0
.end method

.method public fR()Z
    .registers 2

    .prologue
    .line 7922
    iget-boolean v0, p0, Lcom/google/protobuf/f$p$b;->cN:Z

    return v0
.end method

.method public fS()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7923
    iget-object v0, p0, Lcom/google/protobuf/f$p$b;->cO:Ljava/lang/String;

    return-object v0
.end method

.method public fT()Z
    .registers 2

    .prologue
    .line 7929
    iget-boolean v0, p0, Lcom/google/protobuf/f$p$b;->cP:Z

    return v0
.end method

.method public fU()Z
    .registers 2

    .prologue
    .line 7930
    iget-boolean v0, p0, Lcom/google/protobuf/f$p$b;->cQ:Z

    return v0
.end method

.method public fW()Lcom/google/protobuf/f$p$b$a;
    .registers 2

    .prologue
    .line 8039
    invoke-static {}, Lcom/google/protobuf/f$p$b;->fV()Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    return-object v0
.end method

.method public fX()Lcom/google/protobuf/f$p$b$a;
    .registers 2

    .prologue
    .line 8043
    invoke-static {p0}, Lcom/google/protobuf/f$p$b;->b(Lcom/google/protobuf/f$p$b;)Lcom/google/protobuf/f$p$b$a;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 7935
    iget-boolean v1, p0, Lcom/google/protobuf/f$p$b;->cN:Z

    if-nez v1, :cond_6

    .line 7937
    :cond_5
    :goto_5
    return v0

    .line 7936
    :cond_6
    iget-boolean v1, p0, Lcom/google/protobuf/f$p$b;->cP:Z

    if-eqz v1, :cond_5

    .line 7937
    const/4 v0, 0x1

    goto :goto_5
.end method
