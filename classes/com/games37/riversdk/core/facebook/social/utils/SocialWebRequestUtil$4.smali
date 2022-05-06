.class Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$4;
.super Ljava/lang/Object;
.source "SocialWebRequestUtil.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->requestServerInvited(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
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
    .line 212
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$4;->this$0:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$4;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 226
    const-string v0, "SocialWebRequestUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestServerInvited callbackError msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$4;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/16 v1, 0x2711

    invoke-interface {v0, v1, p1}, Lcom/games37/riversdk/core/callback/ResultCallback;->onError(ILjava/lang/String;)V

    .line 228
    return-void
.end method

.method public bridge synthetic callbackSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 212
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$4;->callbackSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public callbackSuccess(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "paramObject"    # Lorg/json/JSONObject;

    .prologue
    .line 215
    const-string v2, "SocialWebRequestUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestServerInvited callbackSuccess result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2e

    const-string v1, "null"

    :goto_19
    invoke-static {v2, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$4;->this$0:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$4;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    # invokes: Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z
    invoke-static {v1, p1, v2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->access$300(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v0

    .line 218
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_2d

    .line 220
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$4;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/games37/riversdk/core/callback/ResultCallback;->onSuccess(ILjava/lang/Object;)V

    .line 222
    :cond_2d
    return-void

    .line 216
    .end local v0    # "isSuccess":Z
    :cond_2e
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_19
.end method
