.class Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl$1;
.super Ljava/lang/Object;
.source "RiverSDKBaseApiImpl.java"

# interfaces
.implements Lcom/games37/riversdk/functions/callback/FunctionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl;->sqSDKRequestGoogleSkuDetail(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/functions/callback/FunctionCallback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl;

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl;Ljava/util/Map;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl$1;->this$0:Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl;

    iput-object p2, p0, Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl$1;->val$map:Ljava/util/Map;

    iput-object p3, p0, Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl$1;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl$1;->val$map:Ljava/util/Map;

    const-string v1, "msg"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl$1;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl$1;->val$map:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 210
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 205
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl$1;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl$1;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/games37/riversdk/common/utils/JsonUtil;->jsonObject2Map(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 215
    return-void
.end method
