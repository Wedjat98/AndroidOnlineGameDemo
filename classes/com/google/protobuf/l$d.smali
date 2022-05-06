.class public final Lcom/google/protobuf/l$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/l$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final cU:Lcom/google/protobuf/l$g;

.field private de:Lcom/google/protobuf/f$b;

.field private df:[Lcom/google/protobuf/l$e;

.field private final fullName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/f$b;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;I)V
    .registers 12

    .prologue
    const/4 v5, 0x0

    .line 1211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1212
    iput-object p1, p0, Lcom/google/protobuf/l$d;->de:Lcom/google/protobuf/f$b;

    .line 1214
    invoke-virtual {p1}, Lcom/google/protobuf/f$b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/google/protobuf/l;->b(Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$d;->fullName:Ljava/lang/String;

    .line 1215
    iput-object p2, p0, Lcom/google/protobuf/l$d;->cU:Lcom/google/protobuf/l$g;

    .line 1216
    invoke-virtual {p1}, Lcom/google/protobuf/f$b;->getValueCount()I

    move-result v0

    if-nez v0, :cond_20

    .line 1221
    new-instance v0, Lcom/google/protobuf/l$c;

    const-string v1, "Enums must contain at least one value."

    invoke-direct {v0, p0, v1, v5}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 1225
    :cond_20
    invoke-virtual {p1}, Lcom/google/protobuf/f$b;->getValueCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/l$e;

    iput-object v0, p0, Lcom/google/protobuf/l$d;->df:[Lcom/google/protobuf/l$e;

    .line 1226
    const/4 v4, 0x0

    :goto_29
    invoke-virtual {p1}, Lcom/google/protobuf/f$b;->getValueCount()I

    move-result v0

    if-ge v4, v0, :cond_41

    .line 1227
    iget-object v6, p0, Lcom/google/protobuf/l$d;->df:[Lcom/google/protobuf/l$e;

    new-instance v0, Lcom/google/protobuf/l$e;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/f$b;->J(I)Lcom/google/protobuf/f$d;

    move-result-object v1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/l$e;-><init>(Lcom/google/protobuf/f$d;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$d;ILcom/google/protobuf/l$1;)V

    aput-object v0, v6, v4

    .line 1226
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 1231
    :cond_41
    invoke-static {p2}, Lcom/google/protobuf/l$g;->c(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/l$b;->a(Lcom/google/protobuf/l$h;)V

    .line 1232
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/f$b;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;ILcom/google/protobuf/l$1;)V
    .registers 6

    .prologue
    .line 1140
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/l$d;-><init>(Lcom/google/protobuf/f$b;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/l$d;Lcom/google/protobuf/f$b;)V
    .registers 2

    .prologue
    .line 1140
    invoke-direct {p0, p1}, Lcom/google/protobuf/l$d;->g(Lcom/google/protobuf/f$b;)V

    return-void
.end method

.method private g(Lcom/google/protobuf/f$b;)V
    .registers 5

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/google/protobuf/l$d;->de:Lcom/google/protobuf/f$b;

    .line 1238
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/protobuf/l$d;->df:[Lcom/google/protobuf/l$e;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 1239
    iget-object v1, p0, Lcom/google/protobuf/l$d;->df:[Lcom/google/protobuf/l$e;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/f$b;->J(I)Lcom/google/protobuf/f$d;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/l$e;->a(Lcom/google/protobuf/l$e;Lcom/google/protobuf/f$d;)V

    .line 1238
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1241
    :cond_16
    return-void
.end method


# virtual methods
.method public D(Ljava/lang/String;)Lcom/google/protobuf/l$e;
    .registers 5

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/google/protobuf/l$d;->cU:Lcom/google/protobuf/l$g;

    invoke-static {v0}, Lcom/google/protobuf/l$g;->c(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/protobuf/l$d;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l$b;->C(Ljava/lang/String;)Lcom/google/protobuf/l$h;

    move-result-object v0

    .line 1182
    if-eqz v0, :cond_2c

    instance-of v1, v0, Lcom/google/protobuf/l$e;

    if-eqz v1, :cond_2c

    .line 1183
    check-cast v0, Lcom/google/protobuf/l$e;

    .line 1185
    :goto_2b
    return-object v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public W(I)Lcom/google/protobuf/l$e;
    .registers 4

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/google/protobuf/l$d;->cU:Lcom/google/protobuf/l$g;

    invoke-static {v0}, Lcom/google/protobuf/l$g;->c(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/l$b;->b(Lcom/google/protobuf/l$b;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/protobuf/l$b$a;

    invoke-direct {v1, p0, p1}, Lcom/google/protobuf/l$b$a;-><init>(Lcom/google/protobuf/l$h;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$e;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/google/protobuf/l$d;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/google/protobuf/l$d;->de:Lcom/google/protobuf/f$b;

    invoke-virtual {v0}, Lcom/google/protobuf/f$b;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gf()Lcom/google/protobuf/l$g;
    .registers 2

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/google/protobuf/l$d;->cU:Lcom/google/protobuf/l$g;

    return-object v0
.end method

.method public synthetic gi()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 1140
    invoke-virtual {p0}, Lcom/google/protobuf/l$d;->gj()Lcom/google/protobuf/f$b;

    move-result-object v0

    return-object v0
.end method

.method public gj()Lcom/google/protobuf/f$b;
    .registers 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/google/protobuf/l$d;->de:Lcom/google/protobuf/f$b;

    return-object v0
.end method

.method public gk()Ljava/util/List;
    .registers 2

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/google/protobuf/l$d;->df:[Lcom/google/protobuf/l$e;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
