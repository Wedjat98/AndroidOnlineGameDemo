.class public Lcom/games37/riversdk/core/util/SDKUtil;
.super Ljava/lang/Object;
.source "SDKUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SDKUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configAppLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, "SDKUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configAppLanguage language:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " locale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 102
    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "TW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 104
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    const-string v1, "tw"

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/model/UserInformation;->setAppLanguage(Ljava/lang/String;)V

    .line 130
    :cond_41
    :goto_41
    return-void

    .line 105
    :cond_42
    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "HK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 107
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    const-string v1, "tw"

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/model/UserInformation;->setAppLanguage(Ljava/lang/String;)V

    goto :goto_41

    .line 108
    :cond_5c
    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    const-string v0, "MO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 110
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    const-string v1, "tw"

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/model/UserInformation;->setAppLanguage(Ljava/lang/String;)V

    goto :goto_41

    .line 111
    :cond_76
    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 113
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/model/UserInformation;->setAppLanguage(Ljava/lang/String;)V

    goto :goto_41

    .line 114
    :cond_88
    const-string v0, "th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 116
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    const-string v1, "th"

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/model/UserInformation;->setAppLanguage(Ljava/lang/String;)V

    goto :goto_41

    .line 117
    :cond_9a
    const-string v0, "vi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 119
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    const-string v1, "vi"

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/model/UserInformation;->setAppLanguage(Ljava/lang/String;)V

    goto :goto_41

    .line 120
    :cond_ac
    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c7

    const-string v0, "CN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 122
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/model/UserInformation;->setAppLanguage(Ljava/lang/String;)V

    goto/16 :goto_41

    .line 123
    :cond_c7
    const-string v0, "ja"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e2

    const-string v0, "JP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 125
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    const-string v1, "jp"

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/model/UserInformation;->setAppLanguage(Ljava/lang/String;)V

    goto/16 :goto_41

    .line 127
    :cond_e2
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/model/UserInformation;->setAppLanguage(Ljava/lang/String;)V

    goto/16 :goto_41
.end method

.method public static configSDKLocale(Landroid/content/Context;I)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdkLocale"    # I

    .prologue
    .line 50
    const-string v3, "SDKUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configSDKLocale sdkLocale:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 52
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 53
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 54
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    packed-switch p1, :pswitch_data_70

    .line 89
    :goto_27
    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 90
    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/games37/riversdk/core/util/SDKUtil;->configAppLanguage(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void

    .line 57
    :pswitch_3a
    sget-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    iput-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_27

    .line 61
    :pswitch_3f
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_27

    .line 65
    :pswitch_44
    sget-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    iput-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_27

    .line 69
    :pswitch_49
    new-instance v3, Ljava/util/Locale;

    const-string v4, "vi"

    const-string v5, "VN"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_27

    .line 73
    :pswitch_55
    new-instance v3, Ljava/util/Locale;

    const-string v4, "th"

    const-string v5, "TH"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_27

    .line 77
    :pswitch_61
    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    iput-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_27

    .line 81
    :pswitch_66
    sget-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    iput-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 84
    :pswitch_6a
    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    iput-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_27

    .line 54
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_3f
        :pswitch_44
        :pswitch_49
        :pswitch_55
        :pswitch_61
        :pswitch_66
        :pswitch_6a
    .end packed-switch
.end method

.method public static uploadADParams(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 18
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "platformId"    # Ljava/lang/String;

    .prologue
    .line 139
    const-class v13, Lcom/games37/riversdk/core/config/SDKConfig;

    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 140
    .local v7, "fileds":[Ljava/lang/reflect/Field;
    array-length v11, v7

    .line 141
    .local v11, "len":I
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v12, "requestBundle":Landroid/os/Bundle;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_d
    if-ge v9, v11, :cond_4f

    .line 144
    :try_start_f
    aget-object v4, v7, v9

    .line 145
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "fieldName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_42

    const-string v6, ""

    .line 148
    .local v6, "fieldValue":Ljava/lang/String;
    :goto_1d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PARAMS_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 149
    .local v10, "key":Ljava/lang/String;
    invoke-virtual {v12, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 146
    .end local v6    # "fieldValue":Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    :cond_42
    invoke-virtual {v4, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_49} :catch_4b

    move-result-object v6

    goto :goto_1d

    .line 151
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "fieldName":Ljava/lang/String;
    :catch_4b
    move-exception v3

    .line 152
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4f
    const-string v2, "2"

    .line 157
    .local v2, "appType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "appPackageName":Ljava/lang/String;
    const-string v13, "platformId"

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v13, "appType"

    invoke-virtual {v12, v13, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v13, "curPlatformId"

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v13, "appPackageName"

    invoke-virtual {v12, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v13, "gameId"

    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v14

    .line 163
    invoke-virtual {v14}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v14

    const-string v15, "PRODUCTID"

    invoke-virtual {v14, v15}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 162
    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v13, "APP_PACKAGE_NAME"

    invoke-virtual {v12, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v13, "APP_NAME"

    invoke-static/range {p0 .. p0}, Lcom/games37/riversdk/common/utils/PackageUtil;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v13, "PARAMS_FACEBOOK_KEYHASH"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 168
    .restart local v10    # "key":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/games37/riversdk/common/utils/PackageUtil;->getKeyHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v13, "PARAMS_LAUNCHER_ACTIVITY"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 171
    invoke-static/range {p0 .. p0}, Lcom/games37/riversdk/common/utils/PackageUtil;->getLauncherActivity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v8, Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {v8, v12}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 174
    .local v8, "httpRequestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v13

    const-string v14, "http://mtechboss.gm99.com/index.php?c=gameParams-checkParams&a=receiveParams"

    new-instance v15, Lcom/games37/riversdk/core/util/SDKUtil$1;

    invoke-direct/range {v15 .. v16}, Lcom/games37/riversdk/core/util/SDKUtil$1;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v14, v8, v15}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/games37/riversdk/core/callback/NetCallback;)V

    .line 189
    return-void
.end method
