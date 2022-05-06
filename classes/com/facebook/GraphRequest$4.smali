.class Lcom/facebook/GraphRequest$4;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/GraphRequest;

.field private final synthetic val$callback:Lcom/facebook/GraphRequest$Callback;


# direct methods
.method constructor <init>(Lcom/facebook/GraphRequest;Lcom/facebook/GraphRequest$Callback;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/GraphRequest$4;->this$0:Lcom/facebook/GraphRequest;

    iput-object p2, p0, Lcom/facebook/GraphRequest$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 14
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    const/4 v9, 0x0

    .line 910
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v8

    .line 912
    .local v8, "responseObject":Lorg/json/JSONObject;
    if-eqz v8, :cond_28

    const-string v10, "__debug__"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 914
    .local v1, "debug":Lorg/json/JSONObject;
    :goto_d
    if-eqz v1, :cond_2a

    const-string v10, "messages"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 915
    .local v6, "debugMessages":Lorg/json/JSONArray;
    :goto_15
    if-eqz v6, :cond_1e

    .line 916
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_18
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v7, v10, :cond_2c

    .line 939
    .end local v7    # "i":I
    :cond_1e
    iget-object v9, p0, Lcom/facebook/GraphRequest$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    if-eqz v9, :cond_27

    .line 940
    iget-object v9, p0, Lcom/facebook/GraphRequest$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    invoke-interface {v9, p1}, Lcom/facebook/GraphRequest$Callback;->onCompleted(Lcom/facebook/GraphResponse;)V

    .line 942
    :cond_27
    return-void

    .end local v1    # "debug":Lorg/json/JSONObject;
    .end local v6    # "debugMessages":Lorg/json/JSONArray;
    :cond_28
    move-object v1, v9

    .line 912
    goto :goto_d

    .restart local v1    # "debug":Lorg/json/JSONObject;
    :cond_2a
    move-object v6, v9

    .line 914
    goto :goto_15

    .line 917
    .restart local v6    # "debugMessages":Lorg/json/JSONArray;
    .restart local v7    # "i":I
    :cond_2c
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 918
    .local v4, "debugMessageObject":Lorg/json/JSONObject;
    if-eqz v4, :cond_7d

    .line 919
    const-string v10, "message"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 921
    .local v2, "debugMessage":Ljava/lang/String;
    :goto_38
    if-eqz v4, :cond_7f

    .line 922
    const-string v10, "type"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 924
    .local v5, "debugMessageType":Ljava/lang/String;
    :goto_40
    if-eqz v4, :cond_81

    .line 925
    const-string v10, "link"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 927
    .local v3, "debugMessageLink":Ljava/lang/String;
    :goto_48
    if-eqz v2, :cond_7a

    if-eqz v5, :cond_7a

    .line 928
    sget-object v0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    .line 929
    .local v0, "behavior":Lcom/facebook/LoggingBehavior;
    const-string v10, "warning"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_58

    .line 930
    sget-object v0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    .line 932
    :cond_58
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_75

    .line 933
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " Link: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 935
    :cond_75
    sget-object v10, Lcom/facebook/GraphRequest;->TAG:Ljava/lang/String;

    invoke-static {v0, v10, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    .end local v0    # "behavior":Lcom/facebook/LoggingBehavior;
    :cond_7a
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .end local v2    # "debugMessage":Ljava/lang/String;
    .end local v3    # "debugMessageLink":Ljava/lang/String;
    .end local v5    # "debugMessageType":Ljava/lang/String;
    :cond_7d
    move-object v2, v9

    .line 920
    goto :goto_38

    .restart local v2    # "debugMessage":Ljava/lang/String;
    :cond_7f
    move-object v5, v9

    .line 923
    goto :goto_40

    .restart local v5    # "debugMessageType":Ljava/lang/String;
    :cond_81
    move-object v3, v9

    .line 926
    goto :goto_48
.end method
