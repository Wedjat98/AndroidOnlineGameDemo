.class Lcom/facebook/login/DeviceAuthDialog$1;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->startLogin(Lcom/facebook/login/LoginClient$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$1;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 8
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 187
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$1;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # getter for: Lcom/facebook/login/DeviceAuthDialog;->isBeingDestroyed:Z
    invoke-static {v3}, Lcom/facebook/login/DeviceAuthDialog;->access$0(Lcom/facebook/login/DeviceAuthDialog;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 207
    :goto_8
    return-void

    .line 190
    :cond_9
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 191
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$1;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v4

    # invokes: Lcom/facebook/login/DeviceAuthDialog;->onError(Lcom/facebook/FacebookException;)V
    invoke-static {v3, v4}, Lcom/facebook/login/DeviceAuthDialog;->access$1(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V

    goto :goto_8

    .line 195
    :cond_1d
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 196
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-direct {v2}, Lcom/facebook/login/DeviceAuthDialog$RequestState;-><init>()V

    .line 198
    .local v2, "requestState":Lcom/facebook/login/DeviceAuthDialog$RequestState;
    :try_start_26
    const-string v3, "user_code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->setUserCode(Ljava/lang/String;)V

    .line 199
    const-string v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->setRequestCode(Ljava/lang/String;)V

    .line 200
    const-string v3, "interval"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->setInterval(J)V
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_41} :catch_47

    .line 206
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$1;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # invokes: Lcom/facebook/login/DeviceAuthDialog;->setCurrentRequestState(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    invoke-static {v3, v2}, Lcom/facebook/login/DeviceAuthDialog;->access$2(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    goto :goto_8

    .line 201
    :catch_47
    move-exception v0

    .line 202
    .local v0, "ex":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$1;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v4, Lcom/facebook/FacebookException;

    invoke-direct {v4, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    # invokes: Lcom/facebook/login/DeviceAuthDialog;->onError(Lcom/facebook/FacebookException;)V
    invoke-static {v3, v4}, Lcom/facebook/login/DeviceAuthDialog;->access$1(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V

    goto :goto_8
.end method
