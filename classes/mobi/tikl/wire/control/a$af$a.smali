.class public final Lmobi/tikl/wire/control/a$af$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private ui:Lmobi/tikl/wire/control/a$af;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29167
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static CT()Lmobi/tikl/wire/control/a$af$a;
    .registers 3

    .prologue
    .line 29170
    new-instance v0, Lmobi/tikl/wire/control/a$af$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$af$a;-><init>()V

    .line 29171
    new-instance v1, Lmobi/tikl/wire/control/a$af;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$af;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$af$a;->ui:Lmobi/tikl/wire/control/a$af;

    .line 29172
    return-object v0
.end method

.method static synthetic CY()Lmobi/tikl/wire/control/a$af$a;
    .registers 1

    .prologue
    .line 29162
    invoke-static {}, Lmobi/tikl/wire/control/a$af$a;->CT()Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected CU()Lmobi/tikl/wire/control/a$af;
    .registers 2

    .prologue
    .line 29176
    iget-object v0, p0, Lmobi/tikl/wire/control/a$af$a;->ui:Lmobi/tikl/wire/control/a$af;

    return-object v0
.end method

.method public CV()Lmobi/tikl/wire/control/a$af$a;
    .registers 3

    .prologue
    .line 29189
    invoke-static {}, Lmobi/tikl/wire/control/a$af$a;->CT()Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$af$a;->ui:Lmobi/tikl/wire/control/a$af;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$af$a;->d(Lmobi/tikl/wire/control/a$af;)Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public CW()Lmobi/tikl/wire/control/a$af;
    .registers 2

    .prologue
    .line 29205
    iget-object v0, p0, Lmobi/tikl/wire/control/a$af$a;->ui:Lmobi/tikl/wire/control/a$af;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 29206
    iget-object v0, p0, Lmobi/tikl/wire/control/a$af$a;->ui:Lmobi/tikl/wire/control/a$af;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$af$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 29208
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af$a;->CX()Lmobi/tikl/wire/control/a$af;

    move-result-object v0

    return-object v0
.end method

.method public CX()Lmobi/tikl/wire/control/a$af;
    .registers 3

    .prologue
    .line 29221
    iget-object v0, p0, Lmobi/tikl/wire/control/a$af$a;->ui:Lmobi/tikl/wire/control/a$af;

    if-nez v0, :cond_c

    .line 29222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29225
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$af$a;->ui:Lmobi/tikl/wire/control/a$af;

    .line 29226
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$af$a;->ui:Lmobi/tikl/wire/control/a$af;

    .line 29227
    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 29162
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$af$a;->aB(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 29162
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$af$a;->aD(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public aB(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$af$a;
    .registers 5

    .prologue
    .line 29252
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 29256
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 29257
    sparse-switch v1, :sswitch_data_2e

    .line 29262
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$af$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 29264
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$af$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 29265
    :goto_1c
    return-object p0

    .line 29259
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$af$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 29270
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$af$a;->bh(Ljava/lang/String;)Lmobi/tikl/wire/control/a$af$a;

    goto :goto_8

    .line 29257
    nop

    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
    .end sparse-switch
.end method

.method public aD(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$af$a;
    .registers 3

    .prologue
    .line 29231
    instance-of v0, p1, Lmobi/tikl/wire/control/a$af;

    if-eqz v0, :cond_b

    .line 29232
    check-cast p1, Lmobi/tikl/wire/control/a$af;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$af$a;->d(Lmobi/tikl/wire/control/a$af;)Lmobi/tikl/wire/control/a$af$a;

    move-result-object p0

    .line 29235
    :goto_a
    return-object p0

    .line 29234
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 29194
    invoke-static {}, Lmobi/tikl/wire/control/a$af;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 29162
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af$a;->CU()Lmobi/tikl/wire/control/a$af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 29162
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af$a;->CV()Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 29162
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af$a;->CW()Lmobi/tikl/wire/control/a$af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 29162
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af$a;->CW()Lmobi/tikl/wire/control/a$af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 29162
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af$a;->CV()Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 29162
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$af$a;->aB(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public bh(Ljava/lang/String;)Lmobi/tikl/wire/control/a$af$a;
    .registers 4

    .prologue
    .line 29286
    if-nez p1, :cond_8

    .line 29287
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29289
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$af$a;->ui:Lmobi/tikl/wire/control/a$af;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$af;->a(Lmobi/tikl/wire/control/a$af;Z)Z

    .line 29290
    iget-object v0, p0, Lmobi/tikl/wire/control/a$af$a;->ui:Lmobi/tikl/wire/control/a$af;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$af;->a(Lmobi/tikl/wire/control/a$af;Ljava/lang/String;)Ljava/lang/String;

    .line 29291
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 29162
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af$a;->CV()Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 29162
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$af$a;->aB(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 29162
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$af$a;->CV()Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 29162
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$af$a;->aD(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$af$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$af;)Lmobi/tikl/wire/control/a$af$a;
    .registers 3

    .prologue
    .line 29240
    invoke-static {}, Lmobi/tikl/wire/control/a$af;->CO()Lmobi/tikl/wire/control/a$af;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 29245
    :goto_6
    return-object p0

    .line 29241
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$af;->oh()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 29242
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$af;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$af$a;->bh(Ljava/lang/String;)Lmobi/tikl/wire/control/a$af$a;

    .line 29244
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$af;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$af$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 29202
    iget-object v0, p0, Lmobi/tikl/wire/control/a$af$a;->ui:Lmobi/tikl/wire/control/a$af;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$af;->isInitialized()Z

    move-result v0

    return v0
.end method
