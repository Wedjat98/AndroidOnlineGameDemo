.class public Lcom/appsflyer/ServerConfigHandler;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static ˋ(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 46
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_52
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_36

    .line 47
    :try_start_6
    const-string v1, "monitor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 48
    if-eqz v1, :cond_17

    .line 49
    invoke-static {}, Lcom/appsflyer/w;->ˎ()Lcom/appsflyer/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/w;->ॱ()V

    .line 62
    :goto_16
    return-object v0

    .line 51
    :cond_17
    invoke-static {}, Lcom/appsflyer/w;->ˎ()Lcom/appsflyer/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/w;->ˊ()V

    .line 52
    invoke-static {}, Lcom/appsflyer/w;->ˎ()Lcom/appsflyer/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/w;->ˏ()V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_25} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_25} :catch_50

    goto :goto_16

    .line 55
    :catch_26
    move-exception v1

    :goto_27
    invoke-static {}, Lcom/appsflyer/w;->ˎ()Lcom/appsflyer/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/w;->ˊ()V

    .line 56
    invoke-static {}, Lcom/appsflyer/w;->ˎ()Lcom/appsflyer/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/w;->ˏ()V

    goto :goto_16

    .line 57
    :catch_36
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 58
    :goto_3a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    invoke-static {}, Lcom/appsflyer/w;->ˎ()Lcom/appsflyer/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/w;->ˊ()V

    .line 60
    invoke-static {}, Lcom/appsflyer/w;->ˎ()Lcom/appsflyer/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/w;->ˏ()V

    goto :goto_16

    .line 57
    :catch_50
    move-exception v1

    goto :goto_3a

    .line 55
    :catch_52
    move-exception v0

    move-object v0, v1

    goto :goto_27
.end method
