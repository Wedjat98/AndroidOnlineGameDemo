.class public final Lmobi/tikl/wire/control/a$R;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "R"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$R$a;
    }
.end annotation


# static fields
.field private static final sD:Lmobi/tikl/wire/control/a$R;


# instance fields
.field private ai:I

.field private sE:Z

.field private sF:Z

.field private sG:Z

.field private sH:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22166
    new-instance v0, Lmobi/tikl/wire/control/a$R;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$R;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$R;->sD:Lmobi/tikl/wire/control/a$R;

    .line 22167
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 22168
    sget-object v0, Lmobi/tikl/wire/control/a$R;->sD:Lmobi/tikl/wire/control/a$R;

    .line 22169
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 21853
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 21880
    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$R;->sF:Z

    .line 21887
    iput v0, p0, Lmobi/tikl/wire/control/a$R;->sH:I

    .line 21910
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$R;->ai:I

    .line 21854
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 21850
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$R;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 21856
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 21880
    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$R;->sF:Z

    .line 21887
    iput v0, p0, Lmobi/tikl/wire/control/a$R;->sH:I

    .line 21910
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$R;->ai:I

    .line 21856
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$R;I)I
    .registers 2

    .prologue
    .line 21850
    iput p1, p0, Lmobi/tikl/wire/control/a$R;->sH:I

    return p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$R$a;
    .registers 2

    .prologue
    .line 21999
    invoke-static {}, Lmobi/tikl/wire/control/a$R;->yU()Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$R$a;->b(Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$R;Z)Z
    .registers 2

    .prologue
    .line 21850
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$R;->sE:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 21869
    invoke-static {}, Lmobi/tikl/wire/control/a;->lU()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$R;Z)Z
    .registers 2

    .prologue
    .line 21850
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$R;->sF:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$R;Z)Z
    .registers 2

    .prologue
    .line 21850
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$R;->sG:Z

    return p1
.end method

.method public static yO()Lmobi/tikl/wire/control/a$R;
    .registers 1

    .prologue
    .line 21860
    sget-object v0, Lmobi/tikl/wire/control/a$R;->sD:Lmobi/tikl/wire/control/a$R;

    return-object v0
.end method

.method public static yU()Lmobi/tikl/wire/control/a$R$a;
    .registers 1

    .prologue
    .line 21996
    invoke-static {}, Lmobi/tikl/wire/control/a$R$a;->zc()Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 21912
    iget v0, p0, Lmobi/tikl/wire/control/a$R;->ai:I

    .line 21913
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 21926
    :goto_5
    return v0

    .line 21915
    :cond_6
    const/4 v0, 0x0

    .line 21916
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R;->yQ()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 21917
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R;->yR()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 21920
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R;->yS()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 21921
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R;->yT()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21924
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 21925
    iput v0, p0, Lmobi/tikl/wire/control/a$R;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 21900
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R;->a()I

    .line 21901
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R;->yQ()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 21902
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R;->yR()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 21904
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R;->yS()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 21905
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R;->yT()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 21907
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 21908
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 21850
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R;->yV()Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 21850
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R;->yP()Lmobi/tikl/wire/control/a$R;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 21850
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$R;->yW()Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 21874
    invoke-static {}, Lmobi/tikl/wire/control/a;->lV()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 21894
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$R;->sE:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 21895
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public yP()Lmobi/tikl/wire/control/a$R;
    .registers 2

    .prologue
    .line 21864
    sget-object v0, Lmobi/tikl/wire/control/a$R;->sD:Lmobi/tikl/wire/control/a$R;

    return-object v0
.end method

.method public yQ()Z
    .registers 2

    .prologue
    .line 21881
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$R;->sE:Z

    return v0
.end method

.method public yR()Z
    .registers 2

    .prologue
    .line 21882
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$R;->sF:Z

    return v0
.end method

.method public yS()Z
    .registers 2

    .prologue
    .line 21888
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$R;->sG:Z

    return v0
.end method

.method public yT()I
    .registers 2

    .prologue
    .line 21889
    iget v0, p0, Lmobi/tikl/wire/control/a$R;->sH:I

    return v0
.end method

.method public yV()Lmobi/tikl/wire/control/a$R$a;
    .registers 2

    .prologue
    .line 21997
    invoke-static {}, Lmobi/tikl/wire/control/a$R;->yU()Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    return-object v0
.end method

.method public yW()Lmobi/tikl/wire/control/a$R$a;
    .registers 2

    .prologue
    .line 22001
    invoke-static {p0}, Lmobi/tikl/wire/control/a$R;->a(Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$R$a;

    move-result-object v0

    return-object v0
.end method
