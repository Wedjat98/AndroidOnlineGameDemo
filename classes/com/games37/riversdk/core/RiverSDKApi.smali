.class public Lcom/games37/riversdk/core/RiverSDKApi;
.super Ljava/lang/Object;
.source "RiverSDKApi.java"

# interfaces
.implements Lcom/games37/riversdk/core/api/RiverSDKBaseApi;


# instance fields
.field private mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->getRiverSDKApi(Ljava/lang/String;)Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    .line 27
    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 506
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 508
    :cond_9
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 456
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->onCreate(Landroid/app/Activity;)V

    .line 458
    :cond_9
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 491
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->onDestroy(Landroid/app/Activity;)V

    .line 493
    :cond_9
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 477
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->onPause(Landroid/app/Activity;)V

    .line 479
    :cond_9
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 498
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->onRestart(Landroid/app/Activity;)V

    .line 500
    :cond_9
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 470
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->onResume(Landroid/app/Activity;)V

    .line 472
    :cond_9
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 463
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->onStart(Landroid/app/Activity;)V

    .line 465
    :cond_9
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 484
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->onStop(Landroid/app/Activity;)V

    .line 486
    :cond_9
    return-void
.end method

.method public sqSDKAutoLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 76
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKAutoLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 78
    :cond_9
    return-void
.end method

.method public sqSDKBindPlatform(Landroid/app/Activity;Lcom/games37/riversdk/core/login/model/UserType;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userType"    # Lcom/games37/riversdk/core/login/model/UserType;
    .param p3, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 155
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKBindPlatform(Landroid/app/Activity;Lcom/games37/riversdk/core/login/model/UserType;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 157
    :cond_9
    return-void
.end method

.method public sqSDKFBInGameFriendInfo(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 433
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKFBInGameFriendInfo(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 435
    :cond_9
    return-void
.end method

.method public sqSDKFacebookLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 102
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKFacebookLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 104
    :cond_9
    return-void
.end method

.method public sqSDKFacebookShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 16
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "roleId"    # Ljava/lang/String;
    .param p5, "roleName"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_10

    .line 356
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKFacebookShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 358
    :cond_10
    return-void
.end method

.method public sqSDKGetDeepLinkData(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 446
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKGetDeepLinkData(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 448
    :cond_9
    return-void
.end method

.method public sqSDKGoogleLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKGoogleLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 117
    :cond_9
    return-void
.end method

.method public sqSDKGuestLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 89
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKGuestLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 91
    :cond_9
    return-void
.end method

.method public sqSDKHuaweiLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 404
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKHuaweiLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 406
    :cond_9
    return-void
.end method

.method public sqSDKInAppPurchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 20
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "roleId"    # Ljava/lang/String;
    .param p3, "roleName"    # Ljava/lang/String;
    .param p4, "roleLevel"    # Ljava/lang/String;
    .param p5, "serverId"    # Ljava/lang/String;
    .param p6, "productId"    # Ljava/lang/String;
    .param p7, "cpOrderId"    # Ljava/lang/String;
    .param p8, "remark"    # Ljava/lang/String;
    .param p9, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_16

    .line 260
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKInAppPurchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 263
    :cond_16
    return-void
.end method

.method public sqSDKInit(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 37
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKInit(Landroid/app/Activity;)V

    .line 39
    :cond_9
    return-void
.end method

.method public sqSDKInit(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 50
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKInit(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 52
    :cond_9
    return-void
.end method

.method public sqSDKInviteFromSocialAPP(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/share/SocialType;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "shareUrl"    # Ljava/lang/String;
    .param p5, "socialType"    # Lcom/games37/riversdk/core/share/SocialType;
    .param p6, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_f

    .line 421
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKInviteFromSocialAPP(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/share/SocialType;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 423
    :cond_f
    return-void
.end method

.method public sqSDKLogout(Landroid/content/Context;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 369
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKLogout(Landroid/content/Context;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 371
    :cond_9
    return-void
.end method

.method public sqSDKOpenWebFloatView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "roleId"    # Ljava/lang/String;
    .param p4, "roleName"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 337
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKOpenWebFloatView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_9
    return-void
.end method

.method public sqSDKPresentFAQView(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ShowViewCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/ShowViewCallback;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 237
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKPresentFAQView(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ShowViewCallback;)V

    .line 239
    :cond_9
    return-void
.end method

.method public sqSDKPresentFacebookSocialCenter(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "roleId"    # Ljava/lang/String;
    .param p4, "roleName"    # Ljava/lang/String;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 322
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKPresentFacebookSocialCenter(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_9
    return-void
.end method

.method public sqSDKPresentLoginView(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 141
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKPresentLoginView(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 143
    :cond_9
    return-void
.end method

.method public sqSDKPresentNoticeView(Landroid/content/Context;Lcom/games37/riversdk/core/callback/ShowViewCallback;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/ShowViewCallback;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 306
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKPresentNoticeView(Landroid/content/Context;Lcom/games37/riversdk/core/callback/ShowViewCallback;)V

    .line 308
    :cond_9
    return-void
.end method

.method public sqSDKPresentOnlineChatView(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 230
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKPresentOnlineChatView(Landroid/app/Activity;)V

    .line 232
    :cond_9
    return-void
.end method

.method public sqSDKPresentUserCenterView(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ShowViewCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/ShowViewCallback;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 223
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKPresentUserCenterView(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ShowViewCallback;)V

    .line 225
    :cond_9
    return-void
.end method

.method public sqSDKReportFacebookEvent(Landroid/content/Context;Ljava/lang/String;DLjava/lang/String;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "value"    # D
    .param p5, "currency"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_d

    .line 292
    iget-object v1, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKReportFacebookEvent(Landroid/content/Context;Ljava/lang/String;DLjava/lang/String;)V

    .line 295
    :cond_d
    return-void
.end method

.method public sqSDKReportGoogleEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 276
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKReportGoogleEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_9
    return-void
.end method

.method public sqSDKReportServerCode(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serverCode"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 194
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKReportServerCode(Landroid/app/Activity;Ljava/lang/String;)V

    .line 196
    :cond_9
    return-void
.end method

.method public sqSDKReportServerCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serverCode"    # Ljava/lang/String;
    .param p3, "roleId"    # Ljava/lang/String;
    .param p4, "roleName"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 210
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKReportServerCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_9
    return-void
.end method

.method public sqSDKRequestGoogleSkuDetail(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;
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

    .prologue
    .line 396
    .local p2, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 397
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKRequestGoogleSkuDetail(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 399
    :cond_9
    return-void
.end method

.method public sqSDKSetLocalLanguage(Landroid/app/Activity;I)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "iso"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 63
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKSetLocalLanguage(Landroid/app/Activity;I)V

    .line 65
    :cond_9
    return-void
.end method

.method public sqSDKSetSwitchAccountCallback(Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 181
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKSetSwitchAccountCallback(Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 183
    :cond_9
    return-void
.end method

.method public sqSDKTwitterLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 128
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKTwitterLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 130
    :cond_9
    return-void
.end method

.method public sqSDKUnbindPlatform(Landroid/app/Activity;Lcom/games37/riversdk/core/login/model/UserType;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userType"    # Lcom/games37/riversdk/core/login/model/UserType;
    .param p3, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_9

    .line 169
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKUnbindPlatform(Landroid/app/Activity;Lcom/games37/riversdk/core/login/model/UserType;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 171
    :cond_9
    return-void
.end method

.method public sqSDKhasLogin()Z
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    if-eqz v0, :cond_b

    .line 381
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApi;->mBaseApiImpl:Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    invoke-interface {v0}, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;->sqSDKhasLogin()Z

    move-result v0

    .line 383
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
