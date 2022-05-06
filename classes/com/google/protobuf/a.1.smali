.class public abstract Lcom/google/protobuf/a;
.super Lcom/google/protobuf/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/a$1;,
        Lcom/google/protobuf/a$a;
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/protobuf/b;-><init>()V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/a;->a:I

    .line 183
    return-void
.end method


# virtual methods
.method public a()I
    .registers 8

    .prologue
    .line 116
    iget v0, p0, Lcom/google/protobuf/a;->a:I

    .line 117
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 147
    :goto_5
    return v0

    .line 121
    :cond_6
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/google/protobuf/a;->aT()Lcom/google/protobuf/l$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/l$a;->aI()Lcom/google/protobuf/f$k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/f$k;->ei()Z

    move-result v3

    .line 126
    invoke-virtual {p0}, Lcom/google/protobuf/a;->gG()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/l$f;

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 129
    if-eqz v3, :cond_59

    invoke-virtual {v1}, Lcom/google/protobuf/l$f;->isExtension()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-virtual {v1}, Lcom/google/protobuf/l$f;->gq()Lcom/google/protobuf/l$f$b;

    move-result-object v5

    sget-object v6, Lcom/google/protobuf/l$f$b;->dK:Lcom/google/protobuf/l$f$b;

    if-ne v5, v6, :cond_59

    invoke-virtual {v1}, Lcom/google/protobuf/l$f;->gs()Z

    move-result v5

    if-nez v5, :cond_59

    .line 132
    invoke-virtual {v1}, Lcom/google/protobuf/l$f;->getNumber()I

    move-result v1

    check-cast v0, Lcom/google/protobuf/t;

    invoke-static {v1, v0}, Lcom/google/protobuf/e;->f(ILcom/google/protobuf/u;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_20

    .line 135
    :cond_59
    invoke-static {v1, v0}, Lcom/google/protobuf/p;->c(Lcom/google/protobuf/p$a;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    .line 137
    goto :goto_20

    .line 139
    :cond_60
    invoke-virtual {p0}, Lcom/google/protobuf/a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    .line 140
    if-eqz v3, :cond_6e

    .line 141
    invoke-virtual {v0}, Lcom/google/protobuf/z;->hk()I

    move-result v0

    add-int/2addr v0, v2

    .line 146
    :goto_6b
    iput v0, p0, Lcom/google/protobuf/a;->a:I

    goto :goto_5

    .line 143
    :cond_6e
    invoke-virtual {v0}, Lcom/google/protobuf/z;->a()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_6b
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 8

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/protobuf/a;->aT()Lcom/google/protobuf/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$a;->aI()Lcom/google/protobuf/f$k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/f$k;->ei()Z

    move-result v2

    .line 93
    invoke-virtual {p0}, Lcom/google/protobuf/a;->gG()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/l$f;

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 96
    if-eqz v2, :cond_4e

    invoke-virtual {v1}, Lcom/google/protobuf/l$f;->isExtension()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-virtual {v1}, Lcom/google/protobuf/l$f;->gq()Lcom/google/protobuf/l$f$b;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/l$f$b;->dK:Lcom/google/protobuf/l$f$b;

    if-ne v4, v5, :cond_4e

    invoke-virtual {v1}, Lcom/google/protobuf/l$f;->gs()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 99
    invoke-virtual {v1}, Lcom/google/protobuf/l$f;->getNumber()I

    move-result v1

    check-cast v0, Lcom/google/protobuf/t;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/e;->c(ILcom/google/protobuf/u;)V

    goto :goto_18

    .line 101
    :cond_4e
    invoke-static {v1, v0, p1}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/p$a;Ljava/lang/Object;Lcom/google/protobuf/e;)V

    goto :goto_18

    .line 105
    :cond_52
    invoke-virtual {p0}, Lcom/google/protobuf/a;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    .line 106
    if-eqz v2, :cond_5c

    .line 107
    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->c(Lcom/google/protobuf/e;)V

    .line 111
    :goto_5b
    return-void

    .line 109
    :cond_5c
    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    goto :goto_5b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    if-ne p1, p0, :cond_5

    .line 162
    :cond_4
    :goto_4
    return v0

    .line 155
    :cond_5
    instance-of v2, p1, Lcom/google/protobuf/t;

    if-nez v2, :cond_b

    move v0, v1

    .line 156
    goto :goto_4

    .line 158
    :cond_b
    check-cast p1, Lcom/google/protobuf/t;

    .line 159
    invoke-virtual {p0}, Lcom/google/protobuf/a;->aT()Lcom/google/protobuf/l$a;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/protobuf/t;->aT()Lcom/google/protobuf/l$a;

    move-result-object v3

    if-eq v2, v3, :cond_19

    move v0, v1

    .line 160
    goto :goto_4

    .line 162
    :cond_19
    invoke-virtual {p0}, Lcom/google/protobuf/a;->gG()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/protobuf/t;->gG()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {p0}, Lcom/google/protobuf/a;->gH()Lcom/google/protobuf/z;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/protobuf/t;->gH()Lcom/google/protobuf/z;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/protobuf/z;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_35
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/protobuf/a;->aT()Lcom/google/protobuf/l$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 170
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/a;->gG()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    mul-int/lit8 v0, v0, 0x1d

    invoke-virtual {p0}, Lcom/google/protobuf/a;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    return v0
.end method

.method public isInitialized()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/google/protobuf/a;->aT()Lcom/google/protobuf/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l$a;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$f;

    .line 54
    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 55
    invoke-virtual {p0, v0}, Lcom/google/protobuf/a;->d(Lcom/google/protobuf/l$f;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v2

    .line 80
    :goto_26
    return v0

    .line 63
    :cond_27
    invoke-virtual {p0}, Lcom/google/protobuf/a;->gG()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/l$f;

    .line 65
    invoke-virtual {v1}, Lcom/google/protobuf/l$f;->go()Lcom/google/protobuf/l$f$a;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    if-ne v4, v5, :cond_33

    .line 66
    invoke-virtual {v1}, Lcom/google/protobuf/l$f;->gs()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t;

    .line 68
    invoke-interface {v0}, Lcom/google/protobuf/t;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5d

    move v0, v2

    .line 69
    goto :goto_26

    .line 73
    :cond_71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t;

    invoke-interface {v0}, Lcom/google/protobuf/t;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_33

    move v0, v2

    .line 74
    goto :goto_26

    .line 80
    :cond_7f
    const/4 v0, 0x1

    goto :goto_26
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    invoke-static {p0}, Lcom/google/protobuf/d;->e(Lcom/google/protobuf/t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
