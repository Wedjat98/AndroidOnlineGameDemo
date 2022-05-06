.class public Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;
.super Ljava/lang/Object;
.source "ResupplyPurchaseInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1ed841325b7836eL


# instance fields
.field private fileName:Ljava/lang/String;

.field private purchaseRequestEntity:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private retry:Ljava/util/concurrent/atomic/AtomicInteger;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->retry:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, "purchaseRequestEntity":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->retry:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    iput-object p1, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->url:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->fileName:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->purchaseRequestEntity:Ljava/util/Map;

    .line 43
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseRequestEntity()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->purchaseRequestEntity:Ljava/util/Map;

    return-object v0
.end method

.method public getRetryTime()I
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->retry:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_6

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->retry:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_5
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->fileName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setPurchaseRequestEntity(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "purchaseRequestEntity":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->purchaseRequestEntity:Ljava/util/Map;

    .line 84
    return-void
.end method

.method public setRetry()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->retry:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_9

    .line 54
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->retry:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 56
    :cond_9
    return-void
.end method

.method public setRetry(I)V
    .registers 3
    .param p1, "retry"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->retry:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 60
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->url:Ljava/lang/String;

    .line 68
    return-void
.end method
