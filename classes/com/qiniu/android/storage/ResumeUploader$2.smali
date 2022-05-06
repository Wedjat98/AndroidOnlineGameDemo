.class Lcom/qiniu/android/storage/ResumeUploader$2;
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

.field final synthetic val$offset:I

.field final synthetic val$retried:I


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/ResumeUploader;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iput p2, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->val$retried:I

    iput p3, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "info"    # Lcom/qiniu/android/http/ResponseInfo;
    .param p2, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 205
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->removeRecord()V
    invoke-static {v0}, Lcom/qiniu/android/storage/ResumeUploader;->access$100(Lcom/qiniu/android/storage/ResumeUploader;)V

    .line 206
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;
    invoke-static {v0}, Lcom/qiniu/android/storage/ResumeUploader;->access$300(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UploadOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/qiniu/android/storage/UploadOptions;->progressHandler:Lcom/qiniu/android/storage/UpProgressHandler;

    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$200(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v3}, Lcom/qiniu/android/storage/UpProgressHandler;->progress(Ljava/lang/String;D)V

    .line 207
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;
    invoke-static {v0}, Lcom/qiniu/android/storage/ResumeUploader;->access$400(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$200(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 216
    :goto_2d
    return-void

    .line 211
    :cond_2e
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->isNotQiniu(Lcom/qiniu/android/http/ResponseInfo;)Z
    invoke-static {v0, p1}, Lcom/qiniu/android/storage/ResumeUploader;->access$500(Lcom/qiniu/android/storage/ResumeUploader;Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->needRetry()Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_3c
    iget v0, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->val$retried:I

    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;
    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v1

    iget v1, v1, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    if-ge v0, v1, :cond_5e

    .line 212
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v1, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->val$offset:I

    iget v2, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->val$retried:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;
    invoke-static {v3}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v3

    iget-object v3, v3, Lcom/qiniu/android/storage/Configuration;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    iget-object v3, v3, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->nextTask(IILjava/net/URI;)V
    invoke-static {v0, v1, v2, v3}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;)V

    goto :goto_2d

    .line 215
    :cond_5e
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;
    invoke-static {v0}, Lcom/qiniu/android/storage/ResumeUploader;->access$400(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$200(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_2d
.end method
