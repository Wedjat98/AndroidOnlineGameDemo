.class Lcom/facebook/login/DeviceAuthDialog$7;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;

.field private final synthetic val$accessToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$7;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    iput-object p2, p0, Lcom/facebook/login/DeviceAuthDialog$7;->val$accessToken:Ljava/lang/String;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 10
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 377
    iget-object v6, p0, Lcom/facebook/login/DeviceAuthDialog$7;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # getter for: Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lcom/facebook/login/DeviceAuthDialog;->access$5(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 412
    :goto_c
    return-void

    .line 381
    :cond_d
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v6

    if-eqz v6, :cond_21

    .line 382
    iget-object v6, p0, Lcom/facebook/login/DeviceAuthDialog$7;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v7

    # invokes: Lcom/facebook/login/DeviceAuthDialog;->onError(Lcom/facebook/FacebookException;)V
    invoke-static {v6, v7}, Lcom/facebook/login/DeviceAuthDialog;->access$1(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V

    goto :goto_c

    .line 390
    :cond_21
    :try_start_21
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 391
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, "userId":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->handlePermissionResponse(Lorg/json/JSONObject;)Lcom/facebook/internal/Utility$PermissionsPair;

    move-result-object v3

    .line 393
    .local v3, "permissions":Lcom/facebook/internal/Utility$PermissionsPair;
    const-string v6, "name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_34} :catch_6c

    move-result-object v2

    .line 399
    .local v2, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/facebook/login/DeviceAuthDialog$7;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # getter for: Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;
    invoke-static {v6}, Lcom/facebook/login/DeviceAuthDialog;->access$12(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v6

    .line 398
    invoke-static {v6}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementService(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v6

    .line 404
    invoke-virtual {v6}, Lcom/facebook/internal/FetchedAppSettings;->getSmartLoginOptions()Ljava/util/EnumSet;

    move-result-object v6

    sget-object v7, Lcom/facebook/internal/SmartLoginOption;->RequireConfirm:Lcom/facebook/internal/SmartLoginOption;

    invoke-virtual {v6, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 405
    .local v4, "requireConfirm":Z
    if-eqz v4, :cond_78

    iget-object v6, p0, Lcom/facebook/login/DeviceAuthDialog$7;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # getter for: Lcom/facebook/login/DeviceAuthDialog;->isRetry:Z
    invoke-static {v6}, Lcom/facebook/login/DeviceAuthDialog;->access$13(Lcom/facebook/login/DeviceAuthDialog;)Z

    move-result v6

    if-nez v6, :cond_78

    .line 406
    iget-object v6, p0, Lcom/facebook/login/DeviceAuthDialog$7;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/facebook/login/DeviceAuthDialog;->access$14(Lcom/facebook/login/DeviceAuthDialog;Z)V

    .line 407
    iget-object v6, p0, Lcom/facebook/login/DeviceAuthDialog$7;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v7, p0, Lcom/facebook/login/DeviceAuthDialog$7;->val$accessToken:Ljava/lang/String;

    # invokes: Lcom/facebook/login/DeviceAuthDialog;->presentConfirmation(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v5, v3, v7, v2}, Lcom/facebook/login/DeviceAuthDialog;->access$15(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 394
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "permissions":Lcom/facebook/internal/Utility$PermissionsPair;
    .end local v4    # "requireConfirm":Z
    .end local v5    # "userId":Ljava/lang/String;
    :catch_6c
    move-exception v0

    .line 395
    .local v0, "ex":Lorg/json/JSONException;
    iget-object v6, p0, Lcom/facebook/login/DeviceAuthDialog$7;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v7, Lcom/facebook/FacebookException;

    invoke-direct {v7, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    # invokes: Lcom/facebook/login/DeviceAuthDialog;->onError(Lcom/facebook/FacebookException;)V
    invoke-static {v6, v7}, Lcom/facebook/login/DeviceAuthDialog;->access$1(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V

    goto :goto_c

    .line 411
    .end local v0    # "ex":Lorg/json/JSONException;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "permissions":Lcom/facebook/internal/Utility$PermissionsPair;
    .restart local v4    # "requireConfirm":Z
    .restart local v5    # "userId":Ljava/lang/String;
    :cond_78
    iget-object v6, p0, Lcom/facebook/login/DeviceAuthDialog$7;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v7, p0, Lcom/facebook/login/DeviceAuthDialog$7;->val$accessToken:Ljava/lang/String;

    # invokes: Lcom/facebook/login/DeviceAuthDialog;->completeLogin(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;)V
    invoke-static {v6, v5, v3, v7}, Lcom/facebook/login/DeviceAuthDialog;->access$8(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;)V

    goto :goto_c
.end method
