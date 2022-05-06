.class Lcom/qiniu/android/storage/ResumeUploader$4;
.super Ljava/lang/Object;
.source "ResumeUploader.java"

# interfaces
.implements Lcom/qiniu/android/http/CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/ResumeUploader;->nextTask(IILjava/net/URI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/ResumeUploader;

.field final synthetic val$address:Ljava/net/URI;

.field final synthetic val$chunkSize:I

.field final synthetic val$offset:I

.field final synthetic val$retried:I


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;I)V
    .registers 6
    .param p1, "this$0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iput p2, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    iput p3, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:I

    iput-object p4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$address:Ljava/net/URI;

    iput p5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$chunkSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 11
    .param p1, "info"    # Lcom/qiniu/android/http/ResponseInfo;
    .param p2, "response"    # Lorg/json/JSONObject;

    .prologue
    const/high16 v6, 0x400000

    .line 237
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v4

    if-nez v4, :cond_6a

    .line 238
    iget v4, p1, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v5, 0x2bd

    if-ne v4, v5, :cond_2a

    iget v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;
    invoke-static {v5}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v5

    iget v5, v5, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    if-ge v4, v5, :cond_2a

    .line 239
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:I

    div-int/2addr v5, v6

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$address:Ljava/net/URI;

    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->nextTask(IILjava/net/URI;)V
    invoke-static {v4, v5, v6, v7}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;)V

    .line 271
    :goto_29
    return-void

    .line 243
    :cond_2a
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->isNotQiniu(Lcom/qiniu/android/http/ResponseInfo;)Z
    invoke-static {v4, p1}, Lcom/qiniu/android/storage/ResumeUploader;->access$500(Lcom/qiniu/android/storage/ResumeUploader;Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result v4

    if-nez v4, :cond_38

    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->needRetry()Z

    move-result v4

    if-eqz v4, :cond_5a

    :cond_38
    iget v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;
    invoke-static {v5}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v5

    iget v5, v5, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    if-ge v4, v5, :cond_5a

    .line 244
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:I

    iget v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;
    invoke-static {v7}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v7

    iget-object v7, v7, Lcom/qiniu/android/storage/Configuration;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    iget-object v7, v7, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->nextTask(IILjava/net/URI;)V
    invoke-static {v4, v5, v6, v7}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;)V

    goto :goto_29

    .line 248
    :cond_5a
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;
    invoke-static {v4}, Lcom/qiniu/android/storage/ResumeUploader;->access$400(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;
    invoke-static {v5}, Lcom/qiniu/android/storage/ResumeUploader;->access$200(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p1, p2}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_29

    .line 251
    :cond_6a
    const/4 v0, 0x0

    .line 253
    .local v0, "context":Ljava/lang/String;
    if-nez p2, :cond_8f

    iget v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;
    invoke-static {v5}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v5

    iget v5, v5, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    if-ge v4, v5, :cond_8f

    .line 254
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:I

    iget v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;
    invoke-static {v7}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v7

    iget-object v7, v7, Lcom/qiniu/android/storage/Configuration;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    iget-object v7, v7, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->nextTask(IILjava/net/URI;)V
    invoke-static {v4, v5, v6, v7}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;)V

    goto :goto_29

    .line 257
    :cond_8f
    const-wide/16 v2, 0x0

    .line 259
    .local v2, "crc":J
    :try_start_91
    const-string v4, "ctx"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    const-string v4, "crc32"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_9c
    .catch Lorg/json/JSONException; {:try_start_91 .. :try_end_9c} :catch_cc

    move-result-wide v2

    .line 264
    :goto_9d
    if-eqz v0, :cond_a9

    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->crc32:J
    invoke-static {v4}, Lcom/qiniu/android/storage/ResumeUploader;->access$900(Lcom/qiniu/android/storage/ResumeUploader;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_d1

    :cond_a9
    iget v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;
    invoke-static {v5}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v5

    iget v5, v5, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    if-ge v4, v5, :cond_d1

    .line 265
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:I

    iget v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;
    invoke-static {v7}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v7

    iget-object v7, v7, Lcom/qiniu/android/storage/Configuration;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    iget-object v7, v7, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->nextTask(IILjava/net/URI;)V
    invoke-static {v4, v5, v6, v7}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;)V

    goto/16 :goto_29

    .line 261
    :catch_cc
    move-exception v1

    .line 262
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9d

    .line 268
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_d1
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;
    invoke-static {v4}, Lcom/qiniu/android/storage/ResumeUploader;->access$1000(Lcom/qiniu/android/storage/ResumeUploader;)[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:I

    div-int/2addr v5, v6

    aput-object v0, v4, v5

    .line 269
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:I

    iget v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$chunkSize:I

    add-int/2addr v5, v6

    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->record(I)V
    invoke-static {v4, v5}, Lcom/qiniu/android/storage/ResumeUploader;->access$1100(Lcom/qiniu/android/storage/ResumeUploader;I)V

    .line 270
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:I

    iget v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$chunkSize:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    iget-object v7, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$address:Ljava/net/URI;

    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->nextTask(IILjava/net/URI;)V
    invoke-static {v4, v5, v6, v7}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;)V

    goto/16 :goto_29
.end method
