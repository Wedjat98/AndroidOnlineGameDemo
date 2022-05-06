.class public final Lmobi/tikl/wire/control/a$ae$a;
.super Lcom/google/protobuf/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a$ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private ug:Lmobi/tikl/wire/control/a$ae;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25085
    invoke-direct {p0}, Lcom/google/protobuf/q$a;-><init>()V

    return-void
.end method

.method private static CI()Lmobi/tikl/wire/control/a$ae$a;
    .registers 3

    .prologue
    .line 25088
    new-instance v0, Lmobi/tikl/wire/control/a$ae$a;

    invoke-direct {v0}, Lmobi/tikl/wire/control/a$ae$a;-><init>()V

    .line 25089
    new-instance v1, Lmobi/tikl/wire/control/a$ae;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmobi/tikl/wire/control/a$ae;-><init>(Lmobi/tikl/wire/control/b;)V

    iput-object v1, v0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    .line 25090
    return-object v0
.end method

.method static synthetic CN()Lmobi/tikl/wire/control/a$ae$a;
    .registers 1

    .prologue
    .line 25080
    invoke-static {}, Lmobi/tikl/wire/control/a$ae$a;->CI()Lmobi/tikl/wire/control/a$ae$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public CA()Lmobi/tikl/wire/control/a$t;
    .registers 2

    .prologue
    .line 25671
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->CA()Lmobi/tikl/wire/control/a$t;

    move-result-object v0

    return-object v0
.end method

.method public CB()Z
    .registers 2

    .prologue
    .line 25705
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->CB()Z

    move-result v0

    return v0
.end method

.method public CC()Lmobi/tikl/wire/control/a$s;
    .registers 2

    .prologue
    .line 25708
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->CC()Lmobi/tikl/wire/control/a$s;

    move-result-object v0

    return-object v0
.end method

.method public CD()Z
    .registers 2

    .prologue
    .line 25742
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->CD()Z

    move-result v0

    return v0
.end method

.method public CE()Lmobi/tikl/wire/control/a$n;
    .registers 2

    .prologue
    .line 25745
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->CE()Lmobi/tikl/wire/control/a$n;

    move-result-object v0

    return-object v0
.end method

.method protected CJ()Lmobi/tikl/wire/control/a$ae;
    .registers 2

    .prologue
    .line 25094
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    return-object v0
.end method

.method public CK()Lmobi/tikl/wire/control/a$ae$a;
    .registers 3

    .prologue
    .line 25107
    invoke-static {}, Lmobi/tikl/wire/control/a$ae$a;->CI()Lmobi/tikl/wire/control/a$ae$a;

    move-result-object v0

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$ae$a;->n(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$ae$a;

    move-result-object v0

    return-object v0
.end method

.method public CL()Lmobi/tikl/wire/control/a$ae;
    .registers 2

    .prologue
    .line 25123
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 25124
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ae$a;->b(Lcom/google/protobuf/t;)Lcom/google/protobuf/y;

    move-result-object v0

    throw v0

    .line 25126
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->CM()Lmobi/tikl/wire/control/a$ae;

    move-result-object v0

    return-object v0
.end method

.method public CM()Lmobi/tikl/wire/control/a$ae;
    .registers 3

    .prologue
    .line 25139
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    if-nez v0, :cond_c

    .line 25140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25143
    :cond_c
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    .line 25144
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    .line 25145
    return-object v0
.end method

.method public Ch()Z
    .registers 2

    .prologue
    .line 25335
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Ch()Z

    move-result v0

    return v0
.end method

.method public Ci()Lmobi/tikl/wire/control/a$M;
    .registers 2

    .prologue
    .line 25338
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Ci()Lmobi/tikl/wire/control/a$M;

    move-result-object v0

    return-object v0
.end method

.method public Cj()Z
    .registers 2

    .prologue
    .line 25372
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cj()Z

    move-result v0

    return v0
.end method

.method public Ck()Lmobi/tikl/wire/control/a$L;
    .registers 2

    .prologue
    .line 25375
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Ck()Lmobi/tikl/wire/control/a$L;

    move-result-object v0

    return-object v0
.end method

.method public Cl()Z
    .registers 2

    .prologue
    .line 25409
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cl()Z

    move-result v0

    return v0
.end method

.method public Cm()Lmobi/tikl/wire/control/a$aa;
    .registers 2

    .prologue
    .line 25412
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cm()Lmobi/tikl/wire/control/a$aa;

    move-result-object v0

    return-object v0
.end method

.method public Cn()Z
    .registers 2

    .prologue
    .line 25446
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cn()Z

    move-result v0

    return v0
.end method

.method public Co()Lmobi/tikl/wire/control/a$ab;
    .registers 2

    .prologue
    .line 25449
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Co()Lmobi/tikl/wire/control/a$ab;

    move-result-object v0

    return-object v0
.end method

.method public Cp()Z
    .registers 2

    .prologue
    .line 25483
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cp()Z

    move-result v0

    return v0
.end method

.method public Cq()Lmobi/tikl/wire/control/a$ac;
    .registers 2

    .prologue
    .line 25486
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cq()Lmobi/tikl/wire/control/a$ac;

    move-result-object v0

    return-object v0
.end method

.method public Cr()Z
    .registers 2

    .prologue
    .line 25520
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cr()Z

    move-result v0

    return v0
.end method

.method public Cs()Lmobi/tikl/wire/control/a$ad;
    .registers 2

    .prologue
    .line 25523
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cs()Lmobi/tikl/wire/control/a$ad;

    move-result-object v0

    return-object v0
.end method

.method public Ct()Z
    .registers 2

    .prologue
    .line 25557
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Ct()Z

    move-result v0

    return v0
.end method

.method public Cu()Lmobi/tikl/wire/control/a$Z;
    .registers 2

    .prologue
    .line 25560
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cu()Lmobi/tikl/wire/control/a$Z;

    move-result-object v0

    return-object v0
.end method

.method public Cv()Z
    .registers 2

    .prologue
    .line 25594
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cv()Z

    move-result v0

    return v0
.end method

.method public Cw()Lmobi/tikl/wire/control/a$af;
    .registers 2

    .prologue
    .line 25597
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cw()Lmobi/tikl/wire/control/a$af;

    move-result-object v0

    return-object v0
.end method

.method public Cx()Z
    .registers 2

    .prologue
    .line 25631
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cx()Z

    move-result v0

    return v0
.end method

.method public Cy()Lmobi/tikl/wire/control/a$Y;
    .registers 2

    .prologue
    .line 25634
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cy()Lmobi/tikl/wire/control/a$Y;

    move-result-object v0

    return-object v0
.end method

.method public Cz()Z
    .registers 2

    .prologue
    .line 25668
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cz()Z

    move-result v0

    return v0
.end method

.method public synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/a$a;
    .registers 4

    .prologue
    .line 25080
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ae$a;->aA(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ae$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;
    .registers 3

    .prologue
    .line 25080
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ae$a;->aC(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ae$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lmobi/tikl/wire/control/a$af;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25600
    if-nez p1, :cond_8

    .line 25601
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25603
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->h(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25604
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$af;)Lmobi/tikl/wire/control/a$af;

    .line 25605
    return-object p0
.end method

.method public aA(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 6

    .prologue
    .line 25203
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/z;->h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    .line 25207
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/d;->e()I

    move-result v1

    .line 25208
    sparse-switch v1, :sswitch_data_17e

    .line 25213
    invoke-virtual {p0, p1, v0, p2, v1}, Lmobi/tikl/wire/control/a$ae$a;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/z$a;Lcom/google/protobuf/o;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 25215
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ae$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    .line 25216
    :goto_1c
    return-object p0

    .line 25210
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/z$a;->hn()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ae$a;->f(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto :goto_1c

    .line 25221
    :sswitch_25
    invoke-static {}, Lmobi/tikl/wire/control/a$M;->xh()Lmobi/tikl/wire/control/a$M$a;

    move-result-object v1

    .line 25222
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Ch()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 25223
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Ci()Lmobi/tikl/wire/control/a$M;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$M$a;->e(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$M$a;

    .line 25225
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 25226
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$M$a;->xo()Lmobi/tikl/wire/control/a$M;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ae$a;->f(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$ae$a;

    goto :goto_8

    .line 25230
    :sswitch_41
    invoke-static {}, Lmobi/tikl/wire/control/a$L;->wV()Lmobi/tikl/wire/control/a$L$a;

    move-result-object v1

    .line 25231
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Cj()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 25232
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Ck()Lmobi/tikl/wire/control/a$L;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$L$a;->c(Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$L$a;

    .line 25234
    :cond_52
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 25235
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$L$a;->xc()Lmobi/tikl/wire/control/a$L;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ae$a;->d(Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$ae$a;

    goto :goto_8

    .line 25239
    :sswitch_5d
    invoke-static {}, Lmobi/tikl/wire/control/a$aa;->Bo()Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v1

    .line 25240
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Cl()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 25241
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Cm()Lmobi/tikl/wire/control/a$aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$aa$a;->d(Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$aa$a;

    .line 25243
    :cond_6e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 25244
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$aa$a;->Bv()Lmobi/tikl/wire/control/a$aa;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ae$a;->e(Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$ae$a;

    goto :goto_8

    .line 25248
    :sswitch_79
    invoke-static {}, Lmobi/tikl/wire/control/a$ab;->Bz()Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v1

    .line 25249
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Cn()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 25250
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Co()Lmobi/tikl/wire/control/a$ab;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$ab$a;->c(Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$ab$a;

    .line 25252
    :cond_8a
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 25253
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$ab$a;->BG()Lmobi/tikl/wire/control/a$ab;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ae$a;->d(Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$ae$a;

    goto/16 :goto_8

    .line 25257
    :sswitch_96
    invoke-static {}, Lmobi/tikl/wire/control/a$ac;->BL()Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v1

    .line 25258
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Cp()Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 25259
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Cq()Lmobi/tikl/wire/control/a$ac;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$ac$a;->d(Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$ac$a;

    .line 25261
    :cond_a7
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 25262
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$ac$a;->BS()Lmobi/tikl/wire/control/a$ac;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ae$a;->e(Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$ae$a;

    goto/16 :goto_8

    .line 25266
    :sswitch_b3
    invoke-static {}, Lmobi/tikl/wire/control/a$ad;->BW()Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v1

    .line 25267
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Cr()Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 25268
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Cs()Lmobi/tikl/wire/control/a$ad;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$ad$a;->c(Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$ad$a;

    .line 25270
    :cond_c4
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 25271
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$ad$a;->Cd()Lmobi/tikl/wire/control/a$ad;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ae$a;->d(Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$ae$a;

    goto/16 :goto_8

    .line 25275
    :sswitch_d0
    invoke-static {}, Lmobi/tikl/wire/control/a$Z;->Bc()Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v1

    .line 25276
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Ct()Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 25277
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Cu()Lmobi/tikl/wire/control/a$Z;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$Z$a;->d(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$Z$a;

    .line 25279
    :cond_e1
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 25280
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$Z$a;->Bj()Lmobi/tikl/wire/control/a$Z;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ae$a;->e(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$ae$a;

    goto/16 :goto_8

    .line 25284
    :sswitch_ed
    invoke-static {}, Lmobi/tikl/wire/control/a$af;->CQ()Lmobi/tikl/wire/control/a$af$a;

    move-result-object v1

    .line 25285
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Cv()Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 25286
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Cw()Lmobi/tikl/wire/control/a$af;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$af$a;->d(Lmobi/tikl/wire/control/a$af;)Lmobi/tikl/wire/control/a$af$a;

    .line 25288
    :cond_fe
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 25289
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$af$a;->CX()Lmobi/tikl/wire/control/a$af;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ae$a;->a(Lmobi/tikl/wire/control/a$af;)Lmobi/tikl/wire/control/a$ae$a;

    goto/16 :goto_8

    .line 25293
    :sswitch_10a
    invoke-static {}, Lmobi/tikl/wire/control/a$Y;->AL()Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v1

    .line 25294
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Cx()Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 25295
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Cy()Lmobi/tikl/wire/control/a$Y;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$Y$a;->c(Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$Y$a;

    .line 25297
    :cond_11b
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 25298
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$Y$a;->AS()Lmobi/tikl/wire/control/a$Y;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ae$a;->d(Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$ae$a;

    goto/16 :goto_8

    .line 25302
    :sswitch_127
    invoke-static {}, Lmobi/tikl/wire/control/a$t;->sD()Lmobi/tikl/wire/control/a$t$a;

    move-result-object v1

    .line 25303
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->Cz()Z

    move-result v2

    if-eqz v2, :cond_138

    .line 25304
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->CA()Lmobi/tikl/wire/control/a$t;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$t$a;->c(Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$t$a;

    .line 25306
    :cond_138
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 25307
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$t$a;->sK()Lmobi/tikl/wire/control/a$t;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ae$a;->d(Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$ae$a;

    goto/16 :goto_8

    .line 25311
    :sswitch_144
    invoke-static {}, Lmobi/tikl/wire/control/a$s;->sq()Lmobi/tikl/wire/control/a$s$a;

    move-result-object v1

    .line 25312
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->CB()Z

    move-result v2

    if-eqz v2, :cond_155

    .line 25313
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->CC()Lmobi/tikl/wire/control/a$s;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$s$a;->c(Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$s$a;

    .line 25315
    :cond_155
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 25316
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$s$a;->sx()Lmobi/tikl/wire/control/a$s;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ae$a;->d(Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$ae$a;

    goto/16 :goto_8

    .line 25320
    :sswitch_161
    invoke-static {}, Lmobi/tikl/wire/control/a$n;->rl()Lmobi/tikl/wire/control/a$n$a;

    move-result-object v1

    .line 25321
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->CD()Z

    move-result v2

    if-eqz v2, :cond_172

    .line 25322
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->CE()Lmobi/tikl/wire/control/a$n;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/tikl/wire/control/a$n$a;->d(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$n$a;

    .line 25324
    :cond_172
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/u$a;Lcom/google/protobuf/o;)V

    .line 25325
    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$n$a;->rs()Lmobi/tikl/wire/control/a$n;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/tikl/wire/control/a$ae$a;->e(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$ae$a;

    goto/16 :goto_8

    .line 25208
    :sswitch_data_17e
    .sparse-switch
        0x0 -> :sswitch_1d
        0x322 -> :sswitch_25
        0x32a -> :sswitch_41
        0x372 -> :sswitch_5d
        0x37a -> :sswitch_79
        0x3c2 -> :sswitch_96
        0x3ca -> :sswitch_b3
        0x412 -> :sswitch_d0
        0x462 -> :sswitch_ed
        0x4b2 -> :sswitch_10a
        0x4ba -> :sswitch_127
        0x4c2 -> :sswitch_144
        0x4ca -> :sswitch_161
    .end sparse-switch
.end method

.method public aC(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 3

    .prologue
    .line 25149
    instance-of v0, p1, Lmobi/tikl/wire/control/a$ae;

    if-eqz v0, :cond_b

    .line 25150
    check-cast p1, Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ae$a;->n(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$ae$a;

    move-result-object p0

    .line 25153
    :goto_a
    return-object p0

    .line 25152
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/q$a;->a(Lcom/google/protobuf/t;)Lcom/google/protobuf/a$a;

    goto :goto_a
.end method

.method public aT()Lcom/google/protobuf/l$a;
    .registers 2

    .prologue
    .line 25112
    invoke-static {}, Lmobi/tikl/wire/control/a$ae;->ax()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic aW()Lcom/google/protobuf/q;
    .registers 2

    .prologue
    .line 25080
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->CJ()Lmobi/tikl/wire/control/a$ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aX()Lcom/google/protobuf/q$a;
    .registers 2

    .prologue
    .line 25080
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->CK()Lmobi/tikl/wire/control/a$ae$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aY()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 25080
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->CL()Lmobi/tikl/wire/control/a$ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aZ()Lcom/google/protobuf/u;
    .registers 2

    .prologue
    .line 25080
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->CL()Lmobi/tikl/wire/control/a$ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/protobuf/a$a;
    .registers 2

    .prologue
    .line 25080
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->CK()Lmobi/tikl/wire/control/a$ae$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/b$a;
    .registers 4

    .prologue
    .line 25080
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ae$a;->aA(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ae$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmobi/tikl/wire/control/a$af;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25613
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cv()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ae;->i(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$af;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$af;->CO()Lmobi/tikl/wire/control/a$af;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 25615
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ae;->i(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$af;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$af;->c(Lmobi/tikl/wire/control/a$af;)Lmobi/tikl/wire/control/a$af$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$af$a;->d(Lmobi/tikl/wire/control/a$af;)Lmobi/tikl/wire/control/a$af$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$af$a;->CX()Lmobi/tikl/wire/control/a$af;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$af;)Lmobi/tikl/wire/control/a$af;

    .line 25620
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->h(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25621
    return-object p0

    .line 25618
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$af;)Lmobi/tikl/wire/control/a$af;

    goto :goto_2b
.end method

.method public synthetic c()Lcom/google/protobuf/b$a;
    .registers 2

    .prologue
    .line 25080
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->CK()Lmobi/tikl/wire/control/a$ae$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lcom/google/protobuf/u$a;
    .registers 4

    .prologue
    .line 25080
    invoke-virtual {p0, p1, p2}, Lmobi/tikl/wire/control/a$ae$a;->aA(Lcom/google/protobuf/d;Lcom/google/protobuf/o;)Lmobi/tikl/wire/control/a$ae$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 25080
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$ae$a;->CK()Lmobi/tikl/wire/control/a$ae$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/google/protobuf/t;)Lcom/google/protobuf/t$a;
    .registers 3

    .prologue
    .line 25080
    invoke-virtual {p0, p1}, Lmobi/tikl/wire/control/a$ae$a;->aC(Lcom/google/protobuf/t;)Lmobi/tikl/wire/control/a$ae$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25378
    if-nez p1, :cond_8

    .line 25379
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25381
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->b(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25382
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$L;

    .line 25383
    return-object p0
.end method

.method public d(Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25637
    if-nez p1, :cond_8

    .line 25638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25640
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->i(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25641
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$Y;

    .line 25642
    return-object p0
.end method

.method public d(Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25452
    if-nez p1, :cond_8

    .line 25453
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25455
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->d(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25456
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$ab;

    .line 25457
    return-object p0
.end method

.method public d(Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25526
    if-nez p1, :cond_8

    .line 25527
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25529
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->f(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25530
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$ad;

    .line 25531
    return-object p0
.end method

.method public d(Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25711
    if-nez p1, :cond_8

    .line 25712
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25714
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->k(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25715
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$s;

    .line 25716
    return-object p0
.end method

.method public d(Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25674
    if-nez p1, :cond_8

    .line 25675
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25677
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->j(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25678
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$t;

    .line 25679
    return-object p0
.end method

.method public e(Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25391
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cj()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ae;->c(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$L;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$L;->wR()Lmobi/tikl/wire/control/a$L;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 25393
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ae;->c(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$L;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$L;->a(Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$L$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$L$a;->c(Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$L$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$L$a;->xc()Lmobi/tikl/wire/control/a$L;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$L;

    .line 25398
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->b(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25399
    return-object p0

    .line 25396
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$L;

    goto :goto_2b
.end method

.method public e(Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25650
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cx()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ae;->j(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$Y;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$Y;->AD()Lmobi/tikl/wire/control/a$Y;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 25652
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ae;->j(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$Y;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$Y;->a(Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$Y$a;->c(Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$Y$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$Y$a;->AS()Lmobi/tikl/wire/control/a$Y;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$Y;

    .line 25657
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->i(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25658
    return-object p0

    .line 25655
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$Y;

    goto :goto_2b
.end method

.method public e(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25563
    if-nez p1, :cond_8

    .line 25564
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25566
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->g(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25567
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$Z;

    .line 25568
    return-object p0
.end method

.method public e(Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25415
    if-nez p1, :cond_8

    .line 25416
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25418
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->c(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25419
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$aa;

    .line 25420
    return-object p0
.end method

.method public e(Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25465
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cn()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ae;->e(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$ab;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$ab;->Bx()Lmobi/tikl/wire/control/a$ab;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 25467
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ae;->e(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$ab;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ab;->a(Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$ab$a;->c(Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$ab$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$ab$a;->BG()Lmobi/tikl/wire/control/a$ab;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$ab;

    .line 25472
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->d(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25473
    return-object p0

    .line 25470
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$ab;

    goto :goto_2b
.end method

.method public e(Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25489
    if-nez p1, :cond_8

    .line 25490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25492
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->e(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25493
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$ac;

    .line 25494
    return-object p0
.end method

.method public e(Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25539
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cr()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ae;->g(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$ad;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$ad;->BU()Lmobi/tikl/wire/control/a$ad;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 25541
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ae;->g(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$ad;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ad;->a(Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$ad$a;->c(Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$ad$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$ad$a;->Cd()Lmobi/tikl/wire/control/a$ad;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$ad;

    .line 25546
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->f(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25547
    return-object p0

    .line 25544
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$ad;

    goto :goto_2b
.end method

.method public e(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25748
    if-nez p1, :cond_8

    .line 25749
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25751
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->l(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25752
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$n;

    .line 25753
    return-object p0
.end method

.method public e(Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25724
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->CB()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ae;->l(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$s;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$s;->sm()Lmobi/tikl/wire/control/a$s;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 25726
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ae;->l(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$s;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$s;->a(Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$s$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$s$a;->c(Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$s$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$s$a;->sx()Lmobi/tikl/wire/control/a$s;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$s;

    .line 25731
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->k(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25732
    return-object p0

    .line 25729
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$s;

    goto :goto_2b
.end method

.method public e(Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25687
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cz()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ae;->k(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$t;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$t;->sz()Lmobi/tikl/wire/control/a$t;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 25689
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ae;->k(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$t;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$t;->a(Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$t$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$t$a;->c(Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$t$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$t$a;->sK()Lmobi/tikl/wire/control/a$t;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$t;

    .line 25694
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->j(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25695
    return-object p0

    .line 25692
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$t;

    goto :goto_2b
.end method

.method public f(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25341
    if-nez p1, :cond_8

    .line 25342
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25344
    :cond_8
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25345
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$M;

    .line 25346
    return-object p0
.end method

.method public f(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25576
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Ct()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ae;->h(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$Z;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$Z;->AU()Lmobi/tikl/wire/control/a$Z;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 25578
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ae;->h(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$Z;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$Z;->a(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$Z$a;->d(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$Z$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$Z$a;->Bj()Lmobi/tikl/wire/control/a$Z;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$Z;

    .line 25583
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->g(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25584
    return-object p0

    .line 25581
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$Z;

    goto :goto_2b
.end method

.method public f(Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25428
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cl()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ae;->d(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$aa;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$aa;->Bl()Lmobi/tikl/wire/control/a$aa;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 25430
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ae;->d(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$aa;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$aa;->a(Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$aa$a;->d(Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$aa$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$aa$a;->Bv()Lmobi/tikl/wire/control/a$aa;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$aa;

    .line 25435
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->c(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25436
    return-object p0

    .line 25433
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$aa;

    goto :goto_2b
.end method

.method public f(Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25502
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Cp()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ae;->f(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$ac;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$ac;->BI()Lmobi/tikl/wire/control/a$ac;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 25504
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ae;->f(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$ac;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ac;->a(Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$ac$a;->d(Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$ac$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$ac$a;->BS()Lmobi/tikl/wire/control/a$ac;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$ac;

    .line 25509
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->e(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25510
    return-object p0

    .line 25507
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$ac;

    goto :goto_2b
.end method

.method public f(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25761
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->CD()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ae;->m(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$n;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$n;->ra()Lmobi/tikl/wire/control/a$n;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 25763
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ae;->m(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$n;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$n;->b(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$n$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$n$a;->d(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$n$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$n$a;->rs()Lmobi/tikl/wire/control/a$n;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$n;

    .line 25768
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->l(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25769
    return-object p0

    .line 25766
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$n;

    goto :goto_2b
.end method

.method public g(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 4

    .prologue
    .line 25354
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->Ch()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0}, Lmobi/tikl/wire/control/a$ae;->b(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$M;

    move-result-object v0

    invoke-static {}, Lmobi/tikl/wire/control/a$M;->xe()Lmobi/tikl/wire/control/a$M;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 25356
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    iget-object v1, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v1}, Lmobi/tikl/wire/control/a$ae;->b(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$M;

    move-result-object v1

    invoke-static {v1}, Lmobi/tikl/wire/control/a$M;->b(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$M$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/tikl/wire/control/a$M$a;->e(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$M$a;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/tikl/wire/control/a$M$a;->xo()Lmobi/tikl/wire/control/a$M;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$M;

    .line 25361
    :goto_2b
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Z)Z

    .line 25362
    return-object p0

    .line 25359
    :cond_32
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-static {v0, p1}, Lmobi/tikl/wire/control/a$ae;->a(Lmobi/tikl/wire/control/a$ae;Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$M;

    goto :goto_2b
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 25120
    iget-object v0, p0, Lmobi/tikl/wire/control/a$ae$a;->ug:Lmobi/tikl/wire/control/a$ae;

    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$ae;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public n(Lmobi/tikl/wire/control/a$ae;)Lmobi/tikl/wire/control/a$ae$a;
    .registers 3

    .prologue
    .line 25158
    invoke-static {}, Lmobi/tikl/wire/control/a$ae;->Cf()Lmobi/tikl/wire/control/a$ae;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 25196
    :goto_6
    return-object p0

    .line 25159
    :cond_7
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Ch()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 25160
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Ci()Lmobi/tikl/wire/control/a$M;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ae$a;->g(Lmobi/tikl/wire/control/a$M;)Lmobi/tikl/wire/control/a$ae$a;

    .line 25162
    :cond_14
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Cj()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 25163
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Ck()Lmobi/tikl/wire/control/a$L;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ae$a;->e(Lmobi/tikl/wire/control/a$L;)Lmobi/tikl/wire/control/a$ae$a;

    .line 25165
    :cond_21
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Cl()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 25166
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Cm()Lmobi/tikl/wire/control/a$aa;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ae$a;->f(Lmobi/tikl/wire/control/a$aa;)Lmobi/tikl/wire/control/a$ae$a;

    .line 25168
    :cond_2e
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Cn()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 25169
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Co()Lmobi/tikl/wire/control/a$ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ae$a;->e(Lmobi/tikl/wire/control/a$ab;)Lmobi/tikl/wire/control/a$ae$a;

    .line 25171
    :cond_3b
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Cp()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 25172
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Cq()Lmobi/tikl/wire/control/a$ac;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ae$a;->f(Lmobi/tikl/wire/control/a$ac;)Lmobi/tikl/wire/control/a$ae$a;

    .line 25174
    :cond_48
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Cr()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 25175
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Cs()Lmobi/tikl/wire/control/a$ad;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ae$a;->e(Lmobi/tikl/wire/control/a$ad;)Lmobi/tikl/wire/control/a$ae$a;

    .line 25177
    :cond_55
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Ct()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 25178
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Cu()Lmobi/tikl/wire/control/a$Z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ae$a;->f(Lmobi/tikl/wire/control/a$Z;)Lmobi/tikl/wire/control/a$ae$a;

    .line 25180
    :cond_62
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Cv()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 25181
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Cw()Lmobi/tikl/wire/control/a$af;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ae$a;->b(Lmobi/tikl/wire/control/a$af;)Lmobi/tikl/wire/control/a$ae$a;

    .line 25183
    :cond_6f
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Cx()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 25184
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Cy()Lmobi/tikl/wire/control/a$Y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ae$a;->e(Lmobi/tikl/wire/control/a$Y;)Lmobi/tikl/wire/control/a$ae$a;

    .line 25186
    :cond_7c
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->Cz()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 25187
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->CA()Lmobi/tikl/wire/control/a$t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ae$a;->e(Lmobi/tikl/wire/control/a$t;)Lmobi/tikl/wire/control/a$ae$a;

    .line 25189
    :cond_89
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->CB()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 25190
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->CC()Lmobi/tikl/wire/control/a$s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ae$a;->e(Lmobi/tikl/wire/control/a$s;)Lmobi/tikl/wire/control/a$ae$a;

    .line 25192
    :cond_96
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->CD()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 25193
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->CE()Lmobi/tikl/wire/control/a$n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ae$a;->f(Lmobi/tikl/wire/control/a$n;)Lmobi/tikl/wire/control/a$ae$a;

    .line 25195
    :cond_a3
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$ae;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/tikl/wire/control/a$ae$a;->g(Lcom/google/protobuf/z;)Lcom/google/protobuf/q$a;

    goto/16 :goto_6
.end method
