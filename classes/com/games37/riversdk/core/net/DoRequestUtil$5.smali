.class Lcom/games37/riversdk/core/net/DoRequestUtil$5;
.super Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;
.source "DoRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/net/DoRequestUtil;->downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/games37/riversdk/core/callback/NetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/net/DoRequestUtil;

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/NetCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isShowProgress:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/net/DoRequestUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Lcom/games37/riversdk/core/callback/NetCallback;)V
    .registers 8
    .param p1, "this$0"    # Lcom/games37/riversdk/core/net/DoRequestUtil;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->this$0:Lcom/games37/riversdk/core/net/DoRequestUtil;

    iput-boolean p4, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$isShowProgress:Z

    iput-object p5, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$url:Ljava/lang/String;

    iput-object p7, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$callback:Lcom/games37/riversdk/core/callback/NetCallback;

    invoke-direct {p0, p2, p3}, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$isShowProgress:Z

    if-eqz v0, :cond_d

    .line 428
    iget-object v0, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->this$0:Lcom/games37/riversdk/core/net/DoRequestUtil;

    iget-object v1, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$url:Ljava/lang/String;

    # invokes: Lcom/games37/riversdk/core/net/DoRequestUtil;->sendDismissProgressMessage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/games37/riversdk/core/net/DoRequestUtil;->access$200(Lcom/games37/riversdk/core/net/DoRequestUtil;Landroid/content/Context;Ljava/lang/String;)V

    .line 431
    :cond_d
    const-string v0, "DoRequestUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadFile[url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onFailure :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 432
    iget-object v0, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$callback:Lcom/games37/riversdk/core/callback/NetCallback;

    if-eqz v0, :cond_3a

    .line 433
    iget-object v0, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$callback:Lcom/games37/riversdk/core/callback/NetCallback;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/games37/riversdk/core/callback/NetCallback;->callbackError(Ljava/lang/String;)V

    .line 435
    :cond_3a
    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$isShowProgress:Z

    if-eqz v0, :cond_d

    .line 419
    iget-object v0, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->this$0:Lcom/games37/riversdk/core/net/DoRequestUtil;

    iget-object v1, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$url:Ljava/lang/String;

    # invokes: Lcom/games37/riversdk/core/net/DoRequestUtil;->sendDismissProgressMessage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/games37/riversdk/core/net/DoRequestUtil;->access$200(Lcom/games37/riversdk/core/net/DoRequestUtil;Landroid/content/Context;Ljava/lang/String;)V

    .line 421
    :cond_d
    const-string v0, "DoRequestUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downFile[url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$callback:Lcom/games37/riversdk/core/callback/NetCallback;

    invoke-interface {v0, p1}, Lcom/games37/riversdk/core/callback/NetCallback;->callbackSuccess(Ljava/lang/Object;)V

    .line 423
    return-void
.end method

.method public onUIProgress(Lcom/games37/riversdk/net/okhttp/plus/model/Progress;)V
    .registers 8
    .param p1, "progress"    # Lcom/games37/riversdk/net/okhttp/plus/model/Progress;

    .prologue
    .line 439
    if-eqz p1, :cond_1b

    .line 440
    invoke-virtual {p1}, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;->getCurrentBytes()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;->getTotalBytes()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    iget-boolean v2, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$isShowProgress:Z

    if-eqz v2, :cond_1b

    .line 442
    iget-object v2, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->this$0:Lcom/games37/riversdk/core/net/DoRequestUtil;

    iget-object v3, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$url:Ljava/lang/String;

    # invokes: Lcom/games37/riversdk/core/net/DoRequestUtil;->sendDismissProgressMessage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/games37/riversdk/core/net/DoRequestUtil;->access$200(Lcom/games37/riversdk/core/net/DoRequestUtil;Landroid/content/Context;Ljava/lang/String;)V

    .line 445
    :cond_1b
    invoke-virtual {p1}, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;->getCurrentBytes()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;->getTotalBytes()J

    move-result-wide v4

    div-long/2addr v2, v4

    const-wide/16 v4, 0x64

    mul-long v0, v2, v4

    .line 446
    .local v0, "progressValue":J
    const-string v2, "DoRequestUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadFile[url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] onUIProgress progress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void
.end method
