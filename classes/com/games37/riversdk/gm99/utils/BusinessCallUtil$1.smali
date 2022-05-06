.class final Lcom/games37/riversdk/gm99/utils/BusinessCallUtil$1;
.super Ljava/lang/Object;
.source "BusinessCallUtil.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/utils/BusinessCallUtil;->reportServerCodeAndRoleInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
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
    .line 85
    iput-object p1, p0, Lcom/games37/riversdk/gm99/utils/BusinessCallUtil$1;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "BusinessCallUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportServerCodeAndRoleInfo error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/games37/riversdk/gm99/utils/BusinessCallUtil$1;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/16 v1, 0x2711

    invoke-interface {v0, v1, p1}, Lcom/games37/riversdk/core/callback/ResultCallback;->onError(ILjava/lang/String;)V

    .line 113
    return-void
.end method

.method public bridge synthetic callbackSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 85
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/gm99/utils/BusinessCallUtil$1;->callbackSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public callbackSuccess(Lorg/json/JSONObject;)V
    .registers 8
    .param p1, "paramObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x1

    .line 89
    const-string v3, "BusinessCallUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportServerCodeAndRoleInfo callbackSuccess result:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_40

    const-string v2, "null"

    :goto_1a
    invoke-static {v3, v2}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-eqz p1, :cond_3f

    .line 93
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 95
    .local v1, "retValue":I
    const-string v2, "msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "msg":Ljava/lang/String;
    if-ne v1, v5, :cond_45

    .line 98
    const-string v2, "BusinessCallUtil"

    const-string v3, "reportServerCodeAndRoleInfo Enter Server Success!"

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/games37/riversdk/gm99/utils/BusinessCallUtil$1;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const-string v3, "data"

    .line 100
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 99
    invoke-interface {v2, v5, v3}, Lcom/games37/riversdk/core/callback/ResultCallback;->onSuccess(ILjava/lang/Object;)V

    .line 106
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "retValue":I
    :cond_3f
    :goto_3f
    return-void

    .line 90
    :cond_40
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1a

    .line 102
    .restart local v0    # "msg":Ljava/lang/String;
    .restart local v1    # "retValue":I
    :cond_45
    const-string v2, "BusinessCallUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportServerCodeAndRoleInfo fail msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/games37/riversdk/gm99/utils/BusinessCallUtil$1;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Lcom/games37/riversdk/core/callback/ResultCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_3f
.end method
