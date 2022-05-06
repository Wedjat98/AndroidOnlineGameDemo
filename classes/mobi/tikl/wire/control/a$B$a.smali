.class public final Lmobi/tikl/wire/control/a$B$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private qR:Lmobi/tikl/wire/control/a$B;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35513
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method static synthetic uE()Lmobi/tikl/wire/control/a$B$a;
    .registers 1

    .prologue
    .line 35508
    invoke-static {}, Lmobi/tikl/wire/control/a$B$a;->uz()Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    return-object v0
.end method

.method private static uz()Lmobi/tikl/wire/control/a$B$a;
    .registers 3

    .prologue
    .line 35516
    new-instance v0, Lmobi/tikl/wire/control/a$B$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$B$a;-><init>()V

    .line 35517
    new-instance v1, Lmobi/tikl/wire/control/a$B;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$B;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$B$a;->qR:Lmobi/tikl/wire/control/a$B;

    .line 35518
    return-object v0
.end method


# virtual methods
.method public X(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$B$a;
    .registers 5

    .prologue
    .line 35601
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 35605
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 35606
    sparse-switch v1, :sswitch_data_36

    .line 35611
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$B$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 35613
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$B$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 35614
    :goto_1c
    return-object p0

    .line 35608
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$B$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 35619
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$B$a;->aH(Ljava/lang/String;)Lmobi/tikl/wire/control/a$B$a;

    goto :goto_8

    .line 35623
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$B$a;->aI(Ljava/lang/String;)Lmobi/tikl/wire/control/a$B$a;

    goto :goto_8

    .line 35606
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x12 -> :sswitch_2d
    .end sparse-switch
.end method

.method public Z(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$B$a;
    .registers 3

    .prologue
    .line 35577
    instance-of v0, p1, Lmobi/tikl/wire/control/a$B;

    if-eqz v0, :cond_b

    .line 35578
    check-cast p1, Lmobi/tikl/wire/control/a$B;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$B$a;->b(Lmobi/tikl/wire/control/a$B;)Lmobi/tikl/wire/control/a$B$a;

    move-result-object p0

    .line 35581
    :goto_a
    return-object p0

    .line 35580
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 35508
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$B$a;->X(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 35508
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$B$a;->Z(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    return-object v0
.end method

.method public aH(Ljava/lang/String;)Lmobi/tikl/wire/control/a$B$a;
    .registers 4

    .prologue
    .line 35639
    if-nez p1, :cond_8

    .line 35640
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35642
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$B$a;->qR:Lmobi/tikl/wire/control/a$B;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$B;->a(Lmobi/tikl/wire/control/a$B;Z)Z

    .line 35643
    iget-object v0, p0, Lmobi/tikl/wire/control/a$B$a;->qR:Lmobi/tikl/wire/control/a$B;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$B;->a(Lmobi/tikl/wire/control/a$B;Ljava/lang/String;)Ljava/lang/String;

    .line 35644
    return-object p0
.end method

.method public aI(Ljava/lang/String;)Lmobi/tikl/wire/control/a$B$a;
    .registers 4

    .prologue
    .line 35660
    if-nez p1, :cond_8

    .line 35661
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35663
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$B$a;->qR:Lmobi/tikl/wire/control/a$B;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$B;->b(Lmobi/tikl/wire/control/a$B;Z)Z

    .line 35664
    iget-object v0, p0, Lmobi/tikl/wire/control/a$B$a;->qR:Lmobi/tikl/wire/control/a$B;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$B;->b(Lmobi/tikl/wire/control/a$B;Ljava/lang/String;)Ljava/lang/String;

    .line 35665
    return-object p0
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 35540
    invoke-static {}, Lmobi/tikl/wire/control/a$B;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 35508
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B$a;->uA()Lmobi/tikl/wire/control/a$B;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 35508
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B$a;->uB()Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 35508
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B$a;->uC()Lmobi/tikl/wire/control/a$B;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 35508
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B$a;->uC()Lmobi/tikl/wire/control/a$B;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 35508
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B$a;->uB()Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 35508
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$B$a;->X(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$B;)Lmobi/tikl/wire/control/a$B$a;
    .registers 3

    .prologue
    .line 35586
    invoke-static {}, Lmobi/tikl/wire/control/a$B;->uu()Lmobi/tikl/wire/control/a$B;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 35594
    :goto_6
    return-object p0

    .line 35587
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$B;->pS()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 35588
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$B;->pT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$B$a;->aH(Ljava/lang/String;)Lmobi/tikl/wire/control/a$B$a;

    .line 35590
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$B;->hasName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 35591
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$B;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$B$a;->aI(Ljava/lang/String;)Lmobi/tikl/wire/control/a$B$a;

    .line 35593
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$B;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$B$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 35508
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B$a;->uB()Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 35508
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$B$a;->X(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 35508
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B$a;->uB()Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 35508
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$B$a;->Z(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 35548
    iget-object v0, p0, Lmobi/tikl/wire/control/a$B$a;->qR:Lmobi/tikl/wire/control/a$B;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$B;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected uA()Lmobi/tikl/wire/control/a$B;
    .registers 2

    .prologue
    .line 35522
    iget-object v0, p0, Lmobi/tikl/wire/control/a$B$a;->qR:Lmobi/tikl/wire/control/a$B;

    return-object v0
.end method

.method public uB()Lmobi/tikl/wire/control/a$B$a;
    .registers 3

    .prologue
    .line 35535
    invoke-static {}, Lmobi/tikl/wire/control/a$B$a;->uz()Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$B$a;->qR:Lmobi/tikl/wire/control/a$B;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$B$a;->b(Lmobi/tikl/wire/control/a$B;)Lmobi/tikl/wire/control/a$B$a;

    move-result-object v0

    return-object v0
.end method

.method public uC()Lmobi/tikl/wire/control/a$B;
    .registers 2

    .prologue
    .line 35551
    iget-object v0, p0, Lmobi/tikl/wire/control/a$B$a;->qR:Lmobi/tikl/wire/control/a$B;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 35552
    iget-object v0, p0, Lmobi/tikl/wire/control/a$B$a;->qR:Lmobi/tikl/wire/control/a$B;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$B$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 35554
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$B$a;->uD()Lmobi/tikl/wire/control/a$B;

    move-result-object v0

    return-object v0
.end method

.method public uD()Lmobi/tikl/wire/control/a$B;
    .registers 3

    .prologue
    .line 35567
    iget-object v0, p0, Lmobi/tikl/wire/control/a$B$a;->qR:Lmobi/tikl/wire/control/a$B;

    if-nez v0, :cond_c

    .line 35568
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35571
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$B$a;->qR:Lmobi/tikl/wire/control/a$B;

    .line 35572
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$B$a;->qR:Lmobi/tikl/wire/control/a$B;

    .line 35573
    return-object v0
.end method
