.class final Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$1;
.super Ljava/lang/Object;
.source "GM99LoginManagerImpl.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->doRegisterAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
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

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

.field final synthetic val$passwd:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 5

    .prologue
    .line 178
    iput-object p1, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$1;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$1;->val$passwd:Ljava/lang/String;

    iput-object p4, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$1;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "register"

    invoke-static {v0, v1, v2, p1}, Lcom/games37/riversdk/core/login/manager/LoginManager;->report(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$1;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    # invokes: Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->netErrorCallback(Landroid/app/Activity;ZLjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    invoke-static {v0, v1, p1, v2}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->access$100(Landroid/app/Activity;ZLjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 192
    return-void
.end method

.method public bridge synthetic callbackSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 178
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$1;->callbackSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public callbackSuccess(Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "paramObject"    # Lorg/json/JSONObject;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    sget-object v2, Lcom/games37/riversdk/core/login/model/UserType;->NORMAL_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$1;->val$username:Ljava/lang/String;

    iget-object v4, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$1;->val$passwd:Ljava/lang/String;

    iget-object v6, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$1;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    move-object v5, p1

    # invokes: Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->handleCallbackSuccess(Landroid/app/Activity;ZLcom/games37/riversdk/core/login/model/UserType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    invoke-static/range {v0 .. v6}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->access$000(Landroid/app/Activity;ZLcom/games37/riversdk/core/login/model/UserType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 184
    return-void
.end method
