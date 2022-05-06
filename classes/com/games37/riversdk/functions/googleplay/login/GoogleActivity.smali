.class public Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "GoogleActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# static fields
.field public static final REQUEST_CODE:Ljava/lang/String; = "REQUEST_CODE"

.field public static final REQUEST_GOOGLE_SIGNIN:I = 0x13880

.field public static final REQUEST_GOOGLE_SIGNOUT:I = 0x13881

.field public static final SERVER_CLIENT_ID:Ljava/lang/String; = "SERVER_CLIENT_ID"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

.field private mResolveStatus:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 75
    sget-object v0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 77
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    if-eqz v0, :cond_13

    .line 78
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->onActivityResult(Landroid/support/v4/app/FragmentActivity;IILandroid/content/Intent;)V

    .line 80
    :cond_13
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x13880

    .line 84
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->mResolveStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 86
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    if-eqz v1, :cond_22

    .line 87
    invoke-virtual {p0}, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "REQUEST_CODE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 88
    .local v0, "requestCode":I
    if-ne v0, v4, :cond_23

    .line 90
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    invoke-virtual {v1, p0}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->auth(Landroid/support/v4/app/FragmentActivity;)V

    .line 97
    .end local v0    # "requestCode":I
    :cond_22
    :goto_22
    return-void

    .line 91
    .restart local v0    # "requestCode":I
    :cond_23
    const v1, 0x13881

    if-ne v0, v1, :cond_22

    .line 93
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    invoke-virtual {v1, p0}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->logout(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_22
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 109
    sget-object v0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->TAG:Ljava/lang/String;

    const-string v1, "onConnectionFailed"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    if-eqz v0, :cond_14

    .line 111
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->onConnectionFailed(Landroid/support/v4/app/FragmentActivity;ILcom/google/android/gms/common/ConnectionResult;)V

    .line 113
    :cond_14
    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    if-eqz v0, :cond_a

    .line 103
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->onConnectionFailed(Landroid/support/v4/app/FragmentActivity;ILcom/google/android/gms/common/ConnectionResult;)V

    .line 105
    :cond_a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    sget-object v1, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->requestWindowFeature(I)Z

    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->mResolveStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    invoke-virtual {p0}, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SERVER_CLIENT_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "serverClientId":Ljava/lang/String;
    new-instance v1, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    invoke-direct {v1}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;-><init>()V

    iput-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    .line 43
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    invoke-virtual {v1, p0, v0, p0, p0}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->initGoogleApi(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 44
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 66
    sget-object v0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 68
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    if-eqz v0, :cond_13

    .line 69
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    invoke-virtual {v0}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->onDestory()V

    .line 71
    :cond_13
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 48
    sget-object v0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 50
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    if-eqz v0, :cond_13

    .line 51
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    invoke-virtual {v0}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->connectService()V

    .line 53
    :cond_13
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 57
    sget-object v0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 59
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    if-eqz v0, :cond_13

    .line 60
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleActivity;->googleLoginApi:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    invoke-virtual {v0}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->disConnectServices()V

    .line 62
    :cond_13
    return-void
.end method
