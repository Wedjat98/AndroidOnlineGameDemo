.class public final Lcom/google/protobuf/f$n;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f$n$a;
    }
.end annotation


# static fields
.field private static final ct:Lcom/google/protobuf/f$n;


# instance fields
.field private Z:Z

.field private aa:Ljava/lang/String;

.field private ag:Z

.field private ai:I

.field private cu:Ljava/util/List;

.field private cv:Lcom/google/protobuf/f$o;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4350
    new-instance v0, Lcom/google/protobuf/f$n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/f$n;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/f$n;->ct:Lcom/google/protobuf/f$n;

    .line 4351
    invoke-static {}, Lcom/google/protobuf/f;->K()V

    .line 4352
    sget-object v0, Lcom/google/protobuf/f$n;->ct:Lcom/google/protobuf/f$n;

    invoke-direct {v0}, Lcom/google/protobuf/f$n;->aJ()V

    .line 4353
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3918
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 3945
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$n;->aa:Ljava/lang/String;

    .line 3951
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$n;->cu:Ljava/util/List;

    .line 3996
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$n;->ai:I

    .line 3919
    invoke-direct {p0}, Lcom/google/protobuf/f$n;->aJ()V

    .line 3920
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/g;)V
    .registers 2

    .prologue
    .line 3915
    invoke-direct {p0}, Lcom/google/protobuf/f$n;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 3921
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 3945
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/f$n;->aa:Ljava/lang/String;

    .line 3951
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$n;->cu:Ljava/util/List;

    .line 3996
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/f$n;->ai:I

    .line 3921
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/f$n;Lcom/google/protobuf/f$o;)Lcom/google/protobuf/f$o;
    .registers 2

    .prologue
    .line 3915
    iput-object p1, p0, Lcom/google/protobuf/f$n;->cv:Lcom/google/protobuf/f$o;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$n;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3915
    iput-object p1, p0, Lcom/google/protobuf/f$n;->aa:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$n;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 3915
    iput-object p1, p0, Lcom/google/protobuf/f$n;->cu:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/protobuf/f$n;Z)Z
    .registers 2

    .prologue
    .line 3915
    iput-boolean p1, p0, Lcom/google/protobuf/f$n;->Z:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 3969
    invoke-static {}, Lcom/google/protobuf/f$o;->fj()Lcom/google/protobuf/f$o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/f$n;->cv:Lcom/google/protobuf/f$o;

    .line 3970
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 3934
    invoke-static {}, Lcom/google/protobuf/f;->Z()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/protobuf/f$n;)Lcom/google/protobuf/f$n$a;
    .registers 2

    .prologue
    .line 4089
    invoke-static {}, Lcom/google/protobuf/f$n;->fa()Lcom/google/protobuf/f$n$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/f$n$a;->e(Lcom/google/protobuf/f$n;)Lcom/google/protobuf/f$n$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/protobuf/f$n;Z)Z
    .registers 2

    .prologue
    .line 3915
    iput-boolean p1, p0, Lcom/google/protobuf/f$n;->ag:Z

    return p1
.end method

.method static synthetic c(Lcom/google/protobuf/f$n;)Ljava/util/List;
    .registers 2

    .prologue
    .line 3915
    iget-object v0, p0, Lcom/google/protobuf/f$n;->cu:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/protobuf/f$n;)Lcom/google/protobuf/f$o;
    .registers 2

    .prologue
    .line 3915
    iget-object v0, p0, Lcom/google/protobuf/f$n;->cv:Lcom/google/protobuf/f$o;

    return-object v0
.end method

.method public static eV()Lcom/google/protobuf/f$n;
    .registers 1

    .prologue
    .line 3925
    sget-object v0, Lcom/google/protobuf/f$n;->ct:Lcom/google/protobuf/f$n;

    return-object v0
.end method

.method public static fa()Lcom/google/protobuf/f$n$a;
    .registers 1

    .prologue
    .line 4086
    invoke-static {}, Lcom/google/protobuf/f$n$a;->fi()Lcom/google/protobuf/f$n$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public T(I)Lcom/google/protobuf/f$l;
    .registers 3

    .prologue
    .line 3958
    iget-object v0, p0, Lcom/google/protobuf/f$n;->cu:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$l;

    return-object v0
.end method

.method public a()I
    .registers 5

    .prologue
    .line 3998
    iget v0, p0, Lcom/google/protobuf/f$n;->ai:I

    .line 3999
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 4016
    :goto_5
    return v0

    .line 4001
    :cond_6
    const/4 v0, 0x0

    .line 4002
    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->hasName()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4003
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4006
    :cond_18
    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->eX()Ljava/util/List;

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

    check-cast v0, Lcom/google/protobuf/f$l;

    .line 4007
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_21

    .line 4010
    :cond_35
    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->aH()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 4011
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->eZ()Lcom/google/protobuf/f$o;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v1, v0

    .line 4014
    :cond_45
    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 4015
    iput v0, p0, Lcom/google/protobuf/f$n;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 3983
    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->a()I

    .line 3984
    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->hasName()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3985
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 3987
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->eX()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$l;

    .line 3988
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    goto :goto_19

    .line 3990
    :cond_2a
    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->aH()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3991
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->eZ()Lcom/google/protobuf/f$o;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 3993
    :cond_38
    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 3994
    return-void
.end method

.method public aH()Z
    .registers 2

    .prologue
    .line 3965
    iget-boolean v0, p0, Lcom/google/protobuf/f$n;->ag:Z

    return v0
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 3915
    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->fb()Lcom/google/protobuf/f$n$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 3915
    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->eW()Lcom/google/protobuf/f$n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 3915
    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->fc()Lcom/google/protobuf/f$n$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 3939
    invoke-static {}, Lcom/google/protobuf/f;->aa()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public eW()Lcom/google/protobuf/f$n;
    .registers 2

    .prologue
    .line 3929
    sget-object v0, Lcom/google/protobuf/f$n;->ct:Lcom/google/protobuf/f$n;

    return-object v0
.end method

.method public eX()Ljava/util/List;
    .registers 2

    .prologue
    .line 3954
    iget-object v0, p0, Lcom/google/protobuf/f$n;->cu:Ljava/util/List;

    return-object v0
.end method

.method public eY()I
    .registers 2

    .prologue
    .line 3956
    iget-object v0, p0, Lcom/google/protobuf/f$n;->cu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public eZ()Lcom/google/protobuf/f$o;
    .registers 2

    .prologue
    .line 3966
    iget-object v0, p0, Lcom/google/protobuf/f$n;->cv:Lcom/google/protobuf/f$o;

    return-object v0
.end method

.method public fb()Lcom/google/protobuf/f$n$a;
    .registers 2

    .prologue
    .line 4087
    invoke-static {}, Lcom/google/protobuf/f$n;->fa()Lcom/google/protobuf/f$n$a;

    move-result-object v0

    return-object v0
.end method

.method public fc()Lcom/google/protobuf/f$n$a;
    .registers 2

    .prologue
    .line 4091
    invoke-static {p0}, Lcom/google/protobuf/f$n;->b(Lcom/google/protobuf/f$n;)Lcom/google/protobuf/f$n$a;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3947
    iget-object v0, p0, Lcom/google/protobuf/f$n;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 3946
    iget-boolean v0, p0, Lcom/google/protobuf/f$n;->Z:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3972
    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->eX()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f$l;

    .line 3973
    invoke-virtual {v0}, Lcom/google/protobuf/f$l;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 3978
    :goto_1c
    return v0

    .line 3975
    :cond_1d
    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->aH()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3976
    invoke-virtual {p0}, Lcom/google/protobuf/f$n;->eZ()Lcom/google/protobuf/f$o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/f$o;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2f

    move v0, v1

    goto :goto_1c

    .line 3978
    :cond_2f
    const/4 v0, 0x1

    goto :goto_1c
.end method
