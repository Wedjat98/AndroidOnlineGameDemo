.class Lcom/qiniu/android/storage/ResumeUploader$3;
.super Ljava/lang/Object;
.source "ResumeUploader.java"

# interfaces
.implements Lcom/qiniu/android/http/ProgressHandler;


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


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/ResumeUploader;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iput p2, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(II)V
    .registers 9
    .param p1, "bytesWritten"    # I
    .param p2, "totalSize"    # I

    .prologue
    .line 226
    iget v2, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->val$offset:I

    add-int/2addr v2, p1

    int-to-double v2, v2

    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->size:I
    invoke-static {v4}, Lcom/qiniu/android/storage/ResumeUploader;->access$800(Lcom/qiniu/android/storage/ResumeUploader;)I

    move-result v4

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 227
    .local v0, "percent":D
    const-wide v2, 0x3fee666666666666L    # 0.95

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1b

    .line 228
    const-wide v0, 0x3fee666666666666L    # 0.95

    .line 230
    :cond_1b
    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;
    invoke-static {v2}, Lcom/qiniu/android/storage/ResumeUploader;->access$300(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UploadOptions;

    move-result-object v2

    iget-object v2, v2, Lcom/qiniu/android/storage/UploadOptions;->progressHandler:Lcom/qiniu/android/storage/UpProgressHandler;

    iget-object v3, p0, Lcom/qiniu/android/storage/ResumeUploader$3;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;
    invoke-static {v3}, Lcom/qiniu/android/storage/ResumeUploader;->access$200(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/qiniu/android/storage/UpProgressHandler;->progress(Ljava/lang/String;D)V

    .line 231
    return-void
.end method
