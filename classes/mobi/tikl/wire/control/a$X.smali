.class public final Lmobi/tikl/wire/control/a$X;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "X"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$X$a;
    }
.end annotation


# static fields
.field private static final tb:Lmobi/tikl/wire/control/a$X;


# instance fields
.field private ai:I

.field private sS:Z

.field private sT:Lmobi/tikl/wire/control/a$G;

.field private tc:Z

.field private td:Ljava/lang/String;

.field private te:Z

.field private tf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16296
    new-instance v0, Lmobi/tikl/wire/control/a$X;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$X;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$X;->tb:Lmobi/tikl/wire/control/a$X;

    .line 16297
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 16298
    sget-object v0, Lmobi/tikl/wire/control/a$X;->tb:Lmobi/tikl/wire/control/a$X;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$X;->aJ()V

    .line 16299
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15912
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 15946
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$X;->td:Ljava/lang/String;

    .line 15953
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$X;->tf:Ljava/lang/String;

    .line 15981
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$X;->ai:I

    .line 15913
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$X;->aJ()V

    .line 15914
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 15909
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$X;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 15915
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 15946
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$X;->td:Ljava/lang/String;

    .line 15953
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$X;->tf:Ljava/lang/String;

    .line 15981
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$X;->ai:I

    .line 15915
    return-void
.end method

.method public static Ao()Lmobi/tikl/wire/control/a$X;
    .registers 1

    .prologue
    .line 15919
    sget-object v0, Lmobi/tikl/wire/control/a$X;->tb:Lmobi/tikl/wire/control/a$X;

    return-object v0
.end method

.method public static Au()Lmobi/tikl/wire/control/a$X$a;
    .registers 1

    .prologue
    .line 16071
    invoke-static {}, Lmobi/tikl/wire/control/a$X$a;->AC()Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$X;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 15909
    iput-object p1, p0, Lmobi/tikl/wire/control/a$X;->td:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$X;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 15909
    iput-object p1, p0, Lmobi/tikl/wire/control/a$X;->sT:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$X;)Lmobi/tikl/wire/control/a$X$a;
    .registers 2

    .prologue
    .line 16074
    invoke-static {}, Lmobi/tikl/wire/control/a$X;->Au()Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$X$a;->c(Lmobi/tikl/wire/control/a$X;)Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$X;Z)Z
    .registers 2

    .prologue
    .line 15909
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$X;->sS:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 15958
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$X;->sT:Lmobi/tikl/wire/control/a$G;

    .line 15959
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 15928
    invoke-static {}, Lmobi/tikl/wire/control/a;->lq()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$X;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 15909
    iput-object p1, p0, Lmobi/tikl/wire/control/a$X;->tf:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$X;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 15909
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X;->sT:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$X;Z)Z
    .registers 2

    .prologue
    .line 15909
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$X;->tc:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$X;Z)Z
    .registers 2

    .prologue
    .line 15909
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$X;->te:Z

    return p1
.end method


# virtual methods
.method public Ap()Lmobi/tikl/wire/control/a$X;
    .registers 2

    .prologue
    .line 15923
    sget-object v0, Lmobi/tikl/wire/control/a$X;->tb:Lmobi/tikl/wire/control/a$X;

    return-object v0
.end method

.method public Aq()Z
    .registers 2

    .prologue
    .line 15947
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$X;->tc:Z

    return v0
.end method

.method public Ar()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15948
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X;->td:Ljava/lang/String;

    return-object v0
.end method

.method public As()Z
    .registers 2

    .prologue
    .line 15954
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$X;->te:Z

    return v0
.end method

.method public At()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15955
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X;->tf:Ljava/lang/String;

    return-object v0
.end method

.method public Av()Lmobi/tikl/wire/control/a$X$a;
    .registers 2

    .prologue
    .line 16072
    invoke-static {}, Lmobi/tikl/wire/control/a$X;->Au()Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    return-object v0
.end method

.method public Aw()Lmobi/tikl/wire/control/a$X$a;
    .registers 2

    .prologue
    .line 16076
    invoke-static {p0}, Lmobi/tikl/wire/control/a$X;->a(Lmobi/tikl/wire/control/a$X;)Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 4

    .prologue
    .line 15983
    iget v0, p0, Lmobi/tikl/wire/control/a$X;->ai:I

    .line 15984
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 16001
    :goto_5
    return v0

    .line 15986
    :cond_6
    const/4 v0, 0x0

    .line 15987
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->zF()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 15988
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 15991
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->Aq()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 15992
    const/16 v1, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->Ar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15995
    :cond_29
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->As()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 15996
    const/16 v1, 0xb

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->At()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15999
    :cond_3a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 16000
    iput v0, p0, Lmobi/tikl/wire/control/a$X;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 15968
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->a()I

    .line 15969
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->zF()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 15970
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 15972
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->Aq()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 15973
    const/16 v0, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->Ar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 15975
    :cond_20
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->As()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 15976
    const/16 v0, 0xb

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->At()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 15978
    :cond_2f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 15979
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 15909
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->Av()Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 15909
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->Ap()Lmobi/tikl/wire/control/a$X;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 15909
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->Aw()Lmobi/tikl/wire/control/a$X$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 15933
    invoke-static {}, Lmobi/tikl/wire/control/a;->lr()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 15961
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$X;->sS:Z

    if-nez v1, :cond_6

    .line 15963
    :cond_5
    :goto_5
    return v0

    .line 15962
    :cond_6
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$X;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15963
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public zF()Z
    .registers 2

    .prologue
    .line 15940
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$X;->sS:Z

    return v0
.end method

.method public zG()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 15941
    iget-object v0, p0, Lmobi/tikl/wire/control/a$X;->sT:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method
