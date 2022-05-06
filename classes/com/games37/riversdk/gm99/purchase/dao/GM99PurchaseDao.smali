.class public Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;
.super Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;
.source "GM99PurchaseDao.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GM99PurchaseDao"

.field private static volatile instance:Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;->instance:Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;
    .registers 2

    .prologue
    .line 24
    sget-object v0, Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;->instance:Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;

    if-nez v0, :cond_13

    .line 25
    const-class v1, Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;

    monitor-enter v1

    .line 26
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;->instance:Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;

    if-nez v0, :cond_12

    .line 27
    new-instance v0, Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;

    invoke-direct {v0}, Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;-><init>()V

    sput-object v0, Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;->instance:Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;

    .line 29
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 31
    :cond_13
    sget-object v0, Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;->instance:Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;

    return-object v0

    .line 29
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method
