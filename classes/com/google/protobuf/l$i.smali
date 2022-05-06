.class public final Lcom/google/protobuf/l$i;
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
    name = "i"
.end annotation


# instance fields
.field private final cU:Lcom/google/protobuf/l$g;

.field private dY:Lcom/google/protobuf/f$l;

.field private final fullName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/f$l;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$j;I)V
    .registers 7

    .prologue
    .line 1457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1458
    iput-object p1, p0, Lcom/google/protobuf/l$i;->dY:Lcom/google/protobuf/f$l;

    .line 1460
    iput-object p2, p0, Lcom/google/protobuf/l$i;->cU:Lcom/google/protobuf/l$g;

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/google/protobuf/l$j;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/f$l;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$i;->fullName:Ljava/lang/String;

    .line 1465
    invoke-static {p2}, Lcom/google/protobuf/l$g;->c(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/l$b;->a(Lcom/google/protobuf/l$h;)V

    .line 1466
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/f$l;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$j;ILcom/google/protobuf/l$1;)V
    .registers 6

    .prologue
    .line 1407
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/l$i;-><init>(Lcom/google/protobuf/f$l;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$j;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/l$i;)V
    .registers 1

    .prologue
    .line 1407
    invoke-direct {p0}, Lcom/google/protobuf/l$i;->gh()V

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/l$i;Lcom/google/protobuf/f$l;)V
    .registers 2

    .prologue
    .line 1407
    invoke-direct {p0, p1}, Lcom/google/protobuf/l$i;->e(Lcom/google/protobuf/f$l;)V

    return-void
.end method

.method private e(Lcom/google/protobuf/f$l;)V
    .registers 2

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/google/protobuf/l$i;->dY:Lcom/google/protobuf/f$l;

    .line 1489
    return-void
.end method

.method private gh()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1469
    iget-object v0, p0, Lcom/google/protobuf/l$i;->cU:Lcom/google/protobuf/l$g;

    invoke-static {v0}, Lcom/google/protobuf/l$g;->c(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/l$i;->dY:Lcom/google/protobuf/f$l;

    invoke-virtual {v1}, Lcom/google/protobuf/f$l;->ex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/protobuf/l$b;->a(Ljava/lang/String;Lcom/google/protobuf/l$h;)Lcom/google/protobuf/l$h;

    move-result-object v0

    .line 1471
    instance-of v0, v0, Lcom/google/protobuf/l$a;

    if-nez v0, :cond_36

    .line 1472
    new-instance v0, Lcom/google/protobuf/l$c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/protobuf/l$i;->dY:Lcom/google/protobuf/f$l;

    invoke-virtual {v2}, Lcom/google/protobuf/f$l;->ex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a message type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 1475
    :cond_36
    iget-object v0, p0, Lcom/google/protobuf/l$i;->cU:Lcom/google/protobuf/l$g;

    invoke-static {v0}, Lcom/google/protobuf/l$g;->c(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/l$i;->dY:Lcom/google/protobuf/f$l;

    invoke-virtual {v1}, Lcom/google/protobuf/f$l;->ez()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/protobuf/l$b;->a(Ljava/lang/String;Lcom/google/protobuf/l$h;)Lcom/google/protobuf/l$h;

    move-result-object v0

    .line 1479
    instance-of v0, v0, Lcom/google/protobuf/l$a;

    if-nez v0, :cond_6b

    .line 1480
    new-instance v0, Lcom/google/protobuf/l$c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/protobuf/l$i;->dY:Lcom/google/protobuf/f$l;

    invoke-virtual {v2}, Lcom/google/protobuf/f$l;->ez()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a message type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/l$c;-><init>(Lcom/google/protobuf/l$h;Ljava/lang/String;Lcom/google/protobuf/l$1;)V

    throw v0

    .line 1483
    :cond_6b
    return-void
.end method


# virtual methods
.method public gD()Lcom/google/protobuf/f$l;
    .registers 2

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/google/protobuf/l$i;->dY:Lcom/google/protobuf/f$l;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/google/protobuf/l$i;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/google/protobuf/l$i;->dY:Lcom/google/protobuf/f$l;

    invoke-virtual {v0}, Lcom/google/protobuf/f$l;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gf()Lcom/google/protobuf/l$g;
    .registers 2

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/google/protobuf/l$i;->cU:Lcom/google/protobuf/l$g;

    return-object v0
.end method

.method public synthetic gi()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 1407
    invoke-virtual {p0}, Lcom/google/protobuf/l$i;->gD()Lcom/google/protobuf/f$l;

    move-result-object v0

    return-object v0
.end method
