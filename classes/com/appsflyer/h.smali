.class final Lcom/appsflyer/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static ʼ:Ljava/lang/String;


# instance fields
.field private ʻ:Ljava/lang/String;

.field private ʽ:Ljava/util/Map;
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

.field private ˊ:Ljava/lang/String;

.field private ˋ:Ljava/lang/String;

.field private ˎ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private ˏ:Ljava/lang/String;

.field private final ͺ:Landroid/content/Intent;

.field private ॱ:Ljava/lang/String;

.field private ॱॱ:Ljava/lang/String;

.field private ᐝ:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://validate.%s/api/v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/appsflyer/AppsFlyerLib;->ˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/androidevent?buildnumber=4.8.15&app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/h;->ʼ:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Intent;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/h;->ˎ:Ljava/lang/ref/WeakReference;

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/h;->ˎ:Ljava/lang/ref/WeakReference;

    .line 44
    iput-object p2, p0, Lcom/appsflyer/h;->ˋ:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/appsflyer/h;->ˏ:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/appsflyer/h;->ॱ:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lcom/appsflyer/h;->ʻ:Ljava/lang/String;

    .line 48
    iput-object p7, p0, Lcom/appsflyer/h;->ॱॱ:Ljava/lang/String;

    .line 49
    iput-object p8, p0, Lcom/appsflyer/h;->ʽ:Ljava/util/Map;

    .line 50
    iput-object p4, p0, Lcom/appsflyer/h;->ˊ:Ljava/lang/String;

    .line 51
    iput-object p9, p0, Lcom/appsflyer/h;->ᐝ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 52
    iput-object p10, p0, Lcom/appsflyer/h;->ͺ:Landroid/content/Intent;

    .line 53
    return-void
.end method

.method static synthetic ˊ(Lcom/appsflyer/h;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/appsflyer/h;->ʽ:Ljava/util/Map;

    return-object v0
.end method

.method private static ˋ(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 224
    :try_start_1
    new-instance v1, Lcom/appsflyer/m;

    const/4 v2, 0x0

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->isTrackingStopped()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/appsflyer/m;-><init>(Landroid/content/Context;Z)V

    .line 225
    iput-object p0, v1, Lcom/appsflyer/m;->ˋ:Ljava/lang/String;

    .line 226
    invoke-virtual {v1}, Lcom/appsflyer/m;->ˎ()V

    .line 227
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_48

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Main thread detected. Calling "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in a new thread."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 229
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 236
    :goto_43
    invoke-virtual {v1}, Lcom/appsflyer/m;->ॱ()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 239
    :goto_47
    return-object v0

    .line 231
    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (on current thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1}, Lcom/appsflyer/m;->onPreExecute()V

    .line 234
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/appsflyer/m;->ॱ([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsflyer/m;->ˎ(Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_82} :catch_83

    goto :goto_43

    .line 237
    :catch_83
    move-exception v1

    .line 238
    const-string v2, "Could not send callStats request"

    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47
.end method

.method static synthetic ˎ(Lcom/appsflyer/h;)Ljava/lang/ref/WeakReference;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/appsflyer/h;->ˎ:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static ˎ(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->ˏ:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v0, :cond_3e

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Validate callback parameters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 246
    if-eqz p0, :cond_3f

    .line 247
    const-string v0, "Validate in app purchase success: "

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 248
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->ˏ:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    invoke-interface {v0}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInApp()V

    .line 254
    :cond_3e
    :goto_3e
    return-void

    .line 250
    :cond_3f
    const-string v0, "Validate in app purchase failed: "

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 251
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->ˏ:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-nez p4, :cond_52

    const-string p4, "Failed validating"

    :cond_52
    invoke-interface {v0, p4}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInAppFailure(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method static synthetic ॱ(Lcom/appsflyer/h;Ljava/util/Map;Ljava/util/Map;Ljava/lang/ref/WeakReference;)V
    .registers 17

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 4138
    invoke-virtual/range {p3 .. p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_111

    .line 4142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appsflyer/h;->ʼ:Ljava/lang/String;

    invoke-static {v2}, Lcom/appsflyer/ServerConfigHandler;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4144
    invoke-virtual/range {p3 .. p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "appsflyer-data"

    invoke-virtual {v1, v2, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 4217
    const-string v1, "referrer"

    invoke-interface {v8, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4218
    if-nez v6, :cond_3f

    const-string v6, ""

    .line 5148
    :cond_3f
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    .line 5149
    invoke-virtual/range {p3 .. p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/appsflyer/h;->ˋ:Ljava/lang/String;

    const-string v4, "af_purchase"

    const-string v5, ""

    const/4 v7, 0x1

    iget-object v10, p0, Lcom/appsflyer/h;->ͺ:Landroid/content/Intent;

    .line 5148
    invoke-virtual/range {v1 .. v10}, Lcom/appsflyer/AppsFlyerLib;->ˎ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/SharedPreferences;ZLandroid/content/Intent;)Ljava/util/Map;

    move-result-object v1

    .line 6211
    const-string v2, "price"

    iget-object v3, p0, Lcom/appsflyer/h;->ʻ:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6212
    const-string v2, "currency"

    iget-object v3, p0, Lcom/appsflyer/h;->ॱॱ:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6154
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 6155
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 6158
    :try_start_6e
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_76
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_112

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 6159
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_91
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_91} :catch_92

    goto :goto_76

    .line 6163
    :catch_92
    move-exception v1

    .line 6164
    const-string v2, "Failed to build \'receipt_data\'"

    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6167
    :goto_98
    if-eqz p2, :cond_c9

    .line 6168
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 6170
    :try_start_9f
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_118

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 6171
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c2
    .catch Lorg/json/JSONException; {:try_start_9f .. :try_end_c2} :catch_c3

    goto :goto_a7

    .line 6175
    :catch_c3
    move-exception v1

    .line 6176
    const-string v2, "Failed to build \'extra_prms\'"

    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6180
    :cond_c9
    :goto_c9
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6181
    invoke-static {}, Lcom/appsflyer/w;->ˎ()Lcom/appsflyer/w;

    move-result-object v2

    invoke-virtual {v2, v12, v1}, Lcom/appsflyer/w;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 6185
    :try_start_d4
    invoke-static {v1, v12}, Lcom/appsflyer/h;->ˋ(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_d7
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_d7} :catch_157
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_14d

    move-result-object v2

    .line 6187
    const/4 v1, -0x1

    .line 6188
    if-eqz v2, :cond_df

    .line 6189
    :try_start_db
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 6191
    :cond_df
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->ॱ(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v3

    .line 6192
    invoke-static {}, Lcom/appsflyer/w;->ˎ()Lcom/appsflyer/w;

    move-result-object v4

    invoke-virtual {v4, v12, v1, v3}, Lcom/appsflyer/w;->ˊ(Ljava/lang/String;ILjava/lang/String;)V

    .line 6194
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6196
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_11e

    .line 6197
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Validate-WH response - 200: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_10c
    .catch Ljava/lang/Throwable; {:try_start_db .. :try_end_10c} :catch_13f
    .catchall {:try_start_db .. :try_end_10c} :catchall_155

    .line 6204
    :goto_10c
    if-eqz v2, :cond_111

    .line 6205
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_111
    :goto_111
    return-void

    .line 6162
    :cond_112
    :try_start_112
    const-string v1, "receipt_data"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_117
    .catch Lorg/json/JSONException; {:try_start_112 .. :try_end_117} :catch_92

    goto :goto_98

    .line 6174
    :cond_118
    :try_start_118
    const-string v1, "extra_prms"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11d
    .catch Lorg/json/JSONException; {:try_start_118 .. :try_end_11d} :catch_c3

    goto :goto_c9

    .line 6199
    :cond_11e
    :try_start_11e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Validate-WH response failed - "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V
    :try_end_13e
    .catch Ljava/lang/Throwable; {:try_start_11e .. :try_end_13e} :catch_13f
    .catchall {:try_start_11e .. :try_end_13e} :catchall_155

    goto :goto_10c

    .line 6201
    :catch_13f
    move-exception v1

    .line 6202
    :goto_140
    :try_start_140
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_147
    .catchall {:try_start_140 .. :try_end_147} :catchall_155

    .line 6204
    if-eqz v2, :cond_111

    .line 6205
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_111

    .line 6204
    :catchall_14d
    move-exception v1

    move-object v2, v11

    :goto_14f
    if-eqz v2, :cond_154

    .line 6205
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_154
    throw v1

    .line 6204
    :catchall_155
    move-exception v1

    goto :goto_14f

    .line 6201
    :catch_157
    move-exception v1

    move-object v2, v11

    goto :goto_140
.end method


# virtual methods
.method public final run()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lcom/appsflyer/h;->ˋ:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/appsflyer/h;->ˋ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 134
    :cond_d
    :goto_d
    return-void

    .line 62
    :cond_e
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerLib;->isTrackingStopped()Z

    move-result v0

    if-nez v0, :cond_d

    .line 66
    const/4 v1, 0x0

    .line 68
    :try_start_19
    iget-object v0, p0, Lcom/appsflyer/h;->ˎ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 69
    if-eqz v0, :cond_d

    .line 72
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 73
    const-string v4, "public-key"

    iget-object v5, p0, Lcom/appsflyer/h;->ˏ:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v4, "sig-data"

    iget-object v5, p0, Lcom/appsflyer/h;->ॱ:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v4, "signature"

    iget-object v5, p0, Lcom/appsflyer/h;->ˊ:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 78
    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 80
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    .line 81
    new-instance v6, Lcom/appsflyer/h$1;

    invoke-direct {v6, p0, v4}, Lcom/appsflyer/h$1;-><init>(Lcom/appsflyer/h;Ljava/util/Map;)V

    const-wide/16 v8, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v8, v9, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 88
    const-string v4, "dev_key"

    iget-object v5, p0, Lcom/appsflyer/h;->ˋ:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v4, "app_id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v4, "uid"

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "advertiserId"

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string v5, "advertiserId"

    invoke-virtual {v4, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v3, "https://sdk-services.%s/validate-android-signature"

    invoke-static {v3}, Lcom/appsflyer/ServerConfigHandler;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {}, Lcom/appsflyer/w;->ˎ()Lcom/appsflyer/w;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/appsflyer/w;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {v0, v3}, Lcom/appsflyer/h;->ˋ(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 99
    const/4 v0, -0x1

    .line 100
    if-eqz v1, :cond_a2

    .line 101
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 103
    :cond_a2
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->ॱ(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-static {}, Lcom/appsflyer/w;->ˎ()Lcom/appsflyer/w;

    move-result-object v5

    invoke-virtual {v5, v3, v0, v4}, Lcom/appsflyer/w;->ˊ(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    const-string v4, "code"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    const/16 v4, 0xc8

    if-ne v0, v4, :cond_f6

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Validate response 200 ok: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 112
    const-string v0, "result"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 113
    const-string v0, "result"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 115
    :goto_e2
    iget-object v2, p0, Lcom/appsflyer/h;->ॱ:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/h;->ʻ:Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/h;->ॱॱ:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v4, v5, v3}, Lcom/appsflyer/h;->ˎ(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_ef} :catch_10a
    .catchall {:try_start_19 .. :try_end_ef} :catchall_130

    .line 129
    :goto_ef
    if-eqz v1, :cond_d

    .line 130
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_d

    .line 118
    :cond_f6
    :try_start_f6
    const-string v0, "Failed Validate request"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/appsflyer/h;->ॱ:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/h;->ʻ:Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/h;->ॱॱ:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v4, v5, v3}, Lcom/appsflyer/h;->ˎ(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_109
    .catch Ljava/lang/Throwable; {:try_start_f6 .. :try_end_109} :catch_10a
    .catchall {:try_start_f6 .. :try_end_109} :catchall_130

    goto :goto_ef

    .line 121
    :catch_10a
    move-exception v0

    .line 122
    :try_start_10b
    sget-object v2, Lcom/appsflyer/AppsFlyerLib;->ˏ:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v2, :cond_122

    .line 123
    const-string v2, "Failed Validate request + ex"

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/appsflyer/h;->ॱ:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/h;->ʻ:Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/h;->ॱॱ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/appsflyer/h;->ˎ(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_122
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_129
    .catchall {:try_start_10b .. :try_end_129} :catchall_130

    .line 129
    if-eqz v1, :cond_d

    .line 130
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_d

    .line 129
    :catchall_130
    move-exception v0

    if-eqz v1, :cond_136

    .line 130
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_136
    throw v0

    :cond_137
    move v0, v2

    goto :goto_e2
.end method
