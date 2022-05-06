.class public final Lmobi/tikl/wire/control/a$at$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private wj:Lmobi/tikl/wire/control/a$at;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 14682
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static Ho()Lmobi/tikl/wire/control/a$at$a;
    .registers 3

    .prologue
    .line 14685
    new-instance v0, Lmobi/tikl/wire/control/a$at$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$at$a;-><init>()V

    .line 14686
    new-instance v1, Lmobi/tikl/wire/control/a$at;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$at;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$at$a;->wj:Lmobi/tikl/wire/control/a$at;

    .line 14687
    return-object v0
.end method

.method static synthetic Ht()Lmobi/tikl/wire/control/a$at$a;
    .registers 1

    .prologue
    .line 14677
    invoke-static {}, Lmobi/tikl/wire/control/a$at$a;->Ho()Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected Hp()Lmobi/tikl/wire/control/a$at;
    .registers 2

    .prologue
    .line 14691
    iget-object v0, p0, Lmobi/tikl/wire/control/a$at$a;->wj:Lmobi/tikl/wire/control/a$at;

    return-object v0
.end method

.method public Hq()Lmobi/tikl/wire/control/a$at$a;
    .registers 3

    .prologue
    .line 14704
    invoke-static {}, Lmobi/tikl/wire/control/a$at$a;->Ho()Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$at$a;->wj:Lmobi/tikl/wire/control/a$at;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$at$a;->b(Lmobi/tikl/wire/control/a$at;)Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    return-object v0
.end method

.method public Hr()Lmobi/tikl/wire/control/a$at;
    .registers 2

    .prologue
    .line 14720
    iget-object v0, p0, Lmobi/tikl/wire/control/a$at$a;->wj:Lmobi/tikl/wire/control/a$at;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 14721
    iget-object v0, p0, Lmobi/tikl/wire/control/a$at$a;->wj:Lmobi/tikl/wire/control/a$at;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$at$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 14723
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at$a;->Hs()Lmobi/tikl/wire/control/a$at;

    move-result-object v0

    return-object v0
.end method

.method public Hs()Lmobi/tikl/wire/control/a$at;
    .registers 3

    .prologue
    .line 14736
    iget-object v0, p0, Lmobi/tikl/wire/control/a$at$a;->wj:Lmobi/tikl/wire/control/a$at;

    if-nez v0, :cond_c

    .line 14737
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14740
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$at$a;->wj:Lmobi/tikl/wire/control/a$at;

    .line 14741
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$at$a;->wj:Lmobi/tikl/wire/control/a$at;

    .line 14742
    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 14677
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$at$a;->aP(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 14677
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$at$a;->aR(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    return-object v0
.end method

.method public aP(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$at$a;
    .registers 5

    .prologue
    .line 14770
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 14774
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 14775
    sparse-switch v1, :sswitch_data_36

    .line 14780
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$at$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 14782
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$at$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 14783
    :goto_1c
    return-object p0

    .line 14777
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$at$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 14788
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/d;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$at$a;->bK(Ljava/lang/String;)Lmobi/tikl/wire/control/a$at$a;

    goto :goto_8

    .line 14792
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/d;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$at$a;->bK(I)Lmobi/tikl/wire/control/a$at$a;

    goto :goto_8

    .line 14775
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_25
        0x10 -> :sswitch_2d
    .end sparse-switch
.end method

.method public aR(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$at$a;
    .registers 3

    .prologue
    .line 14746
    instance-of v0, p1, Lmobi/tikl/wire/control/a$at;

    if-eqz v0, :cond_b

    .line 14747
    check-cast p1, Lmobi/tikl/wire/control/a$at;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$at$a;->b(Lmobi/tikl/wire/control/a$at;)Lmobi/tikl/wire/control/a$at$a;

    move-result-object p0

    .line 14750
    :goto_a
    return-object p0

    .line 14749
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 14709
    invoke-static {}, Lmobi/tikl/wire/control/a$at;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 14677
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at$a;->Hp()Lmobi/tikl/wire/control/a$at;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 14677
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at$a;->Hq()Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 14677
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at$a;->Hr()Lmobi/tikl/wire/control/a$at;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 14677
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at$a;->Hr()Lmobi/tikl/wire/control/a$at;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 14677
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at$a;->Hq()Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 14677
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$at$a;->aP(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$at;)Lmobi/tikl/wire/control/a$at$a;
    .registers 3

    .prologue
    .line 14755
    invoke-static {}, Lmobi/tikl/wire/control/a$at;->Hg()Lmobi/tikl/wire/control/a$at;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 14763
    :goto_6
    return-object p0

    .line 14756
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$at;->zF()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 14757
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$at;->Hi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$at$a;->bK(Ljava/lang/String;)Lmobi/tikl/wire/control/a$at$a;

    .line 14759
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$at;->Hj()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 14760
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$at;->Hk()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$at$a;->bK(I)Lmobi/tikl/wire/control/a$at$a;

    .line 14762
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$at;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$at$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_6
.end method

.method public bK(I)Lmobi/tikl/wire/control/a$at$a;
    .registers 4

    .prologue
    .line 14829
    iget-object v0, p0, Lmobi/tikl/wire/control/a$at$a;->wj:Lmobi/tikl/wire/control/a$at;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$at;->b(Lmobi/tikl/wire/control/a$at;Z)Z

    .line 14830
    iget-object v0, p0, Lmobi/tikl/wire/control/a$at$a;->wj:Lmobi/tikl/wire/control/a$at;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$at;->a(Lmobi/tikl/wire/control/a$at;I)I

    .line 14831
    return-object p0
.end method

.method public bK(Ljava/lang/String;)Lmobi/tikl/wire/control/a$at$a;
    .registers 4

    .prologue
    .line 14808
    if-nez p1, :cond_8

    .line 14809
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14811
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$at$a;->wj:Lmobi/tikl/wire/control/a$at;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$at;->a(Lmobi/tikl/wire/control/a$at;Z)Z

    .line 14812
    iget-object v0, p0, Lmobi/tikl/wire/control/a$at$a;->wj:Lmobi/tikl/wire/control/a$at;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$at;->a(Lmobi/tikl/wire/control/a$at;Ljava/lang/String;)Ljava/lang/String;

    .line 14813
    return-object p0
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 14677
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at$a;->Hq()Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 14677
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$at$a;->aP(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 14677
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at$a;->Hq()Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 14677
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$at$a;->aR(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 14717
    iget-object v0, p0, Lmobi/tikl/wire/control/a$at$a;->wj:Lmobi/tikl/wire/control/a$at;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$at;->isInitialized()Z

    move-result v0

    return v0
.end method
