.class public Lcom/games37/riversdk/core/login/dao/LoginDao;
.super Ljava/lang/Object;
.source "LoginDao.java"

# interfaces
.implements Lcom/games37/riversdk/core/model/SharePrefUtil;


# static fields
.field public static final LIMIT_ACCOUNTS:I = 0x5

.field protected static RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String; = null

.field protected static RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "LoginDao"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "RIVERSDK_REALITIME_LOGIN_SP_STORAGE"

    sput-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    .line 44
    const-string v0, "RIVERSDK_LOGIN_SP_STORAGE"

    sput-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAccountInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    .line 568
    sget-object v12, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v13, "PREF_ACCOUNTS"

    const-string v14, ""

    .line 569
    move-object/from16 v0, p1

    invoke-static {v0, v12, v13, v14}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 573
    .local v3, "accounts":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 576
    .local v4, "cur_account_info":Ljava/lang/String;
    const/4 v7, 0x0

    .line 578
    .local v7, "new_account_info":Ljava/lang/String;
    invoke-static {v3}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c4

    .line 579
    const-string v12, ","

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "accountInfoArray":[Ljava/lang/String;
    if-eqz v1, :cond_39

    array-length v12, v1

    if-nez v12, :cond_4d

    .line 583
    :cond_39
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 629
    .end local v1    # "accountInfoArray":[Ljava/lang/String;
    :goto_4c
    return-void

    .line 588
    .restart local v1    # "accountInfoArray":[Ljava/lang/String;
    :cond_4d
    const/4 v6, 0x0

    .line 589
    .local v6, "isExist":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4f
    array-length v12, v1

    if-ge v5, v12, :cond_75

    .line 591
    aget-object v10, v1, v5

    .line 593
    .local v10, "temp_accountInfo":Ljava/lang/String;
    const-string v12, "-"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, "accountInfos":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v9, v2, v12

    .line 597
    .local v9, "temp_account":Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v11, v2, v12

    .line 599
    .local v11, "temp_pwd":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9c

    .line 601
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_74

    .line 603
    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 605
    :cond_74
    const/4 v6, 0x1

    .line 610
    .end local v2    # "accountInfos":[Ljava/lang/String;
    .end local v9    # "temp_account":Ljava/lang/String;
    .end local v10    # "temp_accountInfo":Ljava/lang/String;
    .end local v11    # "temp_pwd":Ljava/lang/String;
    :cond_75
    if-nez v6, :cond_92

    .line 611
    array-length v12, v1

    const/4 v13, 0x5

    if-ge v12, v13, :cond_9f

    .line 612
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 627
    .end local v1    # "accountInfoArray":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "isExist":Z
    :cond_92
    :goto_92
    sget-object v12, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v13, "PREF_ACCOUNTS"

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13, v7}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 589
    .restart local v1    # "accountInfoArray":[Ljava/lang/String;
    .restart local v2    # "accountInfos":[Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "isExist":Z
    .restart local v9    # "temp_account":Ljava/lang/String;
    .restart local v10    # "temp_accountInfo":Ljava/lang/String;
    .restart local v11    # "temp_pwd":Ljava/lang/String;
    :cond_9c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    .line 615
    .end local v2    # "accountInfos":[Ljava/lang/String;
    .end local v9    # "temp_account":Ljava/lang/String;
    .end local v10    # "temp_accountInfo":Ljava/lang/String;
    .end local v11    # "temp_pwd":Ljava/lang/String;
    :cond_9f
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 616
    .local v8, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    const/4 v5, 0x0

    :goto_ae
    const/4 v12, 0x4

    if-ge v5, v12, :cond_bf

    .line 618
    aget-object v12, v1, v5

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    add-int/lit8 v5, v5, 0x1

    goto :goto_ae

    .line 620
    :cond_bf
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_92

    .line 625
    .end local v1    # "accountInfoArray":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "isExist":Z
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    :cond_c4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_92
.end method

.method public clearRealtimeLoginData(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->clear(Landroid/content/Context;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public deleteAccountInfo(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Ljava/lang/String;

    .prologue
    .line 639
    sget-object v4, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v5, "PREF_ACCOUNTS"

    const-string v6, ""

    invoke-static {p1, v4, v5, v6}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "accounts":Ljava/lang/String;
    invoke-static {v1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 644
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "accountInfoArray":[Ljava/lang/String;
    if-eqz v0, :cond_45

    array-length v4, v0

    if-eqz v4, :cond_45

    .line 646
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 647
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    array-length v4, v0

    if-ge v2, v4, :cond_3a

    .line 648
    aget-object v4, v0, v2

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 649
    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 647
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 652
    :cond_3a
    sget-object v4, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v5, "PREF_ACCOUNTS"

    .line 653
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 652
    invoke-static {p1, v4, v5, v6}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .end local v0    # "accountInfoArray":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_45
    return-void
.end method

.method public getAllAccountInfo(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/games37/riversdk/core/login/model/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 665
    sget-object v5, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v6, "PREF_ACCOUNTS"

    const-string v7, ""

    .line 666
    invoke-static {p1, v5, v6, v7}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, "accounts":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v0, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/games37/riversdk/core/login/model/UserInfo;>;"
    invoke-static {v2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 673
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, "accountStrs":[Ljava/lang/String;
    if-eqz v1, :cond_3d

    array-length v5, v1

    if-eqz v5, :cond_3d

    .line 675
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    array-length v5, v1

    if-ge v3, v5, :cond_3d

    .line 676
    aget-object v5, v1, v3

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 677
    .local v4, "tempArr":[Ljava/lang/String;
    new-instance v5, Lcom/games37/riversdk/core/login/model/UserInfo;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-direct {v5, v6, v7}, Lcom/games37/riversdk/core/login/model/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 681
    .end local v1    # "accountStrs":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "tempArr":[Ljava/lang/String;
    :cond_3d
    return-object v0
.end method

.method public getAppLanguage(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 691
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_APPLANGUAGE"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppLocale(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 712
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_APP_LOCALE"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAutoLoginFlag(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 415
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_AUTO_LOGON_FLAG"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBool(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 790
    const/4 v0, 0x0

    return v0
.end method

.method public getCurUserType(Landroid/content/Context;)Lcom/games37/riversdk/core/login/model/UserType;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    sget-object v1, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v2, "PREF_CUR_USERTYPE"

    sget-object v3, Lcom/games37/riversdk/core/login/model/UserType;->NULL_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    .line 109
    invoke-virtual {v3}, Lcom/games37/riversdk/core/login/model/UserType;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-static {p1, v1, v2, v3}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "userTypeStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/games37/riversdk/core/login/model/UserType;->toUserType(Ljava/lang/String;)Lcom/games37/riversdk/core/login/model/UserType;

    move-result-object v1

    return-object v1
.end method

.method public getDeeplinkFlag(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 449
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_DEEPLINK_FLAG"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDeeplinkUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 471
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_DEEPLINK_URL"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstLoginFlag(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 427
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_FIRST_LOGON_FLAG"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGPId(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 526
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_GPID"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_GAME_TOKEN"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public getLastLoginAccount(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_USERNAME"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastLoginPwd(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 371
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_PWD"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginAccount(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_USERNAME"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginStatus(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_LOGON_STATUS"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLoginToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_LOGIN_TOKEN"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoleId(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_ROLE_ID"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoleLevel(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_ROLE_LEVEL"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoleName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_ROLE_NAME"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerId(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_SERVER_CODE"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 800
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThridPlatform(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 493
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_THRID_PLATFORM"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_USERID"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserType(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_USERTYPE"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBind(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_ISBIND"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveRoleInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverCode"    # Ljava/lang/String;
    .param p3, "roleId"    # Ljava/lang/String;
    .param p4, "roleName"    # Ljava/lang/String;
    .param p5, "roleLevel"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/games37/riversdk/core/model/UserInformation;->setServerId(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/games37/riversdk/core/model/UserInformation;->setRoleId(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/games37/riversdk/core/model/UserInformation;->setRoleName(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/games37/riversdk/core/model/UserInformation;->setRoleLevel(Ljava/lang/String;)V

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "PREF_SERVER_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "PREF_ROLE_ID"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "PREF_ROLE_NAME"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "PREF_ROLE_LEVEL"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v1, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setBundle(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method public setAppLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appLanguage"    # Ljava/lang/String;

    .prologue
    .line 701
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_APPLANGUAGE"

    invoke-static {p1, v0, v1, p2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method public setAppLocale(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # I

    .prologue
    .line 722
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_APP_LOCALE"

    invoke-static {p1, v0, v1, p2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 724
    return-void
.end method

.method public setAutoLoginFlag(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flag"    # Z

    .prologue
    .line 405
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_AUTO_LOGON_FLAG"

    invoke-static {p1, v0, v1, p2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 407
    return-void
.end method

.method public setBool(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 786
    return-void
.end method

.method public setBundle(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 816
    return-void
.end method

.method public setCurUserType(Landroid/content/Context;Lcom/games37/riversdk/core/login/model/UserType;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userType"    # Lcom/games37/riversdk/core/login/model/UserType;

    .prologue
    .line 120
    if-eqz p2, :cond_d

    .line 121
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_CUR_USERTYPE"

    .line 122
    invoke-virtual {p2}, Lcom/games37/riversdk/core/login/model/UserType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_d
    return-void
.end method

.method protected setData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;

    .prologue
    .line 751
    if-eqz p4, :cond_d

    .line 753
    instance-of v0, p4, Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 754
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    .end local p4    # "value":Ljava/lang/Object;
    :cond_d
    :goto_d
    return-void

    .line 755
    .restart local p4    # "value":Ljava/lang/Object;
    :cond_e
    instance-of v0, p4, Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    .line 756
    check-cast p4, Ljava/lang/Integer;

    .end local p4    # "value":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_d

    .line 757
    .restart local p4    # "value":Ljava/lang/Object;
    :cond_1c
    instance-of v0, p4, Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 758
    check-cast p4, Ljava/lang/Boolean;

    .end local p4    # "value":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_d
.end method

.method public setDeeplinkFlag(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flag"    # I

    .prologue
    .line 460
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_DEEPLINK_FLAG"

    invoke-static {p1, v0, v1, p2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 462
    return-void
.end method

.method public setDeeplinkUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deeplink"    # Ljava/lang/String;

    .prologue
    .line 482
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_DEEPLINK_URL"

    invoke-static {p1, v0, v1, p2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public setFirstLoginFlag(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flag"    # I

    .prologue
    .line 438
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_FIRST_LOGON_FLAG"

    invoke-static {p1, v0, v1, p2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 440
    return-void
.end method

.method public setGPId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gpid"    # Ljava/lang/String;

    .prologue
    .line 515
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_GPID"

    invoke-static {p1, v0, v1, p2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 811
    return-void
.end method

.method public setIsBind(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isBind"    # Z

    .prologue
    .line 164
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_ISBIND"

    invoke-static {p1, v0, v1, p2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    return-void
.end method

.method public setLastLoginAccount(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Ljava/lang/String;

    .prologue
    .line 339
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_USERNAME"

    invoke-static {p1, v0, v1, p2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public setLastLoginPwd(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    .line 360
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_PWD"

    invoke-static {p1, v0, v1, p2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public setLoginAccount(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_USERNAME"

    invoke-static {p1, v0, v1, p2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public setLoginStatus(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loginStatus"    # Z

    .prologue
    .line 185
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_LOGON_STATUS"

    invoke-static {p1, v0, v1, p2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 187
    return-void
.end method

.method public setPermBundle(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 780
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setBundle(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 781
    return-void
.end method

.method public setPermData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 747
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/games37/riversdk/core/login/dao/LoginDao;->setData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 748
    return-void
.end method

.method public setRealtimeBundle(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 770
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setBundle(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 771
    return-void
.end method

.method public setRealtimeData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 736
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/games37/riversdk/core/login/dao/LoginDao;->setData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 737
    return-void
.end method

.method public setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 796
    return-void
.end method

.method public setThridPlatform(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thridPlatform"    # Ljava/lang/String;

    .prologue
    .line 504
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_THRID_PLATFORM"

    invoke-static {p1, v0, v1, p2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_USERID"

    invoke-static {p1, v0, v1, p2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public setUserType(Landroid/content/Context;Lcom/games37/riversdk/core/login/model/UserType;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userType"    # Lcom/games37/riversdk/core/login/model/UserType;

    .prologue
    .line 392
    if-eqz p2, :cond_d

    .line 393
    sget-object v0, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_LOGIN_SP_STORAGE:Ljava/lang/String;

    const-string v1, "PREF_USERTYPE"

    .line 394
    invoke-virtual {p2}, Lcom/games37/riversdk/core/login/model/UserType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-static {p1, v0, v1, v2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_d
    return-void
.end method

.method public updateUserProfileInApps(Landroid/content/Context;Lcom/games37/riversdk/core/login/model/UserType;Lorg/json/JSONObject;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userType"    # Lcom/games37/riversdk/core/login/model/UserType;
    .param p3, "dataObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, 0x1

    .line 252
    if-nez p3, :cond_4

    .line 317
    :goto_3
    return-void

    .line 255
    :cond_4
    const-string v7, "ID"

    invoke-virtual {p3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_24

    const-string v7, "LOGIN_ACCOUNT"

    .line 256
    invoke-virtual {p3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_24

    const-string v7, "IS_BINDING"

    .line 257
    invoke-virtual {p3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_24

    const-string v7, "TIMESTAMP"

    .line 258
    invoke-virtual {p3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2c

    .line 259
    :cond_24
    const-string v7, "LoginDao"

    const-string v8, "updateUserProfile:important params is null"

    invoke-static {v7, v8}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 262
    :cond_2c
    const-string v7, "LoginDao"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateUserProfile dataObject:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v7, "ID"

    invoke-virtual {p3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/games37/riversdk/core/model/UserInformation;->setUserId(Ljava/lang/String;)V

    .line 270
    const-string v7, "BINDING_USER"

    invoke-virtual {p3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "bindingUser":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/games37/riversdk/core/model/UserInformation;->setBinging_user(Ljava/lang/String;)V

    .line 274
    const-string v7, "LOGIN_ACCOUNT"

    invoke-virtual {p3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "loginAccount":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/games37/riversdk/core/model/UserInformation;->setLoginAccount(Ljava/lang/String;)V

    .line 278
    const-string v7, "GAME_TOKEN"

    invoke-virtual {p3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "gameToken":Ljava/lang/String;
    const-string v7, "LOGIN_TOKEN"

    invoke-virtual {p3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, "loginToken":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/games37/riversdk/core/model/UserInformation;->setGameToken(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/games37/riversdk/core/model/UserInformation;->setLoginToken(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/games37/riversdk/core/model/UserInformation;->setLoginStatus(Z)V

    .line 287
    if-eqz p2, :cond_95

    .line 288
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/games37/riversdk/core/model/UserInformation;->setCurUserType(Lcom/games37/riversdk/core/login/model/UserType;)V

    .line 290
    :cond_95
    const/4 v3, 0x0

    .line 292
    .local v3, "isBind":Z
    const-string v7, "IS_BINDING"

    invoke-virtual {p3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v10, :cond_e6

    .line 293
    const/4 v3, 0x1

    .line 295
    move-object v4, v0

    .line 296
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/games37/riversdk/core/model/UserInformation;->setLoginAccount(Ljava/lang/String;)V

    .line 304
    :goto_a7
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/games37/riversdk/core/model/UserInformation;->setBind(Z)V

    .line 306
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 307
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "PREF_USERID"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v7, "PREF_BINDINGUSER"

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v7, "PREF_LOGINACCOUNT"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v7, "PREF_LOGON_STATUS"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 311
    const-string v7, "PREF_LOGIN_TOKEN"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v7, "PREF_GAME_TOKEN"

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v7, "PREF_CUR_USERTYPE"

    invoke-virtual {p2}, Lcom/games37/riversdk/core/login/model/UserType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v7, "PREF_ISBIND"

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    sget-object v7, Lcom/games37/riversdk/core/login/dao/LoginDao;->RIVERSDK_REALITIME_LOGIN_SP_STORAGE:Ljava/lang/String;

    invoke-static {p1, v7, v1}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setBundle(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 298
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_e6
    const-string v7, "USER_TYPE"

    invoke-virtual {p3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_f0

    .line 299
    const/4 v3, 0x1

    goto :goto_a7

    .line 301
    :cond_f0
    const/4 v3, 0x0

    goto :goto_a7
.end method

.method public updateUserProfileInMemory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/login/model/UserType;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;
    .param p4, "userType"    # Lcom/games37/riversdk/core/login/model/UserType;

    .prologue
    .line 543
    sget-object v0, Lcom/games37/riversdk/core/login/model/UserType;->NORMAL_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    if-ne v0, p4, :cond_19

    .line 544
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 545
    invoke-static {p3}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 547
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/login/dao/LoginDao;->setLastLoginAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0, p1, p3}, Lcom/games37/riversdk/core/login/dao/LoginDao;->setLastLoginPwd(Landroid/content/Context;Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0, p1, p2, p3}, Lcom/games37/riversdk/core/login/dao/LoginDao;->addAccountInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_19
    invoke-virtual {p0, p1, p4}, Lcom/games37/riversdk/core/login/dao/LoginDao;->setUserType(Landroid/content/Context;Lcom/games37/riversdk/core/login/model/UserType;)V

    .line 555
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/games37/riversdk/core/login/dao/LoginDao;->setAutoLoginFlag(Landroid/content/Context;Z)V

    .line 556
    return-void
.end method
