.class public Lcom/facebook/login/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;,
        Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;,
        Lcom/facebook/login/LoginManager$LoginLoggerHolder;
    }
.end annotation


# static fields
.field private static final EXPRESS_LOGIN_ALLOWED:Ljava/lang/String; = "express_login_allowed"

.field private static final MANAGE_PERMISSION_PREFIX:Ljava/lang/String; = "manage"

.field private static final OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFERENCE_LOGIN_MANAGER:Ljava/lang/String; = "com.facebook.loginManager"

.field private static final PUBLISH_PERMISSION_PREFIX:Ljava/lang/String; = "publish"

.field private static volatile instance:Lcom/facebook/login/LoginManager;


# instance fields
.field private defaultAudience:Lcom/facebook/login/DefaultAudience;

.field private loginBehavior:Lcom/facebook/login/LoginBehavior;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    invoke-static {}, Lcom/facebook/login/LoginManager;->getOtherPublishPermissions()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/LoginManager;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    .line 72
    return-void
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 75
    sget-object v0, Lcom/facebook/login/DefaultAudience;->FRIENDS:Lcom/facebook/login/DefaultAudience;

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 79
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 80
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    const-string v1, "com.facebook.loginManager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/facebook/login/LoginManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 82
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V
    .registers 5

    .prologue
    .line 780
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/login/LoginManager;->handleLoginStatusError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V

    return-void
.end method

.method static synthetic access$1(Landroid/os/Bundle;)Lcom/facebook/Profile;
    .registers 2

    .prologue
    .line 754
    invoke-static {p0}, Lcom/facebook/login/LoginManager;->getProfileFromBundle(Landroid/os/Bundle;)Lcom/facebook/Profile;

    move-result-object v0

    return-object v0
.end method

.method static computeLoginResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginResult;
    .registers 6
    .param p0, "request"    # Lcom/facebook/login/LoginClient$Request;
    .param p1, "newToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v2

    .line 602
    .local v2, "requestedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 606
    .local v1, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->isRerequest()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 607
    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 610
    :cond_16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 611
    .local v0, "deniedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 612
    new-instance v3, Lcom/facebook/login/LoginResult;

    invoke-direct {v3, p1, v1, v0}, Lcom/facebook/login/LoginResult;-><init>(Lcom/facebook/AccessToken;Ljava/util/Set;Ljava/util/Set;)V

    return-object v3
.end method

.method private createLoginRequestFromResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/login/LoginClient$Request;
    .registers 4
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 151
    const-string v1, "response"

    invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getRequest()Lcom/facebook/GraphRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 153
    .local v0, "failedToken":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    :goto_13
    invoke-virtual {p0, v1}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    return-object v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private finishLogin(Lcom/facebook/AccessToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/FacebookException;ZLcom/facebook/FacebookCallback;)V
    .registers 8
    .param p1, "newToken"    # Lcom/facebook/AccessToken;
    .param p2, "origRequest"    # Lcom/facebook/login/LoginClient$Request;
    .param p3, "exception"    # Lcom/facebook/FacebookException;
    .param p4, "isCanceled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Lcom/facebook/login/LoginClient$Request;",
            "Lcom/facebook/FacebookException;",
            "Z",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/login/LoginResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 621
    .local p5, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/login/LoginResult;>;"
    if-eqz p1, :cond_8

    .line 622
    invoke-static {p1}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 623
    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    .line 626
    :cond_8
    if-eqz p5, :cond_21

    .line 627
    if-eqz p1, :cond_22

    .line 628
    invoke-static {p2, p1}, Lcom/facebook/login/LoginManager;->computeLoginResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginResult;

    move-result-object v0

    .line 631
    .local v0, "loginResult":Lcom/facebook/login/LoginResult;
    :goto_10
    if-nez p4, :cond_1e

    .line 632
    if-eqz v0, :cond_24

    .line 633
    invoke-virtual {v0}, Lcom/facebook/login/LoginResult;->getRecentlyGrantedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_24

    .line 634
    :cond_1e
    invoke-interface {p5}, Lcom/facebook/FacebookCallback;->onCancel()V

    .line 642
    .end local v0    # "loginResult":Lcom/facebook/login/LoginResult;
    :cond_21
    :goto_21
    return-void

    .line 629
    :cond_22
    const/4 v0, 0x0

    goto :goto_10

    .line 635
    .restart local v0    # "loginResult":Lcom/facebook/login/LoginResult;
    :cond_24
    if-eqz p3, :cond_2a

    .line 636
    invoke-interface {p5, p3}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_21

    .line 637
    :cond_2a
    if-eqz p1, :cond_21

    .line 638
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/facebook/login/LoginManager;->setExpressLoginStatus(Z)V

    .line 639
    invoke-interface {p5, v0}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_21
.end method

.method public static getInstance()Lcom/facebook/login/LoginManager;
    .registers 2

    .prologue
    .line 89
    sget-object v0, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    if-nez v0, :cond_13

    .line 90
    const-class v1, Lcom/facebook/login/LoginManager;

    monitor-enter v1

    .line 91
    :try_start_7
    sget-object v0, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    if-nez v0, :cond_12

    .line 92
    new-instance v0, Lcom/facebook/login/LoginManager;

    invoke-direct {v0}, Lcom/facebook/login/LoginManager;-><init>()V

    sput-object v0, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    .line 90
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 97
    :cond_13
    sget-object v0, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    return-object v0

    .line 90
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static getOtherPublishPermissions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    new-instance v0, Lcom/facebook/login/LoginManager$2;

    invoke-direct {v0}, Lcom/facebook/login/LoginManager$2;-><init>()V

    .line 464
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private static getProfileFromBundle(Landroid/os/Bundle;)Lcom/facebook/Profile;
    .registers 9
    .param p0, "result"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 755
    const-string v0, "com.facebook.platform.extra.PROFILE_NAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 756
    .local v5, "name":Ljava/lang/String;
    const-string v0, "com.facebook.platform.extra.PROFILE_FIRST_NAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "firstName":Ljava/lang/String;
    const-string v0, "com.facebook.platform.extra.PROFILE_MIDDLE_NAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 758
    .local v3, "middleName":Ljava/lang/String;
    const-string v0, "com.facebook.platform.extra.PROFILE_LAST_NAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 759
    .local v4, "lastName":Ljava/lang/String;
    const-string v0, "com.facebook.platform.extra.PROFILE_LINK"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 760
    .local v7, "link":Ljava/lang/String;
    const-string v0, "com.facebook.platform.extra.PROFILE_USER_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, "appScopedUserId":Ljava/lang/String;
    if-eqz v5, :cond_3a

    .line 763
    if-eqz v2, :cond_3a

    .line 764
    if-eqz v3, :cond_3a

    .line 765
    if-eqz v4, :cond_3a

    .line 766
    if-eqz v7, :cond_3a

    .line 767
    if-eqz v1, :cond_3a

    .line 769
    new-instance v0, Lcom/facebook/Profile;

    .line 775
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 769
    invoke-direct/range {v0 .. v6}, Lcom/facebook/Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 777
    :goto_39
    return-object v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method private static handleLoginStatusError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V
    .registers 8
    .param p0, "errorType"    # Ljava/lang/String;
    .param p1, "errorDescription"    # Ljava/lang/String;
    .param p2, "loggerRef"    # Ljava/lang/String;
    .param p3, "logger"    # Lcom/facebook/login/LoginLogger;
    .param p4, "responseCallback"    # Lcom/facebook/LoginStatusCallback;

    .prologue
    .line 786
    new-instance v0, Lcom/facebook/FacebookException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 787
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {p3, p2, v0}, Lcom/facebook/login/LoginLogger;->logLoginStatusError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 788
    invoke-interface {p4, v0}, Lcom/facebook/LoginStatusCallback;->onError(Ljava/lang/Exception;)V

    .line 789
    return-void
.end method

.method private isExpressLoginAllowed()Z
    .registers 4

    .prologue
    .line 750
    iget-object v0, p0, Lcom/facebook/login/LoginManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "express_login_allowed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isPublishPermission(Ljava/lang/String;)Z
    .registers 2
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 452
    if-eqz p0, :cond_1c

    .line 453
    const-string v0, "publish"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 454
    const-string v0, "manage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 455
    sget-object v0, Lcom/facebook/login/LoginManager;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 452
    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private logCompleteLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/facebook/login/LoginClient$Result$Code;
    .param p4, "exception"    # Ljava/lang/Exception;
    .param p5, "wasLoginActivityTried"    # Z
    .param p6, "request"    # Lcom/facebook/login/LoginClient$Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/login/LoginClient$Result$Code;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            "Z",
            "Lcom/facebook/login/LoginClient$Request;",
            ")V"
        }
    .end annotation

    .prologue
    .line 530
    .local p3, "resultExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    # invokes: Lcom/facebook/login/LoginManager$LoginLoggerHolder;->getLogger(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;
    invoke-static {p1}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->access$0(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    move-result-object v0

    .line 531
    .local v0, "loginLogger":Lcom/facebook/login/LoginLogger;
    if-nez v0, :cond_7

    .line 555
    :goto_6
    return-void

    .line 534
    :cond_7
    if-nez p6, :cond_11

    .line 537
    const-string v1, "fb_mobile_login_complete"

    .line 538
    const-string v3, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    .line 536
    invoke-virtual {v0, v1, v3}, Lcom/facebook/login/LoginLogger;->logUnexpectedError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 541
    :cond_11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 543
    .local v2, "pendingLoggingExtras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "try_login_activity"

    .line 544
    if-eqz p5, :cond_2a

    .line 545
    const-string v1, "1"

    .line 542
    :goto_1c
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-virtual {p6}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 548
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/login/LoginLogger;->logCompleteLogin(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    goto :goto_6

    .line 546
    :cond_2a
    const-string v1, "0"

    goto :goto_1c
.end method

.method private logInWithPublishPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V
    .registers 5
    .param p1, "fragment"    # Lcom/facebook/internal/FragmentWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/FragmentWrapper;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validatePublishPermissions(Ljava/util/Collection;)V

    .line 406
    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 407
    .local v0, "loginRequest":Lcom/facebook/login/LoginClient$Request;
    new-instance v1, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 408
    return-void
.end method

.method private logInWithReadPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V
    .registers 5
    .param p1, "fragment"    # Lcom/facebook/internal/FragmentWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/FragmentWrapper;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validateReadPermissions(Ljava/util/Collection;)V

    .line 358
    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 359
    .local v0, "loginRequest":Lcom/facebook/login/LoginClient$Request;
    new-instance v1, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 360
    return-void
.end method

.method private logStartLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loginRequest"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 517
    # invokes: Lcom/facebook/login/LoginManager$LoginLoggerHolder;->getLogger(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;
    invoke-static {p1}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->access$0(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    move-result-object v0

    .line 518
    .local v0, "loginLogger":Lcom/facebook/login/LoginLogger;
    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    .line 519
    invoke-virtual {v0, p2}, Lcom/facebook/login/LoginLogger;->logStartLogin(Lcom/facebook/login/LoginClient$Request;)V

    .line 521
    :cond_b
    return-void
.end method

.method private resolveError(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/GraphResponse;)V
    .registers 5
    .param p1, "fragment"    # Lcom/facebook/internal/FragmentWrapper;
    .param p2, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 144
    .line 145
    new-instance v0, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 146
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequestFromResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    .line 144
    invoke-direct {p0, v0, v1}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 148
    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 579
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 580
    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 581
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private retrieveLoginStatusImpl(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;J)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "responseCallback"    # Lcom/facebook/LoginStatusCallback;
    .param p3, "toastDurationMs"    # J

    .prologue
    .line 648
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    .line 649
    .local v3, "applicationId":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 651
    .local v4, "loggerRef":Ljava/lang/String;
    new-instance v8, Lcom/facebook/login/LoginLogger;

    invoke-direct {v8, p1, v3}, Lcom/facebook/login/LoginLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 653
    .local v8, "logger":Lcom/facebook/login/LoginLogger;
    invoke-direct {p0}, Lcom/facebook/login/LoginManager;->isExpressLoginAllowed()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 654
    invoke-virtual {v8, v4}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 655
    invoke-interface {p2}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    .line 741
    :cond_1d
    :goto_1d
    return-void

    .line 660
    :cond_1e
    new-instance v1, Lcom/facebook/login/LoginStatusClient;

    .line 664
    invoke-static {}, Lcom/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-wide v6, p3

    .line 660
    invoke-direct/range {v1 .. v7}, Lcom/facebook/login/LoginStatusClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 668
    .local v1, "client":Lcom/facebook/login/LoginStatusClient;
    new-instance v5, Lcom/facebook/login/LoginManager$4;

    move-object v6, p0

    move-object v7, v4

    move-object v9, p2

    move-object v10, v3

    invoke-direct/range {v5 .. v10}, Lcom/facebook/login/LoginManager$4;-><init>(Lcom/facebook/login/LoginManager;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;)V

    .line 735
    .local v5, "callback":Lcom/facebook/internal/PlatformServiceClient$CompletedListener;
    invoke-virtual {v1, v5}, Lcom/facebook/login/LoginStatusClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    .line 736
    invoke-virtual {v8, v4}, Lcom/facebook/login/LoginLogger;->logLoginStatusStart(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v1}, Lcom/facebook/login/LoginStatusClient;->start()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 738
    invoke-virtual {v8, v4}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 739
    invoke-interface {p2}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    goto :goto_1d
.end method

.method private setExpressLoginStatus(Z)V
    .registers 4
    .param p1, "isExpressLoginAllowed"    # Z

    .prologue
    .line 744
    iget-object v1, p0, Lcom/facebook/login/LoginManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 745
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "express_login_allowed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 746
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 747
    return-void
.end method

.method private startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V
    .registers 11
    .param p1, "startActivityDelegate"    # Lcom/facebook/login/StartActivityDelegate;
    .param p2, "request"    # Lcom/facebook/login/LoginClient$Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-interface {p1}, Lcom/facebook/login/StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logStartLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    .line 489
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    .line 490
    new-instance v1, Lcom/facebook/login/LoginManager$3;

    invoke-direct {v1, p0}, Lcom/facebook/login/LoginManager$3;-><init>(Lcom/facebook/login/LoginManager;)V

    .line 488
    invoke-static {v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerStaticCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 498
    invoke-direct {p0, p1, p2}, Lcom/facebook/login/LoginManager;->tryFacebookActivity(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)Z

    move-result v7

    .line 500
    .local v7, "started":Z
    if-nez v7, :cond_30

    .line 501
    new-instance v4, Lcom/facebook/FacebookException;

    .line 502
    const-string v0, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    .line 501
    invoke-direct {v4, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 504
    .local v4, "exception":Lcom/facebook/FacebookException;
    const/4 v5, 0x0

    .line 506
    .local v5, "wasLoginActivityTried":Z
    invoke-interface {p1}, Lcom/facebook/login/StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    .line 507
    sget-object v2, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    .line 508
    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p2

    .line 505
    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/LoginManager;->logCompleteLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    .line 512
    throw v4

    .line 514
    .end local v4    # "exception":Lcom/facebook/FacebookException;
    .end local v5    # "wasLoginActivityTried":Z
    :cond_30
    return-void
.end method

.method private tryFacebookActivity(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)Z
    .registers 7
    .param p1, "startActivityDelegate"    # Lcom/facebook/login/StartActivityDelegate;
    .param p2, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    const/4 v2, 0x0

    .line 561
    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->getFacebookActivityIntent(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;

    move-result-object v1

    .line 563
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/facebook/login/LoginManager;->resolveIntent(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 575
    :goto_b
    return v2

    .line 570
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/facebook/login/LoginClient;->getLoginRequestCode()I

    move-result v3

    .line 568
    invoke-interface {p1, v1, v3}, Lcom/facebook/login/StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_13
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_13} :catch_15

    .line 575
    const/4 v2, 0x1

    goto :goto_b

    .line 571
    :catch_15
    move-exception v0

    .line 572
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_b
.end method

.method private validatePublishPermissions(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 449
    :cond_2
    return-void

    .line 441
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 442
    .local v0, "permission":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/login/LoginManager;->isPublishPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 443
    new-instance v1, Lcom/facebook/FacebookException;

    .line 445
    const-string v2, "Cannot pass a read permission (%s) to a request for publish authorization"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 446
    aput-object v0, v3, v4

    .line 444
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 443
    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private validateReadPermissions(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 435
    :cond_2
    return-void

    .line 426
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 427
    .local v0, "permission":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/login/LoginManager;->isPublishPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 428
    new-instance v1, Lcom/facebook/FacebookException;

    .line 430
    const-string v2, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 432
    aput-object v0, v3, v4

    .line 429
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/login/LoginClient$Request;

    .line 469
    iget-object v1, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 471
    if-eqz p1, :cond_28

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 470
    :goto_b
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 472
    iget-object v3, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 473
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    .line 474
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 468
    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .local v0, "request":Lcom/facebook/login/LoginClient$Request;
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginClient$Request;->setRerequest(Z)V

    .line 477
    return-object v0

    .line 471
    .end local v0    # "request":Lcom/facebook/login/LoginClient$Request;
    :cond_28
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto :goto_b
.end method

.method public getDefaultAudience()Lcom/facebook/login/DefaultAudience;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    return-object v0
.end method

.method protected getFacebookActivityIntent(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;
    .registers 6
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 585
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 586
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/facebook/FacebookActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 587
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/login/LoginBehavior;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 591
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "request"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 592
    const-string v2, "com.facebook.LoginFragment:Request"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 594
    return-object v1
.end method

.method public getLoginBehavior()Lcom/facebook/login/LoginBehavior;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-object v0
.end method

.method public logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validatePublishPermissions(Ljava/util/Collection;)V

    .line 418
    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 419
    .local v0, "loginRequest":Lcom/facebook/login/LoginClient$Request;
    new-instance v1, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 420
    return-void
.end method

.method public logInWithPublishPermissions(Landroid/app/Fragment;Ljava/util/Collection;)V
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    .line 394
    return-void
.end method

.method public logInWithPublishPermissions(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V
    .registers 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    .line 383
    return-void
.end method

.method public logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validateReadPermissions(Ljava/util/Collection;)V

    .line 370
    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 371
    .local v0, "loginRequest":Lcom/facebook/login/LoginClient$Request;
    new-instance v1, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 372
    return-void
.end method

.method public logInWithReadPermissions(Landroid/app/Fragment;Ljava/util/Collection;)V
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    .line 346
    return-void
.end method

.method public logInWithReadPermissions(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V
    .registers 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    .line 335
    return-void
.end method

.method public logOut()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 289
    invoke-static {v0}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 290
    invoke-static {v0}, Lcom/facebook/Profile;->setCurrentProfile(Lcom/facebook/Profile;)V

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/login/LoginManager;->setExpressLoginStatus(Z)V

    .line 292
    return-void
.end method

.method onActivityResult(ILandroid/content/Intent;)Z
    .registers 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/login/LoginManager;->onActivityResult(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z

    move-result v0

    return v0
.end method

.method onActivityResult(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z
    .registers 19
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/login/LoginResult;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 201
    .local p3, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/login/LoginResult;>;"
    const/4 v5, 0x0

    .line 202
    .local v5, "exception":Lcom/facebook/FacebookException;
    const/4 v9, 0x0

    .line 203
    .local v9, "newToken":Lcom/facebook/AccessToken;
    sget-object v3, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    .line 204
    .local v3, "code":Lcom/facebook/login/LoginClient$Result$Code;
    const/4 v4, 0x0

    .line 205
    .local v4, "loggingExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 207
    .local v7, "originalRequest":Lcom/facebook/login/LoginClient$Request;
    const/4 v12, 0x0

    .line 208
    .local v12, "isCanceled":Z
    if-eqz p2, :cond_51

    .line 210
    const-string v1, "com.facebook.LoginFragment:Result"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Lcom/facebook/login/LoginClient$Result;

    .line 211
    .local v14, "result":Lcom/facebook/login/LoginClient$Result;
    if-eqz v14, :cond_28

    .line 212
    iget-object v7, v14, Lcom/facebook/login/LoginClient$Result;->request:Lcom/facebook/login/LoginClient$Request;

    .line 213
    iget-object v3, v14, Lcom/facebook/login/LoginClient$Result;->code:Lcom/facebook/login/LoginClient$Result$Code;

    .line 214
    const/4 v1, -0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_4d

    .line 215
    iget-object v1, v14, Lcom/facebook/login/LoginClient$Result;->code:Lcom/facebook/login/LoginClient$Result$Code;

    sget-object v8, Lcom/facebook/login/LoginClient$Result$Code;->SUCCESS:Lcom/facebook/login/LoginClient$Result$Code;

    if-ne v1, v8, :cond_45

    .line 216
    iget-object v9, v14, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    .line 223
    :cond_26
    :goto_26
    iget-object v4, v14, Lcom/facebook/login/LoginClient$Result;->loggingExtras:Ljava/util/Map;

    .line 230
    .end local v14    # "result":Lcom/facebook/login/LoginClient$Result;
    :cond_28
    :goto_28
    if-nez v5, :cond_35

    if-nez v9, :cond_35

    if-nez v12, :cond_35

    .line 231
    new-instance v5, Lcom/facebook/FacebookException;

    .end local v5    # "exception":Lcom/facebook/FacebookException;
    const-string v1, "Unexpected call to LoginManager.onActivityResult"

    invoke-direct {v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v5    # "exception":Lcom/facebook/FacebookException;
    :cond_35
    const/4 v6, 0x1

    .line 235
    .local v6, "wasLoginActivityTried":Z
    const/4 v2, 0x0

    .local v2, "context":Landroid/content/Context;
    move-object v1, p0

    .line 236
    invoke-direct/range {v1 .. v7}, Lcom/facebook/login/LoginManager;->logCompleteLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    move-object v8, p0

    move-object v10, v7

    move-object v11, v5

    move-object/from16 v13, p3

    .line 244
    invoke-direct/range {v8 .. v13}, Lcom/facebook/login/LoginManager;->finishLogin(Lcom/facebook/AccessToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/FacebookException;ZLcom/facebook/FacebookCallback;)V

    .line 246
    const/4 v1, 0x1

    return v1

    .line 218
    .end local v2    # "context":Landroid/content/Context;
    .end local v6    # "wasLoginActivityTried":Z
    .restart local v14    # "result":Lcom/facebook/login/LoginClient$Result;
    :cond_45
    new-instance v5, Lcom/facebook/FacebookAuthorizationException;

    .end local v5    # "exception":Lcom/facebook/FacebookException;
    iget-object v1, v14, Lcom/facebook/login/LoginClient$Result;->errorMessage:Ljava/lang/String;

    invoke-direct {v5, v1}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    .line 220
    .restart local v5    # "exception":Lcom/facebook/FacebookException;
    goto :goto_26

    :cond_4d
    if-nez p1, :cond_26

    .line 221
    const/4 v12, 0x1

    goto :goto_26

    .line 225
    .end local v14    # "result":Lcom/facebook/login/LoginClient$Result;
    :cond_51
    if-nez p1, :cond_28

    .line 226
    const/4 v12, 0x1

    .line 227
    sget-object v3, Lcom/facebook/login/LoginClient$Result$Code;->CANCEL:Lcom/facebook/login/LoginClient$Result$Code;

    goto :goto_28
.end method

.method public registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .registers 5
    .param p1, "callbackManager"    # Lcom/facebook/CallbackManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/login/LoginResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/login/LoginResult;>;"
    instance-of v0, p1, Lcom/facebook/internal/CallbackManagerImpl;

    if-nez v0, :cond_c

    .line 165
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_c
    check-cast p1, Lcom/facebook/internal/CallbackManagerImpl;

    .line 169
    .end local p1    # "callbackManager":Lcom/facebook/CallbackManager;
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    .line 170
    new-instance v1, Lcom/facebook/login/LoginManager$1;

    invoke-direct {v1, p0, p2}, Lcom/facebook/login/LoginManager$1;-><init>(Lcom/facebook/login/LoginManager;Lcom/facebook/FacebookCallback;)V

    .line 168
    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 180
    return-void
.end method

.method public resolveError(Landroid/app/Activity;Lcom/facebook/GraphResponse;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 108
    .line 109
    new-instance v0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    .line 110
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequestFromResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    .line 108
    invoke-direct {p0, v0, v1}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 112
    return-void
.end method

.method public resolveError(Landroid/app/Fragment;Lcom/facebook/GraphResponse;)V
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 133
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->resolveError(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/GraphResponse;)V

    .line 134
    return-void
.end method

.method public resolveError(Landroid/support/v4/app/Fragment;Lcom/facebook/GraphResponse;)V
    .registers 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 122
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->resolveError(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/GraphResponse;)V

    .line 123
    return-void
.end method

.method public retrieveLoginStatus(Landroid/content/Context;JLcom/facebook/LoginStatusCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toastDurationMs"    # J
    .param p4, "responseCallback"    # Lcom/facebook/LoginStatusCallback;

    .prologue
    .line 323
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/facebook/login/LoginManager;->retrieveLoginStatusImpl(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;J)V

    .line 324
    return-void
.end method

.method public retrieveLoginStatus(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "responseCallback"    # Lcom/facebook/LoginStatusCallback;

    .prologue
    .line 306
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/facebook/login/LoginManager;->retrieveLoginStatus(Landroid/content/Context;JLcom/facebook/LoginStatusCallback;)V

    .line 307
    return-void
.end method

.method public setDefaultAudience(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/LoginManager;
    .registers 2
    .param p1, "defaultAudience"    # Lcom/facebook/login/DefaultAudience;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 282
    return-object p0
.end method

.method public setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;
    .registers 2
    .param p1, "loginBehavior"    # Lcom/facebook/login/LoginBehavior;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 264
    return-object p0
.end method

.method public unregisterCallback(Lcom/facebook/CallbackManager;)V
    .registers 4
    .param p1, "callbackManager"    # Lcom/facebook/CallbackManager;

    .prologue
    .line 188
    instance-of v0, p1, Lcom/facebook/internal/CallbackManagerImpl;

    if-nez v0, :cond_c

    .line 189
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_c
    check-cast p1, Lcom/facebook/internal/CallbackManagerImpl;

    .line 193
    .end local p1    # "callbackManager":Lcom/facebook/CallbackManager;
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    .line 192
    invoke-virtual {p1, v0}, Lcom/facebook/internal/CallbackManagerImpl;->unregisterCallback(I)V

    .line 194
    return-void
.end method
