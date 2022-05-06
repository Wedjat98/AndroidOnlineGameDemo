.class public Lcom/ad/sdk/appsflyer/AppsFlyerManager;
.super Ljava/lang/Object;
.source "AppsFlyerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsFlyerManager"


# instance fields
.field private mDevKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "devKey"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ad/sdk/appsflyer/AppsFlyerManager;->mDevKey:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getAppsFlyerUniqueId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 22
    iget-object v3, p0, Lcom/ad/sdk/appsflyer/AppsFlyerManager;->mDevKey:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->startTracking(Landroid/app/Application;Ljava/lang/String;)V

    .line 23
    new-instance v1, Lcom/ad/sdk/util/DeviceUUIDFactory;

    invoke-direct {v1, p1}, Lcom/ad/sdk/util/DeviceUUIDFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/ad/sdk/util/DeviceUUIDFactory;->getDeviceUUID()Ljava/util/UUID;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "uuid":Ljava/lang/String;
    const-string v1, "AppsFlyerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appsflyer/AppsFlyerLib;->sendDeepLinkData(Landroid/app/Activity;)V

    .line 28
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerLib;->setCollectAndroidID(Z)V

    .line 29
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerLib;->setCollectIMEI(Z)V

    .line 30
    return-void
.end method
