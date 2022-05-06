.class final Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$3;
.super Ljava/lang/Object;
.source "GM99LoginManagerImpl.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->directLogin(Landroid/app/Activity;ZLcom/games37/riversdk/core/callback/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/core/callback/NetCallback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$isShowLoginView:Z

.field final synthetic val$loginCallback:Lcom/games37/riversdk/core/callback/ResultCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 4

    .prologue
    .line 304
    iput-object p1, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$3;->val$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$3;->val$isShowLoginView:Z

    iput-object p3, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$3;->val$loginCallback:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "dirlogin"

    invoke-static {v0, v1, v2, p1}, Lcom/games37/riversdk/core/login/manager/LoginManager;->report(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$3;->val$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$3;->val$isShowLoginView:Z

    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$3;->val$loginCallback:Lcom/games37/riversdk/core/callback/ResultCallback;

    # invokes: Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->netErrorCallback(Landroid/app/Activity;ZLjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    invoke-static {v0, v1, p1, v2}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->access$100(Landroid/app/Activity;ZLjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 318
    return-void
.end method

.method public bridge synthetic callbackSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 304
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$3;->callbackSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public callbackSuccess(Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "paramObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 308
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$3;->val$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$3;->val$isShowLoginView:Z

    sget-object v2, Lcom/games37/riversdk/core/login/model/UserType;->ANYNOMOUS_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    iget-object v6, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$3;->val$loginCallback:Lcom/games37/riversdk/core/callback/ResultCallback;

    move-object v4, v3

    move-object v5, p1

    # invokes: Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->handleCallbackSuccess(Landroid/app/Activity;ZLcom/games37/riversdk/core/login/model/UserType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    invoke-static/range {v0 .. v6}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->access$000(Landroid/app/Activity;ZLcom/games37/riversdk/core/login/model/UserType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 310
    return-void
.end method
