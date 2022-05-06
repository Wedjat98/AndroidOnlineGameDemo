.class public final Lcom/google/protobuf/l$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/l$h;
.implements Lcom/google/protobuf/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private final cU:Lcom/google/protobuf/l$g;

.field private dg:Lcom/google/protobuf/f$d;

.field private final dh:Lcom/google/protobuf/l$d;

.field private final fullName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/f$d;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$d;I)V
    .registers 7

    .prologue
    .line 1296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1297
    iput-object p1, p0, Lcom/google/protobuf/l$e;->dg:Lcom/google/protobuf/f$d;

    .line 1299
    iput-object p2, p0, Lcom/google/protobuf/l$e;->cU:Lcom/google/protobuf/l$g;

    .line 1300
    iput-object p3, p0, Lcom/google/protobuf/l$e;->dh:Lcom/google/protobuf/l$d;

    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/google/protobuf/l$d;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/f$d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$e;->fullName:Ljava/lang/String;

    .line 1304
    invoke-static {p2}, Lcom/google/protobuf/l$g;->c(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/l$b;->a(Lcom/google/protobuf/l$h;)V

    .line 1305
    invoke-static {p2}, Lcom/google/protobuf/l$g;->c(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/l$b;->a(Lcom/google/protobuf/l$e;)V

    .line 1306
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/f$d;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$d;ILcom/google/protobuf/l$1;)V
    .registers 6

    .prologue
    .line 1252
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/l$e;-><init>(Lcom/google/protobuf/f$d;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$d;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/l$e;Lcom/google/protobuf/f$d;)V
    .registers 2

    .prologue
    .line 1252
    invoke-direct {p0, p1}, Lcom/google/protobuf/l$e;->e(Lcom/google/protobuf/f$d;)V

    return-void
.end method

.method private e(Lcom/google/protobuf/f$d;)V
    .registers 2

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/google/protobuf/l$e;->dg:Lcom/google/protobuf/f$d;

    .line 1311
    return-void
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/google/protobuf/l$e;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/google/protobuf/l$e;->dg:Lcom/google/protobuf/f$d;

    invoke-virtual {v0}, Lcom/google/protobuf/f$d;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/google/protobuf/l$e;->dg:Lcom/google/protobuf/f$d;

    invoke-virtual {v0}, Lcom/google/protobuf/f$d;->getNumber()I

    move-result v0

    return v0
.end method

.method public gf()Lcom/google/protobuf/l$g;
    .registers 2

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/google/protobuf/l$e;->cU:Lcom/google/protobuf/l$g;

    return-object v0
.end method

.method public synthetic gi()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 1252
    invoke-virtual {p0}, Lcom/google/protobuf/l$e;->gl()Lcom/google/protobuf/f$d;

    move-result-object v0

    return-object v0
.end method

.method public gl()Lcom/google/protobuf/f$d;
    .registers 2

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/google/protobuf/l$e;->dg:Lcom/google/protobuf/f$d;

    return-object v0
.end method

.method public gm()Lcom/google/protobuf/l$d;
    .registers 2

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/google/protobuf/l$e;->dh:Lcom/google/protobuf/l$d;

    return-object v0
.end method
