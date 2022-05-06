.class public interface abstract Lcom/games37/riversdk/core/api/RiverSDKBaseApi;
.super Ljava/lang/Object;
.source "RiverSDKBaseApi.java"


# virtual methods
.method public abstract onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end method

.method public abstract onCreate(Landroid/app/Activity;)V
.end method

.method public abstract onDestroy(Landroid/app/Activity;)V
.end method

.method public abstract onPause(Landroid/app/Activity;)V
.end method

.method public abstract onRestart(Landroid/app/Activity;)V
.end method

.method public abstract onResume(Landroid/app/Activity;)V
.end method

.method public abstract onStart(Landroid/app/Activity;)V
.end method

.method public abstract onStop(Landroid/app/Activity;)V
.end method

.method public abstract sqSDKAutoLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public abstract sqSDKBindPlatform(Landroid/app/Activity;Lcom/games37/riversdk/core/login/model/UserType;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public abstract sqSDKFBInGameFriendInfo(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public abstract sqSDKFacebookLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public abstract sqSDKFacebookShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public abstract sqSDKGetDeepLinkData(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public abstract sqSDKGoogleLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public abstract sqSDKGuestLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public abstract sqSDKHuaweiLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public abstract sqSDKInAppPurchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public abstract sqSDKInit(Landroid/app/Activity;)V
.end method

.method public abstract sqSDKInit(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public abstract sqSDKInviteFromSocialAPP(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/share/SocialType;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public abstract sqSDKLogout(Landroid/content/Context;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public abstract sqSDKOpenWebFloatView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sqSDKPresentFAQView(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ShowViewCallback;)V
.end method

.method public abstract sqSDKPresentFacebookSocialCenter(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sqSDKPresentLoginView(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public abstract sqSDKPresentNoticeView(Landroid/content/Context;Lcom/games37/riversdk/core/callback/ShowViewCallback;)V
.end method

.method public abstract sqSDKPresentOnlineChatView(Landroid/app/Activity;)V
.end method

.method public abstract sqSDKPresentUserCenterView(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ShowViewCallback;)V
.end method

.method public abstract sqSDKReportFacebookEvent(Landroid/content/Context;Ljava/lang/String;DLjava/lang/String;)V
.end method

.method public abstract sqSDKReportGoogleEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sqSDKReportServerCode(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract sqSDKReportServerCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sqSDKRequestGoogleSkuDetail(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/games37/riversdk/core/callback/SDKCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sqSDKSetLocalLanguage(Landroid/app/Activity;I)V
.end method

.method public abstract sqSDKSetSwitchAccountCallback(Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public abstract sqSDKTwitterLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public abstract sqSDKUnbindPlatform(Landroid/app/Activity;Lcom/games37/riversdk/core/login/model/UserType;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public abstract sqSDKhasLogin()Z
.end method
