.class Lcom/games37/riversdk/gm99/floatview/FloatViewManager$5;
.super Ljava/lang/Object;
.source "FloatViewManager.java"

# interfaces
.implements Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$FinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->download(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

.field final synthetic val$isShow:Z


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$5;->this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    iput-boolean p2, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$5;->val$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .registers 4

    .prologue
    .line 283
    const-string v0, "FloatViewManager"

    const-string v1, "download onFinished!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "FloatViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download mSuccessFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->isDownloadSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-boolean v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$5;->val$isShow:Z

    if-eqz v0, :cond_30

    .line 288
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$5;->this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->show()V

    .line 290
    :cond_30
    return-void
.end method
