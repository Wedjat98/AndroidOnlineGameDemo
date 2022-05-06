.class public Lcom/games37/riversdk/core/util/UpdatePlugin;
.super Ljava/lang/Object;
.source "UpdatePlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UpdatePlugin"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0, p1, p2, p3, p4}, Lcom/games37/riversdk/core/util/UpdatePlugin;->handleCallbackSuccess(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/games37/riversdk/core/util/UpdatePlugin;->goUpdate(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private static getGameVersionUpdateStatus(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 16
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Lorg/json/JSONObject;>;"
    const-string v11, "UpdatePlugin"

    const-string v12, "getGameVersionUpdateStatus"

    invoke-static {v11, v12}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/SDKInformation;->getPackageVersion()Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "packageVersion":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/common/utils/CommonUtils;->getSystemTimeMillis()Ljava/lang/String;

    move-result-object v10

    .line 89
    .local v10, "timeStamp":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/SDKInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "devicePlate":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v11

    const-string v12, "PRODUCTID"

    .line 92
    invoke-virtual {v11, v12}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v11

    const-string v12, "SECRETKEY"

    .line 95
    invoke-virtual {v11, v12}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, "secretKey":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, "sign":Ljava/lang/String;
    invoke-static {v9}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "encryptionSign":Ljava/lang/String;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v7, "requestBundle":Landroid/os/Bundle;
    const-string v11, "timeStamp"

    invoke-virtual {v7, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v11, "gameId"

    invoke-virtual {v7, v11, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v11, "packageName"

    invoke-virtual {v7, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v11, "packageVersion"

    invoke-virtual {v7, v11, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v11, "sign"

    invoke-virtual {v7, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v3, Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {v3, v7}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 109
    .local v3, "httpRequestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    new-instance v4, Lcom/games37/riversdk/core/util/UpdatePlugin$2;

    invoke-direct {v4, p2}, Lcom/games37/riversdk/core/util/UpdatePlugin$2;-><init>(Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 133
    .local v4, "netCallback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v11

    invoke-virtual {v11, p0, p1, v3, v4}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/games37/riversdk/core/callback/NetCallback;)V

    .line 134
    return-void
.end method

.method private static goUpdate(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 204
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method private static handleCallbackSuccess(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "confirmText"    # Ljava/lang/String;

    .prologue
    .line 150
    if-eqz p1, :cond_1a

    .line 152
    const-string v2, "UPDATE"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, "needUpdate":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    .line 156
    const-string v2, "DOWNLOAD_URL"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 159
    invoke-static {p0, p2, p3, p4, v1}, Lcom/games37/riversdk/core/util/UpdatePlugin;->showUpdateDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .end local v0    # "needUpdate":I
    .end local v1    # "url":Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method private static showUpdateDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "confirmText"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-static {p0}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 180
    new-instance v1, Lcom/games37/riversdk/core/view/MaterialDialog;

    invoke-direct {v1, p0}, Lcom/games37/riversdk/core/view/MaterialDialog;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-virtual {v1, p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/games37/riversdk/core/view/MaterialDialog;

    move-result-object v1

    .line 182
    invoke-virtual {v1, p2}, Lcom/games37/riversdk/core/view/MaterialDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/games37/riversdk/core/view/MaterialDialog;

    move-result-object v1

    new-instance v2, Lcom/games37/riversdk/core/util/UpdatePlugin$3;

    invoke-direct {v2, p0, p4}, Lcom/games37/riversdk/core/util/UpdatePlugin$3;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1, p3, v2}, Lcom/games37/riversdk/core/view/MaterialDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/games37/riversdk/core/view/MaterialDialog;

    move-result-object v0

    .line 191
    .local v0, "materialDialog":Lcom/games37/riversdk/core/view/MaterialDialog;
    invoke-virtual {v0}, Lcom/games37/riversdk/core/view/MaterialDialog;->show()V

    .line 193
    .end local v0    # "materialDialog":Lcom/games37/riversdk/core/view/MaterialDialog;
    :cond_1f
    return-void
.end method

.method public static update(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "confirmText"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, "UpdatePlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/games37/riversdk/core/util/UpdatePlugin$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/games37/riversdk/core/util/UpdatePlugin$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/games37/riversdk/core/util/UpdatePlugin;->getGameVersionUpdateStatus(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 69
    return-void
.end method
