.class public Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;
.super Ljava/lang/Object;
.source "FloatViewPresenter.java"


# static fields
.field public static final FB_SHARE:Ljava/lang/String; = "fb_share"

.field public static final FB_SOCIAL:Ljava/lang/String; = "fb_social"

.field public static final HIDE_WINDOW:Ljava/lang/String; = "hide_window"

.field public static final HIDE_WINDOW_STR:Ljava/lang/String; = "\u9690\u85cf\u6d6e\u5c42"

.field public static final OPEN_BROWSER:Ljava/lang/String; = "browser"

.field public static final OPEN_WEBVIEW:Ljava/lang/String; = "webview"

.field public static final OPEN_WINDOW:Ljava/lang/String; = "open_window"

.field public static final OPEN_WINDOW_STR:Ljava/lang/String; = "\u663e\u793a\u6d6e\u5c42"

.field public static final SHOW_MENU_ITEM_NUM:I = 0x5

.field public static final TAG:Ljava/lang/String; = "FloatViewPresenter"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;
    .param p1, "x1"    # Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->handleFunctionInfo(Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;Lcom/games37/riversdk/core/model/RoleData;)V
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;
    .param p3, "x3"    # Lcom/games37/riversdk/core/model/RoleData;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->getShareReward(Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;Lcom/games37/riversdk/core/model/RoleData;)V

    return-void
.end method

.method private getMenuInfoByTag(Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;Ljava/lang/String;)Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;
    .registers 8
    .param p1, "functionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 161
    if-eqz p1, :cond_19

    .line 162
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 163
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_19

    .line 164
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_19
    move-object v2, v3

    .line 175
    :cond_1a
    :goto_1a
    return-object v2

    .line 167
    :cond_1b
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 168
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    if-ge v0, v1, :cond_3d

    .line 169
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    .line 171
    .local v2, "menuFunctionInfo":Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;
    invoke-virtual {v2}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFUNCTION_NAME()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .end local v2    # "menuFunctionInfo":Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;
    :cond_3d
    move-object v2, v3

    .line 175
    goto :goto_1a
.end method

.method private getShareReward(Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;Lcom/games37/riversdk/core/model/RoleData;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "functionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;
    .param p3, "roleData"    # Lcom/games37/riversdk/core/model/RoleData;

    .prologue
    .line 475
    new-instance v0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$5;

    invoke-direct {v0, p0}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$5;-><init>(Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;)V

    invoke-static {p1, p3, v0}, Lcom/games37/riversdk/gm99/utils/FloatViewWebRequestUtil;->getShareReward(Landroid/content/Context;Lcom/games37/riversdk/core/model/RoleData;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 492
    return-void
.end method

.method private handleFunctionInfo(Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)V
    .registers 5
    .param p1, "functionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .prologue
    const/4 v2, 0x5

    .line 392
    if-eqz p1, :cond_1a

    .line 393
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v0

    .line 395
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;>;"
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_1a

    .line 396
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 399
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;>;"
    :cond_1a
    return-void
.end method

.method private updateFunctionInfo(Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "functionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .prologue
    .line 204
    invoke-static {}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getInstance()Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setFloatViewFunInfo(Landroid/content/Context;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)V

    .line 205
    return-void
.end method

.method private updateRedPointState(Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "functionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;
    .param p3, "menuFunctionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    .prologue
    .line 187
    if-eqz p3, :cond_1d

    const-string v0, "1"

    .line 188
    invoke-virtual {p3}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getHAS_RED_POINT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 189
    const-string v0, "0"

    invoke-virtual {p3, v0}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->setHAS_RED_POINT(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p3}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFUNCTION_CONFIG_ID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->setUnreadState(Landroid/app/Activity;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->updateFunctionInfo(Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)V

    .line 195
    :cond_1d
    return-void
.end method


# virtual methods
.method public facebookShare(Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;Lcom/games37/riversdk/core/model/RoleData;Ljava/lang/String;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "menuFunctionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;
    .param p3, "roleData"    # Lcom/games37/riversdk/core/model/RoleData;
    .param p4, "contentUrl"    # Ljava/lang/String;

    .prologue
    .line 437
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->getInstance()Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    move-result-object v0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    new-instance v6, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$4;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$4;-><init>(Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;Lcom/games37/riversdk/core/model/RoleData;)V

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->facebookShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    .line 463
    return-void
.end method

.method public getFunsList(Landroid/content/Context;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p2, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;>;"
    new-instance v0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$3;-><init>(Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;Landroid/content/Context;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    invoke-static {p1, v0}, Lcom/games37/riversdk/gm99/utils/FloatViewWebRequestUtil;->getFunctionList(Landroid/content/Context;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 384
    return-void
.end method

.method public getLogoRedPointState(Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)Z
    .registers 8
    .param p1, "functionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .prologue
    const/4 v3, 0x0

    .line 408
    if-eqz p1, :cond_13

    .line 409
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 410
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_14

    .line 421
    :cond_13
    :goto_13
    return v3

    .line 414
    :cond_14
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 415
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    if-ge v0, v1, :cond_13

    .line 416
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getFunction_lists()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    .line 417
    .local v2, "menuFunctionInfo":Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;
    const-string v4, "1"

    invoke-virtual {v2}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getHAS_RED_POINT()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 418
    const/4 v3, 0x1

    goto :goto_13

    .line 415
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method

.method public onClick(Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;)Z
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "functionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;
    .param p3, "menuFunctionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    const-string v4, "FloatViewPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick functionInfo = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2f

    const-string v1, "null"

    :goto_1b
    invoke-static {v4, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginStatus()Z

    move-result v1

    if-nez v1, :cond_34

    .line 89
    const-string v1, "a1_toast_login_info"

    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByResName(Landroid/content/Context;Ljava/lang/String;)V

    move v1, v2

    .line 150
    :goto_2e
    return v1

    .line 85
    :cond_2f
    invoke-virtual {p2}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 94
    :cond_34
    if-nez p3, :cond_38

    move v1, v2

    .line 95
    goto :goto_2e

    .line 99
    :cond_38
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getRoleData()Lcom/games37/riversdk/core/model/RoleData;

    move-result-object v1

    if-nez v1, :cond_49

    .line 100
    const-string v1, "a1_toast_choose_role_info"

    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByResName(Landroid/content/Context;Ljava/lang/String;)V

    move v1, v2

    .line 101
    goto :goto_2e

    .line 105
    :cond_49
    invoke-direct {p0, p1, p2, p3}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->updateRedPointState(Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;)V

    .line 108
    const-string v1, "1"

    .line 110
    invoke-virtual {p3}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFUNCTION_NAME()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-virtual {p3}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFUNCTION_TYPE()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-virtual {p0, p1, v1, v2, v4}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->statisticClick(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "fb_share"

    invoke-virtual {p3}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFUNCTION_TYPE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 117
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getRoleData()Lcom/games37/riversdk/core/model/RoleData;

    move-result-object v1

    .line 118
    invoke-virtual {p3}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFORWARD_LINK()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {p0, p1, p3, v1, v2}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->facebookShare(Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;Lcom/games37/riversdk/core/model/RoleData;Ljava/lang/String;)V

    .line 120
    const-string v1, "3"

    const-string v2, ""

    const-string v4, "1"

    invoke-virtual {p0, p1, v1, v2, v4}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->statisticClick(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 124
    goto :goto_2e

    .line 127
    :cond_7f
    const-string v1, "fb_social"

    invoke-virtual {p3}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFUNCTION_TYPE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 129
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->openFBSocialCenter(Landroid/app/Activity;)V

    move v1, v3

    .line 130
    goto :goto_2e

    .line 133
    :cond_90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "url"

    invoke-virtual {p3}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFORWARD_LINK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "roleId"

    .line 136
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getRoleData()Lcom/games37/riversdk/core/model/RoleData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/model/RoleData;->getRoleId()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "roleName"

    .line 138
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getRoleData()Lcom/games37/riversdk/core/model/RoleData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/model/RoleData;->getRoleName()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "roleLevel"

    .line 140
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getRoleData()Lcom/games37/riversdk/core/model/RoleData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/model/RoleData;->getRoleLevel()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "serverId"

    .line 142
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getRoleData()Lcom/games37/riversdk/core/model/RoleData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/model/RoleData;->getServerId()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "browser"

    invoke-virtual {p3}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFUNCTION_OPEN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 145
    invoke-virtual {p0, p1, v0}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->openBrowser(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_f1
    :goto_f1
    move v1, v3

    .line 150
    goto/16 :goto_2e

    .line 146
    :cond_f4
    const-string v1, "webview"

    invoke-virtual {p3}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFUNCTION_OPEN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 148
    invoke-virtual {p0, p1, v0}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->openWebview(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_f1
.end method

.method public openBrowser(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 214
    const-string v0, "FloatViewPresenter"

    const-string v1, "openBrowser"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {p1, p2}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->openBrowser(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 216
    return-void
.end method

.method public openFBSocialCenter(Landroid/app/Activity;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 276
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v1

    .line 278
    .local v1, "manager":Lcom/games37/riversdk/gm99/floatview/FloatViewManager;
    invoke-virtual {v1}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getRoleData()Lcom/games37/riversdk/core/model/RoleData;

    move-result-object v4

    .line 281
    .local v4, "roleData":Lcom/games37/riversdk/core/model/RoleData;
    if-nez v4, :cond_10

    .line 282
    const-string v5, "a1_toast_choose_role_info"

    invoke-static {p1, v5}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByResName(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    :goto_f
    return-void

    .line 286
    :cond_10
    invoke-virtual {v1}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->hide()V

    .line 289
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v2, "paramsBundle":Landroid/os/Bundle;
    const-string v5, "serverId"

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/RoleData;->getServerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v5, "roleId"

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/RoleData;->getRoleId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v5, "roleName"

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/RoleData;->getRoleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v5, "appId"

    .line 294
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v6

    .line 295
    invoke-virtual {v6}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v6

    const-string v7, "FACEBOOK_APP_ID"

    invoke-virtual {v6, v7}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 299
    .local v3, "requestBundle":Landroid/os/Bundle;
    const-string v5, "FBSOCIAL_APP_HOST"

    const-string v6, "https://mfbapps.gm99.com/"

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v5, "SECRETKEY"

    const-string v6, "zixW*#cZ6R6#lGN1!vwY0!dZe#0nlVYSkkNHuraH!j9gg%YKxmM&o5QZPxTCD#e6"

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "PARAMS_BUNDLE"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 304
    const-string v5, "REQUEST_BUNDLE"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_f
.end method

.method public openWebView(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "webType"    # Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 252
    new-instance v0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$2;

    invoke-direct {v0, p0}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$2;-><init>(Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;)V

    .line 265
    .local v0, "callback":Lcom/games37/riversdk/core/callback/ShowViewCallback;
    invoke-static {}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getInstance()Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    move-result-object v1

    sget-object v2, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->WEBVIEW:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 266
    invoke-virtual {v1, v2, v0}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->setCallback(Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;Lcom/games37/riversdk/core/callback/BaseCallback;)V

    .line 267
    invoke-static {p1, p2, p3}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->openWebView(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)V

    .line 268
    return-void
.end method

.method public openWebview(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 226
    new-instance v0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$1;

    invoke-direct {v0, p0}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$1;-><init>(Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;)V

    .line 239
    .local v0, "callback":Lcom/games37/riversdk/core/callback/ShowViewCallback;
    invoke-static {}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getInstance()Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    move-result-object v1

    sget-object v2, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->WEBVIEW:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 240
    invoke-virtual {v1, v2, v0}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->setCallback(Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;Lcom/games37/riversdk/core/callback/BaseCallback;)V

    .line 241
    sget-object v1, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->FLOATVIEW_MENU:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    invoke-static {p1, v1, p2}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->openWebView(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)V

    .line 242
    return-void
.end method

.method public setUnreadState(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "configId"    # Ljava/lang/String;

    .prologue
    .line 315
    const-string v0, "FloatViewPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUnreadState configId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 320
    :goto_1e
    return-void

    .line 319
    :cond_1f
    invoke-static {p1, p2}, Lcom/games37/riversdk/gm99/utils/FloatViewWebRequestUtil;->setUnreadState(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public statisticClick(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "ext"    # Ljava/lang/String;
    .param p3, "functionName"    # Ljava/lang/String;
    .param p4, "functionType"    # Ljava/lang/String;

    .prologue
    .line 333
    const-string v0, "FloatViewPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statisticClick ext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " function_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " functionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {p4}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 339
    :goto_32
    return-void

    .line 338
    :cond_33
    invoke-static {p1, p2, p3, p4}, Lcom/games37/riversdk/gm99/utils/FloatViewWebRequestUtil;->reportClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method
