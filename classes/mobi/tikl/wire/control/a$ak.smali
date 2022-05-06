.class public final Lmobi/tikl/wire/control/a$ak;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ak"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$ak$a;
    }
.end annotation


# static fields
.field private static final vf:Lmobi/tikl/wire/control/a$ak;


# instance fields
.field private ai:I

.field private pC:Z

.field private pD:Ljava/lang/String;

.field private sA:Z

.field private sB:Ljava/lang/String;

.field private vg:Z

.field private vh:Ljava/lang/String;

.field private vi:Z

.field private vj:Lmobi/tikl/wire/control/a$aj;

.field private vk:Z

.field private vl:Lmobi/tikl/wire/control/a$ai;

.field private vm:Z

.field private vn:Lmobi/tikl/wire/control/a$am;

.field private vo:Z

.field private vp:Ljava/lang/String;

.field private vq:Z

.field private vr:Ljava/lang/String;

.field private vs:Z

.field private vt:Lmobi/tikl/wire/control/a$J;

.field private vu:Z

.field private vv:Lmobi/tikl/wire/control/a$R;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20750
    new-instance v0, Lmobi/tikl/wire/control/a$ak;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$ak;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$ak;->vf:Lmobi/tikl/wire/control/a$ak;

    .line 20751
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 20752
    sget-object v0, Lmobi/tikl/wire/control/a$ak;->vf:Lmobi/tikl/wire/control/a$ak;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ak;->aJ()V

    .line 20753
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 19971
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 19998
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vh:Ljava/lang/String;

    .line 20026
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vp:Ljava/lang/String;

    .line 20033
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vr:Ljava/lang/String;

    .line 20054
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ak;->pD:Ljava/lang/String;

    .line 20061
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ak;->sB:Ljava/lang/String;

    .line 20127
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ak;->ai:I

    .line 19972
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ak;->aJ()V

    .line 19973
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 19968
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$ak;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 19974
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 19998
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vh:Ljava/lang/String;

    .line 20026
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vp:Ljava/lang/String;

    .line 20033
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vr:Ljava/lang/String;

    .line 20054
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ak;->pD:Ljava/lang/String;

    .line 20061
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ak;->sB:Ljava/lang/String;

    .line 20127
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$ak;->ai:I

    .line 19974
    return-void
.end method

.method public static EC()Lmobi/tikl/wire/control/a$ak;
    .registers 1

    .prologue
    .line 19978
    sget-object v0, Lmobi/tikl/wire/control/a$ak;->vf:Lmobi/tikl/wire/control/a$ak;

    return-object v0
.end method

.method public static EU()Lmobi/tikl/wire/control/a$ak$a;
    .registers 1

    .prologue
    .line 20245
    invoke-static {}, Lmobi/tikl/wire/control/a$ak$a;->Fc()Lmobi/tikl/wire/control/a$ak$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ak;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 19968
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ak;->vh:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ak;Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$J;
    .registers 2

    .prologue
    .line 19968
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ak;->vt:Lmobi/tikl/wire/control/a$J;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ak;Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$R;
    .registers 2

    .prologue
    .line 19968
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ak;->vv:Lmobi/tikl/wire/control/a$R;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ak;Lmobi/tikl/wire/control/a$ai;)Lmobi/tikl/wire/control/a$ai;
    .registers 2

    .prologue
    .line 19968
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ak;->vl:Lmobi/tikl/wire/control/a$ai;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ak;Lmobi/tikl/wire/control/a$aj;)Lmobi/tikl/wire/control/a$aj;
    .registers 2

    .prologue
    .line 19968
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ak;->vj:Lmobi/tikl/wire/control/a$aj;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$ak;)Lmobi/tikl/wire/control/a$ak$a;
    .registers 2

    .prologue
    .line 20248
    invoke-static {}, Lmobi/tikl/wire/control/a$ak;->EU()Lmobi/tikl/wire/control/a$ak$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$ak$a;->g(Lmobi/tikl/wire/control/a$ak;)Lmobi/tikl/wire/control/a$ak$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ak;Lmobi/tikl/wire/control/a$am;)Lmobi/tikl/wire/control/a$am;
    .registers 2

    .prologue
    .line 19968
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ak;->vn:Lmobi/tikl/wire/control/a$am;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$ak;Z)Z
    .registers 2

    .prologue
    .line 19968
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ak;->vg:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 20066
    invoke-static {}, Lmobi/tikl/wire/control/a$aj;->Ep()Lmobi/tikl/wire/control/a$aj;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vj:Lmobi/tikl/wire/control/a$aj;

    .line 20067
    invoke-static {}, Lmobi/tikl/wire/control/a$ai;->Ee()Lmobi/tikl/wire/control/a$ai;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vl:Lmobi/tikl/wire/control/a$ai;

    .line 20068
    invoke-static {}, Lmobi/tikl/wire/control/a$am;->Fs()Lmobi/tikl/wire/control/a$am;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vn:Lmobi/tikl/wire/control/a$am;

    .line 20069
    invoke-static {}, Lmobi/tikl/wire/control/a$J;->wo()Lmobi/tikl/wire/control/a$J;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vt:Lmobi/tikl/wire/control/a$J;

    .line 20070
    invoke-static {}, Lmobi/tikl/wire/control/a$R;->yO()Lmobi/tikl/wire/control/a$R;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vv:Lmobi/tikl/wire/control/a$R;

    .line 20071
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 19987
    invoke-static {}, Lmobi/tikl/wire/control/a;->lO()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ak;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 19968
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ak;->vp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ak;)Lmobi/tikl/wire/control/a$aj;
    .registers 2

    .prologue
    .line 19968
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vj:Lmobi/tikl/wire/control/a$aj;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$ak;Z)Z
    .registers 2

    .prologue
    .line 19968
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ak;->vi:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$ak;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 19968
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ak;->vr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$ak;)Lmobi/tikl/wire/control/a$ai;
    .registers 2

    .prologue
    .line 19968
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vl:Lmobi/tikl/wire/control/a$ai;

    return-object v0
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$ak;Z)Z
    .registers 2

    .prologue
    .line 19968
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ak;->vk:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$ak;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 19968
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ak;->pD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$ak;)Lmobi/tikl/wire/control/a$am;
    .registers 2

    .prologue
    .line 19968
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vn:Lmobi/tikl/wire/control/a$am;

    return-object v0
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$ak;Z)Z
    .registers 2

    .prologue
    .line 19968
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ak;->vm:Z

    return p1
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$ak;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 19968
    iput-object p1, p0, Lmobi/tikl/wire/control/a$ak;->sB:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$ak;)Lmobi/tikl/wire/control/a$J;
    .registers 2

    .prologue
    .line 19968
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vt:Lmobi/tikl/wire/control/a$J;

    return-object v0
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$ak;Z)Z
    .registers 2

    .prologue
    .line 19968
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ak;->vo:Z

    return p1
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$ak;)Lmobi/tikl/wire/control/a$R;
    .registers 2

    .prologue
    .line 19968
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vv:Lmobi/tikl/wire/control/a$R;

    return-object v0
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$ak;Z)Z
    .registers 2

    .prologue
    .line 19968
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ak;->vq:Z

    return p1
.end method

.method static synthetic g(Lmobi/tikl/wire/control/a$ak;Z)Z
    .registers 2

    .prologue
    .line 19968
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ak;->vs:Z

    return p1
.end method

.method static synthetic h(Lmobi/tikl/wire/control/a$ak;Z)Z
    .registers 2

    .prologue
    .line 19968
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ak;->vu:Z

    return p1
.end method

.method static synthetic i(Lmobi/tikl/wire/control/a$ak;Z)Z
    .registers 2

    .prologue
    .line 19968
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ak;->pC:Z

    return p1
.end method

.method static synthetic j(Lmobi/tikl/wire/control/a$ak;Z)Z
    .registers 2

    .prologue
    .line 19968
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$ak;->sA:Z

    return p1
.end method


# virtual methods
.method public ED()Lmobi/tikl/wire/control/a$ak;
    .registers 2

    .prologue
    .line 19982
    sget-object v0, Lmobi/tikl/wire/control/a$ak;->vf:Lmobi/tikl/wire/control/a$ak;

    return-object v0
.end method

.method public EE()Z
    .registers 2

    .prologue
    .line 19999
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ak;->vg:Z

    return v0
.end method

.method public EF()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20000
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vh:Ljava/lang/String;

    return-object v0
.end method

.method public EG()Z
    .registers 2

    .prologue
    .line 20006
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ak;->vi:Z

    return v0
.end method

.method public EH()Lmobi/tikl/wire/control/a$aj;
    .registers 2

    .prologue
    .line 20007
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vj:Lmobi/tikl/wire/control/a$aj;

    return-object v0
.end method

.method public EI()Z
    .registers 2

    .prologue
    .line 20013
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ak;->vk:Z

    return v0
.end method

.method public EJ()Lmobi/tikl/wire/control/a$ai;
    .registers 2

    .prologue
    .line 20014
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vl:Lmobi/tikl/wire/control/a$ai;

    return-object v0
.end method

.method public EK()Z
    .registers 2

    .prologue
    .line 20020
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ak;->vm:Z

    return v0
.end method

.method public EL()Lmobi/tikl/wire/control/a$am;
    .registers 2

    .prologue
    .line 20021
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vn:Lmobi/tikl/wire/control/a$am;

    return-object v0
.end method

.method public EM()Z
    .registers 2

    .prologue
    .line 20027
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ak;->vo:Z

    return v0
.end method

.method public EN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20028
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vp:Ljava/lang/String;

    return-object v0
.end method

.method public EO()Z
    .registers 2

    .prologue
    .line 20034
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ak;->vq:Z

    return v0
.end method

.method public EP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20035
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vr:Ljava/lang/String;

    return-object v0
.end method

.method public EQ()Z
    .registers 2

    .prologue
    .line 20041
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ak;->vs:Z

    return v0
.end method

.method public ER()Lmobi/tikl/wire/control/a$J;
    .registers 2

    .prologue
    .line 20042
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vt:Lmobi/tikl/wire/control/a$J;

    return-object v0
.end method

.method public ES()Z
    .registers 2

    .prologue
    .line 20048
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ak;->vu:Z

    return v0
.end method

.method public ET()Lmobi/tikl/wire/control/a$R;
    .registers 2

    .prologue
    .line 20049
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ak;->vv:Lmobi/tikl/wire/control/a$R;

    return-object v0
.end method

.method public EV()Lmobi/tikl/wire/control/a$ak$a;
    .registers 2

    .prologue
    .line 20246
    invoke-static {}, Lmobi/tikl/wire/control/a$ak;->EU()Lmobi/tikl/wire/control/a$ak$a;

    move-result-object v0

    return-object v0
.end method

.method public EW()Lmobi/tikl/wire/control/a$ak$a;
    .registers 2

    .prologue
    .line 20250
    invoke-static {p0}, Lmobi/tikl/wire/control/a$ak;->a(Lmobi/tikl/wire/control/a$ak;)Lmobi/tikl/wire/control/a$ak$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 4

    .prologue
    .line 20129
    iget v0, p0, Lmobi/tikl/wire/control/a$ak;->ai:I

    .line 20130
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 20175
    :goto_5
    return v0

    .line 20132
    :cond_6
    const/4 v0, 0x0

    .line 20133
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EE()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 20134
    const/4 v0, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EF()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 20137
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EM()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 20138
    const/16 v1, 0xb

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EN()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20141
    :cond_29
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EO()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 20142
    const/16 v1, 0xc

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20145
    :cond_3a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EQ()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 20146
    const/16 v1, 0xd

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->ER()Lmobi/tikl/wire/control/a$J;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20149
    :cond_4b
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->ES()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 20150
    const/16 v1, 0x14

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->ET()Lmobi/tikl/wire/control/a$R;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20153
    :cond_5c
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->pS()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 20154
    const/16 v1, 0x1e

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->pT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20157
    :cond_6d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EG()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 20158
    const/16 v1, 0x64

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EH()Lmobi/tikl/wire/control/a$aj;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20161
    :cond_7e
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EI()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 20162
    const/16 v1, 0x65

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EJ()Lmobi/tikl/wire/control/a$ai;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20165
    :cond_8f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EK()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 20166
    const/16 v1, 0xc8

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EL()Lmobi/tikl/wire/control/a$am;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20169
    :cond_a0
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->yC()Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 20170
    const/16 v1, 0x2710

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->yD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20173
    :cond_b1
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 20174
    iput v0, p0, Lmobi/tikl/wire/control/a$ak;->ai:I

    goto/16 :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 20093
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->a()I

    .line 20094
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EE()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 20095
    const/4 v0, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 20097
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EM()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 20098
    const/16 v0, 0xb

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 20100
    :cond_20
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EO()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 20101
    const/16 v0, 0xc

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 20103
    :cond_2f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EQ()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 20104
    const/16 v0, 0xd

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->ER()Lmobi/tikl/wire/control/a$J;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 20106
    :cond_3e
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->ES()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 20107
    const/16 v0, 0x14

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->ET()Lmobi/tikl/wire/control/a$R;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 20109
    :cond_4d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->pS()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 20110
    const/16 v0, 0x1e

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 20112
    :cond_5c
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EG()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 20113
    const/16 v0, 0x64

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EH()Lmobi/tikl/wire/control/a$aj;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 20115
    :cond_6b
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EI()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 20116
    const/16 v0, 0x65

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EJ()Lmobi/tikl/wire/control/a$ai;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 20118
    :cond_7a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EK()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 20119
    const/16 v0, 0xc8

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EL()Lmobi/tikl/wire/control/a$am;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 20121
    :cond_89
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->yC()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 20122
    const/16 v0, 0x2710

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->yD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 20124
    :cond_98
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 20125
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 19968
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EV()Lmobi/tikl/wire/control/a$ak$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 19968
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->ED()Lmobi/tikl/wire/control/a$ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 19968
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EW()Lmobi/tikl/wire/control/a$ak$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 19992
    invoke-static {}, Lmobi/tikl/wire/control/a;->lP()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 20073
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EG()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 20074
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EH()Lmobi/tikl/wire/control/a$aj;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$aj;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_12

    .line 20088
    :cond_11
    :goto_11
    return v0

    .line 20076
    :cond_12
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EI()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 20077
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EJ()Lmobi/tikl/wire/control/a$ai;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$ai;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 20079
    :cond_22
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EK()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 20080
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EL()Lmobi/tikl/wire/control/a$am;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$am;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 20082
    :cond_32
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->EQ()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 20083
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->ER()Lmobi/tikl/wire/control/a$J;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$J;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 20085
    :cond_42
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->ES()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 20086
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ak;->ET()Lmobi/tikl/wire/control/a$R;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$R;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 20088
    :cond_52
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 20055
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ak;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20056
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ak;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public yC()Z
    .registers 2

    .prologue
    .line 20062
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$ak;->sA:Z

    return v0
.end method

.method public yD()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20063
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ak;->sB:Ljava/lang/String;

    return-object v0
.end method
