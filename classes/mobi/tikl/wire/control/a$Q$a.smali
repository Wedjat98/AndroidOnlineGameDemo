.class public final Lmobi/tikl/wire/control/a$Q$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private sC:Lmobi/tikl/wire/control/a$Q;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24518
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$Q$a;)Lmobi/tikl/wire/control/a$Q;
    .registers 2

    .prologue
    .line 24513
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$Q$a;->yL()Lmobi/tikl/wire/control/a$Q;

    move-result-object v0

    return-object v0
.end method

.method private static yH()Lmobi/tikl/wire/control/a$Q$a;
    .registers 3

    .prologue
    .line 24521
    new-instance v0, Lmobi/tikl/wire/control/a$Q$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$Q$a;-><init>()V

    .line 24522
    new-instance v1, Lmobi/tikl/wire/control/a$Q;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$Q;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    .line 24523
    return-object v0
.end method

.method private yL()Lmobi/tikl/wire/control/a$Q;
    .registers 2

    .prologue
    .line 24564
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 24565
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$Q$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/y;->hg()Lcom/google/protobuf/s;

    move-result-object v0

    throw v0

    .line 24568
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q$a;->yM()Lmobi/tikl/wire/control/a$Q;

    move-result-object v0

    return-object v0
.end method

.method static synthetic yN()Lmobi/tikl/wire/control/a$Q$a;
    .registers 1

    .prologue
    .line 24513
    invoke-static {}, Lmobi/tikl/wire/control/a$Q$a;->yH()Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 24513
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$Q$a;->am(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 24513
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$Q$a;->ao(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    return-object v0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 24545
    invoke-static {}, Lmobi/tikl/wire/control/a$Q;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 24513
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q$a;->yI()Lmobi/tikl/wire/control/a$Q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 24513
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q$a;->yJ()Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    return-object v0
.end method

.method public aX(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Q$a;
    .registers 4

    .prologue
    .line 24676
    if-nez p1, :cond_8

    .line 24677
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24679
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Q;->b(Lmobi/tikl/wire/control/a$Q;Z)Z

    .line 24680
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$Q;->a(Lmobi/tikl/wire/control/a$Q;Ljava/lang/String;)Ljava/lang/String;

    .line 24681
    return-object p0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 24513
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q$a;->yK()Lmobi/tikl/wire/control/a$Q;

    move-result-object v0

    return-object v0
.end method

.method public aY(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Q$a;
    .registers 4

    .prologue
    .line 24715
    if-nez p1, :cond_8

    .line 24716
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24718
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Q;->d(Lmobi/tikl/wire/control/a$Q;Z)Z

    .line 24719
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$Q;->b(Lmobi/tikl/wire/control/a$Q;Ljava/lang/String;)Ljava/lang/String;

    .line 24720
    return-object p0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 24513
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q$a;->yK()Lmobi/tikl/wire/control/a$Q;

    move-result-object v0

    return-object v0
.end method

.method public am(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$Q$a;
    .registers 5

    .prologue
    .line 24612
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 24616
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 24617
    sparse-switch v1, :sswitch_data_46

    .line 24622
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$Q$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 24624
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Q$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 24625
    :goto_1c
    return-object p0

    .line 24619
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Q$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 24630
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$Q$a;->by(I)Lmobi/tikl/wire/control/a$Q$a;

    goto :goto_8

    .line 24634
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$Q$a;->aX(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Q$a;

    goto :goto_8

    .line 24638
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$Q$a;->bz(I)Lmobi/tikl/wire/control/a$Q$a;

    goto :goto_8

    .line 24642
    :sswitch_3d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$Q$a;->aY(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Q$a;

    goto :goto_8

    .line 24617
    nop

    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_25
        0x12 -> :sswitch_2d
        0x18 -> :sswitch_35
        0x13882 -> :sswitch_3d
    .end sparse-switch
.end method

.method public ao(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$Q$a;
    .registers 3

    .prologue
    .line 24582
    instance-of v0, p1, Lmobi/tikl/wire/control/a$Q;

    if-eqz v0, :cond_b

    .line 24583
    check-cast p1, Lmobi/tikl/wire/control/a$Q;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$Q$a;->b(Lmobi/tikl/wire/control/a$Q;)Lmobi/tikl/wire/control/a$Q$a;

    move-result-object p0

    .line 24586
    :goto_a
    return-object p0

    .line 24585
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 24513
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q$a;->yJ()Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 24513
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$Q$a;->am(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$Q;)Lmobi/tikl/wire/control/a$Q$a;
    .registers 3

    .prologue
    .line 24591
    invoke-static {}, Lmobi/tikl/wire/control/a$Q;->yx()Lmobi/tikl/wire/control/a$Q;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 24605
    :goto_6
    return-object p0

    .line 24592
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Q;->cr()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 24593
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Q;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Q$a;->by(I)Lmobi/tikl/wire/control/a$Q$a;

    .line 24595
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Q;->yz()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 24596
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Q;->getInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Q$a;->aX(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Q$a;

    .line 24598
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Q;->yA()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 24599
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Q;->yB()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Q$a;->bz(I)Lmobi/tikl/wire/control/a$Q$a;

    .line 24601
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Q;->yC()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 24602
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Q;->yD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Q$a;->aY(Ljava/lang/String;)Lmobi/tikl/wire/control/a$Q$a;

    .line 24604
    :cond_3b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$Q;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$Q$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public by(I)Lmobi/tikl/wire/control/a$Q$a;
    .registers 4

    .prologue
    .line 24658
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Q;->a(Lmobi/tikl/wire/control/a$Q;Z)Z

    .line 24659
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$Q;->a(Lmobi/tikl/wire/control/a$Q;I)I

    .line 24660
    return-object p0
.end method

.method public bz(I)Lmobi/tikl/wire/control/a$Q$a;
    .registers 4

    .prologue
    .line 24697
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$Q;->c(Lmobi/tikl/wire/control/a$Q;Z)Z

    .line 24698
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$Q;->b(Lmobi/tikl/wire/control/a$Q;I)I

    .line 24699
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 24513
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q$a;->yJ()Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 24513
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$Q$a;->am(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 24513
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q$a;->yJ()Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 24513
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$Q$a;->ao(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 24553
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$Q;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected yI()Lmobi/tikl/wire/control/a$Q;
    .registers 2

    .prologue
    .line 24527
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    return-object v0
.end method

.method public yJ()Lmobi/tikl/wire/control/a$Q$a;
    .registers 3

    .prologue
    .line 24540
    invoke-static {}, Lmobi/tikl/wire/control/a$Q$a;->yH()Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$Q$a;->b(Lmobi/tikl/wire/control/a$Q;)Lmobi/tikl/wire/control/a$Q$a;

    move-result-object v0

    return-object v0
.end method

.method public yK()Lmobi/tikl/wire/control/a$Q;
    .registers 2

    .prologue
    .line 24556
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 24557
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$Q$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 24559
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$Q$a;->yM()Lmobi/tikl/wire/control/a$Q;

    move-result-object v0

    return-object v0
.end method

.method public yM()Lmobi/tikl/wire/control/a$Q;
    .registers 3

    .prologue
    .line 24572
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    if-nez v0, :cond_c

    .line 24573
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24576
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    .line 24577
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$Q$a;->sC:Lmobi/tikl/wire/control/a$Q;

    .line 24578
    return-object v0
.end method
