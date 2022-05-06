.class public Lcom/games37/riversdk/core/purchase/dao/AFSDKHelper;
.super Ljava/lang/Object;
.source "AFSDKHelper.java"


# static fields
.field public static final LOGIN_EVENT_NAME:Ljava/lang/String; = "custom_login_failed"

.field public static final PURCHASE_EVENT_NAME:Ljava/lang/String; = "custom_purchase_failed"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportLoginErrorInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventKey"    # Ljava/lang/String;
    .param p2, "eventValue"    # Ljava/lang/Object;

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .local v0, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    const-string v2, "custom_login_failed"

    invoke-virtual {v1, p0, v2, v0}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    return-void
.end method

.method public static reportPurchaseErrorInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventKey"    # Ljava/lang/String;
    .param p2, "eventValue"    # Ljava/lang/Object;

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v0, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    const-string v2, "custom_purchase_failed"

    invoke-virtual {v1, p0, v2, v0}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    return-void
.end method
