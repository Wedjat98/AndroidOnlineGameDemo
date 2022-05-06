.class Lcom/facebook/appevents/AppEventsLogger$4;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsLogger;->updateUserProperties(Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$applicationID:Ljava/lang/String;

.field private final synthetic val$callback:Lcom/facebook/GraphRequest$Callback;

.field private final synthetic val$parameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$parameters:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$applicationID:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    .line 864
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getUserID()Ljava/lang/String;

    move-result-object v10

    .line 865
    .local v10, "userID":Ljava/lang/String;
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 867
    :cond_d
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 868
    # getter for: Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$0()Ljava/lang/String;

    move-result-object v2

    .line 869
    const-string v4, "AppEventsLogger userID cannot be null or empty"

    .line 866
    invoke-static {v1, v2, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :goto_18
    return-void

    .line 873
    :cond_19
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 874
    .local v11, "userPropertiesParams":Landroid/os/Bundle;
    const-string v1, "user_unique_id"

    invoke-virtual {v11, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string v1, "custom_data"

    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$parameters:Landroid/os/Bundle;

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 879
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 878
    invoke-static {v1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v8

    .line 880
    .local v8, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    if-eqz v8, :cond_43

    invoke-virtual {v8}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 882
    const-string v1, "advertiser_id"

    .line 883
    invoke-virtual {v8}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v2

    .line 881
    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :cond_43
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 888
    .local v3, "data":Landroid/os/Bundle;
    :try_start_48
    invoke-static {v11}, Lcom/facebook/internal/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v9

    .line 889
    .local v9, "userData":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 890
    .local v6, "dataArray":Lorg/json/JSONArray;
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 893
    const-string v1, "data"

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 892
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_5d} :catch_80

    .line 898
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 899
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 900
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s/user_properties"

    new-array v5, v14, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$applicationID:Ljava/lang/String;

    aput-object v13, v5, v12

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 902
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    .line 903
    iget-object v5, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    .line 898
    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 904
    .local v0, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v0, v14}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 905
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_18

    .line 894
    .end local v0    # "request":Lcom/facebook/GraphRequest;
    .end local v6    # "dataArray":Lorg/json/JSONArray;
    .end local v9    # "userData":Lorg/json/JSONObject;
    :catch_80
    move-exception v7

    .line 895
    .local v7, "ex":Lorg/json/JSONException;
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Failed to construct request"

    invoke-direct {v1, v2, v7}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
