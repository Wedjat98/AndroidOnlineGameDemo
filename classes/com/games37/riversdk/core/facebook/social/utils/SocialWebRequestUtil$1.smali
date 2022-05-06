.class Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$1;
.super Ljava/lang/Object;
.source "SocialWebRequestUtil.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->requestServerSocialInitial(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
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
    .line 83
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$1;->this$0:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$1;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, "SocialWebRequestUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestServerSocialInitial callbackError msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$1;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/16 v1, 0x2711

    invoke-interface {v0, v1, p1}, Lcom/games37/riversdk/core/callback/ResultCallback;->onError(ILjava/lang/String;)V

    .line 102
    return-void
.end method

.method public bridge synthetic callbackSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 83
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$1;->callbackSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public callbackSuccess(Lorg/json/JSONObject;)V
    .registers 8
    .param p1, "paramObject"    # Lorg/json/JSONObject;

    .prologue
    .line 86
    const-string v4, "SocialWebRequestUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestServerSocialInitial callbackSuccess result="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3a

    const-string v3, "null"

    :goto_19
    invoke-static {v4, v3}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$1;->this$0:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$1;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    # invokes: Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z
    invoke-static {v3, p1, v4}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->access$000(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v1

    .line 89
    .local v1, "isSuccess":Z
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 91
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v1, :cond_39

    if-eqz v0, :cond_39

    .line 93
    new-instance v2, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    invoke-direct {v2, v0}, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;-><init>(Lorg/json/JSONObject;)V

    .line 94
    .local v2, "socialInfo":Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;
    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$1;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v2}, Lcom/games37/riversdk/core/callback/ResultCallback;->onSuccess(ILjava/lang/Object;)V

    .line 96
    .end local v2    # "socialInfo":Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;
    :cond_39
    return-void

    .line 87
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "isSuccess":Z
    :cond_3a
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_19
.end method
