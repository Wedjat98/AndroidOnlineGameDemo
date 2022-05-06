.class public final Lcom/google/protobuf/l$j;
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
    name = "j"
.end annotation


# instance fields
.field private final cU:Lcom/google/protobuf/l$g;

.field private dZ:Lcom/google/protobuf/f$n;

.field private ea:[Lcom/google/protobuf/l$i;

.field private final fullName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/f$n;Lcom/google/protobuf/l$g;I)V
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 1371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1372
    iput-object p1, p0, Lcom/google/protobuf/l$j;->dZ:Lcom/google/protobuf/f$n;

    .line 1374
    invoke-virtual {p1}, Lcom/google/protobuf/f$n;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v5, v0}, Lcom/google/protobuf/l;->b(Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/l$j;->fullName:Ljava/lang/String;

    .line 1375
    iput-object p2, p0, Lcom/google/protobuf/l$j;->cU:Lcom/google/protobuf/l$g;

    .line 1377
    invoke-virtual {p1}, Lcom/google/protobuf/f$n;->eY()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/l$i;

    iput-object v0, p0, Lcom/google/protobuf/l$j;->ea:[Lcom/google/protobuf/l$i;

    .line 1378
    const/4 v4, 0x0

    :goto_1b
    invoke-virtual {p1}, Lcom/google/protobuf/f$n;->eY()I

    move-result v0

    if-ge v4, v0, :cond_33

    .line 1379
    iget-object v6, p0, Lcom/google/protobuf/l$j;->ea:[Lcom/google/protobuf/l$i;

    new-instance v0, Lcom/google/protobuf/l$i;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/f$n;->T(I)Lcom/google/protobuf/f$l;

    move-result-object v1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/l$i;-><init>(Lcom/google/protobuf/f$l;Lcom/google/protobuf/l$g;Lcom/google/protobuf/l$j;ILcom/google/protobuf/l$1;)V

    aput-object v0, v6, v4

    .line 1378
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 1383
    :cond_33
    invoke-static {p2}, Lcom/google/protobuf/l$g;->c(Lcom/google/protobuf/l$g;)Lcom/google/protobuf/l$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/l$b;->a(Lcom/google/protobuf/l$h;)V

    .line 1384
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/f$n;Lcom/google/protobuf/l$g;ILcom/google/protobuf/l$1;)V
    .registers 5

    .prologue
    .line 1317
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/l$j;-><init>(Lcom/google/protobuf/f$n;Lcom/google/protobuf/l$g;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/l$j;)V
    .registers 1

    .prologue
    .line 1317
    invoke-direct {p0}, Lcom/google/protobuf/l$j;->gh()V

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/l$j;Lcom/google/protobuf/f$n;)V
    .registers 2

    .prologue
    .line 1317
    invoke-direct {p0, p1}, Lcom/google/protobuf/l$j;->f(Lcom/google/protobuf/f$n;)V

    return-void
.end method

.method private f(Lcom/google/protobuf/f$n;)V
    .registers 5

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/google/protobuf/l$j;->dZ:Lcom/google/protobuf/f$n;

    .line 1396
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/protobuf/l$j;->ea:[Lcom/google/protobuf/l$i;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 1397
    iget-object v1, p0, Lcom/google/protobuf/l$j;->ea:[Lcom/google/protobuf/l$i;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/f$n;->T(I)Lcom/google/protobuf/f$l;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/l$i;->a(Lcom/google/protobuf/l$i;Lcom/google/protobuf/f$l;)V

    .line 1396
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1399
    :cond_16
    return-void
.end method

.method private gh()V
    .registers 5

    .prologue
    .line 1387
    iget-object v1, p0, Lcom/google/protobuf/l$j;->ea:[Lcom/google/protobuf/l$i;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 1388
    invoke-static {v3}, Lcom/google/protobuf/l$i;->a(Lcom/google/protobuf/l$i;)V

    .line 1387
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1390
    :cond_e
    return-void
.end method


# virtual methods
.method public gE()Lcom/google/protobuf/f$n;
    .registers 2

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/google/protobuf/l$j;->dZ:Lcom/google/protobuf/f$n;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/google/protobuf/l$j;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/google/protobuf/l$j;->dZ:Lcom/google/protobuf/f$n;

    invoke-virtual {v0}, Lcom/google/protobuf/f$n;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gf()Lcom/google/protobuf/l$g;
    .registers 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/google/protobuf/l$j;->cU:Lcom/google/protobuf/l$g;

    return-object v0
.end method

.method public synthetic gi()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 1317
    invoke-virtual {p0}, Lcom/google/protobuf/l$j;->gE()Lcom/google/protobuf/f$n;

    move-result-object v0

    return-object v0
.end method
