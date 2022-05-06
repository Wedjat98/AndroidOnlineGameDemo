.class Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;
.super Landroid/os/Handler;
.source "AppUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;->this$1:Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;

    .line 89
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    .line 94
    const-string v6, "fantasy"

    .line 95
    .local v6, "strGameName":Ljava/lang/String;
    const-string v5, "\u5a11\u64b3\ue0c8\u5a34\u56e9\ufffd\u7470\u672c\u9368\ufffd,\u95bb\u612e\u61d3\u9364\ue1be\ufffd\u7470\ue633\u9865\u5a47\u59b4\u951f\ufffd"

    .line 96
    .local v5, "strFinishTip":Ljava/lang/String;
    const-string v4, "\u5a11\u64b3\ue0c8\u5a34\u56e8\u5f84\u6748\ue0a5\u0415\u95bf\u6d98\u77c1\u9855\ue104\u67cc\u5ba5\u55d8\u7140\u7035\ue1c6\u62f7\u93af\u5ea3\ufffd\u5e7f\u57ba\u9369\u6d9a\u7ca9\u9856\u70b2\u6ae2\u9420\u56e8\u6d29\u7ef1\ufffd"

    .line 98
    .local v4, "strFailTip":Ljava/lang/String;
    :try_start_7
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v8

    sget v9, Lcom/ledo/fantasy/game/R$string;->strinfo_game_name:I

    invoke-virtual {v8, v9}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v8

    sget v9, Lcom/ledo/fantasy/game/R$string;->strinfo_download_finish_tip:I

    invoke-virtual {v8, v9}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v8

    sget v9, Lcom/ledo/fantasy/game/R$string;->strinfo_download_fail_tip:I

    invoke-virtual {v8, v9}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_3e

    move-result-object v4

    .line 109
    :goto_25
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_100

    .line 143
    :goto_2a
    iget-object v8, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;->this$1:Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;
    invoke-static {v8}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->access$0(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)Lcom/ledo/fantasy/update/AppUpdateService;

    move-result-object v8

    iget-object v9, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;->this$1:Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;
    invoke-static {v9}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->access$0(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)Lcom/ledo/fantasy/update/AppUpdateService;

    move-result-object v9

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService;->updateIntent:Landroid/content/Intent;
    invoke-static {v9}, Lcom/ledo/fantasy/update/AppUpdateService;->access$3(Lcom/ledo/fantasy/update/AppUpdateService;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ledo/fantasy/update/AppUpdateService;->stopService(Landroid/content/Intent;)Z

    .line 145
    :goto_3d
    return-void

    .line 101
    :catch_3e
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    const-string v6, "\u7f01\u4f7a\u5064\u5a32\u590b\u7b1f\u9418\u8fab\u5d0b"

    .line 105
    const-string v5, "\u5a11\u64b3\ue0c8\u5a34\u56e9\ufffd\u7470\u672c\u9368\ufffd,\u95bb\u612e\u61d3\u9364\ue1be\ufffd\u7470\ue633\u9865\u5a47\u59b4\u951f\ufffd"

    .line 106
    const-string v4, "\u5a11\u64b3\ue0c8\u5a34\u56e8\u5f84\u6748\ue0a5\u0415\u95bf\u6d98\u77c1\u9855\ue104\u67cc\u5ba5\u55d8\u7140\u7035\ue1c6\u62f7\u93af\u5ea3\ufffd\u5e7f\u57ba\u9369\u6d9a\u7ca9\u9856\u70b2\u6ae2\u9420\u56e8\u6d29\u7ef1\ufffd"

    goto :goto_25

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_49
    iget-object v8, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;->this$1:Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;
    invoke-static {v8}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->access$0(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)Lcom/ledo/fantasy/update/AppUpdateService;

    move-result-object v8

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService;->updateFile:Ljava/io/File;
    invoke-static {v8}, Lcom/ledo/fantasy/update/AppUpdateService;->access$0(Lcom/ledo/fantasy/update/AppUpdateService;)Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 113
    .local v7, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "installIntent":Landroid/content/Intent;
    const-string v8, "application/vnd.android.package-archive"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v8, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;->this$1:Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;
    invoke-static {v8}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->access$0(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)Lcom/ledo/fantasy/update/AppUpdateService;

    move-result-object v8

    iget-object v9, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;->this$1:Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;
    invoke-static {v9}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->access$0(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)Lcom/ledo/fantasy/update/AppUpdateService;

    move-result-object v9

    invoke-static {v9, v11, v1, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ledo/fantasy/update/AppUpdateService;->access$1(Lcom/ledo/fantasy/update/AppUpdateService;Landroid/app/PendingIntent;)V

    .line 120
    iget-object v8, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;->this$1:Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;
    invoke-static {v8}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->access$0(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)Lcom/ledo/fantasy/update/AppUpdateService;

    move-result-object v8

    iget-object v9, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;->this$1:Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;
    invoke-static {v9}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->access$0(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)Lcom/ledo/fantasy/update/AppUpdateService;

    move-result-object v9

    iget-object v10, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;->this$1:Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;
    invoke-static {v10}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->access$0(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)Lcom/ledo/fantasy/update/AppUpdateService;

    move-result-object v10

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService;->updatePendingIntent:Landroid/app/PendingIntent;
    invoke-static {v10}, Lcom/ledo/fantasy/update/AppUpdateService;->access$2(Lcom/ledo/fantasy/update/AppUpdateService;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v8, v9, v6, v5, v10}, Lcom/ledo/fantasy/update/AppUpdateService;->startNotify(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 122
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "android.intent.action.UPDATE_RECEIVER"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v8, "urifile"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 125
    const-string v8, "flag"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    iget-object v8, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;->this$1:Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;
    invoke-static {v8}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->access$0(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)Lcom/ledo/fantasy/update/AppUpdateService;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/ledo/fantasy/update/AppUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    const-string v8, "EVENT_APPUPDATESERVICE_HANDLEMESSAGE_DOWNLOAD_COMPLETE"

    invoke-static {v8}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 130
    iget-object v8, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;->this$1:Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;
    invoke-static {v8}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->access$0(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)Lcom/ledo/fantasy/update/AppUpdateService;

    move-result-object v8

    iget-object v9, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;->this$1:Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;
    invoke-static {v9}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->access$0(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)Lcom/ledo/fantasy/update/AppUpdateService;

    move-result-object v9

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService;->updateIntent:Landroid/content/Intent;
    invoke-static {v9}, Lcom/ledo/fantasy/update/AppUpdateService;->access$3(Lcom/ledo/fantasy/update/AppUpdateService;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ledo/fantasy/update/AppUpdateService;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_3d

    .line 136
    .end local v1    # "installIntent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "uri":Landroid/net/Uri;
    :pswitch_c6
    iget-object v8, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;->this$1:Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;
    invoke-static {v8}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->access$0(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)Lcom/ledo/fantasy/update/AppUpdateService;

    move-result-object v8

    iget-object v9, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;->this$1:Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;
    invoke-static {v9}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->access$0(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)Lcom/ledo/fantasy/update/AppUpdateService;

    move-result-object v9

    iget-object v10, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;->this$1:Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;
    invoke-static {v10}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->access$0(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)Lcom/ledo/fantasy/update/AppUpdateService;

    move-result-object v10

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService;->updatePendingIntent:Landroid/app/PendingIntent;
    invoke-static {v10}, Lcom/ledo/fantasy/update/AppUpdateService;->access$2(Lcom/ledo/fantasy/update/AppUpdateService;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v8, v9, v6, v4, v10}, Lcom/ledo/fantasy/update/AppUpdateService;->startNotify(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 137
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v3, "intent1":Landroid/content/Intent;
    const-string v8, "android.intent.action.UPDATE_RECEIVER"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v8, "flag"

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string v8, "EVENT_APPUPDATESERVICE_HANDLEMESSAGE_DOWNLOAD_FAIL"

    invoke-static {v8}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 141
    iget-object v8, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;->this$1:Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;
    invoke-static {v8}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->access$0(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)Lcom/ledo/fantasy/update/AppUpdateService;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/ledo/fantasy/update/AppUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2a

    .line 109
    nop

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_49
        :pswitch_c6
    .end packed-switch
.end method
