.class public final Lmobi/tikl/wire/control/a$c;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$c$a;
    }
.end annotation


# static fields
.field private static final ov:Lmobi/tikl/wire/control/a$c;


# instance fields
.field private ai:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30466
    new-instance v0, Lmobi/tikl/wire/control/a$c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$c;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$c;->ov:Lmobi/tikl/wire/control/a$c;

    .line 30467
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 30468
    sget-object v0, Lmobi/tikl/wire/control/a$c;->ov:Lmobi/tikl/wire/control/a$c;

    .line 30469
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30232
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 30268
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$c;->ai:I

    .line 30233
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 30229
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$c;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 30235
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 30268
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$c;->ai:I

    .line 30235
    return-void
.end method

.method public static a(Lmobi/tikl/wire/control/a$c;)Lmobi/tikl/wire/control/a$c$a;
    .registers 2

    .prologue
    .line 30349
    invoke-static {}, Lmobi/tikl/wire/control/a$c;->nR()Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$c$a;->b(Lmobi/tikl/wire/control/a$c;)Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 30248
    invoke-static {}, Lmobi/tikl/wire/control/a;->mI()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static nP()Lmobi/tikl/wire/control/a$c;
    .registers 1

    .prologue
    .line 30239
    sget-object v0, Lmobi/tikl/wire/control/a$c;->ov:Lmobi/tikl/wire/control/a$c;

    return-object v0
.end method

.method public static nR()Lmobi/tikl/wire/control/a$c$a;
    .registers 1

    .prologue
    .line 30346
    invoke-static {}, Lmobi/tikl/wire/control/a$c$a;->nZ()Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 30270
    iget v0, p0, Lmobi/tikl/wire/control/a$c;->ai:I

    .line 30271
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 30276
    :goto_5
    return v0

    .line 30273
    :cond_6
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$c;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 30275
    iput v0, p0, Lmobi/tikl/wire/control/a$c;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 3

    .prologue
    .line 30264
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$c;->a()I

    .line 30265
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$c;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 30266
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 30229
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$c;->nS()Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 30229
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$c;->nQ()Lmobi/tikl/wire/control/a$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 30229
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$c;->nT()Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 30253
    invoke-static {}, Lmobi/tikl/wire/control/a;->mJ()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 30259
    const/4 v0, 0x1

    return v0
.end method

.method public nQ()Lmobi/tikl/wire/control/a$c;
    .registers 2

    .prologue
    .line 30243
    sget-object v0, Lmobi/tikl/wire/control/a$c;->ov:Lmobi/tikl/wire/control/a$c;

    return-object v0
.end method

.method public nS()Lmobi/tikl/wire/control/a$c$a;
    .registers 2

    .prologue
    .line 30347
    invoke-static {}, Lmobi/tikl/wire/control/a$c;->nR()Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public nT()Lmobi/tikl/wire/control/a$c$a;
    .registers 2

    .prologue
    .line 30351
    invoke-static {p0}, Lmobi/tikl/wire/control/a$c;->a(Lmobi/tikl/wire/control/a$c;)Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    return-object v0
.end method
