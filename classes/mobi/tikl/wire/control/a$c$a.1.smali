.class public final Lmobi/tikl/wire/control/a$c$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private ow:Lmobi/tikl/wire/control/a$c;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30358
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static nU()Lmobi/tikl/wire/control/a$c$a;
    .registers 3

    .prologue
    .line 30361
    new-instance v0, Lmobi/tikl/wire/control/a$c$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$c$a;-><init>()V

    .line 30362
    new-instance v1, Lmobi/tikl/wire/control/a$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$c;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$c$a;->ow:Lmobi/tikl/wire/control/a$c;

    .line 30363
    return-object v0
.end method

.method static synthetic nZ()Lmobi/tikl/wire/control/a$c$a;
    .registers 1

    .prologue
    .line 30353
    invoke-static {}, Lmobi/tikl/wire/control/a$c$a;->nU()Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$c$a;
    .registers 3

    .prologue
    .line 30422
    instance-of v0, p1, Lmobi/tikl/wire/control/a$c;

    if-eqz v0, :cond_b

    .line 30423
    check-cast p1, Lmobi/tikl/wire/control/a$c;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$c$a;->b(Lmobi/tikl/wire/control/a$c;)Lmobi/tikl/wire/control/a$c$a;

    move-result-object p0

    .line 30426
    :goto_a
    return-object p0

    .line 30425
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 30353
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$c$a;->y(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 30353
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$c$a;->A(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 30385
    invoke-static {}, Lmobi/tikl/wire/control/a$c;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 30353
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$c$a;->nV()Lmobi/tikl/wire/control/a$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 30353
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$c$a;->nW()Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 30353
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$c$a;->nX()Lmobi/tikl/wire/control/a$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 30353
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$c$a;->nX()Lmobi/tikl/wire/control/a$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 30353
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$c$a;->nW()Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 30353
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$c$a;->y(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$c;)Lmobi/tikl/wire/control/a$c$a;
    .registers 3

    .prologue
    .line 30431
    invoke-static {}, Lmobi/tikl/wire/control/a$c;->nP()Lmobi/tikl/wire/control/a$c;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 30433
    :goto_6
    return-object p0

    .line 30432
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$c;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$c$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 30353
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$c$a;->nW()Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 30353
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$c$a;->y(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 30353
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$c$a;->nW()Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 30353
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$c$a;->A(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 30393
    iget-object v0, p0, Lmobi/tikl/wire/control/a$c$a;->ow:Lmobi/tikl/wire/control/a$c;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$c;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected nV()Lmobi/tikl/wire/control/a$c;
    .registers 2

    .prologue
    .line 30367
    iget-object v0, p0, Lmobi/tikl/wire/control/a$c$a;->ow:Lmobi/tikl/wire/control/a$c;

    return-object v0
.end method

.method public nW()Lmobi/tikl/wire/control/a$c$a;
    .registers 3

    .prologue
    .line 30380
    invoke-static {}, Lmobi/tikl/wire/control/a$c$a;->nU()Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$c$a;->ow:Lmobi/tikl/wire/control/a$c;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$c$a;->b(Lmobi/tikl/wire/control/a$c;)Lmobi/tikl/wire/control/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public nX()Lmobi/tikl/wire/control/a$c;
    .registers 2

    .prologue
    .line 30396
    iget-object v0, p0, Lmobi/tikl/wire/control/a$c$a;->ow:Lmobi/tikl/wire/control/a$c;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$c$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 30397
    iget-object v0, p0, Lmobi/tikl/wire/control/a$c$a;->ow:Lmobi/tikl/wire/control/a$c;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$c$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 30399
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$c$a;->nY()Lmobi/tikl/wire/control/a$c;

    move-result-object v0

    return-object v0
.end method

.method public nY()Lmobi/tikl/wire/control/a$c;
    .registers 3

    .prologue
    .line 30412
    iget-object v0, p0, Lmobi/tikl/wire/control/a$c$a;->ow:Lmobi/tikl/wire/control/a$c;

    if-nez v0, :cond_c

    .line 30413
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30416
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$c$a;->ow:Lmobi/tikl/wire/control/a$c;

    .line 30417
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$c$a;->ow:Lmobi/tikl/wire/control/a$c;

    .line 30418
    return-object v0
.end method

.method public y(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$c$a;
    .registers 5

    .prologue
    .line 30440
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$c$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 30444
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 30445
    packed-switch v1, :pswitch_data_26

    .line 30450
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$c$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 30452
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$c$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 30453
    :goto_1c
    return-object p0

    .line 30447
    :pswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$c$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 30445
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method
