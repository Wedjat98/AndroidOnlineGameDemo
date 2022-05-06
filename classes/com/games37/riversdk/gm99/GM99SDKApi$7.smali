.class Lcom/games37/riversdk/gm99/GM99SDKApi$7;
.super Ljava/lang/Object;
.source "GM99SDKApi.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/GM99SDKApi;->sqSDKGetDeepLinkData(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/core/callback/ResultCallback",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/GM99SDKApi;

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/GM99SDKApi;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/GM99SDKApi;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$7;->this$0:Lcom/games37/riversdk/gm99/GM99SDKApi;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$7;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$7;->this$0:Lcom/games37/riversdk/gm99/GM99SDKApi;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$7;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    # invokes: Lcom/games37/riversdk/gm99/GM99SDKApi;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    invoke-static {v0, p1, p2, v1}, Lcom/games37/riversdk/gm99/GM99SDKApi;->access$800(Lcom/games37/riversdk/gm99/GM99SDKApi;ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 536
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$7;->this$0:Lcom/games37/riversdk/gm99/GM99SDKApi;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$7;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    # invokes: Lcom/games37/riversdk/gm99/GM99SDKApi;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    invoke-static {v0, p1, p2, v1}, Lcom/games37/riversdk/gm99/GM99SDKApi;->access$700(Lcom/games37/riversdk/gm99/GM99SDKApi;ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 531
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 522
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/gm99/GM99SDKApi$7;->onSuccess(ILjava/util/Map;)V

    return-void
.end method

.method public onSuccess(ILjava/util/Map;)V
    .registers 4
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$7;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-virtual {v0, p1, p2}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 526
    return-void
.end method
