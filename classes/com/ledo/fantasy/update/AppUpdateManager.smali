.class public Lcom/ledo/fantasy/update/AppUpdateManager;
.super Ljava/lang/Object;
.source "AppUpdateManager.java"


# static fields
.field public static UPDATE_URL:Ljava/lang/String;

.field public static VER_NAME:Ljava/lang/String;

.field public static m_APKURL:Ljava/lang/String;

.field public static m_DownloadDir:Ljava/lang/String;

.field private static m_LocalVersion:I

.field private static m_ServerVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput v0, Lcom/ledo/fantasy/update/AppUpdateManager;->m_LocalVersion:I

    .line 24
    sput v0, Lcom/ledo/fantasy/update/AppUpdateManager;->m_ServerVersion:I

    .line 27
    const-string v0, "http://172.16.0.88/mini/fantasy_android/app"

    sput-object v0, Lcom/ledo/fantasy/update/AppUpdateManager;->UPDATE_URL:Ljava/lang/String;

    .line 28
    const-string v0, "http://172.16.0.88/mini/fantasy_android/app/fantasy.apk"

    sput-object v0, Lcom/ledo/fantasy/update/AppUpdateManager;->m_APKURL:Ljava/lang/String;

    .line 29
    const-string v0, "/ver.json"

    sput-object v0, Lcom/ledo/fantasy/update/AppUpdateManager;->VER_NAME:Ljava/lang/String;

    .line 30
    const-string v0, "gameapk"

    sput-object v0, Lcom/ledo/fantasy/update/AppUpdateManager;->m_DownloadDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static LocalVersion(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 133
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/ledo/fantasy/update/AppUpdateManager;->m_LocalVersion:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_15

    .line 140
    :goto_12
    sget v1, Lcom/ledo/fantasy/update/AppUpdateManager;->m_LocalVersion:I

    return v1

    .line 135
    :catch_15
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    sput v4, Lcom/ledo/fantasy/update/AppUpdateManager;->m_LocalVersion:I

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public static getLocalVersion(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/ledo/fantasy/update/AppUpdateManager;->m_LocalVersion:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_18

    .line 153
    :goto_11
    const-string v1, "EVENT_APPUPDATEMANAGER_GETLOCALVERSION_SUCCESS"

    invoke-static {v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 154
    const/4 v1, 0x1

    return v1

    .line 149
    :catch_18
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method private static getServerVersion()Z
    .registers 21

    .prologue
    .line 38
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v18

    sget v19, Lcom/ledo/fantasy/game/R$string;->update_url:I

    invoke-virtual/range {v18 .. v19}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/ledo/fantasy/update/AppUpdateManager;->UPDATE_URL:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v18

    sget v19, Lcom/ledo/fantasy/game/R$string;->verfile_name:I

    invoke-virtual/range {v18 .. v19}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/ledo/fantasy/update/AppUpdateManager;->VER_NAME:Ljava/lang/String;

    .line 40
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/ledo/fantasy/update/AppUpdateManager;->UPDATE_URL:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v19

    sget v20, Lcom/ledo/fantasy/game/R$string;->apkName:I

    invoke-virtual/range {v19 .. v20}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/ledo/fantasy/update/AppUpdateManager;->m_APKURL:Ljava/lang/String;

    .line 41
    const/4 v8, 0x0

    .line 42
    .local v8, "httpConnection":Ljava/net/HttpURLConnection;
    const/4 v9, 0x0

    .line 47
    .local v9, "is":Ljava/io/InputStream;
    :try_start_39
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->getPlatformID()Ljava/lang/String;

    move-result-object v14

    .line 48
    .local v14, "platform":Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v18

    sget v19, Lcom/ledo/fantasy/game/R$string;->update_need_select:I

    invoke-virtual/range {v18 .. v19}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 49
    .local v16, "update_need_select":Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v18

    sget v19, Lcom/ledo/fantasy/game/R$string;->channel_id_tiger:I

    invoke-virtual/range {v18 .. v19}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "channelidtiger":Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v18

    sget v19, Lcom/ledo/fantasy/game/R$string;->channel_id:I

    invoke-virtual/range {v18 .. v19}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "channelid":Ljava/lang/String;
    const-string v3, ""

    .line 52
    .local v3, "channel":Ljava/lang/String;
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_78

    .line 53
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "_"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    :cond_78
    const-string v18, "1"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_155

    .line 56
    const-string v16, "s"

    .line 60
    :goto_86
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/ledo/fantasy/game/GameApp;->getApplication()Landroid/app/Application;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 62
    .local v13, "packageName":Ljava/lang/String;
    const-string v18, "."

    const-string v19, "_"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 65
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "plat_"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_cid_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".json"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 66
    .local v10, "jsonname":Ljava/lang/String;
    const-string v18, "UPDATE_JSON"

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v17, Ljava/net/URL;

    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/ledo/fantasy/update/AppUpdateManager;->UPDATE_URL:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 69
    .local v17, "url":Ljava/net/URL;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 70
    const/16 v18, 0x2710

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 71
    const/16 v18, 0x4e20

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 73
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    div-int/lit8 v18, v18, 0x64

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_13c

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    div-int/lit8 v18, v18, 0x64

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_159

    .line 74
    :cond_13c
    new-instance v18, Ljava/lang/Exception;

    const-string v19, "fail!"

    invoke-direct/range {v18 .. v19}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_144
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_144} :catch_144
    .catch Ljava/net/MalformedURLException; {:try_start_39 .. :try_end_144} :catch_1e9
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_144} :catch_1f4
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_144} :catch_1ff
    .catchall {:try_start_39 .. :try_end_144} :catchall_20a

    .line 104
    .end local v3    # "channel":Ljava/lang/String;
    .end local v4    # "channelid":Ljava/lang/String;
    .end local v5    # "channelidtiger":Ljava/lang/String;
    .end local v10    # "jsonname":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "platform":Ljava/lang/String;
    .end local v16    # "update_need_select":Ljava/lang/String;
    .end local v17    # "url":Ljava/net/URL;
    :catch_144
    move-exception v7

    .line 106
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_145
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_148
    .catchall {:try_start_145 .. :try_end_148} :catchall_20a

    .line 121
    if-eqz v8, :cond_14d

    .line 122
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 125
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_14d
    :goto_14d
    const-string v18, "EVENT_APPUPDATEMANAAGER_GETSERVERVERSION_RETURNTRUE"

    invoke-static/range {v18 .. v18}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 126
    const/16 v18, 0x1

    :goto_154
    return v18

    .line 58
    .restart local v3    # "channel":Ljava/lang/String;
    .restart local v4    # "channelid":Ljava/lang/String;
    .restart local v5    # "channelidtiger":Ljava/lang/String;
    .restart local v14    # "platform":Ljava/lang/String;
    .restart local v16    # "update_need_select":Ljava/lang/String;
    :cond_155
    :try_start_155
    const-string v16, "b"

    goto/16 :goto_86

    .line 76
    .restart local v10    # "jsonname":Ljava/lang/String;
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v17    # "url":Ljava/net/URL;
    :cond_159
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 77
    new-instance v15, Ljava/io/InputStreamReader;

    const-string v18, "gbk"

    move-object/from16 v0, v18

    invoke-direct {v15, v9, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 78
    .local v15, "reader":Ljava/io/InputStreamReader;
    const/4 v6, 0x0

    .line 79
    .local v6, "data":I
    const-string v12, ""

    .line 80
    .local v12, "out":Ljava/lang/String;
    :goto_169
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->read()I

    move-result v6

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_1a4

    .line 85
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "array":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-lez v18, :cond_19e

    .line 88
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_185
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_155 .. :try_end_185} :catch_144
    .catch Ljava/net/MalformedURLException; {:try_start_155 .. :try_end_185} :catch_1e9
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_185} :catch_1f4
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_185} :catch_1ff
    .catchall {:try_start_155 .. :try_end_185} :catchall_20a

    move-result-object v11

    .line 91
    .local v11, "obj":Lorg/json/JSONObject;
    :try_start_186
    const-string v18, "verCode"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/ledo/fantasy/update/AppUpdateManager;->m_ServerVersion:I

    .line 92
    const-string v18, "apkurl"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/ledo/fantasy/update/AppUpdateManager;->m_APKURL:Ljava/lang/String;
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_19e} :catch_1b9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_186 .. :try_end_19e} :catch_144
    .catch Ljava/net/MalformedURLException; {:try_start_186 .. :try_end_19e} :catch_1e9
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_19e} :catch_1f4
    .catchall {:try_start_186 .. :try_end_19e} :catchall_20a

    .line 121
    .end local v11    # "obj":Lorg/json/JSONObject;
    :cond_19e
    if-eqz v8, :cond_14d

    .line 122
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_14d

    .line 82
    .end local v2    # "array":Lorg/json/JSONArray;
    :cond_1a4
    :try_start_1a4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v0, v6

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_169

    .line 94
    .restart local v2    # "array":Lorg/json/JSONArray;
    .restart local v11    # "obj":Lorg/json/JSONObject;
    :catch_1b9
    move-exception v7

    .line 96
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    const/16 v18, -0x1

    sput v18, Lcom/ledo/fantasy/update/AppUpdateManager;->m_ServerVersion:I

    .line 98
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/ledo/fantasy/update/AppUpdateManager;->UPDATE_URL:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v19

    sget v20, Lcom/ledo/fantasy/game/R$string;->apkName:I

    invoke-virtual/range {v19 .. v20}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/ledo/fantasy/update/AppUpdateManager;->m_APKURL:Ljava/lang/String;
    :try_end_1e0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a4 .. :try_end_1e0} :catch_144
    .catch Ljava/net/MalformedURLException; {:try_start_1a4 .. :try_end_1e0} :catch_1e9
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1e0} :catch_1f4
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1e0} :catch_1ff
    .catchall {:try_start_1a4 .. :try_end_1e0} :catchall_20a

    .line 121
    if-eqz v8, :cond_1e5

    .line 122
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 99
    :cond_1e5
    const/16 v18, 0x0

    goto/16 :goto_154

    .line 108
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v3    # "channel":Ljava/lang/String;
    .end local v4    # "channelid":Ljava/lang/String;
    .end local v5    # "channelidtiger":Ljava/lang/String;
    .end local v6    # "data":I
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "jsonname":Ljava/lang/String;
    .end local v11    # "obj":Lorg/json/JSONObject;
    .end local v12    # "out":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "platform":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/InputStreamReader;
    .end local v16    # "update_need_select":Ljava/lang/String;
    .end local v17    # "url":Ljava/net/URL;
    :catch_1e9
    move-exception v7

    .line 110
    .local v7, "e":Ljava/net/MalformedURLException;
    :try_start_1ea
    invoke-virtual {v7}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1ed
    .catchall {:try_start_1ea .. :try_end_1ed} :catchall_20a

    .line 121
    if-eqz v8, :cond_14d

    .line 122
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_14d

    .line 112
    .end local v7    # "e":Ljava/net/MalformedURLException;
    :catch_1f4
    move-exception v7

    .line 114
    .local v7, "e":Ljava/io/IOException;
    :try_start_1f5
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1f8
    .catchall {:try_start_1f5 .. :try_end_1f8} :catchall_20a

    .line 121
    if-eqz v8, :cond_14d

    .line 122
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_14d

    .line 116
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1ff
    move-exception v7

    .line 118
    .local v7, "e":Ljava/lang/Exception;
    :try_start_200
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_203
    .catchall {:try_start_200 .. :try_end_203} :catchall_20a

    .line 121
    if-eqz v8, :cond_14d

    .line 122
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_14d

    .line 120
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_20a
    move-exception v18

    .line 121
    if-eqz v8, :cond_210

    .line 122
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 124
    :cond_210
    throw v18
.end method

.method public static hasNewVersion(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-static {p0}, Lcom/ledo/fantasy/update/AppUpdateManager;->getLocalVersion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {}, Lcom/ledo/fantasy/update/AppUpdateManager;->getServerVersion()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 161
    sget v1, Lcom/ledo/fantasy/update/AppUpdateManager;->m_ServerVersion:I

    sget v2, Lcom/ledo/fantasy/update/AppUpdateManager;->m_LocalVersion:I

    if-le v1, v2, :cond_14

    const/4 v0, 0x1

    .line 165
    :cond_14
    return v0
.end method
