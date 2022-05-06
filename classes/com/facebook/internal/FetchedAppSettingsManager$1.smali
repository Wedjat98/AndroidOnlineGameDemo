.class Lcom/facebook/internal/FetchedAppSettingsManager$1;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FetchedAppSettingsManager;->loadAppSettingsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$applicationId:Ljava/lang/String;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$settingsKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$settingsKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 118
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$context:Landroid/content/Context;

    .line 119
    const-string v9, "com.facebook.internal.preferences.APP_SETTINGS"

    .line 118
    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 121
    .local v6, "sharedPrefs":Landroid/content/SharedPreferences;
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$settingsKey:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "settingsJSONString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 123
    .local v0, "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_26

    .line 124
    const/4 v3, 0x0

    .line 126
    .local v3, "settingsJSON":Lorg/json/JSONObject;
    :try_start_18
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1d} :catch_73

    .end local v3    # "settingsJSON":Lorg/json/JSONObject;
    .local v4, "settingsJSON":Lorg/json/JSONObject;
    move-object v3, v4

    .line 130
    .end local v4    # "settingsJSON":Lorg/json/JSONObject;
    .restart local v3    # "settingsJSON":Lorg/json/JSONObject;
    :goto_1e
    if-eqz v3, :cond_26

    .line 131
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    # invokes: Lcom/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;
    invoke-static {v8, v3}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$0(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    .line 135
    .end local v3    # "settingsJSON":Lorg/json/JSONObject;
    :cond_26
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    # invokes: Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v8}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$1(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 136
    .local v2, "resultJSON":Lorg/json/JSONObject;
    if-eqz v2, :cond_44

    .line 137
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$applicationId:Ljava/lang/String;

    # invokes: Lcom/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;
    invoke-static {v8, v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$0(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    .line 139
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 140
    iget-object v9, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$settingsKey:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 141
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    :cond_44
    if-eqz v0, :cond_63

    .line 146
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getSdkUpdateMessage()Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, "updateMessage":Ljava/lang/String;
    # getter for: Lcom/facebook/internal/FetchedAppSettingsManager;->printedSDKUpdatedMessage:Z
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$2()Z

    move-result v8

    if-nez v8, :cond_63

    .line 148
    if-eqz v7, :cond_63

    .line 149
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_63

    .line 150
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$3(Z)V

    .line 151
    # getter for: Lcom/facebook/internal/FetchedAppSettingsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$4()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v7    # "updateMessage":Ljava/lang/String;
    :cond_63
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logActivateAppEvent()V

    .line 159
    iget-object v8, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/facebook/internal/FetchedAppSettingsManager;->startInAppPurchaseAutoLogging(Landroid/content/Context;)V
    invoke-static {v8}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$5(Landroid/content/Context;)V

    .line 161
    # getter for: Lcom/facebook/internal/FetchedAppSettingsManager;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$6()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 162
    return-void

    .line 127
    .end local v2    # "resultJSON":Lorg/json/JSONObject;
    .restart local v3    # "settingsJSON":Lorg/json/JSONObject;
    :catch_73
    move-exception v1

    .line 128
    .local v1, "je":Lorg/json/JSONException;
    const-string v8, "FacebookSDK"

    invoke-static {v8, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1e
.end method
