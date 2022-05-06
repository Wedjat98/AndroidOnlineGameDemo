.class public Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;
.super Ljava/lang/Object;
.source "GPLoginProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GPLoginProxy"

.field private static volatile instance:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;


# instance fields
.field private mLoginCallback:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;

.field private mLogoutCallback:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->instance:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getInstance()Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->instance:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;

    if-nez v0, :cond_13

    .line 32
    const-class v1, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;

    monitor-enter v1

    .line 33
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->instance:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;

    if-nez v0, :cond_12

    .line 34
    new-instance v0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;

    invoke-direct {v0}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;-><init>()V

    sput-object v0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->instance:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;

    .line 36
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 38
    :cond_13
    sget-object v0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->instance:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;

    return-object v0

    .line 36
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private handleActivityResultByLogin(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 135
    packed-switch p3, :pswitch_data_10

    .line 151
    :goto_3
    return-void

    .line 138
    :pswitch_4
    invoke-direct {p0, p1, p4}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->handleLoginSuccess(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_3

    .line 142
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->handleLoginError(Landroid/app/Activity;)V

    goto :goto_3

    .line 146
    :pswitch_c
    invoke-direct {p0, p1, p4}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->handleLoginFailed(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_3

    .line 135
    :pswitch_data_10
    .packed-switch 0x7532
        :pswitch_c
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method private handleActivityResultByLogout(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 219
    packed-switch p3, :pswitch_data_10

    .line 235
    :goto_3
    return-void

    .line 222
    :pswitch_4
    invoke-direct {p0, p1, p4}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->handleLogoutSuccess(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_3

    .line 226
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->handleLogoutError(Landroid/app/Activity;)V

    goto :goto_3

    .line 230
    :pswitch_c
    invoke-direct {p0, p1, p4}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->handleLogoutFailed(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_3

    .line 219
    :pswitch_data_10
    .packed-switch 0x7532
        :pswitch_c
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method private handleLoginError(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 182
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->mLoginCallback:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;

    if-eqz v1, :cond_16

    .line 183
    const-string v1, "r1_gp_login_fail"

    .line 184
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 183
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "signInFailedMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->mLoginCallback:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;

    const v2, 0x13883

    invoke-interface {v1, v2, v0}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;->onFailure(ILjava/lang/String;)V

    .line 187
    .end local v0    # "signInFailedMsg":Ljava/lang/String;
    :cond_16
    return-void
.end method

.method private handleLoginFailed(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 196
    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->mLoginCallback:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;

    if-eqz v2, :cond_21

    .line 197
    if-nez p2, :cond_22

    const-string v1, ""

    .line 199
    .local v1, "msg":Ljava/lang/String;
    :goto_8
    const-string v2, "r1_gp_service_connect_fail"

    invoke-static {p1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "defaultMsg":Ljava/lang/String;
    invoke-static {v1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object v1, v0

    .line 203
    :cond_19
    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->mLoginCallback:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;

    const v3, 0x13882

    invoke-interface {v2, v3, v1}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;->onFailure(ILjava/lang/String;)V

    .line 205
    .end local v0    # "defaultMsg":Ljava/lang/String;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_21
    return-void

    .line 197
    :cond_22
    const-string v2, "msg"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method private handleLoginSuccess(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 160
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->mLoginCallback:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;

    if-eqz v3, :cond_35

    .line 161
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz p2, :cond_36

    .line 163
    const-string v3, "authCode"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "authCode":Ljava/lang/String;
    const-string v3, "idToken"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "idToken":Ljava/lang/String;
    const-string v3, "authCode"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v3, "idToken"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v3, "msg"

    const-string v4, "r1_gp_login_success"

    .line 168
    invoke-static {p1, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 167
    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->mLoginCallback:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;

    invoke-interface {v3, v1}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 174
    .end local v0    # "authCode":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "idToken":Ljava/lang/String;
    :cond_35
    :goto_35
    return-void

    .line 171
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_36
    invoke-direct {p0, p1}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->handleLoginError(Landroid/app/Activity;)V

    goto :goto_35
.end method

.method private handleLogoutError(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 262
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->mLogoutCallback:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;

    if-eqz v1, :cond_16

    .line 263
    const-string v1, "r1_gp_logout_fail"

    .line 264
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 263
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "failedMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->mLogoutCallback:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;

    const v2, 0x13887

    invoke-interface {v1, v2, v0}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;->onFailure(ILjava/lang/String;)V

    .line 267
    .end local v0    # "failedMsg":Ljava/lang/String;
    :cond_16
    return-void
.end method

.method private handleLogoutFailed(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 276
    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->mLogoutCallback:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;

    if-eqz v2, :cond_21

    .line 278
    if-nez p2, :cond_22

    const-string v1, ""

    .line 280
    .local v1, "msg":Ljava/lang/String;
    :goto_8
    const-string v2, "r1_gp_service_connect_fail"

    invoke-static {p1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "defaultMsg":Ljava/lang/String;
    invoke-static {v1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object v1, v0

    .line 284
    :cond_19
    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->mLogoutCallback:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;

    const v3, 0x13886

    invoke-interface {v2, v3, v1}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;->onFailure(ILjava/lang/String;)V

    .line 286
    .end local v0    # "defaultMsg":Ljava/lang/String;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_21
    return-void

    .line 278
    :cond_22
    const-string v2, "msg"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method private handleLogoutSuccess(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->mLogoutCallback:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;

    if-eqz v1, :cond_26

    .line 245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 246
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p2, :cond_21

    .line 247
    const-string v1, "code"

    const-string v2, "code"

    .line 248
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "msg"

    const-string v2, "msg"

    .line 250
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_21
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->mLogoutCallback:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;

    invoke-interface {v1, v0}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 254
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_26
    return-void
.end method

.method private startActivity(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serverClientId"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SERVER_CLIENT_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "REQUEST_CODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p1, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 107
    return-void
.end method


# virtual methods
.method public login(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "server_client_id"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;

    .prologue
    .line 51
    const-string v0, "GPLoginProxy"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    if-nez p3, :cond_11

    .line 53
    const-string v0, "GPLoginProxy"

    const-string v1, "login callback is null!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_10
    return-void

    .line 56
    :cond_11
    iput-object p3, p0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->mLoginCallback:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;

    .line 58
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 59
    const v0, 0x13885

    const-string v1, "r1_gp_server_client_id_null"

    .line 60
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-interface {p3, v0, v1}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_10

    .line 64
    :cond_2a
    const v0, 0x13880

    invoke-direct {p0, p1, p2, v0}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->startActivity(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_10
.end method

.method public logout(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "server_client_id"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;

    .prologue
    .line 76
    const-string v0, "GPLoginProxy"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    if-nez p3, :cond_11

    .line 78
    const-string v0, "GPLoginProxy"

    const-string v1, "logout callback is null!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_10
    return-void

    .line 81
    :cond_11
    iput-object p3, p0, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->mLogoutCallback:Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;

    .line 83
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 84
    const v0, 0x13885

    const-string v1, "r1_gp_server_client_id_null"

    .line 85
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-interface {p3, v0, v1}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy$LoginCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_10

    .line 90
    :cond_2a
    const v0, 0x13881

    invoke-direct {p0, p1, p2, v0}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->startActivity(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_10
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 113
    const-string v0, "GPLoginProxy"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const v0, 0x13880

    if-ne p2, v0, :cond_10

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->handleActivityResultByLogin(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 121
    :cond_f
    :goto_f
    return-void

    .line 117
    :cond_10
    const v0, 0x13881

    if-ne p2, v0, :cond_f

    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/games37/riversdk/functions/googleplay/login/GPLoginProxy;->handleActivityResultByLogout(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_f
.end method
