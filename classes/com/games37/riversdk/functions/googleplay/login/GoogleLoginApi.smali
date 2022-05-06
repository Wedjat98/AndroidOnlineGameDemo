.class public Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;
.super Ljava/lang/Object;
.source "GoogleLoginApi.java"


# static fields
.field public static final RC_GET_AUTH_CODE:I = 0x232b

.field public static final REQ_CONNECT_SERVICE:I = 0xd824

.field public static final RESULT_ERROR:I = 0x7534

.field public static final RESULT_FAILED:I = 0x7532

.field public static final RESULT_SUCCESS:I = 0x7533

.field public static final TAG:Ljava/lang/String; = "GoogleLoginApi"


# instance fields
.field private isRequesting:Z

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mResolveStatus:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->isRequesting:Z

    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;Landroid/support/v4/app/FragmentActivity;Lcom/google/android/gms/common/api/Status;)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;
    .param p1, "x1"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "x2"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->handleLogoutResult(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private handleActivityResultByLogin(Landroid/support/v4/app/FragmentActivity;IILandroid/content/Intent;)V
    .registers 10
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x7534

    .line 229
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->isRequesting:Z

    .line 231
    if-nez p4, :cond_15

    .line 232
    const-string v2, "GoogleLoginApi"

    const-string v3, "handleActivityResultByLogin intent data is null!"

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1, v4}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 234
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 256
    :goto_14
    return-void

    .line 237
    :cond_15
    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {v2, p4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object v0

    .line 239
    .local v0, "result":Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    if-nez v0, :cond_2b

    .line 240
    const-string v2, "GoogleLoginApi"

    const-string v3, "handleActivityResultByLogin GoogleSignInResult is null!"

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1, v4}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 242
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_14

    .line 245
    :cond_2b
    const-string v3, "GoogleLoginApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleActivityResultByLogin GoogleSignInResult isSuccess = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "status = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_63

    const-string v2, ""

    .line 245
    :goto_56
    invoke-static {v3, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 250
    invoke-direct {p0, p1, v0}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->handleAuthSuccess(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V

    goto :goto_14

    .line 246
    :cond_63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " signInAccount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 247
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_56

    .line 253
    :cond_87
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 254
    .local v1, "status":Lcom/google/android/gms/common/api/Status;
    invoke-direct {p0, p1, v1}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->handleAuthFail(Landroid/app/Activity;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_14
.end method

.method private handleAuthFail(Landroid/app/Activity;Lcom/google/android/gms/common/api/Status;)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "status"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    .line 288
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 290
    .local v1, "intent":Landroid/content/Intent;
    if-nez p2, :cond_9f

    const v0, 0x13882

    .line 291
    .local v0, "code":I
    :goto_a
    const-string v3, "code"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    if-nez p2, :cond_a5

    const-string v2, ""

    .line 295
    .local v2, "msg":Ljava/lang/String;
    :goto_17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 296
    invoke-static {v0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v2

    .line 298
    :goto_21
    const-string v3, "GoogleLoginApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAuthFail msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v3, "GoogleLoginApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status getResolution:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getResolution()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getStatusCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 300
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v3, "unknown status code"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 303
    const-string v3, "r1_gp_login_fail"

    invoke-static {p1, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 305
    :cond_91
    const-string v3, "msg"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const/16 v3, 0x7532

    invoke-virtual {p1, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 307
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 308
    return-void

    .line 290
    .end local v0    # "code":I
    .end local v2    # "msg":Ljava/lang/String;
    :cond_9f
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    goto/16 :goto_a

    .line 293
    .restart local v0    # "code":I
    :cond_a5
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_17

    .line 297
    .restart local v2    # "msg":Ljava/lang/String;
    :cond_ab
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_21
.end method

.method private handleAuthSuccess(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    .prologue
    .line 267
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 269
    .local v0, "acct":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "authCode":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "idToken":Ljava/lang/String;
    const-string v4, "GoogleLoginApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult authCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v4, "GoogleLoginApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult idToken:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 275
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "authCode"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v4, "idToken"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const/16 v4, 0x7533

    invoke-virtual {p1, v4, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 278
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 279
    return-void
.end method

.method private handleConnectFail(Landroid/app/Activity;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 346
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 347
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msg"

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v1, "code"

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const/16 v1, 0x7532

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 350
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 351
    return-void
.end method

.method private handleLogoutResult(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/gms/common/api/Status;)V
    .registers 9
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "status"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    const/16 v5, 0x7533

    .line 143
    if-eqz p2, :cond_75

    .line 144
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 145
    if-eqz p2, :cond_41

    .line 148
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    .line 150
    .local v0, "code":I
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 151
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "msg":Ljava/lang/String;
    :goto_22
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "code"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v3, "msg"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p1, v5, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 177
    .end local v0    # "code":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "msg":Ljava/lang/String;
    :goto_38
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 178
    return-void

    .line 152
    .restart local v0    # "code":I
    :cond_3c
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    .line 158
    .end local v0    # "code":I
    :cond_41
    invoke-virtual {p1, v5}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    goto :goto_38

    .line 162
    :cond_45
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 164
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    .line 165
    .restart local v0    # "code":I
    const-string v3, "code"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 168
    invoke-static {v0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    .restart local v2    # "msg":Ljava/lang/String;
    :goto_65
    const-string v3, "msg"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const/16 v3, 0x7532

    invoke-virtual {p1, v3, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_38

    .line 169
    .end local v2    # "msg":Ljava/lang/String;
    :cond_70
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_65

    .line 175
    .end local v0    # "code":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_75
    const/16 v3, 0x7534

    invoke-virtual {p1, v3}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    goto :goto_38
.end method


# virtual methods
.method public auth(Landroid/support/v4/app/FragmentActivity;)V
    .registers 5
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 110
    iget-boolean v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->isRequesting:Z

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->isRequesting:Z

    .line 112
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 113
    invoke-interface {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    .line 114
    .local v0, "signInIntent":Landroid/content/Intent;
    const/16 v1, 0x232b

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 116
    .end local v0    # "signInIntent":Landroid/content/Intent;
    :cond_20
    return-void
.end method

.method public connectService()V
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 185
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 186
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_19

    .line 187
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 189
    :cond_19
    return-void
.end method

.method public disConnectServices()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_19

    .line 196
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 197
    :cond_14
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 200
    :cond_19
    return-void
.end method

.method public initGoogleApi(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 9
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "serverClientId"    # Ljava/lang/String;
    .param p3, "onSuccessedlListener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
    .param p4, "onFailedlListener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->isGooglePlayServicesAvailable(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 85
    const/16 v1, 0x7534

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 86
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 102
    :goto_e
    return-void

    .line 90
    :cond_f
    const-string v1, "GoogleLoginApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initGoogleApi serverClientId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 93
    invoke-virtual {v1, p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestServerAuthCode(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    .line 94
    invoke-virtual {v1, p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/Scope;

    const-string v3, "profile"

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    .line 95
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 97
    .local v0, "gso":Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v1, p3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v1, p4}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    .line 100
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    goto :goto_e
.end method

.method public isGooglePlayServicesAvailable(Landroid/support/v4/app/FragmentActivity;)Z
    .registers 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 64
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public logout(Landroid/support/v4/app/FragmentActivity;)V
    .registers 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 124
    const-string v0, "GoogleLoginApi"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 126
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi$1;

    invoke-direct {v1, p0, p1}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi$1;-><init>(Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 134
    :cond_23
    return-void
.end method

.method public onActivityResult(Landroid/support/v4/app/FragmentActivity;IILandroid/content/Intent;)V
    .registers 6
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 211
    const/16 v0, 0x232b

    if-ne p2, v0, :cond_7

    .line 213
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->handleActivityResultByLogin(Landroid/support/v4/app/FragmentActivity;IILandroid/content/Intent;)V

    .line 215
    :cond_7
    return-void
.end method

.method public onConnectionFailed(Landroid/support/v4/app/FragmentActivity;ILcom/google/android/gms/common/ConnectionResult;)V
    .registers 9
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "code"    # I
    .param p3, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 319
    const-string v3, "GoogleLoginApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConnectionFailed result:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3d

    const-string v2, ""

    :goto_19
    invoke-static {v3, v2}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    if-nez p3, :cond_49

    .line 321
    const v1, 0x13886

    .line 322
    .local v1, "statusCode":I
    const/4 v2, 0x2

    if-ne p2, v2, :cond_42

    .line 324
    const/16 v1, 0x2711

    .line 329
    :cond_26
    :goto_26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 331
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "code"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const/16 v2, 0x7532

    invoke-virtual {p1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 333
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 337
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "statusCode":I
    :goto_3c
    return-void

    .line 319
    :cond_3d
    invoke-virtual {p3}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    .line 325
    .restart local v1    # "statusCode":I
    :cond_42
    const/4 v2, 0x1

    if-ne p2, v2, :cond_26

    .line 327
    const v1, 0x13886

    goto :goto_26

    .line 335
    .end local v1    # "statusCode":I
    :cond_49
    invoke-direct {p0, p1, p3}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->handleConnectFail(Landroid/app/Activity;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_3c
.end method

.method public onDestory()V
    .registers 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->disConnectServices()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 205
    return-void
.end method
