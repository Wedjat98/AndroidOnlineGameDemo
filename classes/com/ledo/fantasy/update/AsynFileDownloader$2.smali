.class Lcom/ledo/fantasy/update/AsynFileDownloader$2;
.super Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;
.source "AsynFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/update/AsynFileDownloader;->StartDownloadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
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
    .line 177
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
    .line 184
    const-class v2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2d

    .line 186
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No space left on device"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2d

    .line 188
    const-string v1, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3!"

    .line 190
    .local v1, "strTips":Ljava/lang/String;
    :try_start_17
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v2

    sget v3, Lcom/ledo/fantasy/game/R$string;->no_space_tip:I

    invoke-virtual {v2, v3}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_34

    move-result-object v1

    .line 195
    :goto_21
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 198
    .end local v1    # "strTips":Ljava/lang/String;
    :cond_2d
    if-eqz p2, :cond_33

    const-string v2, ""

    if-ne p2, v2, :cond_3b

    .line 203
    :cond_33
    :goto_33
    return-void

    .line 191
    .restart local v1    # "strTips":Ljava/lang/String;
    :catch_34
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    const-string v1, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3!"

    goto :goto_21

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "strTips":Ljava/lang/String;
    :cond_3b
    sget v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_Index:I

    invoke-static {p2, v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->NotifyUrlDownloadFailed(Ljava/lang/String;I)V

    goto :goto_33
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "urlkey"    # Ljava/lang/String;

    .prologue
    .line 179
    sget v0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_Index:I

    invoke-static {p2, v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->NotifyUrlDownloadSuc(Ljava/lang/String;I)V

    .line 180
    return-void
.end method
