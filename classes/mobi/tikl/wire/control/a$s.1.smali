.class public final Lmobi/tikl/wire/control/a$s;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$s$a;
    }
.end annotation


# static fields
.field private static final ql:Lmobi/tikl/wire/control/a$s;


# instance fields
.field private ai:I

.field private pC:Z

.field private pD:Ljava/lang/String;

.field private qm:Z

.field private qn:Lmobi/tikl/wire/control/a$G;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27448
    new-instance v0, Lmobi/tikl/wire/control/a$s;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$s;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$s;->ql:Lmobi/tikl/wire/control/a$s;

    .line 27449
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 27450
    sget-object v0, Lmobi/tikl/wire/control/a$s;->ql:Lmobi/tikl/wire/control/a$s;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$s;->aJ()V

    .line 27451
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27105
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 27139
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$s;->pD:Ljava/lang/String;

    .line 27165
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$s;->ai:I

    .line 27106
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$s;->aJ()V

    .line 27107
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 27102
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$s;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 27108
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 27139
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$s;->pD:Ljava/lang/String;

    .line 27165
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$s;->ai:I

    .line 27108
    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$s;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 27102
    iput-object p1, p0, Lmobi/tikl/wire/control/a$s;->pD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$s;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 27102
    iput-object p1, p0, Lmobi/tikl/wire/control/a$s;->qn:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$s$a;
    .registers 2

    .prologue
    .line 27254
    invoke-static {}, Lmobi/tikl/wire/control/a$s;->sq()Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$s$a;->c(Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$s;Z)Z
    .registers 2

    .prologue
    .line 27102
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$s;->qm:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 27144
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$s;->qn:Lmobi/tikl/wire/control/a$G;

    .line 27145
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 27121
    invoke-static {}, Lmobi/tikl/wire/control/a;->ms()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 27102
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s;->qn:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$s;Z)Z
    .registers 2

    .prologue
    .line 27102
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$s;->pC:Z

    return p1
.end method

.method public static sm()Lmobi/tikl/wire/control/a$s;
    .registers 1

    .prologue
    .line 27112
    sget-object v0, Lmobi/tikl/wire/control/a$s;->ql:Lmobi/tikl/wire/control/a$s;

    return-object v0
.end method

.method public static sq()Lmobi/tikl/wire/control/a$s$a;
    .registers 1

    .prologue
    .line 27251
    invoke-static {}, Lmobi/tikl/wire/control/a$s$a;->sy()Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    .line 27167
    iget v0, p0, Lmobi/tikl/wire/control/a$s;->ai:I

    .line 27168
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 27181
    :goto_5
    return v0

    .line 27170
    :cond_6
    const/4 v0, 0x0

    .line 27171
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s;->so()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 27172
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 27175
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s;->pS()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 27176
    const/4 v1, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s;->pT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27179
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 27180
    iput v0, p0, Lmobi/tikl/wire/control/a$s;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 27155
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s;->a()I

    .line 27156
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s;->so()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 27157
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 27159
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s;->pS()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 27160
    const/4 v0, 0x3

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s;->pT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 27162
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 27163
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 27102
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s;->sr()Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 27102
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s;->sn()Lmobi/tikl/wire/control/a$s;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 27102
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s;->ss()Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 27126
    invoke-static {}, Lmobi/tikl/wire/control/a;->mt()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 27147
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$s;->qm:Z

    if-nez v1, :cond_6

    .line 27150
    :cond_5
    :goto_5
    return v0

    .line 27148
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$s;->pC:Z

    if-eqz v1, :cond_5

    .line 27149
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$s;->sp()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 27150
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public pS()Z
    .registers 2

    .prologue
    .line 27140
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$s;->pC:Z

    return v0
.end method

.method public pT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27141
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s;->pD:Ljava/lang/String;

    return-object v0
.end method

.method public sn()Lmobi/tikl/wire/control/a$s;
    .registers 2

    .prologue
    .line 27116
    sget-object v0, Lmobi/tikl/wire/control/a$s;->ql:Lmobi/tikl/wire/control/a$s;

    return-object v0
.end method

.method public so()Z
    .registers 2

    .prologue
    .line 27133
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$s;->qm:Z

    return v0
.end method

.method public sp()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 27134
    iget-object v0, p0, Lmobi/tikl/wire/control/a$s;->qn:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method public sr()Lmobi/tikl/wire/control/a$s$a;
    .registers 2

    .prologue
    .line 27252
    invoke-static {}, Lmobi/tikl/wire/control/a$s;->sq()Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    return-object v0
.end method

.method public ss()Lmobi/tikl/wire/control/a$s$a;
    .registers 2

    .prologue
    .line 27256
    invoke-static {p0}, Lmobi/tikl/wire/control/a$s;->a(Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$s$a;

    move-result-object v0

    return-object v0
.end method
