.class Lcom/games37/riversdk/core/facebook/share/FacebookShare$4;
.super Ljava/lang/Object;
.source "FacebookShare.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/share/FacebookShare;->requestServerShared(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
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

.field final synthetic val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/share/FacebookShare;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$4;->this$0:Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$4;->val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackError(Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$4;->val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;->onFinished(ILjava/lang/String;)V

    .line 370
    return-void
.end method

.method public bridge synthetic callbackSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 350
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$4;->callbackSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public callbackSuccess(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "paramObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x1

    .line 354
    const-string v2, "msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 357
    .local v0, "code":I
    if-ne v0, v3, :cond_15

    .line 359
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$4;->val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    invoke-interface {v2, v3, v1}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;->onFinished(ILjava/lang/String;)V

    .line 364
    :goto_14
    return-void

    .line 362
    :cond_15
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$4;->val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;->onFinished(ILjava/lang/String;)V

    goto :goto_14
.end method
