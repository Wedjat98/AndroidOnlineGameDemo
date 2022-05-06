.class public final Lmobi/tikl/wire/control/a$aj;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "aj"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$aj$a;
    }
.end annotation


# static fields
.field private static final vb:Lmobi/tikl/wire/control/a$aj;


# instance fields
.field private ai:I

.field private sS:Z

.field private sT:Lmobi/tikl/wire/control/a$G;

.field private vc:Z

.field private vd:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22517
    new-instance v0, Lmobi/tikl/wire/control/a$aj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$aj;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$aj;->vb:Lmobi/tikl/wire/control/a$aj;

    .line 22518
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 22519
    sget-object v0, Lmobi/tikl/wire/control/a$aj;->vb:Lmobi/tikl/wire/control/a$aj;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$aj;->aJ()V

    .line 22520
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 22177
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 22211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$aj;->vd:Z

    .line 22237
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$aj;->ai:I

    .line 22178
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$aj;->aJ()V

    .line 22179
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 22174
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$aj;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 22180
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 22211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/tikl/wire/control/a$aj;->vd:Z

    .line 22237
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$aj;->ai:I

    .line 22180
    return-void
.end method

.method public static Ep()Lmobi/tikl/wire/control/a$aj;
    .registers 1

    .prologue
    .line 22184
    sget-object v0, Lmobi/tikl/wire/control/a$aj;->vb:Lmobi/tikl/wire/control/a$aj;

    return-object v0
.end method

.method public static Et()Lmobi/tikl/wire/control/a$aj$a;
    .registers 1

    .prologue
    .line 22323
    invoke-static {}, Lmobi/tikl/wire/control/a$aj$a;->EB()Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$aj;Lmobi/tikl/wire/control/a$G;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 22174
    iput-object p1, p0, Lmobi/tikl/wire/control/a$aj;->sT:Lmobi/tikl/wire/control/a$G;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$aj;)Lmobi/tikl/wire/control/a$aj$a;
    .registers 2

    .prologue
    .line 22326
    invoke-static {}, Lmobi/tikl/wire/control/a$aj;->Et()Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$aj$a;->c(Lmobi/tikl/wire/control/a$aj;)Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$aj;Z)Z
    .registers 2

    .prologue
    .line 22174
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$aj;->sS:Z

    return p1
.end method

.method private aJ()V
    .registers 2

    .prologue
    .line 22216
    invoke-static {}, Lmobi/tikl/wire/control/a$G;->vA()Lmobi/tikl/wire/control/a$G;

    move-result-object v0

    iput-object v0, p0, Lmobi/tikl/wire/control/a$aj;->sT:Lmobi/tikl/wire/control/a$G;

    .line 22217
    return-void
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 22193
    invoke-static {}, Lmobi/tikl/wire/control/a;->lW()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$aj;)Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 22174
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj;->sT:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$aj;Z)Z
    .registers 2

    .prologue
    .line 22174
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$aj;->vc:Z

    return p1
.end method

.method static synthetic c(Lmobi/tikl/wire/control/a$aj;Z)Z
    .registers 2

    .prologue
    .line 22174
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$aj;->vd:Z

    return p1
.end method


# virtual methods
.method public Eq()Lmobi/tikl/wire/control/a$aj;
    .registers 2

    .prologue
    .line 22188
    sget-object v0, Lmobi/tikl/wire/control/a$aj;->vb:Lmobi/tikl/wire/control/a$aj;

    return-object v0
.end method

.method public Er()Z
    .registers 2

    .prologue
    .line 22212
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$aj;->vc:Z

    return v0
.end method

.method public Es()Z
    .registers 2

    .prologue
    .line 22213
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$aj;->vd:Z

    return v0
.end method

.method public Eu()Lmobi/tikl/wire/control/a$aj$a;
    .registers 2

    .prologue
    .line 22324
    invoke-static {}, Lmobi/tikl/wire/control/a$aj;->Et()Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    return-object v0
.end method

.method public Ev()Lmobi/tikl/wire/control/a$aj$a;
    .registers 2

    .prologue
    .line 22328
    invoke-static {p0}, Lmobi/tikl/wire/control/a$aj;->a(Lmobi/tikl/wire/control/a$aj;)Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 4

    .prologue
    .line 22239
    iget v0, p0, Lmobi/tikl/wire/control/a$aj;->ai:I

    .line 22240
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 22253
    :goto_5
    return v0

    .line 22242
    :cond_6
    const/4 v0, 0x0

    .line 22243
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj;->zF()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 22244
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 22247
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj;->Er()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 22248
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj;->Es()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22251
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 22252
    iput v0, p0, Lmobi/tikl/wire/control/a$aj;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 22227
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj;->a()I

    .line 22228
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj;->zF()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 22229
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 22231
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj;->Er()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 22232
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj;->Es()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(IZ)V

    .line 22234
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 22235
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 22174
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj;->Eu()Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 22174
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj;->Eq()Lmobi/tikl/wire/control/a$aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 22174
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj;->Ev()Lmobi/tikl/wire/control/a$aj$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 22198
    invoke-static {}, Lmobi/tikl/wire/control/a;->lX()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 22219
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$aj;->sS:Z

    if-nez v1, :cond_6

    .line 22222
    :cond_5
    :goto_5
    return v0

    .line 22220
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$aj;->vc:Z

    if-eqz v1, :cond_5

    .line 22221
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$aj;->zG()Lmobi/tikl/wire/control/a$G;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$G;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 22222
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public zF()Z
    .registers 2

    .prologue
    .line 22205
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$aj;->sS:Z

    return v0
.end method

.method public zG()Lmobi/tikl/wire/control/a$G;
    .registers 2

    .prologue
    .line 22206
    iget-object v0, p0, Lmobi/tikl/wire/control/a$aj;->sT:Lmobi/tikl/wire/control/a$G;

    return-object v0
.end method
