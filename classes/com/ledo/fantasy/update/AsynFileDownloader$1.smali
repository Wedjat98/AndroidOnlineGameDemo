.class Lcom/ledo/fantasy/update/AsynFileDownloader$1;
.super Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;
.source "AsynFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/update/AsynFileDownloader;->StartDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "$anonymous0"    # Ljava/lang/String;
    .param p2, "$anonymous1"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 7
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "urlkey"    # Ljava/lang/String;

    .prologue
    .line 140
    const-class v2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_32

    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No space left on device"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_32

    .line 144
    const-string v1, "\u701b\u6a3a\u504d\u7ecc\u6d2a\u68ff\u6d93\u5d88\u51bb\u951b\ufffd"

    .line 146
    .local v1, "strTips":Ljava/lang/String;
    :try_start_17
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v2

    sget v3, Lcom/ledo/fantasy/game/R$string;->no_space_tip:I

    invoke-virtual {v2, v3}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_39

    move-result-object v1

    .line 151
    :goto_21
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 152
    const-string v2, "EVENT_NO_SPACE_LEFT_ON_DEVICE"

    invoke-static {v2}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 156
    .end local v1    # "strTips":Ljava/lang/String;
    :cond_32
    if-eqz p2, :cond_38

    const-string v2, ""

    if-ne p2, v2, :cond_40

    .line 162
    :cond_38
    :goto_38
    return-void

    .line 147
    .restart local v1    # "strTips":Ljava/lang/String;
    :catch_39
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    const-string v1, "\u701b\u6a3a\u504d\u7ecc\u6d2a\u68ff\u6d93\u5d88\u51bb\u951b\ufffd"

    goto :goto_21

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "strTips":Ljava/lang/String;
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StartDownload onFailure error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",urlkey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 161
    invoke-static {p2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->NotifyDownloadFailed(Ljava/lang/String;)V

    goto :goto_38
.end method

.method public onNotifySize(ILjava/lang/String;)V
    .registers 3
    .param p1, "notifysize"    # I
    .param p2, "urlkey"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {p1, p2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->NotifyDownloadSize(ILjava/lang/String;)V

    .line 136
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 3
    .param p1, "statusCode"    # I
    .param p2, "urlkey"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-static {p2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->NotifyDownloadSuc(Ljava/lang/String;)V

    .line 130
    return-void
.end method
