.class public Lcom/games37/riversdk/functions/facebook/FacebookWrapper;
.super Ljava/lang/Object;
.source "FacebookWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;,
        Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;
    }
.end annotation


# static fields
.field public static final CANCEL:Ljava/lang/Integer;

.field public static final FAILED:Ljava/lang/Integer;

.field public static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "accessToken"

.field public static final KEY_BUSINESS_TOKEN:Ljava/lang/String; = "businessToken"

.field public static final KEY_EXPIRES:Ljava/lang/String; = "expiration"

.field public static final KEY_FBID:Ljava/lang/String; = "fbid"

.field public static final KEY_FRIENDSID:Ljava/lang/String; = "friendsId"

.field public static final KEY_INVITE_TOKEN:Ljava/lang/String; = "inviteToken"

.field public static final KEY_MSG:Ljava/lang/String; = "msg"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_PERMISSIONS:Ljava/lang/String; = "permissions"

.field public static final KEY_PICTURE:Ljava/lang/String; = "picture"

.field public static final KEY_POSTID:Ljava/lang/String; = "postId"

.field public static final KEY_REQUESTID:Ljava/lang/String; = "request"

.field public static final NOT_INSTALL_APP:Ljava/lang/Integer;

.field public static final SUCCESS:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String;

.field private static callbackManager:Lcom/facebook/CallbackManager;

.field private static instance:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-class v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->TAG:Ljava/lang/String;

    .line 99
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->SUCCESS:Ljava/lang/Integer;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->CANCEL:Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->FAILED:Ljava/lang/Integer;

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->NOT_INSTALL_APP:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/games37/riversdk/functions/facebook/FacebookWrapper;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/functions/facebook/FacebookWrapper;
    .param p1, "x1"    # Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->getAccountInfoByFB(Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/games37/riversdk/functions/facebook/FacebookWrapper;Lorg/json/JSONObject;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;)[Landroid/os/Bundle;
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/functions/facebook/FacebookWrapper;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->getFriendsInfoFromJson(Lorg/json/JSONObject;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private doGraphRequestForGetFriends(Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 10
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;",
            "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
            "<[",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 587
    .local p3, "callback":Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;, "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback<[Landroid/os/Bundle;>;"
    sget-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFriendsInfo type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 590
    .local v3, "businessBundle":Landroid/os/Bundle;
    const-string v0, "fields"

    const-string v1, "id,name,picture.type(large)"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v0, "limit"

    const/16 v1, 0xc8

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 593
    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$7;

    invoke-direct {v5, p0, p3, p2}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$7;-><init>(Lcom/games37/riversdk/functions/facebook/FacebookWrapper;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;)V

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 610
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 611
    return-void
.end method

.method private facebookGetAccountInfo(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "callback":Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;, "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback<Landroid/os/Bundle;>;"
    new-instance v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$2;

    invoke-direct {v0, p0, p3}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$2;-><init>(Lcom/games37/riversdk/functions/facebook/FacebookWrapper;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->requestAccessToken(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    .line 271
    return-void
.end method

.method private facebookLoginWithPermission(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "callback":Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;, "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback<Landroid/os/Bundle;>;"
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    sget-object v1, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$1;

    invoke-direct {v2, p0, p3}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$1;-><init>(Lcom/games37/riversdk/functions/facebook/FacebookWrapper;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 241
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 242
    return-void
.end method

.method private getAccountInfoByFB(Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "callback":Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;, "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback<Landroid/os/Bundle;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 281
    .local v3, "businessBundle":Landroid/os/Bundle;
    const-string v0, "fields"

    const-string v1, "name,picture.type(large)"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string v2, "/me"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$3;

    invoke-direct {v5, p0, p1}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$3;-><init>(Lcom/games37/riversdk/functions/facebook/FacebookWrapper;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 329
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 330
    return-void
.end method

.method private getFriendsInfoFromJson(Lorg/json/JSONObject;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;)[Landroid/os/Bundle;
    .registers 12
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "type"    # Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    .prologue
    .line 622
    const/4 v3, 0x0

    .line 623
    .local v3, "friends":[Landroid/os/Bundle;
    if-eqz p1, :cond_65

    .line 625
    :try_start_3
    const-string v6, "data"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 626
    .local v0, "dataArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v3, v6, [Landroid/os/Bundle;

    .line 628
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_65

    .line 629
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 630
    .local v5, "objectItem":Lorg/json/JSONObject;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 631
    .local v2, "friend":Landroid/os/Bundle;
    sget-object v6, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;->INVITED:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    if-ne v6, p2, :cond_55

    .line 633
    const-string v6, "inviteToken"

    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :goto_2e
    const-string v6, "name"

    const-string v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v6, "picture"

    const-string v7, "picture"

    .line 642
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "data"

    .line 643
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "url"

    .line 644
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 641
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    aput-object v2, v3, v4

    .line 628
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 636
    :cond_55
    const-string v6, "fbid"

    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_60} :catch_61

    goto :goto_2e

    .line 647
    .end local v0    # "dataArray":Lorg/json/JSONArray;
    .end local v2    # "friend":Landroid/os/Bundle;
    .end local v4    # "i":I
    .end local v5    # "objectItem":Lorg/json/JSONObject;
    :catch_61
    move-exception v1

    .line 648
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 651
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_65
    return-object v3
.end method

.method public static getInstance()Lcom/games37/riversdk/functions/facebook/FacebookWrapper;
    .registers 2

    .prologue
    .line 102
    sget-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->instance:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    if-nez v0, :cond_13

    .line 103
    const-class v1, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    monitor-enter v1

    .line 104
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->instance:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    if-nez v0, :cond_12

    .line 105
    new-instance v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    invoke-direct {v0}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;-><init>()V

    sput-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->instance:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    .line 107
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 109
    :cond_13
    sget-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->instance:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    return-object v0

    .line 107
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private requestAccessToken(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "callback":Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;, "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback<Landroid/os/Bundle;>;"
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 178
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 180
    invoke-virtual {p0, p2}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->getUnGrantedPermission(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 181
    .local v3, "unGrantedPers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1c

    .line 183
    invoke-direct {p0, p1, v3, p3}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->facebookLoginWithPermission(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    .line 196
    .end local v3    # "unGrantedPers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1b
    return-void

    .line 186
    .restart local v3    # "unGrantedPers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1c
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "token":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "accessToken"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-interface {p3, v1}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1b

    .line 193
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "unGrantedPers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2e
    invoke-virtual {p0}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->logoutByFB()V

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->facebookLoginWithPermission(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    goto :goto_1b
.end method

.method private showRequestDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 19
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "objectId"    # Ljava/lang/String;
    .param p5, "friendsParams"    # [Ljava/lang/String;
    .param p6, "type"    # Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;",
            "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p7, "callback":Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;, "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback<Landroid/os/Bundle;>;"
    new-instance v6, Lcom/facebook/share/widget/GameRequestDialog;

    invoke-direct {v6, p1}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    .line 674
    .local v6, "requestDialog":Lcom/facebook/share/widget/GameRequestDialog;
    sget-object v7, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v8, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$8;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {v8, p0, v0, v1}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$8;-><init>(Lcom/games37/riversdk/functions/facebook/FacebookWrapper;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    invoke-virtual {v6, v7, v8}, Lcom/facebook/share/widget/GameRequestDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 703
    new-instance v2, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    .line 706
    .local v2, "builder":Lcom/facebook/share/model/GameRequestContent$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    .local v4, "paramsBuilder":Ljava/lang/StringBuilder;
    if-eqz p5, :cond_41

    .line 708
    move-object/from16 v0, p5

    array-length v8, v0

    const/4 v7, 0x0

    :goto_23
    if-ge v7, v8, :cond_33

    aget-object v3, p5, v7

    .line 709
    .local v3, "params":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 711
    .end local v3    # "params":Ljava/lang/String;
    :cond_33
    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 712
    .local v5, "paramsString":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTo(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 716
    .end local v5    # "paramsString":Ljava/lang/String;
    :cond_41
    invoke-virtual {v2, p2}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 718
    sget-object v7, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;->INGAME:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    move-object/from16 v0, p6

    if-ne v7, v0, :cond_57

    .line 719
    sget-object v7, Lcom/facebook/share/model/GameRequestContent$ActionType;->SEND:Lcom/facebook/share/model/GameRequestContent$ActionType;

    invoke-virtual {v2, v7}, Lcom/facebook/share/model/GameRequestContent$Builder;->setActionType(Lcom/facebook/share/model/GameRequestContent$ActionType;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v7

    invoke-virtual {v7, p4}, Lcom/facebook/share/model/GameRequestContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 721
    :cond_57
    invoke-virtual {v2}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V

    .line 722
    return-void
.end method


# virtual methods
.method public facebookGetInGameFriendsInfo(Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
            "<[",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, "callback":Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;, "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback<[Landroid/os/Bundle;>;"
    sget-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->TAG:Ljava/lang/String;

    const-string v1, "facebookGetInGameFriendsInfo"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v0, "me/friends"

    sget-object v1, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;->INGAME:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    invoke-direct {p0, v0, v1, p1}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->doGraphRequestForGetFriends(Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    .line 395
    return-void
.end method

.method public facebookGetInvitableFriendsInfo(Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
            "<[",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "callback":Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;, "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback<[Landroid/os/Bundle;>;"
    sget-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->TAG:Ljava/lang/String;

    const-string v1, "facebookGetInvitableFriendsInfo"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v0, "me/invitable_friends"

    sget-object v1, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;->INVITED:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    invoke-direct {p0, v0, v1, p1}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->doGraphRequestForGetFriends(Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    .line 361
    return-void
.end method

.method public facebookInviteFriends(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "friendsInviteToken"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p5, "callback":Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;, "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback<Landroid/os/Bundle;>;"
    const-string v4, ""

    sget-object v6, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;->INVITED:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->showRequestDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    .line 384
    return-void
.end method

.method public facebookLogin(Landroid/app/Activity;ZILcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isGetUserInfo"    # Z
    .param p3, "loginBehavior"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "ZI",
            "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p4, "callback":Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;, "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback<Landroid/os/Bundle;>;"
    invoke-virtual {p0, p3}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->setLoginBehavior(I)V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "persmissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_13

    .line 156
    const-string v1, "public_profile"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-direct {p0, p1, v0, p4}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->requestAccessToken(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    .line 164
    :goto_12
    return-void

    .line 160
    :cond_13
    const-string v1, "public_profile"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v1, "user_friends"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-direct {p0, p1, v0, p4}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->facebookGetAccountInfo(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    goto :goto_12
.end method

.method public facebookSendGift(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "objectId"    # Ljava/lang/String;
    .param p5, "friendsId"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p6, "callback":Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;, "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback<Landroid/os/Bundle;>;"
    sget-object v6, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;->INGAME:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->showRequestDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    .line 416
    return-void
.end method

.method public facebookShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "contentUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p6, "callback":Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;, "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback<Ljava/lang/String;>;"
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v1, p1}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 435
    .local v1, "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    sget-object v2, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$4;

    invoke-direct {v3, p0, p6}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$4;-><init>(Lcom/games37/riversdk/functions/facebook/FacebookWrapper;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 459
    const-class v2, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v2}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 460
    new-instance v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    .line 461
    invoke-virtual {v2, p2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v2

    .line 462
    invoke-virtual {v2, p3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v2

    .line 463
    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v2

    check-cast v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 464
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v2

    .line 465
    invoke-virtual {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 466
    .local v0, "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    .line 468
    .end local v0    # "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    :cond_3d
    return-void
.end method

.method public facebookSharePhoto(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "imgPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 524
    .local p3, "callback":Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;, "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback<Landroid/os/Bundle;>;"
    new-instance v3, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v3, p1}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 525
    .local v3, "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    sget-object v5, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v6, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$6;

    invoke-direct {v6, p0, p3}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$6;-><init>(Lcom/games37/riversdk/functions/facebook/FacebookWrapper;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    invoke-virtual {v3, v5, v6}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 550
    const-class v5, Lcom/facebook/share/model/SharePhotoContent;

    invoke-static {v5}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 551
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 554
    .local v4, "uri":Landroid/net/Uri;
    new-instance v5, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v5}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    invoke-virtual {v5, v4}, Lcom/facebook/share/model/SharePhoto$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v1

    .line 556
    .local v1, "photo":Lcom/facebook/share/model/SharePhoto;
    new-instance v5, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v5}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    invoke-virtual {v5, v1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v2

    .line 557
    .local v2, "photoContent":Lcom/facebook/share/model/SharePhotoContent;
    invoke-virtual {v3, v2}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    .line 562
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "photo":Lcom/facebook/share/model/SharePhoto;
    .end local v2    # "photoContent":Lcom/facebook/share/model/SharePhotoContent;
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_3d
    return-void

    .line 560
    :cond_3e
    sget-object v5, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->NOT_INSTALL_APP:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "please install Facebook app!"

    invoke-interface {p3, v5, v6}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_3d
.end method

.method public getUnGrantedPermission(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v2, "unGrantedPerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    .line 734
    .local v1, "permissionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_17

    if-eqz v1, :cond_17

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_18

    .line 744
    :cond_17
    return-object v2

    .line 738
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 740
    .local v0, "permission":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 741
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c
.end method

.method public initFacebookSDK(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 123
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 125
    :cond_9
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->callbackManager:Lcom/facebook/CallbackManager;

    .line 126
    return-void
.end method

.method public logPurchaseEvent(Landroid/content/Context;)V
    .registers 6
    .param p1, "\u00e7ontext"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v1

    .line 135
    .local v1, "logger":Lcom/facebook/appevents/AppEventsLogger;
    new-instance v2, Ljava/math/BigDecimal;

    const-string v3, "0.99"

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, "purchaseAmount":Ljava/math/BigDecimal;
    const-string v3, "USD"

    invoke-static {v3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    .line 137
    .local v0, "currency":Ljava/util/Currency;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    .line 138
    return-void
.end method

.method public logoutByFB()V
    .registers 2

    .prologue
    .line 568
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 569
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 571
    :cond_d
    return-void
.end method

.method public messengerShare(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "contentUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p3, "callback":Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;, "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback<Ljava/lang/String;>;"
    new-instance v1, Lcom/facebook/share/widget/MessageDialog;

    invoke-direct {v1, p1}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;)V

    .line 480
    .local v1, "messageDialog":Lcom/facebook/share/widget/MessageDialog;
    sget-object v2, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$5;

    invoke-direct {v3, p0, p3}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$5;-><init>(Lcom/games37/riversdk/functions/facebook/FacebookWrapper;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/share/widget/MessageDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 502
    new-instance v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    .line 503
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v2

    check-cast v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 504
    invoke-virtual {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 505
    .local v0, "content":Lcom/facebook/share/model/ShareLinkContent;
    const-class v2, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v2}, Lcom/facebook/share/widget/MessageDialog;->canShow(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 506
    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/MessageDialog;->show(Ljava/lang/Object;)V

    .line 512
    :goto_2d
    return-void

    .line 508
    :cond_2e
    sget-object v2, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->FAILED:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "r1_messenger_no_found"

    invoke-static {p1, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_2d
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 574
    sget-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 575
    return-void
.end method

.method public setLoginBehavior(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 338
    packed-switch p1, :pswitch_data_18

    .line 347
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    sget-object v1, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    .line 348
    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginManager;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    .line 351
    :goto_c
    return-void

    .line 341
    :pswitch_d
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    sget-object v1, Lcom/facebook/login/LoginBehavior;->WEB_VIEW_ONLY:Lcom/facebook/login/LoginBehavior;

    .line 342
    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginManager;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    goto :goto_c

    .line 338
    nop

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_d
    .end packed-switch
.end method
