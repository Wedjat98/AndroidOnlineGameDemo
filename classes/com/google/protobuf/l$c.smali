.class public final Lcom/google/protobuf/l$c;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/protobuf/l$g;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/protobuf/l$g;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1572
    invoke-virtual {p1}, Lcom/google/protobuf/l$g;->getName()Ljava/lang/String;

    .line 1573
    invoke-virtual {p1}, Lcom/google/protobuf/l$g;->gB()Lcom/google/protobuf/f$h;

    .line 1574
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/l$g;Ljava/lang/String;Lcom/google/protobuf/l$1;)V
    .registers 4

    .prologue
    .line 1523
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$g;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/l$h;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/google/protobuf/l$h;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1551
    invoke-interface {p1}, Lcom/google/protobuf/l$h;->getFullName()Ljava/lang/String;

    .line 1552
    invoke-interface {p1}, Lcom/google/protobuf/l$h;->gi()Lcom/google/protobuf/t;

    .line 1553
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V
    .registers 4

    .prologue
    .line 1523
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 1560
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;)V

    .line 1561
    invoke-virtual {p0, p3}, Lcom/google/protobuf/l$c;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1562
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/protobuf/l$1;)V
    .registers 5

    .prologue
    .line 1523
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
