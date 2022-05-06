.class public final Lmobi/tikl/wire/control/a$g;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$g$a;
    }
.end annotation


# static fields
.field private static final pw:Lmobi/tikl/wire/control/a$g;


# instance fields
.field private ai:I

.field private oD:Z

.field private oE:Ljava/lang/String;

.field private oF:Z

.field private oG:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30221
    new-instance v0, Lmobi/tikl/wire/control/a$g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$g;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$g;->pw:Lmobi/tikl/wire/control/a$g;

    .line 30222
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 30223
    sget-object v0, Lmobi/tikl/wire/control/a$g;->pw:Lmobi/tikl/wire/control/a$g;

    .line 30224
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 29905
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 29932
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$g;->oG:I

    .line 29939
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$g;->oE:Ljava/lang/String;

    .line 29962
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$g;->ai:I

    .line 29906
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 29902
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$g;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 29908
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 29932
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$g;->oG:I

    .line 29939
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$g;->oE:Ljava/lang/String;

    .line 29962
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$g;->ai:I

    .line 29908
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$g;I)I
    .registers 2

    .prologue
    .line 29902
    iput p1, p0, Lmobi/tikl/wire/control/a$g;->oG:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$g;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 29902
    iput-object p1, p0, Lmobi/tikl/wire/control/a$g;->oE:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$g;)Lmobi/tikl/wire/control/a$g$a;
    .registers 2

    .prologue
    .line 30051
    invoke-static {}, Lmobi/tikl/wire/control/a$g;->pv()Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$g$a;->b(Lmobi/tikl/wire/control/a$g;)Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$g;Z)Z
    .registers 2

    .prologue
    .line 29902
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$g;->oF:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 29921
    invoke-static {}, Lmobi/tikl/wire/control/a;->mG()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$g;Z)Z
    .registers 2

    .prologue
    .line 29902
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$g;->oD:Z

    return p1
.end method

.method public static pt()Lmobi/tikl/wire/control/a$g;
    .registers 1

    .prologue
    .line 29912
    sget-object v0, Lmobi/tikl/wire/control/a$g;->pw:Lmobi/tikl/wire/control/a$g;

    return-object v0
.end method

.method public static pv()Lmobi/tikl/wire/control/a$g$a;
    .registers 1

    .prologue
    .line 30048
    invoke-static {}, Lmobi/tikl/wire/control/a$g$a;->pD()Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 29964
    iget v0, p0, Lmobi/tikl/wire/control/a$g;->ai:I

    .line 29965
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 29978
    :goto_5
    return v0

    .line 29967
    :cond_6
    const/4 v0, 0x0

    .line 29968
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g;->oi()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 29969
    const/4 v0, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g;->jr()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 29972
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g;->oh()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 29973
    const/4 v1, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29976
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 29977
    iput v0, p0, Lmobi/tikl/wire/control/a$g;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 29952
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g;->a()I

    .line 29953
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g;->oi()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 29954
    const/4 v0, 0x4

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g;->jr()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 29956
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g;->oh()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 29957
    const/4 v0, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 29959
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 29960
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 29902
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g;->pw()Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 29902
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g;->pu()Lmobi/tikl/wire/control/a$g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 29902
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$g;->px()Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 29926
    invoke-static {}, Lmobi/tikl/wire/control/a;->mH()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29941
    iget-object v0, p0, Lmobi/tikl/wire/control/a$g;->oE:Ljava/lang/String;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 29946
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$g;->oF:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 29947
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public jr()I
    .registers 2

    .prologue
    .line 29934
    iget v0, p0, Lmobi/tikl/wire/control/a$g;->oG:I

    return v0
.end method

.method public oh()Z
    .registers 2

    .prologue
    .line 29940
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$g;->oD:Z

    return v0
.end method

.method public oi()Z
    .registers 2

    .prologue
    .line 29933
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$g;->oF:Z

    return v0
.end method

.method public pu()Lmobi/tikl/wire/control/a$g;
    .registers 2

    .prologue
    .line 29916
    sget-object v0, Lmobi/tikl/wire/control/a$g;->pw:Lmobi/tikl/wire/control/a$g;

    return-object v0
.end method

.method public pw()Lmobi/tikl/wire/control/a$g$a;
    .registers 2

    .prologue
    .line 30049
    invoke-static {}, Lmobi/tikl/wire/control/a$g;->pv()Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public px()Lmobi/tikl/wire/control/a$g$a;
    .registers 2

    .prologue
    .line 30053
    invoke-static {p0}, Lmobi/tikl/wire/control/a$g;->a(Lmobi/tikl/wire/control/a$g;)Lmobi/tikl/wire/control/a$g$a;

    move-result-object v0

    return-object v0
.end method
