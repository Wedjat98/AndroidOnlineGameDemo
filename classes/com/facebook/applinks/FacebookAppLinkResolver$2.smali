.class Lcom/facebook/applinks/FacebookAppLinkResolver$2;
.super Ljava/lang/Object;
.source "FacebookAppLinkResolver.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/applinks/FacebookAppLinkResolver;->getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

.field private final synthetic val$appLinkResults:Ljava/util/Map;

.field private final synthetic val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

.field private final synthetic val$urisToRequest:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Lbolts/Task$TaskCompletionSource;Ljava/util/Map;Ljava/util/HashSet;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

    iput-object p2, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    iput-object p4, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$urisToRequest:Ljava/util/HashSet;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 19
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    .line 144
    .local v3, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v3, :cond_12

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v15

    invoke-virtual {v14, v15}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 194
    :goto_11
    return-void

    .line 149
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v6

    .line 150
    .local v6, "responseJson":Lorg/json/JSONObject;
    if-nez v6, :cond_24

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    invoke-virtual {v14, v15}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_11

    .line 155
    :cond_24
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$urisToRequest:Ljava/util/HashSet;

    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2c
    :goto_2c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_3e

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    invoke-virtual {v14, v15}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_11

    .line 155
    :cond_3e
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 156
    .local v10, "uri":Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    .line 157
    .local v11, "uriString":Ljava/lang/String;
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2c

    .line 163
    :try_start_4e
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 164
    .local v12, "urlData":Lorg/json/JSONObject;
    const-string v14, "app_links"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 167
    .local v2, "appLinkData":Lorg/json/JSONObject;
    const-string v14, "android"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 169
    .local v5, "rawTargets":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 170
    .local v9, "targetsCount":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .local v8, "targets":Ljava/util/List;, "Ljava/util/List<Lbolts/AppLink$Target;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6c
    if-lt v4, v9, :cond_99

    .line 180
    # invokes: Lcom/facebook/applinks/FacebookAppLinkResolver;->getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    invoke-static {v10, v2}, Lcom/facebook/applinks/FacebookAppLinkResolver;->access$1(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object v13

    .line 181
    .local v13, "webFallbackUrl":Landroid/net/Uri;
    new-instance v1, Lbolts/AppLink;

    invoke-direct {v1, v10, v8, v13}, Lbolts/AppLink;-><init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V

    .line 183
    .local v1, "appLink":Lbolts/AppLink;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    invoke-interface {v14, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

    # getter for: Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/facebook/applinks/FacebookAppLinkResolver;->access$2(Lcom/facebook/applinks/FacebookAppLinkResolver;)Ljava/util/HashMap;

    move-result-object v16

    monitor-enter v16
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_87} :catch_97

    .line 185
    :try_start_87
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

    # getter for: Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/facebook/applinks/FacebookAppLinkResolver;->access$2(Lcom/facebook/applinks/FacebookAppLinkResolver;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    monitor-exit v16

    goto :goto_2c

    :catchall_94
    move-exception v14

    monitor-exit v16
    :try_end_96
    .catchall {:try_start_87 .. :try_end_96} :catchall_94

    :try_start_96
    throw v14

    .line 187
    .end local v1    # "appLink":Lbolts/AppLink;
    .end local v2    # "appLinkData":Lorg/json/JSONObject;
    .end local v4    # "i":I
    .end local v5    # "rawTargets":Lorg/json/JSONArray;
    .end local v8    # "targets":Ljava/util/List;, "Ljava/util/List<Lbolts/AppLink$Target;>;"
    .end local v9    # "targetsCount":I
    .end local v12    # "urlData":Lorg/json/JSONObject;
    .end local v13    # "webFallbackUrl":Landroid/net/Uri;
    :catch_97
    move-exception v14

    goto :goto_2c

    .line 174
    .restart local v2    # "appLinkData":Lorg/json/JSONObject;
    .restart local v4    # "i":I
    .restart local v5    # "rawTargets":Lorg/json/JSONArray;
    .restart local v8    # "targets":Ljava/util/List;, "Ljava/util/List<Lbolts/AppLink$Target;>;"
    .restart local v9    # "targetsCount":I
    .restart local v12    # "urlData":Lorg/json/JSONObject;
    :cond_99
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    # invokes: Lcom/facebook/applinks/FacebookAppLinkResolver;->getAndroidTargetFromJson(Lorg/json/JSONObject;)Lbolts/AppLink$Target;
    invoke-static {v14}, Lcom/facebook/applinks/FacebookAppLinkResolver;->access$0(Lorg/json/JSONObject;)Lbolts/AppLink$Target;

    move-result-object v7

    .line 175
    .local v7, "target":Lbolts/AppLink$Target;
    if-eqz v7, :cond_a6

    .line 176
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a6
    .catch Lorg/json/JSONException; {:try_start_96 .. :try_end_a6} :catch_97

    .line 172
    :cond_a6
    add-int/lit8 v4, v4, 0x1

    goto :goto_6c
.end method
