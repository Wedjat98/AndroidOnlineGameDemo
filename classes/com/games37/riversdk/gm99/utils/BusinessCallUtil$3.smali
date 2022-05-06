.class final Lcom/games37/riversdk/gm99/utils/BusinessCallUtil$3;
.super Ljava/lang/Object;
.source "BusinessCallUtil.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/utils/BusinessCallUtil;->getUserBindStatus(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V
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
.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 2

    .prologue
    .line 240
    iput-object p1, p0, Lcom/games37/riversdk/gm99/utils/BusinessCallUtil$3;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 272
    const-string v0, "BusinessCallUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserBindStatus error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/games37/riversdk/gm99/utils/BusinessCallUtil$3;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/16 v1, 0x2711

    invoke-interface {v0, v1, p1}, Lcom/games37/riversdk/core/callback/ResultCallback;->onError(ILjava/lang/String;)V

    .line 275
    return-void
.end method

.method public bridge synthetic callbackSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 240
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/gm99/utils/BusinessCallUtil$3;->callbackSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public callbackSuccess(Lorg/json/JSONObject;)V
    .registers 10
    .param p1, "paramObject"    # Lorg/json/JSONObject;

    .prologue
    .line 244
    const-string v6, "BusinessCallUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUserBindStatus callbackSuccess result:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6a

    const-string v5, "null"

    :goto_19
    invoke-static {v6, v5}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    if-eqz p1, :cond_69

    .line 248
    const-string v5, "result"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 250
    .local v4, "retValue":I
    const-string v5, "msg"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "msg":Ljava/lang/String;
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 252
    .local v1, "data":Lorg/json/JSONObject;
    if-eqz v1, :cond_78

    const-string v5, "RESULT"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_78

    .line 253
    const-string v5, "RESULT"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 254
    .local v3, "result":Lorg/json/JSONObject;
    const-string v5, "IS_BINDING"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 255
    .local v0, "bindStatus":I
    const-string v5, "BusinessCallUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upgradeAccount bindStatus:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    if-nez v0, :cond_6f

    .line 258
    iget-object v5, p0, Lcom/games37/riversdk/gm99/utils/BusinessCallUtil$3;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const v6, 0x15f91

    invoke-interface {v5, v6, v2}, Lcom/games37/riversdk/core/callback/ResultCallback;->onFailure(ILjava/lang/String;)V

    .line 267
    .end local v0    # "bindStatus":I
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "result":Lorg/json/JSONObject;
    .end local v4    # "retValue":I
    :cond_69
    :goto_69
    return-void

    .line 245
    :cond_6a
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_19

    .line 261
    .restart local v0    # "bindStatus":I
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "result":Lorg/json/JSONObject;
    .restart local v4    # "retValue":I
    :cond_6f
    iget-object v5, p0, Lcom/games37/riversdk/gm99/utils/BusinessCallUtil$3;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const v6, 0x15f90

    invoke-interface {v5, v6, v3}, Lcom/games37/riversdk/core/callback/ResultCallback;->onSuccess(ILjava/lang/Object;)V

    goto :goto_69

    .line 264
    .end local v0    # "bindStatus":I
    .end local v3    # "result":Lorg/json/JSONObject;
    :cond_78
    iget-object v5, p0, Lcom/games37/riversdk/gm99/utils/BusinessCallUtil$3;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v2}, Lcom/games37/riversdk/core/callback/ResultCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_69
.end method
