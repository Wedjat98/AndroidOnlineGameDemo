.class public Lcom/ledo/fantasy/update/UpdateProgressReciever;
.super Landroid/content/BroadcastReceiver;
.source "UpdateProgressReciever.java"


# instance fields
.field private m_ProDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    const-string v9, "\u6697\u9ed1\u9ece\u660e"

    .line 25
    .local v9, "strGameName":Ljava/lang/String;
    const-string v8, "\u4e0b\u8f7d\u6210\u529f\uff0c\u70b9\u51fb\u786e\u5b9a\u5b89\u88c5\uff01"

    .line 26
    .local v8, "strDownloadFinishTip2":Ljava/lang/String;
    const-string v11, "\u786e\u5b9a"

    .line 27
    .local v11, "strSure":Ljava/lang/String;
    const-string v7, "\u4e0b\u8f7d\u5931\u8d25"

    .line 28
    .local v7, "strDownloadFail":Ljava/lang/String;
    const-string v10, "\u8bf7\u786e\u8ba4\u7f51\u7edc\u8fde\u901a\u540e\uff0c\u5f00\u542f\u5ba2\u6237\u7aef\u91cd\u8bd5\uff01"

    .line 29
    .local v10, "strNetConRetryTip":Ljava/lang/String;
    const-string v12, "\u6b63\u5728\u66f4\u65b0\uff0c\u8fdb\u5ea6\uff1a"

    .line 31
    .local v12, "strUpdatingTip":Ljava/lang/String;
    :try_start_c
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v14

    sget v15, Lcom/ledo/fantasy/game/R$string;->strinfo_game_name:I

    invoke-virtual {v14, v15}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 32
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v14

    sget v15, Lcom/ledo/fantasy/game/R$string;->strinfo_download_finish_tip2:I

    invoke-virtual {v14, v15}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 33
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v14

    sget v15, Lcom/ledo/fantasy/game/R$string;->strinfo_sure:I

    invoke-virtual {v14, v15}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 34
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v14

    sget v15, Lcom/ledo/fantasy/game/R$string;->strinfo_download_fail:I

    invoke-virtual {v14, v15}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 35
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v14

    sget v15, Lcom/ledo/fantasy/game/R$string;->strinfo_net_connect_retry_tip:I

    invoke-virtual {v14, v15}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 36
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v14

    sget v15, Lcom/ledo/fantasy/game/R$string;->strinfo_updating_tip:I

    invoke-virtual {v14, v15}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_47} :catch_56

    move-result-object v12

    .line 47
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 48
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v14, "flag"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 49
    .local v4, "flag":I
    packed-switch v4, :pswitch_data_12c

    .line 121
    :goto_55
    return-void

    .line 37
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "flag":I
    :catch_56
    move-exception v3

    .line 38
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    const-string v9, "\u6697\u9ed1\u9ece\u660e"

    .line 40
    const-string v8, "\u4e0b\u8f7d\u6210\u529f\uff0c\u70b9\u51fb\u786e\u5b9a\u5b89\u88c5\uff01"

    .line 41
    const-string v11, "\u786e\u5b9a"

    .line 42
    const-string v7, "\u4e0b\u8f7d\u5931\u8d25"

    .line 43
    const-string v10, "\u8bf7\u786e\u8ba4\u7f51\u7edc\u8fde\u901a\u540e\uff0c\u5f00\u542f\u5ba2\u6237\u7aef\u91cd\u8bd5\uff01"

    .line 44
    const-string v12, "\u6b63\u5728\u66f4\u65b0\uff0c\u8fdb\u5ea6\uff1a"

    goto :goto_48

    .line 51
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "flag":I
    :pswitch_67
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ledo/fantasy/update/UpdateProgressReciever;->m_ProDialog:Landroid/app/ProgressDialog;

    if-eqz v14, :cond_74

    .line 52
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ledo/fantasy/update/UpdateProgressReciever;->m_ProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 54
    :cond_74
    const-string v14, "urifile"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    .line 55
    .local v13, "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v5, "intent1":Landroid/content/Intent;
    const-string v14, "application/vnd.android.package-archive"

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    sget-object v14, Lcom/ledo/fantasy/update/Utils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v14, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 60
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v14, Lcom/ledo/fantasy/update/Utils;->currentActivity:Landroid/app/Activity;

    const/4 v15, 0x5

    invoke-direct {v1, v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 62
    .local v1, "alert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 64
    new-instance v14, Lcom/ledo/fantasy/update/UpdateProgressReciever$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v5}, Lcom/ledo/fantasy/update/UpdateProgressReciever$1;-><init>(Lcom/ledo/fantasy/update/UpdateProgressReciever;Landroid/content/Intent;)V

    invoke-virtual {v1, v11, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto :goto_55

    .line 86
    .end local v1    # "alert":Landroid/app/AlertDialog$Builder;
    .end local v5    # "intent1":Landroid/content/Intent;
    .end local v13    # "uri":Landroid/net/Uri;
    :pswitch_b1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ledo/fantasy/update/UpdateProgressReciever;->m_ProDialog:Landroid/app/ProgressDialog;

    if-eqz v14, :cond_be

    .line 87
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ledo/fantasy/update/UpdateProgressReciever;->m_ProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 89
    :cond_be
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v14, Lcom/ledo/fantasy/update/Utils;->currentActivity:Landroid/app/Activity;

    const/4 v15, 0x5

    invoke-direct {v1, v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 91
    .restart local v1    # "alert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 93
    new-instance v14, Lcom/ledo/fantasy/update/UpdateProgressReciever$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/ledo/fantasy/update/UpdateProgressReciever$2;-><init>(Lcom/ledo/fantasy/update/UpdateProgressReciever;)V

    invoke-virtual {v1, v11, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_55

    .line 108
    .end local v1    # "alert":Landroid/app/AlertDialog$Builder;
    :pswitch_e3
    const-string v14, "progress"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "progress":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ledo/fantasy/update/UpdateProgressReciever;->m_ProDialog:Landroid/app/ProgressDialog;

    if-eqz v14, :cond_109

    .line 110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ledo/fantasy/update/UpdateProgressReciever;->m_ProDialog:Landroid/app/ProgressDialog;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_55

    .line 112
    :cond_109
    sget-object v14, Lcom/ledo/fantasy/update/Utils;->currentActivity:Landroid/app/Activity;

    const-string v15, ""

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v14 .. v17}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ledo/fantasy/update/UpdateProgressReciever;->m_ProDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_55

    .line 49
    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_67
        :pswitch_b1
        :pswitch_e3
    .end packed-switch
.end method
