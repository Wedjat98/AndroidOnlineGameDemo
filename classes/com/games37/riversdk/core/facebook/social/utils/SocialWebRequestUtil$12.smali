.class Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$12;
.super Ljava/lang/Object;
.source "SocialWebRequestUtil.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->requestServerPresentGift(Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
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
    .line 606
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$12;->this$0:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$12;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 620
    const-string v0, "SocialWebRequestUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestServerPresentGift callbackError msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$12;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/16 v1, 0x2711

    invoke-interface {v0, v1, p1}, Lcom/games37/riversdk/core/callback/ResultCallback;->onError(ILjava/lang/String;)V

    .line 622
    return-void
.end method

.method public bridge synthetic callbackSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 606
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$12;->callbackSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public callbackSuccess(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "paramObject"    # Lorg/json/JSONObject;

    .prologue
    .line 609
    const-string v3, "SocialWebRequestUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestServerPresentGift callbackSuccess result="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_35

    const-string v2, "null"

    :goto_19
    invoke-static {v3, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$12;->this$0:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$12;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    # invokes: Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z
    invoke-static {v2, p1, v3}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->access$1100(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v1

    .line 612
    .local v1, "isSuccess":Z
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 613
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v1, :cond_34

    if-eqz v0, :cond_34

    .line 614
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$12;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, Lcom/games37/riversdk/core/callback/ResultCallback;->onSuccess(ILjava/lang/Object;)V

    .line 616
    :cond_34
    return-void

    .line 610
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "isSuccess":Z
    :cond_35
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_19
.end method
