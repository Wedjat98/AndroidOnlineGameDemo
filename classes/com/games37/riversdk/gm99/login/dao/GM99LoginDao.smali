.class public Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;
.super Lcom/games37/riversdk/core/login/dao/LoginDao;
.source "GM99LoginDao.java"


# static fields
.field public static final RIVERSDK_GM99_SDK_DATA_PREF_FILE_NAME:Ljava/lang/String; = "RIVERSDK_GM99_SDK_DATA_PREF_FILE_NAME"

.field public static final TAG:Ljava/lang/String; = "GM99LoginDao"

.field private static volatile instance:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->instance:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/games37/riversdk/core/login/dao/LoginDao;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;
    .registers 2

    .prologue
    .line 35
    sget-object v0, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->instance:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    if-nez v0, :cond_13

    .line 36
    const-class v1, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    monitor-enter v1

    .line 37
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->instance:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    if-nez v0, :cond_12

    .line 38
    new-instance v0, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    invoke-direct {v0}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;-><init>()V

    sput-object v0, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->instance:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    .line 40
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 42
    :cond_13
    sget-object v0, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->instance:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    return-object v0

    .line 40
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public getBool(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 177
    const-string v0, "RIVERSDK_GM99_SDK_DATA_PREF_FILE_NAME"

    invoke-static {p1, v0, p2, p3}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloatViewFunInfo(Landroid/content/Context;)Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 126
    const-string v3, "PREF_FLOAT_VIEW_FUN_INFO"

    const-string v5, ""

    invoke-virtual {p0, p1, v3, v5}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object v3, v4

    .line 135
    :goto_10
    return-object v3

    .line 131
    :cond_11
    :try_start_11
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 132
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_1f

    goto :goto_10

    .line 133
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :catch_1f
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "GM99LoginDao"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFloatViewFunInfo error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 135
    goto :goto_10
.end method

.method public getPrivacyStatus(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v0, "PREF_IS_AGREE_PRIVACY"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 183
    const-string v0, "RIVERSDK_GM99_SDK_DATA_PREF_FILE_NAME"

    invoke-static {p1, v0, p2, p3}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebFloatViewUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const-string v0, "PREF_FLOAT_VIEW_URL"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRecord(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-string v0, "RECORD_RECORD_USER_INFO"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBool(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 171
    const-string v0, "RIVERSDK_GM99_SDK_DATA_PREF_FILE_NAME"

    invoke-static {p1, v0, p2, p3}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 173
    return-void
.end method

.method public setFloatViewFunInfo(Landroid/content/Context;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "functionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .prologue
    .line 110
    if-eqz p2, :cond_11

    .line 111
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 112
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "json":Ljava/lang/String;
    const-string v2, "PREF_FLOAT_VIEW_FUN_INFO"

    invoke-virtual {p0, p1, v2, v1}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v0    # "gson":Lcom/google/gson/Gson;
    .end local v1    # "json":Ljava/lang/String;
    :goto_10
    return-void

    .line 116
    :cond_11
    const-string v2, "PREF_FLOAT_VIEW_FUN_INFO"

    const-string v3, ""

    invoke-virtual {p0, p1, v2, v3}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public setIsRecord(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isRecord"    # Z

    .prologue
    .line 61
    const-string v0, "RECORD_RECORD_USER_INFO"

    invoke-virtual {p0, p1, v0, p2}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 62
    return-void
.end method

.method public setPrivacyStatus(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "privacyStatus"    # Z

    .prologue
    .line 80
    const-string v0, "PREF_IS_AGREE_PRIVACY"

    invoke-virtual {p0, p1, v0, p2}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 81
    return-void
.end method

.method public setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string v0, "RIVERSDK_GM99_SDK_DATA_PREF_FILE_NAME"

    invoke-static {p1, v0, p2, p3}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public setWebFloatViewUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v0, "PREF_FLOAT_VIEW_URL"

    invoke-virtual {p0, p1, v0, p2}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public updateUserProfileInMemory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/login/model/UserType;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;
    .param p4, "userType"    # Lcom/games37/riversdk/core/login/model/UserType;

    .prologue
    .line 153
    sget-object v0, Lcom/games37/riversdk/core/login/model/UserType;->NORMAL_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    if-ne v0, p4, :cond_1f

    .line 154
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 155
    invoke-static {p3}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 156
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->isRecord(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setLastLoginAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, p1, p3}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setLastLoginPwd(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, p1, p2, p3}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->addAccountInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_1f
    invoke-virtual {p0, p1, p4}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setUserType(Landroid/content/Context;Lcom/games37/riversdk/core/login/model/UserType;)V

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setAutoLoginFlag(Landroid/content/Context;Z)V

    .line 167
    return-void
.end method
