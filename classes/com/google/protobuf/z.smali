.class public final Lcom/google/protobuf/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/z$b;,
        Lcom/google/protobuf/z$a;
    }
.end annotation


# static fields
.field private static final eD:Lcom/google/protobuf/z;


# instance fields
.field private ei:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 82
    new-instance v0, Lcom/google/protobuf/z;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/z;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/google/protobuf/z;->eD:Lcom/google/protobuf/z;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/protobuf/z;->ei:Ljava/util/Map;

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/protobuf/d;)V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/protobuf/z;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static h(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;
    .registers 2

    .prologue
    .line 72
    invoke-static {}, Lcom/google/protobuf/z;->hh()Lcom/google/protobuf/z$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/z$a;->j(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    return-object v0
.end method

.method public static hh()Lcom/google/protobuf/z$a;
    .registers 1

    .prologue
    .line 64
    invoke-static {}, Lcom/google/protobuf/z$a;->hp()Lcom/google/protobuf/z$a;

    move-result-object v0

    return-object v0
.end method

.method public static hi()Lcom/google/protobuf/z;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/protobuf/z;->eD:Lcom/google/protobuf/z;

    return-object v0
.end method

.method static synthetic i(Lcom/google/protobuf/z;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/protobuf/z;->ei:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lcom/google/protobuf/z;->ei:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/z$b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/protobuf/z$b;->Z(I)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_c

    .line 202
    :cond_2f
    return v2
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/protobuf/z;->ei:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/z$b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/z$b;->b(ILcom/google/protobuf/e;)V

    goto :goto_a

    .line 132
    :cond_2a
    return-void
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/protobuf/z;->hl()Lcom/google/protobuf/z$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/protobuf/e;)V
    .registers 5

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/protobuf/z;->ei:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/z$b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/z$b;->c(ILcom/google/protobuf/e;)V

    goto :goto_a

    .line 215
    :cond_2a
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 96
    if-ne p0, p1, :cond_4

    .line 99
    :cond_3
    :goto_3
    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/protobuf/z;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/protobuf/z;->ei:Ljava/util/Map;

    check-cast p1, Lcom/google/protobuf/z;

    iget-object v2, p1, Lcom/google/protobuf/z;->ei:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_14
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/protobuf/z;->ei:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public hj()Ljava/util/Map;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/protobuf/z;->ei:Ljava/util/Map;

    return-object v0
.end method

.method public hk()I
    .registers 5

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    iget-object v1, p0, Lcom/google/protobuf/z;->ei:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/z$b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/protobuf/z$b;->aa(I)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_c

    .line 227
    :cond_2f
    return v2
.end method

.method public hl()Lcom/google/protobuf/z$a;
    .registers 2

    .prologue
    .line 265
    invoke-static {}, Lcom/google/protobuf/z;->hh()Lcom/google/protobuf/z$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/z$a;->j(Lcom/google/protobuf/z;)Lcom/google/protobuf/z$a;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    invoke-static {p0}, Lcom/google/protobuf/d;->b(Lcom/google/protobuf/z;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
