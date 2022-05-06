.class Lcom/games37/riversdk/functions/facebook/FacebookWrapper$3;
.super Ljava/lang/Object;
.source "FacebookWrapper.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->getAccountInfoByFB(Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

.field final synthetic val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/functions/facebook/FacebookWrapper;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$3;->this$0:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    iput-object p2, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$3;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 13
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 288
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9c

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_b0

    .line 291
    :try_start_c
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "fbid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "picture"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "data":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 297
    .local v3, "jsonData":Lorg/json/JSONObject;
    const-string v8, "data"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "url"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 299
    .local v6, "picture":Ljava/lang/String;
    const-string v7, "businessToken"

    .line 300
    .local v7, "token_for_business":Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v5, "params":Landroid/os/Bundle;
    const-string v8, "fbid"

    invoke-virtual {v5, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v8, "name"

    invoke-virtual {v5, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v8, "picture"

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v8, "businessToken"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v8, "accessToken"

    .line 310
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v9

    .line 309
    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v8, "permissions"

    .line 312
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 311
    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v8, "expiration"

    .line 315
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v9

    .line 314
    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v8, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$3;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    invoke-interface {v8, v5}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_8a} :catch_8b

    .line 328
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "fbid":Ljava/lang/String;
    .end local v3    # "jsonData":Lorg/json/JSONObject;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "picture":Ljava/lang/String;
    .end local v7    # "token_for_business":Ljava/lang/String;
    :goto_8a
    return-void

    .line 317
    :catch_8b
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8c
    iget-object v8, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$3;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    sget-object v9, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->FAILED:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;->onFailed(ILjava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_9b} :catch_9c

    goto :goto_8a

    .line 324
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_9c
    move-exception v1

    .line 325
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    iget-object v8, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$3;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    sget-object v9, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->FAILED:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_8a

    .line 321
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_b0
    :try_start_b0
    iget-object v9, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$3;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    sget-object v8, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->FAILED:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v8

    if-nez v8, :cond_c4

    const-string v8, "error"

    :goto_c0
    invoke-interface {v9, v10, v8}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_8a

    .line 322
    :cond_c4
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_cb} :catch_9c

    move-result-object v8

    goto :goto_c0
.end method
