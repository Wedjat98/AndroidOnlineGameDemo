.class Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$2;
.super Ljava/lang/Object;
.source "SocialWebRequestUtil.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->requestServerShareContent(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
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
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$2;->this$0:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$2;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string v0, "SocialWebRequestUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestServerShareContent callbackError msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$2;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/16 v1, 0x2711

    invoke-interface {v0, v1, p1}, Lcom/games37/riversdk/core/callback/ResultCallback;->onError(ILjava/lang/String;)V

    .line 149
    return-void
.end method

.method public bridge synthetic callbackSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 121
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$2;->callbackSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public callbackSuccess(Lorg/json/JSONObject;)V
    .registers 11
    .param p1, "paramObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x1

    .line 124
    const-string v6, "SocialWebRequestUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestServerShareContent callbackSuccess result="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_53

    const-string v5, "null"

    :goto_1a
    invoke-static {v6, v5}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v5, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$2;->this$0:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iget-object v6, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$2;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    # invokes: Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z
    invoke-static {v5, p1, v6}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->access$100(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v2

    .line 128
    .local v2, "isSuccess":Z
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 130
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v2, :cond_52

    if-eqz v0, :cond_52

    .line 133
    new-instance v1, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;

    const-string v5, "FACEBOOK"

    .line 134
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;-><init>(Lorg/json/JSONObject;)V

    .line 136
    .local v1, "fbContent":Lcom/games37/riversdk/core/facebook/social/model/ShareContent;
    new-instance v3, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;

    const-string v5, "LINE"

    .line 137
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;-><init>(Lorg/json/JSONObject;)V

    .line 138
    .local v3, "lineContent":Lcom/games37/riversdk/core/facebook/social/model/ShareContent;
    const/4 v5, 0x2

    new-array v4, v5, [Lcom/games37/riversdk/core/facebook/social/model/ShareContent;

    .line 139
    .local v4, "shareContents":[Lcom/games37/riversdk/core/facebook/social/model/ShareContent;
    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 140
    aput-object v3, v4, v8

    .line 141
    iget-object v5, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$2;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-interface {v5, v8, v4}, Lcom/games37/riversdk/core/callback/ResultCallback;->onSuccess(ILjava/lang/Object;)V

    .line 143
    .end local v1    # "fbContent":Lcom/games37/riversdk/core/facebook/social/model/ShareContent;
    .end local v3    # "lineContent":Lcom/games37/riversdk/core/facebook/social/model/ShareContent;
    .end local v4    # "shareContents":[Lcom/games37/riversdk/core/facebook/social/model/ShareContent;
    :cond_52
    return-void

    .line 125
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "isSuccess":Z
    :cond_53
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1a
.end method
