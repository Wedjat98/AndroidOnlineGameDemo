.class Lcom/ledo/fantasy/game/qiniumanager$2;
.super Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;
.source "qiniumanager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/qiniumanager;->DownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 9
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 97
    const-class v4, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_2d

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No space left on device"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2d

    .line 101
    const-string v3, "\u940e\u6d99\u00ea\u934b\u5d87\u7c9a\u5a32\ue045\uff1f\u5a11\u64b3\u79f7\u9350\u5a5a\u654d\u951f\ufffd"

    .line 103
    .local v3, "strTips":Ljava/lang/String;
    :try_start_17
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    sget v5, Lcom/ledo/fantasy/game/R$string;->no_space_tip:I

    invoke-virtual {v4, v5}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_34

    move-result-object v3

    .line 108
    :goto_21
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 112
    .end local v3    # "strTips":Ljava/lang/String;
    :cond_2d
    if-eqz p2, :cond_33

    const-string v4, ""

    if-ne p2, v4, :cond_3b

    .line 134
    :cond_33
    :goto_33
    return-void

    .line 104
    .restart local v3    # "strTips":Ljava/lang/String;
    :catch_34
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const-string v3, "\u940e\u6d99\u00ea\u934b\u5d87\u7c9a\u5a32\ue045\uff1f\u5a11\u64b3\u79f7\u9350\u5a5a\u654d\u951f\ufffd"

    goto :goto_21

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "strTips":Ljava/lang/String;
    :cond_3b
    sget-object v4, Lcom/ledo/fantasy/game/qiniumanager;->m_downloadFiles:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5d

    .line 119
    sget-object v4, Lcom/ledo/fantasy/game/qiniumanager;->m_downloadFiles:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 126
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    :cond_5d
    sget-object v4, Lcom/ledo/fantasy/game/qiniumanager;->m_downloadFiles:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "StartDownloadUrl onFailure error="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 128
    sget-object v4, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v5, Lcom/ledo/fantasy/game/qiniumanager$2$2;

    invoke-direct {v5, p0, p2, p1}, Lcom/ledo/fantasy/game/qiniumanager$2$2;-><init>(Lcom/ledo/fantasy/game/qiniumanager$2;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_33
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Lcom/ledo/fantasy/game/qiniumanager;->m_downloadFiles:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/qiniumanager$2$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/ledo/fantasy/game/qiniumanager$2$1;-><init>(Lcom/ledo/fantasy/game/qiniumanager$2;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method
