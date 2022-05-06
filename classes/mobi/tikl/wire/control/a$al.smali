.class public final Lmobi/tikl/wire/control/a$al;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "al"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$al$a;
    }
.end annotation


# static fields
.field private static final vx:Lmobi/tikl/wire/control/a$al;


# instance fields
.field private ai:I

.field private sA:Z

.field private sB:Ljava/lang/String;

.field private vA:Lmobi/tikl/wire/control/a$I;

.field private vg:Z

.field private vh:Ljava/lang/String;

.field private vi:Z

.field private vo:Z

.field private vp:Ljava/lang/String;

.field private vq:Z

.field private vr:Ljava/lang/String;

.field private vs:Z

.field private vt:Lmobi/tikl/wire/control/a$J;

.field private vu:Z

.field private vv:Lmobi/tikl/wire/control/a$R;

.field private vy:Lmobi/tikl/wire/control/a$aq;

.field private vz:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21431
    new-instance v0, Lmobi/tikl/wire/control/a$al;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$al;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$al;->vx:Lmobi/tikl/wire/control/a$al;

    .line 21432
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 21433
    sget-object v0, Lmobi/tikl/wire/control/a$al;->vx:Lmobi/tikl/wire/control/a$al;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$al;->aJ()V

    .line 21434
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20761
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 20788
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$al;->vh:Ljava/lang/String;

    .line 20809
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$al;->vp:Ljava/lang/String;

    .line 20816
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$al;->vr:Ljava/lang/String;

    .line 20837
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$al;->sB:Ljava/lang/String;

    .line 20893
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$al;->ai:I

    .line 20762
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$al;->aJ()V

    .line 20763
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 20758
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$al;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 20764
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 20788
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$al;->vh:Ljava/lang/String;

    .line 20809
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$al;->vp:Ljava/lang/String;

    .line 20816
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$al;->vr:Ljava/lang/String;

    .line 20837
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$al;->sB:Ljava/lang/String;

    .line 20893
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$al;->ai:I

    .line 20764
    return-void
.end method

.method public static Fd()Lmobi/tikl/wire/control/a$al;
    .registers 1

    .prologue
    .line 20768
    sget-object v0, Lmobi/tikl/wire/control/a$al;->vx:Lmobi/tikl/wire/control/a$al;

    return-object v0
.end method

.method public static Fi()Lmobi/tikl/wire/control/a$al$a;
    .registers 1

    .prologue
    .line 21003
    invoke-static {}, Lmobi/tikl/wire/control/a$al$a;->Fr()Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$al;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 20758
    iput-object p1, p0, Lmobi/tikl/wire/control/a$al;->vh:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$al;Lmobi/tikl/wire/control/a$I;)Lmobi/tikl/wire/control/a$I;
    .registers 2

    .prologue
    .line 20758
    iput-object p1, p0, Lmobi/tikl/wire/control/a$al;->vA:Lmobi/tikl/wire/control/a$I;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$al;Lmobi/tikl/wire/control/a$J;)Lmobi/tikl/wire/control/a$J;
    .registers 2

    .prologue
    .line 20758
    iput-object p1, p0, Lmobi/tikl/wire/control/a$al;->vt:Lmobi/tikl/wire/control/a$J;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$al;Lmobi/tikl/wire/control/a$R;)Lmobi/tikl/wire/control/a$R;
    .registers 2

    .prologue
    .line 20758
    iput-object p1, p0, Lmobi/tikl/wire/control/a$al;->vv:Lmobi/tikl/wire/control/a$R;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$al$a;
    .registers 2

    .prologue
    .line 21006
    invoke-static {}, Lmobi/tikl/wire/control/a$al;->Fi()Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$al$a;->f(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$al;Lmobi/tikl/wire/control/a$aq;)Lmobi/tikl/wire/control/a$aq;
    .registers 2

    .prologue
    .line 20758
    iput-object p1, p0, Lmobi/tikl/wire/control/a$al;->vy:Lmobi/tikl/wire/control/a$aq;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$al;Z)Z
    .registers 2

    .prologue
    .line 20758
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$al;->vg:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 20842
    invoke-static {}, Lmobi/tikl/wire/control/a$aq;->Gu()Lmobi/tikl/wire/control/a$aq;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$al;->vy:Lmobi/tikl/wire/control/a$aq;

    .line 20843
    invoke-static {}, Lmobi/tikl/wire/control/a$I;->wb()Lmobi/tikl/wire/control/a$I;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$al;->vA:Lmobi/tikl/wire/control/a$I;

    .line 20844
    invoke-static {}, Lmobi/tikl/wire/control/a$J;->wo()Lmobi/tikl/wire/control/a$J;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$al;->vt:Lmobi/tikl/wire/control/a$J;

    .line 20845
    invoke-static {}, Lmobi/tikl/wire/control/a$R;->yO()Lmobi/tikl/wire/control/a$R;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$al;->vv:Lmobi/tikl/wire/control/a$R;

    .line 20846
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 20777
    invoke-static {}, Lmobi/tikl/wire/control/a;->lQ()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$al;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 20758
    iput-object p1, p0, Lmobi/tikl/wire/control/a$al;->vp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$aq;
    .registers 2

    .prologue
    .line 20758
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al;->vy:Lmobi/tikl/wire/control/a$aq;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$al;Z)Z
    .registers 2

    .prologue
    .line 20758
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$al;->vi:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$al;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 20758
    iput-object p1, p0, Lmobi/tikl/wire/control/a$al;->vr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$I;
    .registers 2

    .prologue
    .line 20758
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al;->vA:Lmobi/tikl/wire/control/a$I;

    return-object v0
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$al;Z)Z
    .registers 2

    .prologue
    .line 20758
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$al;->vz:Z

    return p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$al;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 20758
    iput-object p1, p0, Lmobi/tikl/wire/control/a$al;->sB:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$J;
    .registers 2

    .prologue
    .line 20758
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al;->vt:Lmobi/tikl/wire/control/a$J;

    return-object v0
.end method

.method static synthetic d(Lmobi/tikl/wire/control/a$al;Z)Z
    .registers 2

    .prologue
    .line 20758
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$al;->vo:Z

    return p1
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$R;
    .registers 2

    .prologue
    .line 20758
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al;->vv:Lmobi/tikl/wire/control/a$R;

    return-object v0
.end method

.method static synthetic e(Lmobi/tikl/wire/control/a$al;Z)Z
    .registers 2

    .prologue
    .line 20758
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$al;->vq:Z

    return p1
.end method

.method public static f(Ljava/io/InputStream;)Lmobi/tikl/wire/control/a$al;
    .registers 2

    .prologue
    .line 20961
    invoke-static {}, Lmobi/tikl/wire/control/a$al;->Fi()Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$al$a;->a(Ljava/io/InputStream;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lmobi/tikl/wire/control/a$al$a;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$al$a;->a(Lmobi/tikl/wire/control/a$al$a;)Lmobi/tikl/wire/control/a$al;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lmobi/tikl/wire/control/a$al;Z)Z
    .registers 2

    .prologue
    .line 20758
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$al;->vs:Z

    return p1
.end method

.method static synthetic g(Lmobi/tikl/wire/control/a$al;Z)Z
    .registers 2

    .prologue
    .line 20758
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$al;->vu:Z

    return p1
.end method

.method static synthetic h(Lmobi/tikl/wire/control/a$al;Z)Z
    .registers 2

    .prologue
    .line 20758
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$al;->sA:Z

    return p1
.end method


# virtual methods
.method public EE()Z
    .registers 2

    .prologue
    .line 20789
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$al;->vg:Z

    return v0
.end method

.method public EF()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20790
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al;->vh:Ljava/lang/String;

    return-object v0
.end method

.method public EG()Z
    .registers 2

    .prologue
    .line 20796
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$al;->vi:Z

    return v0
.end method

.method public EM()Z
    .registers 2

    .prologue
    .line 20810
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$al;->vo:Z

    return v0
.end method

.method public EN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20811
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al;->vp:Ljava/lang/String;

    return-object v0
.end method

.method public EO()Z
    .registers 2

    .prologue
    .line 20817
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$al;->vq:Z

    return v0
.end method

.method public EP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20818
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al;->vr:Ljava/lang/String;

    return-object v0
.end method

.method public EQ()Z
    .registers 2

    .prologue
    .line 20824
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$al;->vs:Z

    return v0
.end method

.method public ER()Lmobi/tikl/wire/control/a$J;
    .registers 2

    .prologue
    .line 20825
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al;->vt:Lmobi/tikl/wire/control/a$J;

    return-object v0
.end method

.method public ES()Z
    .registers 2

    .prologue
    .line 20831
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$al;->vu:Z

    return v0
.end method

.method public ET()Lmobi/tikl/wire/control/a$R;
    .registers 2

    .prologue
    .line 20832
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al;->vv:Lmobi/tikl/wire/control/a$R;

    return-object v0
.end method

.method public Fe()Lmobi/tikl/wire/control/a$al;
    .registers 2

    .prologue
    .line 20772
    sget-object v0, Lmobi/tikl/wire/control/a$al;->vx:Lmobi/tikl/wire/control/a$al;

    return-object v0
.end method

.method public Ff()Lmobi/tikl/wire/control/a$aq;
    .registers 2

    .prologue
    .line 20797
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al;->vy:Lmobi/tikl/wire/control/a$aq;

    return-object v0
.end method

.method public Fg()Z
    .registers 2

    .prologue
    .line 20803
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$al;->vz:Z

    return v0
.end method

.method public Fh()Lmobi/tikl/wire/control/a$I;
    .registers 2

    .prologue
    .line 20804
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al;->vA:Lmobi/tikl/wire/control/a$I;

    return-object v0
.end method

.method public Fj()Lmobi/tikl/wire/control/a$al$a;
    .registers 2

    .prologue
    .line 21004
    invoke-static {}, Lmobi/tikl/wire/control/a$al;->Fi()Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    return-object v0
.end method

.method public Fk()Lmobi/tikl/wire/control/a$al$a;
    .registers 2

    .prologue
    .line 21008
    invoke-static {p0}, Lmobi/tikl/wire/control/a$al;->a(Lmobi/tikl/wire/control/a$al;)Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 4

    .prologue
    .line 20895
    iget v0, p0, Lmobi/tikl/wire/control/a$al;->ai:I

    .line 20896
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 20933
    :goto_5
    return v0

    .line 20898
    :cond_6
    const/4 v0, 0x0

    .line 20899
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EE()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 20900
    const/4 v0, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EF()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 20903
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->Fg()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 20904
    const/16 v1, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->Fh()Lmobi/tikl/wire/control/a$I;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20907
    :cond_29
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EM()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 20908
    const/16 v1, 0xb

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EN()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20911
    :cond_3a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EO()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 20912
    const/16 v1, 0xc

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20915
    :cond_4b
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EQ()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 20916
    const/16 v1, 0xd

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->ER()Lmobi/tikl/wire/control/a$J;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20919
    :cond_5c
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->ES()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 20920
    const/16 v1, 0x14

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->ET()Lmobi/tikl/wire/control/a$R;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20923
    :cond_6d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EG()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 20924
    const/16 v1, 0x64

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->Ff()Lmobi/tikl/wire/control/a$aq;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20927
    :cond_7e
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->yC()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 20928
    const/16 v1, 0x2710

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->yD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20931
    :cond_8f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 20932
    iput v0, p0, Lmobi/tikl/wire/control/a$al;->ai:I

    goto/16 :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 20865
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->a()I

    .line 20866
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EE()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 20867
    const/4 v0, 0x5

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 20869
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->Fg()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 20870
    const/16 v0, 0xa

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->Fh()Lmobi/tikl/wire/control/a$I;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 20872
    :cond_20
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EM()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 20873
    const/16 v0, 0xb

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 20875
    :cond_2f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EO()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 20876
    const/16 v0, 0xc

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 20878
    :cond_3e
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EQ()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 20879
    const/16 v0, 0xd

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->ER()Lmobi/tikl/wire/control/a$J;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 20881
    :cond_4d
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->ES()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 20882
    const/16 v0, 0x14

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->ET()Lmobi/tikl/wire/control/a$R;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 20884
    :cond_5c
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EG()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 20885
    const/16 v0, 0x64

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->Ff()Lmobi/tikl/wire/control/a$aq;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 20887
    :cond_6b
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->yC()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 20888
    const/16 v0, 0x2710

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->yD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 20890
    :cond_7a
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 20891
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 20758
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->Fj()Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 20758
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->Fe()Lmobi/tikl/wire/control/a$al;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 20758
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->Fk()Lmobi/tikl/wire/control/a$al$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 20782
    invoke-static {}, Lmobi/tikl/wire/control/a;->lR()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 20848
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EG()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 20849
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->Ff()Lmobi/tikl/wire/control/a$aq;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$aq;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_12

    .line 20860
    :cond_11
    :goto_11
    return v0

    .line 20851
    :cond_12
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->Fg()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 20852
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->Fh()Lmobi/tikl/wire/control/a$I;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$I;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 20854
    :cond_22
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->EQ()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 20855
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->ER()Lmobi/tikl/wire/control/a$J;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$J;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 20857
    :cond_32
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->ES()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 20858
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$al;->ET()Lmobi/tikl/wire/control/a$R;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$R;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 20860
    :cond_42
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public yC()Z
    .registers 2

    .prologue
    .line 20838
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$al;->sA:Z

    return v0
.end method

.method public yD()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20839
    iget-object v0, p0, Lmobi/tikl/wire/control/a$al;->sB:Ljava/lang/String;

    return-object v0
.end method
