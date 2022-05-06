.class public final Lcom/google/protobuf/q$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/q$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private en:Ljava/util/Map$Entry;

.field private final eo:Z

.field private synthetic ep:Lcom/google/protobuf/q$c;

.field private final iter:Ljava/util/Iterator;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/q$c;Z)V
    .registers 4

    .prologue
    .line 405
    iput-object p1, p0, Lcom/google/protobuf/q$c$a;->ep:Lcom/google/protobuf/q$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iget-object v0, p0, Lcom/google/protobuf/q$c$a;->ep:Lcom/google/protobuf/q$c;

    invoke-static {v0}, Lcom/google/protobuf/q$c;->b(Lcom/google/protobuf/q$c;)Lcom/google/protobuf/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/q$c$a;->iter:Ljava/util/Iterator;

    .line 406
    iget-object v0, p0, Lcom/google/protobuf/q$c$a;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 407
    iget-object v0, p0, Lcom/google/protobuf/q$c$a;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/protobuf/q$c$a;->en:Ljava/util/Map$Entry;

    .line 409
    :cond_23
    iput-boolean p2, p0, Lcom/google/protobuf/q$c$a;->eo:Z

    .line 410
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/q$c;ZLcom/google/protobuf/q$1;)V
    .registers 4

    .prologue
    .line 396
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/q$c$a;-><init>(Lcom/google/protobuf/q$c;Z)V

    return-void
.end method


# virtual methods
.method public a(ILcom/google/protobuf/e;)V
    .registers 6

    .prologue
    .line 414
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/q$c$a;->en:Ljava/util/Map$Entry;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/google/protobuf/q$c$a;->en:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$f;

    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->getNumber()I

    move-result v0

    if-ge v0, p1, :cond_5c

    .line 415
    iget-object v0, p0, Lcom/google/protobuf/q$c$a;->en:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l$f;

    .line 416
    iget-boolean v1, p0, Lcom/google/protobuf/q$c$a;->eo:Z

    if-eqz v1, :cond_4e

    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->gp()Lcom/google/protobuf/A$b;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/A$b;->ft:Lcom/google/protobuf/A$b;

    if-ne v1, v2, :cond_4e

    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->gs()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 419
    invoke-virtual {v0}, Lcom/google/protobuf/l$f;->getNumber()I

    move-result v1

    iget-object v0, p0, Lcom/google/protobuf/q$c$a;->en:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t;

    invoke-virtual {p2, v1, v0}, Lcom/google/protobuf/e;->c(ILcom/google/protobuf/u;)V

    .line 424
    :goto_3b
    iget-object v0, p0, Lcom/google/protobuf/q$c$a;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 425
    iget-object v0, p0, Lcom/google/protobuf/q$c$a;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/protobuf/q$c$a;->en:Ljava/util/Map$Entry;

    goto :goto_0

    .line 422
    :cond_4e
    iget-object v1, p0, Lcom/google/protobuf/q$c$a;->en:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/protobuf/p;->a(Lcom/google/protobuf/p$a;Ljava/lang/Object;Lcom/google/protobuf/e;)V

    goto :goto_3b

    .line 427
    :cond_58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/q$c$a;->en:Ljava/util/Map$Entry;

    goto :goto_0

    .line 430
    :cond_5c
    return-void
.end method
