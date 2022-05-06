.class Lcom/games37/riversdk/core/facebook/share/FacebookShare$2;
.super Ljava/lang/Object;
.source "FacebookShare.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/share/FacebookShare;->requestServerUploadFile(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
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
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/share/FacebookShare;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

.field final synthetic val$requestBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/share/FacebookShare;Landroid/os/Bundle;Landroid/app/Activity;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
    .registers 5
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$2;->this$0:Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$2;->val$requestBundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$2;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$2;->val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackError(Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$2;->val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;->onFinished(ILjava/lang/String;)V

    .line 261
    return-void
.end method

.method public bridge synthetic callbackSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 238
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$2;->callbackSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public callbackSuccess(Lorg/json/JSONObject;)V
    .registers 13
    .param p1, "paramObject"    # Lorg/json/JSONObject;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$2;->this$0:Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    const/4 v1, 0x0

    # invokes: Lcom/games37/riversdk/core/facebook/share/FacebookShare;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z
    invoke-static {v0, p1, v1}, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->access$200(Lcom/games37/riversdk/core/facebook/share/FacebookShare;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v9

    .line 242
    .local v9, "isSuccess":Z
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 243
    .local v8, "data":Lorg/json/JSONObject;
    if-eqz v9, :cond_5d

    if-eqz v8, :cond_5d

    .line 244
    const-string v0, "FacebookShare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestServerUploadFile onSocialSuccess object="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v0, "TITLE"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "title":Ljava/lang/String;
    const-string v0, "LINK"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, "link":Ljava/lang/String;
    const-string v0, "THUMB"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "thumb":Ljava/lang/String;
    const-string v0, "DESCRIPTION"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "description":Ljava/lang/String;
    const-string v0, "TOKEN"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, "token":Ljava/lang/String;
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$2;->val$requestBundle:Landroid/os/Bundle;

    const-string v1, "token"

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$2;->this$0:Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$2;->val$activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$2;->val$requestBundle:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$2;->val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    # invokes: Lcom/games37/riversdk/core/facebook/share/FacebookShare;->requestFBShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
    invoke-static/range {v0 .. v7}, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->access$300(Lcom/games37/riversdk/core/facebook/share/FacebookShare;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V

    .line 256
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "thumb":Ljava/lang/String;
    .end local v5    # "link":Ljava/lang/String;
    .end local v10    # "token":Ljava/lang/String;
    :cond_5d
    return-void
.end method
