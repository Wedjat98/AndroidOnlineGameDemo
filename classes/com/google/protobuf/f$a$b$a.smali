.class public final Lcom/google/protobuf/f$a$b$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private ap:Lcom/google/protobuf/f$a$b;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1359
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static bi()Lcom/google/protobuf/f$a$b$a;
    .registers 3

    .prologue
    .line 1362
    new-instance v0, Lcom/google/protobuf/f$a$b$a;

    invoke-direct {v0}, Lcom/google/protobuf/f$a$b$a;-><init>()V

    .line 1363
    new-instance v1, Lcom/google/protobuf/f$a$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/f$a$b;-><init>(Lcom/google/protobuf/g;)V

    iput-object v1, v0, Lcom/google/protobuf/f$a$b$a;->ap:Lcom/google/protobuf/f$a$b;

    .line 1364
    return-object v0
.end method

.method static synthetic bn()Lcom/google/protobuf/f$a$b$a;
    .registers 1

    .prologue
    .line 1354
    invoke-static {}, Lcom/google/protobuf/f$a$b$a;->bi()Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public H(I)Lcom/google/protobuf/f$a$b$a;
    .registers 4

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/google/protobuf/f$a$b$a;->ap:Lcom/google/protobuf/f$a$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a$b;->a(Lcom/google/protobuf/f$a$b;Z)Z

    .line 1486
    iget-object v0, p0, Lcom/google/protobuf/f$a$b$a;->ap:Lcom/google/protobuf/f$a$b;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$a$b;->a(Lcom/google/protobuf/f$a$b;I)I

    .line 1487
    return-object p0
.end method

.method public I(I)Lcom/google/protobuf/f$a$b$a;
    .registers 4

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/google/protobuf/f$a$b$a;->ap:Lcom/google/protobuf/f$a$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/f$a$b;->b(Lcom/google/protobuf/f$a$b;Z)Z

    .line 1504
    iget-object v0, p0, Lcom/google/protobuf/f$a$b$a;->ap:Lcom/google/protobuf/f$a$b;

    invoke-static {v0, p1}, Lcom/google/protobuf/f$a$b;->b(Lcom/google/protobuf/f$a$b;I)I

    .line 1505
    return-object p0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 1354
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$a$b$a;->e(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 1354
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$a$b$a;->g(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 1386
    invoke-static {}, Lcom/google/protobuf/f$a$b;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b$a;->bj()Lcom/google/protobuf/f$a$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b$a;->bk()Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b$a;->bl()Lcom/google/protobuf/f$a$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b$a;->bl()Lcom/google/protobuf/f$a$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b$a;->bk()Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 1354
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$a$b$a;->e(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method protected bj()Lcom/google/protobuf/f$a$b;
    .registers 2

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/google/protobuf/f$a$b$a;->ap:Lcom/google/protobuf/f$a$b;

    return-object v0
.end method

.method public bk()Lcom/google/protobuf/f$a$b$a;
    .registers 3

    .prologue
    .line 1381
    invoke-static {}, Lcom/google/protobuf/f$a$b$a;->bi()Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/f$a$b$a;->ap:Lcom/google/protobuf/f$a$b;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/f$a$b$a;->c(Lcom/google/protobuf/f$a$b;)Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public bl()Lcom/google/protobuf/f$a$b;
    .registers 2

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/google/protobuf/f$a$b$a;->ap:Lcom/google/protobuf/f$a$b;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1398
    iget-object v0, p0, Lcom/google/protobuf/f$a$b$a;->ap:Lcom/google/protobuf/f$a$b;

    invoke-static {v0}, Lcom/google/protobuf/f$a$b$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 1400
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b$a;->bm()Lcom/google/protobuf/f$a$b;

    move-result-object v0

    return-object v0
.end method

.method public bm()Lcom/google/protobuf/f$a$b;
    .registers 3

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/google/protobuf/f$a$b$a;->ap:Lcom/google/protobuf/f$a$b;

    if-nez v0, :cond_c

    .line 1414
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1417
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/f$a$b$a;->ap:Lcom/google/protobuf/f$a$b;

    .line 1418
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/f$a$b$a;->ap:Lcom/google/protobuf/f$a$b;

    .line 1419
    return-object v0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b$a;->bk()Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/protobuf/f$a$b;)Lcom/google/protobuf/f$a$b$a;
    .registers 3

    .prologue
    .line 1432
    invoke-static {}, Lcom/google/protobuf/f$a$b;->bb()Lcom/google/protobuf/f$a$b;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1440
    :goto_6
    return-object p0

    .line 1433
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/f$a$b;->bd()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1434
    invoke-virtual {p1}, Lcom/google/protobuf/f$a$b;->getStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$a$b$a;->H(I)Lcom/google/protobuf/f$a$b$a;

    .line 1436
    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/f$a$b;->be()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1437
    invoke-virtual {p1}, Lcom/google/protobuf/f$a$b;->getEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$a$b$a;->I(I)Lcom/google/protobuf/f$a$b$a;

    .line 1439
    :cond_21
    invoke-virtual {p1}, Lcom/google/protobuf/f$a$b;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$a$b$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 1354
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f$a$b$a;->e(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b$a;->bk()Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 1354
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$a$b$a;->g(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/f$a$b$a;
    .registers 5

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/google/protobuf/f$a$b$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 1451
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 1452
    sparse-switch v1, :sswitch_data_36

    .line 1457
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/protobuf/f$a$b$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1459
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$a$b$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 1460
    :goto_1c
    return-object p0

    .line 1454
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f$a$b$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 1465
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$a$b$a;->H(I)Lcom/google/protobuf/f$a$b$a;

    goto :goto_8

    .line 1469
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/f$a$b$a;->I(I)Lcom/google/protobuf/f$a$b$a;

    goto :goto_8

    .line 1452
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x10 -> :sswitch_2d
    .end sparse-switch
.end method

.method public g(Lcom/google/protobuf/t;)Lcom/google/protobuf/f$a$b$a;
    .registers 3

    .prologue
    .line 1423
    instance-of v0, p1, Lcom/google/protobuf/f$a$b;

    if-eqz v0, :cond_b

    .line 1424
    check-cast p1, Lcom/google/protobuf/f$a$b;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f$a$b$a;->c(Lcom/google/protobuf/f$a$b;)Lcom/google/protobuf/f$a$b$a;

    move-result-object p0

    .line 1427
    :goto_a
    return-object p0

    .line 1426
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/google/protobuf/f$a$b$a;->ap:Lcom/google/protobuf/f$a$b;

    invoke-virtual {v0}, Lcom/google/protobuf/f$a$b;->isInitialized()Z

    move-result v0

    return v0
.end method
