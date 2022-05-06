.class public final Lcom/google/protobuf/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/l$1;,
        Lcom/google/protobuf/l$b;,
        Lcom/google/protobuf/l$c;,
        Lcom/google/protobuf/l$h;,
        Lcom/google/protobuf/l$i;,
        Lcom/google/protobuf/l$j;,
        Lcom/google/protobuf/l$e;,
        Lcom/google/protobuf/l$d;,
        Lcom/google/protobuf/l$f;,
        Lcom/google/protobuf/l$a;,
        Lcom/google/protobuf/l$g;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1584
    return-void
.end method

.method private static a(Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v2, 0x2e

    .line 1497
    if-eqz p1, :cond_1e

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/protobuf/l$a;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1502
    :cond_1d
    :goto_1d
    return-object p2

    .line 1499
    :cond_1e
    invoke-virtual {p0}, Lcom/google/protobuf/l$g;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/protobuf/l$g;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1d
.end method

.method static synthetic b(Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/l;->a(Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
