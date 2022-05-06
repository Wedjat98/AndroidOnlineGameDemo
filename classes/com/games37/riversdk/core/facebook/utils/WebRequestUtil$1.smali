.class Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil$1;
.super Ljava/lang/Object;
.source "WebRequestUtil.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil;->requestServerTimestamp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil;

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil$1;->this$0:Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil$1;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "WebRequestUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestServerTimestamp callbackError msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil$1;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/16 v1, 0x2711

    invoke-interface {v0, v1, p1}, Lcom/games37/riversdk/core/callback/ResultCallback;->onError(ILjava/lang/String;)V

    .line 77
    return-void
.end method

.method public bridge synthetic callbackSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 55
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil$1;->callbackSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public callbackSuccess(Lorg/json/JSONObject;)V
    .registers 14
    .param p1, "paramObject"    # Lorg/json/JSONObject;

    .prologue
    .line 58
    const-string v9, "WebRequestUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestServerTimestamp callbackSuccess result="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_49

    const-string v8, "null"

    :goto_19
    invoke-static {v9, v8}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v8, p0, Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil$1;->this$0:Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil;

    iget-object v9, p0, Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil$1;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-virtual {v8, p1, v9}, Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v3

    .line 61
    .local v3, "isSuccess":Z
    const-string v8, "data"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 62
    .local v2, "data":Lorg/json/JSONObject;
    if-eqz v3, :cond_48

    if-eqz v2, :cond_48

    .line 64
    const-string v8, "timestamp"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 66
    .local v6, "serverTimeMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 68
    .local v0, "currentTimeMillis":J
    sub-long v4, v6, v0

    .line 69
    .local v4, "diff":J
    iget-object v8, p0, Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil$1;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/4 v9, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/games37/riversdk/core/callback/ResultCallback;->onSuccess(ILjava/lang/Object;)V

    .line 71
    .end local v0    # "currentTimeMillis":J
    .end local v4    # "diff":J
    .end local v6    # "serverTimeMillis":J
    :cond_48
    return-void

    .line 59
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v3    # "isSuccess":Z
    :cond_49
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_19
.end method
