.class Lcom/facebook/login/LoginClient;
.super Ljava/lang/Object;
.source "LoginClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/LoginClient$BackgroundProcessingListener;,
        Lcom/facebook/login/LoginClient$OnCompletedListener;,
        Lcom/facebook/login/LoginClient$Request;,
        Lcom/facebook/login/LoginClient$Result;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/LoginClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field backgroundProcessingListener:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

.field checkedInternetPermission:Z

.field currentHandler:I

.field fragment:Landroid/support/v4/app/Fragment;

.field handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

.field loggingExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loginLogger:Lcom/facebook/login/LoginLogger;

.field onCompletedListener:Lcom/facebook/login/LoginClient$OnCompletedListener;

.field pendingRequest:Lcom/facebook/login/LoginClient$Request;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 684
    new-instance v0, Lcom/facebook/login/LoginClient$1;

    invoke-direct {v0}, Lcom/facebook/login/LoginClient$1;-><init>()V

    sput-object v0, Lcom/facebook/login/LoginClient;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 694
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v2, -0x1

    iput v2, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    .line 660
    const-class v2, Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 661
    .local v1, "o":[Ljava/lang/Object;
    array-length v2, v1

    new-array v2, v2, [Lcom/facebook/login/LoginMethodHandler;

    iput-object v2, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    .line 662
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    array-length v2, v1

    if-lt v0, v2, :cond_34

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    .line 667
    const-class v2, Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/facebook/login/LoginClient$Request;

    iput-object v2, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    .line 668
    invoke-static {p1}, Lcom/facebook/internal/Utility;->readStringMapFromParcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    .line 669
    return-void

    .line 663
    :cond_34
    iget-object v3, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    aget-object v2, v1, v0

    check-cast v2, Lcom/facebook/login/LoginMethodHandler;

    aput-object v2, v3, v0

    .line 664
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lcom/facebook/login/LoginMethodHandler;->setLoginClient(Lcom/facebook/login/LoginClient;)V

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    .line 74
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->fragment:Landroid/support/v4/app/Fragment;

    .line 75
    return-void
.end method

.method private addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "accumulate"    # Z

    .prologue
    .line 235
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    .line 238
    :cond_b
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    if-eqz p3, :cond_34

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 241
    :cond_34
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void
.end method

.method private completeWithFailure()V
    .registers 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    const-string v1, "Login attempt failed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    .line 232
    return-void
.end method

.method private static createFromTokenWithRefreshedPermissions(Lcom/facebook/AccessToken;Ljava/util/Collection;Ljava/util/Collection;)Lcom/facebook/AccessToken;
    .registers 12
    .param p0, "token"    # Lcom/facebook/AccessToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "grantedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "declinedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/AccessToken;

    .line 363
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getSource()Lcom/facebook/AccessTokenSource;

    move-result-object v6

    .line 369
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v7

    .line 370
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v8

    move-object v4, p1

    move-object v5, p2

    .line 362
    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method

.method static getE2E()Ljava/lang/String;
    .registers 4

    .prologue
    .line 431
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 433
    .local v0, "e2e":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "init"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_e} :catch_13

    .line 436
    :goto_e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 434
    :catch_13
    move-exception v1

    goto :goto_e
.end method

.method private getLogger()Lcom/facebook/login/LoginLogger;
    .registers 4

    .prologue
    .line 374
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loginLogger:Lcom/facebook/login/LoginLogger;

    if-eqz v0, :cond_16

    .line 375
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loginLogger:Lcom/facebook/login/LoginLogger;

    invoke-virtual {v0}, Lcom/facebook/login/LoginLogger;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 377
    :cond_16
    new-instance v0, Lcom/facebook/login/LoginLogger;

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/login/LoginLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->loginLogger:Lcom/facebook/login/LoginLogger;

    .line 379
    :cond_27
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loginLogger:Lcom/facebook/login/LoginLogger;

    return-object v0
.end method

.method public static getLoginRequestCode()I
    .registers 1

    .prologue
    .line 98
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    return v0
.end method

.method private logAuthorizationMethodComplete(Ljava/lang/String;Lcom/facebook/login/LoginClient$Result;Ljava/util/Map;)V
    .registers 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/facebook/login/LoginClient$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/login/LoginClient$Result;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    .line 405
    .local p3, "loggingExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p2, Lcom/facebook/login/LoginClient$Result;->code:Lcom/facebook/login/LoginClient$Result$Code;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v2

    .line 406
    iget-object v3, p2, Lcom/facebook/login/LoginClient$Result;->errorMessage:Ljava/lang/String;

    .line 407
    iget-object v4, p2, Lcom/facebook/login/LoginClient$Result;->errorCode:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    .line 404
    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginClient;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 409
    return-void
.end method

.method private logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 13
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "errorCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p5, "loggingExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    if-nez v0, :cond_10

    .line 419
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->getLogger()Lcom/facebook/login/LoginLogger;

    move-result-object v0

    .line 420
    const-string v1, "fb_mobile_login_method_complete"

    .line 421
    const-string v2, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    .line 419
    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/login/LoginLogger;->logUnexpectedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :goto_f
    return-void

    .line 425
    :cond_10
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->getLogger()Lcom/facebook/login/LoginLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/login/LoginLogger;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_f
.end method

.method private notifyOnCompleteListener(Lcom/facebook/login/LoginClient$Result;)V
    .registers 3
    .param p1, "outcome"    # Lcom/facebook/login/LoginClient$Result;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->onCompletedListener:Lcom/facebook/login/LoginClient$OnCompletedListener;

    if-eqz v0, :cond_9

    .line 384
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->onCompletedListener:Lcom/facebook/login/LoginClient$OnCompletedListener;

    invoke-interface {v0, p1}, Lcom/facebook/login/LoginClient$OnCompletedListener;->onCompleted(Lcom/facebook/login/LoginClient$Result;)V

    .line 386
    :cond_9
    return-void
.end method


# virtual methods
.method authorize(Lcom/facebook/login/LoginClient$Request;)V
    .registers 4
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 108
    if-nez p1, :cond_3

    .line 123
    :cond_2
    :goto_2
    return-void

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_f

    .line 113
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Attempted to authorize while a request is pending."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_f
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->checkInternetPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    :cond_1b
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    .line 121
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->getHandlersToTry(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    .line 122
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->tryNextHandler()V

    goto :goto_2
.end method

.method cancelCurrentHandler()V
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    if-ltz v0, :cond_b

    .line 131
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->cancel()V

    .line 133
    :cond_b
    return-void
.end method

.method checkInternetPermission()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 186
    iget-boolean v5, p0, Lcom/facebook/login/LoginClient;->checkedInternetPermission:Z

    if-eqz v5, :cond_6

    .line 201
    :goto_5
    return v4

    .line 190
    :cond_6
    const-string v5, "android.permission.INTERNET"

    invoke-virtual {p0, v5}, Lcom/facebook/login/LoginClient;->checkPermission(Ljava/lang/String;)I

    move-result v3

    .line 191
    .local v3, "permissionCheck":I
    if-eqz v3, :cond_29

    .line 192
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 193
    .local v0, "activity":Landroid/app/Activity;
    sget v4, Lcom/facebook/R$string;->com_facebook_internet_permission_error_title:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "errorType":Ljava/lang/String;
    sget v4, Lcom/facebook/R$string;->com_facebook_internet_permission_error_message:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "errorDescription":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-static {v4, v2, v1}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    .line 197
    const/4 v4, 0x0

    goto :goto_5

    .line 200
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "errorDescription":Ljava/lang/String;
    .end local v2    # "errorType":Ljava/lang/String;
    :cond_29
    iput-boolean v4, p0, Lcom/facebook/login/LoginClient;->checkedInternetPermission:Z

    goto :goto_5
.end method

.method checkPermission(Ljava/lang/String;)I
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method complete(Lcom/facebook/login/LoginClient$Result;)V
    .registers 6
    .param p1, "outcome"    # Lcom/facebook/login/LoginClient$Result;

    .prologue
    const/4 v3, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    .line 289
    .local v0, "handler":Lcom/facebook/login/LoginMethodHandler;
    if-eqz v0, :cond_10

    .line 290
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v1

    .line 291
    iget-object v2, v0, Lcom/facebook/login/LoginMethodHandler;->methodLoggingExtras:Ljava/util/Map;

    .line 290
    invoke-direct {p0, v1, p1, v2}, Lcom/facebook/login/LoginClient;->logAuthorizationMethodComplete(Ljava/lang/String;Lcom/facebook/login/LoginClient$Result;Ljava/util/Map;)V

    .line 294
    :cond_10
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    if-eqz v1, :cond_18

    .line 296
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    iput-object v1, p1, Lcom/facebook/login/LoginClient$Result;->loggingExtras:Ljava/util/Map;

    .line 299
    :cond_18
    iput-object v3, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    .line 300
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    .line 301
    iput-object v3, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    .line 302
    iput-object v3, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    .line 304
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginClient;->notifyOnCompleteListener(Lcom/facebook/login/LoginClient$Result;)V

    .line 305
    return-void
.end method

.method completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V
    .registers 3
    .param p1, "outcome"    # Lcom/facebook/login/LoginClient$Result;

    .prologue
    .line 276
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 277
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->validateSameFbidAndFinish(Lcom/facebook/login/LoginClient$Result;)V

    .line 282
    :goto_d
    return-void

    .line 280
    :cond_e
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_d
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method getActivity()Landroid/support/v4/app/FragmentActivity;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method getBackgroundProcessingListener()Lcom/facebook/login/LoginClient$BackgroundProcessingListener;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

    return-object v0
.end method

.method getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;
    .registers 3

    .prologue
    .line 136
    iget v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    if-ltz v0, :cond_b

    .line 137
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    iget v1, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    aget-object v0, v0, v1

    .line 139
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFragment()Landroid/support/v4/app/Fragment;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method protected getHandlersToTry(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;
    .registers 6
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v1, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/login/LoginMethodHandler;>;"
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v0

    .line 156
    .local v0, "behavior":Lcom/facebook/login/LoginBehavior;
    invoke-virtual {v0}, Lcom/facebook/login/LoginBehavior;->allowsGetTokenAuth()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 157
    new-instance v3, Lcom/facebook/login/GetTokenLoginMethodHandler;

    invoke-direct {v3, p0}, Lcom/facebook/login/GetTokenLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_17
    invoke-virtual {v0}, Lcom/facebook/login/LoginBehavior;->allowsKatanaAuth()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 161
    new-instance v3, Lcom/facebook/login/KatanaProxyLoginMethodHandler;

    invoke-direct {v3, p0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_25
    invoke-virtual {v0}, Lcom/facebook/login/LoginBehavior;->allowsFacebookLiteAuth()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 165
    new-instance v3, Lcom/facebook/login/FacebookLiteLoginMethodHandler;

    invoke-direct {v3, p0}, Lcom/facebook/login/FacebookLiteLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_33
    invoke-virtual {v0}, Lcom/facebook/login/LoginBehavior;->allowsCustomTabAuth()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 169
    new-instance v3, Lcom/facebook/login/CustomTabLoginMethodHandler;

    invoke-direct {v3, p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_41
    invoke-virtual {v0}, Lcom/facebook/login/LoginBehavior;->allowsWebViewAuth()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 173
    new-instance v3, Lcom/facebook/login/WebViewLoginMethodHandler;

    invoke-direct {v3, p0}, Lcom/facebook/login/WebViewLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_4f
    invoke-virtual {v0}, Lcom/facebook/login/LoginBehavior;->allowsDeviceAuth()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 177
    new-instance v3, Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-direct {v3, p0}, Lcom/facebook/login/DeviceAuthMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_5d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/facebook/login/LoginMethodHandler;

    .line 181
    .local v2, "result":[Lcom/facebook/login/LoginMethodHandler;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 182
    return-object v2
.end method

.method getInProgress()Z
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method getOnCompletedListener()Lcom/facebook/login/LoginClient$OnCompletedListener;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->onCompletedListener:Lcom/facebook/login/LoginClient$OnCompletedListener;

    return-object v0
.end method

.method public getPendingRequest()Lcom/facebook/login/LoginClient$Request;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    return-object v0
.end method

.method notifyBackgroundProcessingStart()V
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

    if-eqz v0, :cond_9

    .line 390
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

    invoke-interface {v0}, Lcom/facebook/login/LoginClient$BackgroundProcessingListener;->onBackgroundProcessingStarted()V

    .line 392
    :cond_9
    return-void
.end method

.method notifyBackgroundProcessingStop()V
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

    if-eqz v0, :cond_9

    .line 396
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

    invoke-interface {v0}, Lcom/facebook/login/LoginClient$BackgroundProcessingListener;->onBackgroundProcessingStopped()V

    .line 398
    :cond_9
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_d

    .line 145
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/login/LoginMethodHandler;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    .line 148
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method setBackgroundProcessingListener(Lcom/facebook/login/LoginClient$BackgroundProcessingListener;)V
    .registers 2
    .param p1, "backgroundProcessingListener"    # Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

    .line 323
    return-void
.end method

.method setFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_c

    .line 83
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t set fragment once it is already set."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_c
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->fragment:Landroid/support/v4/app/Fragment;

    .line 86
    return-void
.end method

.method setOnCompletedListener(Lcom/facebook/login/LoginClient$OnCompletedListener;)V
    .registers 2
    .param p1, "onCompletedListener"    # Lcom/facebook/login/LoginClient$OnCompletedListener;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->onCompletedListener:Lcom/facebook/login/LoginClient$OnCompletedListener;

    .line 313
    return-void
.end method

.method startOrContinueAuth(Lcom/facebook/login/LoginClient$Request;)V
    .registers 3
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getInProgress()Z

    move-result v0

    if-nez v0, :cond_9

    .line 103
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->authorize(Lcom/facebook/login/LoginClient$Request;)V

    .line 105
    :cond_9
    return-void
.end method

.method tryCurrentHandler()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    .line 246
    .local v0, "handler":Lcom/facebook/login/LoginMethodHandler;
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->needsInternetPermission()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->checkInternetPermission()Z

    move-result v2

    if-nez v2, :cond_19

    .line 248
    const-string v2, "no_internet_permission"

    .line 249
    const-string v3, "1"

    .line 247
    invoke-direct {p0, v2, v3, v1}, Lcom/facebook/login/LoginClient;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 271
    :goto_18
    return v1

    .line 255
    :cond_19
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginMethodHandler;->tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z

    move-result v1

    .line 256
    .local v1, "tried":Z
    if-eqz v1, :cond_33

    .line 257
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->getLogger()Lcom/facebook/login/LoginLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v3}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v3

    .line 258
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-virtual {v2, v3, v4}, Lcom/facebook/login/LoginLogger;->logAuthorizationMethodStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 262
    :cond_33
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->getLogger()Lcom/facebook/login/LoginLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v3}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {v2, v3, v4}, Lcom/facebook/login/LoginLogger;->logAuthorizationMethodNotTried(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v2, "not_tried"

    .line 266
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v3

    .line 267
    const/4 v4, 0x1

    .line 264
    invoke-direct {p0, v2, v3, v4}, Lcom/facebook/login/LoginClient;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_18
.end method

.method tryNextHandler()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 205
    iget v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    if-ltz v0, :cond_1a

    .line 207
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v1

    .line 208
    const-string v2, "skipped"

    .line 211
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    iget-object v5, v0, Lcom/facebook/login/LoginMethodHandler;->methodLoggingExtras:Ljava/util/Map;

    move-object v0, p0

    move-object v4, v3

    .line 206
    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginClient;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 214
    :cond_1a
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    iget-object v1, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2f

    .line 224
    :cond_27
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_2e

    .line 226
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->completeWithFailure()V

    .line 228
    :cond_2e
    :goto_2e
    return-void

    .line 215
    :cond_2f
    iget v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    .line 217
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->tryCurrentHandler()Z

    move-result v6

    .line 219
    .local v6, "started":Z
    if-eqz v6, :cond_1a

    goto :goto_2e
.end method

.method validateSameFbidAndFinish(Lcom/facebook/login/LoginClient$Result;)V
    .registers 9
    .param p1, "pendingResult"    # Lcom/facebook/login/LoginClient$Result;

    .prologue
    .line 330
    iget-object v4, p1, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    if-nez v4, :cond_c

    .line 331
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "Can\'t validate without a token"

    invoke-direct {v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 334
    :cond_c
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    .line 335
    .local v2, "previousToken":Lcom/facebook/AccessToken;
    iget-object v1, p1, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    .line 339
    .local v1, "newToken":Lcom/facebook/AccessToken;
    if-eqz v2, :cond_30

    if-eqz v1, :cond_30

    .line 340
    :try_start_16
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 341
    iget-object v4, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    iget-object v5, p1, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    invoke-static {v4, v5}, Lcom/facebook/login/LoginClient$Result;->createTokenResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v3

    .line 349
    .local v3, "result":Lcom/facebook/login/LoginClient$Result;
    :goto_2c
    invoke-virtual {p0, v3}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    .line 356
    .end local v3    # "result":Lcom/facebook/login/LoginClient$Result;
    :goto_2f
    return-void

    .line 345
    :cond_30
    iget-object v4, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    .line 346
    const-string v5, "User logged in as different Facebook user."

    .line 347
    const/4 v6, 0x0

    .line 344
    invoke-static {v4, v5, v6}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_38} :catch_3a

    move-result-object v3

    .line 343
    .restart local v3    # "result":Lcom/facebook/login/LoginClient$Result;
    goto :goto_2c

    .line 350
    .end local v3    # "result":Lcom/facebook/login/LoginClient$Result;
    :catch_3a
    move-exception v0

    .line 352
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    .line 353
    const-string v5, "Caught exception"

    .line 354
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 351
    invoke-static {v4, v5, v6}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_2f
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 678
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 679
    iget v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 681
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->writeStringMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 682
    return-void
.end method
