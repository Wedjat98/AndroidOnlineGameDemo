.class Lcom/facebook/share/ShareApi$11;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field private final synthetic val$ogType:Ljava/lang/String;

.field private final synthetic val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

.field private final synthetic val$requestCallback:Lcom/facebook/GraphRequest$Callback;

.field private final synthetic val$stagedObject:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/share/ShareApi$11;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$11;->val$stagedObject:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$11;->val$ogType:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/share/ShareApi$11;->val$requestCallback:Lcom/facebook/GraphRequest$Callback;

    iput-object p5, p0, Lcom/facebook/share/ShareApi$11;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 11

    .prologue
    .line 649
    iget-object v0, p0, Lcom/facebook/share/ShareApi$11;->val$stagedObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 650
    .local v8, "objectString":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 651
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "object"

    invoke-virtual {v3, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :try_start_10
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 654
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 655
    iget-object v2, p0, Lcom/facebook/share/ShareApi$11;->this$0:Lcom/facebook/share/ShareApi;

    .line 656
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "objects/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 657
    iget-object v5, p0, Lcom/facebook/share/ShareApi$11;->val$ogType:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v5, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 656
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 655
    # invokes: Lcom/facebook/share/ShareApi;->getGraphPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/facebook/share/ShareApi;->access$1(Lcom/facebook/share/ShareApi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 659
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    .line 660
    iget-object v5, p0, Lcom/facebook/share/ShareApi$11;->val$requestCallback:Lcom/facebook/GraphRequest$Callback;

    .line 653
    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 660
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_3d} :catch_3e

    .line 668
    :goto_3d
    return-void

    .line 661
    :catch_3e
    move-exception v6

    .line 662
    .local v6, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    .line 663
    .local v7, "message":Ljava/lang/String;
    if-nez v7, :cond_47

    .line 664
    const-string v7, "Error staging Open Graph object."

    .line 666
    :cond_47
    iget-object v0, p0, Lcom/facebook/share/ShareApi$11;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, v7}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_3d
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 3
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/facebook/share/ShareApi$11;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-interface {v0, p1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    .line 673
    return-void
.end method
