.class Lcom/games37/riversdk/gm99/GM99SDKApi$5;
.super Ljava/lang/Object;
.source "GM99SDKApi.java"

# interfaces
.implements Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/GM99SDKApi;->sqSDKFacebookShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/GM99SDKApi;

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/GM99SDKApi;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/GM99SDKApi;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$5;->this$0:Lcom/games37/riversdk/gm99/GM99SDKApi;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$5;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 388
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "msg"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v1, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$5;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-virtual {v1, p1, v0}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 390
    return-void
.end method
