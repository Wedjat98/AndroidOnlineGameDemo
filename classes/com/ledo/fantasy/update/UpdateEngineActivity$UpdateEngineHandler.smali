.class Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;
.super Landroid/os/Handler;
.source "UpdateEngineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ledo/fantasy/update/UpdateEngineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateEngineHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 952
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;)V
    .registers 2

    .prologue
    .line 952
    invoke-direct {p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 955
    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getUpdateEngineActivity()Lcom/ledo/fantasy/update/UpdateEngineActivity;

    move-result-object v2

    .line 956
    .local v2, "act":Lcom/ledo/fantasy/update/UpdateEngineActivity;
    if-nez v2, :cond_7

    .line 1202
    :cond_6
    :goto_6
    return-void

    .line 960
    :cond_7
    const-string v11, "\u93c7\u5b58\u67ca\u6fb6\u8fab\u89e6"

    .line 961
    .local v11, "strUpdateFailTip":Ljava/lang/String;
    const-string v12, "\u7487\u98ce\u2018\u6dc7\u6fc8\u7d89\u7f01\u6ec5\u6660\u95ab\u6c2c\u6097\u951b\u5c84\u5678\u7487\u66ea\u7d12"

    .line 962
    .local v12, "strUpdateRetryTip":Ljava/lang/String;
    const-string v10, "\u95b2\u5d88\u762f"

    .line 963
    .local v10, "strRetry":Ljava/lang/String;
    const-string v8, "\u95ab\ufffd\u9351\ufffd"

    .line 964
    .local v8, "strExit":Ljava/lang/String;
    const-string v9, "\u7f01\u0445\u753b"

    .line 966
    .local v9, "strGoon":Ljava/lang/String;
    :try_start_11
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v14

    sget v15, Lcom/ledo/fantasy/game/R$string;->strinfo_update_fail_tip:I

    invoke-virtual {v14, v15}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 967
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v14

    sget v15, Lcom/ledo/fantasy/game/R$string;->strinfo_update_retry_tip:I

    invoke-virtual {v14, v15}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 968
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v14

    sget v15, Lcom/ledo/fantasy/game/R$string;->strinfo_retry:I

    invoke-virtual {v14, v15}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 969
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v14

    sget v15, Lcom/ledo/fantasy/game/R$string;->strinfo_exit:I

    invoke-virtual {v14, v15}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 970
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v14

    sget v15, Lcom/ledo/fantasy/game/R$string;->strinfo_go_on:I

    invoke-virtual {v14, v15}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_42} :catch_6b

    move-result-object v9

    .line 980
    :goto_43
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_46a

    .line 1198
    :pswitch_4a
    const-string v14, "UpdateEngine"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "msg "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " not defined!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 971
    :catch_6b
    move-exception v4

    .line 972
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 973
    const-string v11, "\u93c7\u5b58\u67ca\u6fb6\u8fab\u89e6"

    .line 974
    const-string v12, "\u7487\u98ce\u2018\u6dc7\u6fc8\u7d89\u7f01\u6ec5\u6660\u95ab\u6c2c\u6097\u951b\u5c84\u5678\u7487\u66ea\u7d12"

    .line 975
    const-string v10, "\u95b2\u5d88\u762f"

    .line 976
    const-string v8, "\u95ab\ufffd\u9351\ufffd"

    .line 977
    const-string v9, "\u7f01\u0445\u753b"

    goto :goto_43

    .line 982
    .end local v4    # "e":Ljava/lang/Exception;
    :pswitch_7a
    const-string v15, "UpdateEngine"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v14, "UPDATE_ENGINE_NOTIFY_MSG"

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateInfo:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$0(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 990
    :pswitch_a7
    const-string v14, "UpdateEngine"

    const-string v15, "UPDATE_ENGINE_NOTIFY_START"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const-string v14, "UPDATE_ENGINE_NOTIFY_START"

    invoke-static {v14}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 992
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "OS version:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ledo/fantasy/game/AndroidSystemInfo;->getOSVersion()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",ProductModel ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/ledo/fantasy/game/AndroidSystemInfo;->getProductModel()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",CurNetWorkType="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/ledo/fantasy/game/AndroidSystemInfo;->getCurNetWorkType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",MacAddress="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 993
    invoke-static {}, Lcom/ledo/fantasy/game/AndroidSystemInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 992
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 994
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Storage Space Left "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ledo/fantasy/game/AndroidSystemInfo;->getAvailabeSpace()J

    move-result-wide v16

    const-wide/32 v18, 0x100000

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "M"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 995
    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateInfo:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$0(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_Percent:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$1(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/TextView;

    move-result-object v14

    const-string v15, "0%"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1000
    :pswitch_12e
    const/4 v14, 0x1

    invoke-static {v2, v14}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$2(Lcom/ledo/fantasy/update/UpdateEngineActivity;Z)V

    .line 1001
    const-string v14, "UpdateEngine"

    const-string v15, "UPDATE_ENGINE_NOTIFY_END"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const-string v14, "UPDATE_ENGINE_NOTIFY_END"

    invoke-static {v14}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 1003
    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_Percent:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$1(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/TextView;

    move-result-object v14

    const-string v15, "100%"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1007
    invoke-static {}, Lcom/ledo/fantasy/update/AsynFileDownloader;->ShutDown()V

    .line 1008
    # invokes: Lcom/ledo/fantasy/update/UpdateEngineActivity;->updateEngineRunEnd()V
    invoke-static {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$3(Lcom/ledo/fantasy/update/UpdateEngineActivity;)V

    goto/16 :goto_6

    .line 1018
    :pswitch_14f
    const-string v14, "EVENT_UPDATEENGINEACTIVITY_UPDATE_ENGINE_NOTIFY_FAIL"

    invoke-static {v14}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->stopVideo()V

    .line 1020
    const-string v14, "UpdateEngine"

    const-string v15, "UPDATE_ENGINE_NOTIFY_FAIL"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v14, "UPDATE_ENGINE_NOTIFY_FAIL"

    invoke-static {v14}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 1022
    invoke-static {}, Lcom/ledo/fantasy/update/AsynFileDownloader;->ShutDown()V

    .line 1023
    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_Percent:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$1(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/TextView;

    move-result-object v14

    const-string v15, "100%"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    invoke-static {}, Lcom/ledo/fantasy/game/NativeCrashManager;->handleUpdateFiles()V

    .line 1028
    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v14, Lcom/ledo/fantasy/update/Utils;->currentActivity:Landroid/app/Activity;

    const/4 v15, 0x5

    invoke-direct {v3, v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1029
    .local v3, "alert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1030
    invoke-virtual {v3, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1031
    new-instance v14, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler$1;-><init>(Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;)V

    invoke-virtual {v3, v10, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1039
    new-instance v14, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler$2;-><init>(Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;)V

    invoke-virtual {v3, v8, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1052
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1053
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$5(Lcom/ledo/fantasy/update/UpdateEngineActivity;Landroid/app/AlertDialog;)V

    .line 1054
    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$6(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/app/AlertDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_6

    .line 1058
    .end local v3    # "alert":Landroid/app/AlertDialog$Builder;
    :pswitch_1a8
    const-string v14, "UpdateEngine"

    const-string v15, "UPDATE_ENGINE_NOTIFY_STEP"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_Percent:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$1(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/TextView;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "%"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "update step msg "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "%"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1066
    :pswitch_1f1
    const-string v14, "UpdateEngine"

    const-string v15, "UPDATE_ENGINE_NOTIFY_LOCALVERSION"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "UPDATE_ENGINE_NOTIFY_LOCALVERSION,"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 1068
    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_CurVer:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$7(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1072
    :pswitch_21d
    const-string v14, "UpdateEngine"

    const-string v15, "UPDATE_ENGINE_NOTIFY_LATESTVERSION"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "UPDATE_ENGINE_NOTIFY_LATESTVERSION, "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 1074
    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_NewVer:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$8(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1078
    :pswitch_249
    const-string v14, "UpdateEngine"

    const-string v15, "UPDATE_ENGINE_NOTIFY_DOWNLOADSIZE"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateInfo:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$0(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1086
    :pswitch_25f
    const-string v14, "EVENT_UPDATE_ENGINE_NOTIFY_DOWNLOADEND"

    invoke-static {v14}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 1087
    const-string v14, "UpdateEngine"

    const-string v15, "UPDATE_ENGINE_NOTIFY_DOWNLOADEND"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const-string v14, "UPDATE_ENGINE_NOTIFY_DOWNLOADEND"

    invoke-static {v14}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1094
    :pswitch_272
    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateFlag:Z
    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$9()Z

    move-result v14

    if-nez v14, :cond_6

    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_HasNewVersion:Z
    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$10()Z

    move-result v14

    if-nez v14, :cond_6

    .line 1101
    const-string v14, "EVENT_UPDATE_ENGINE_NOTIFY_DOWNLOADTOOLARGE"

    invoke-static {v14}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 1102
    const-string v14, "UpdateEngine"

    const-string v15, "UPDATE_ENGINE_NOTIFY_DOWNLOADTOOLARGE"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v14

    const/4 v15, 0x5

    invoke-direct {v3, v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1104
    .restart local v3    # "alert":Landroid/app/AlertDialog$Builder;
    const-string v14, ""

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1106
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v14, "\u59dd\u3086\ue0bc\u93c7\u5b58\u67ca\u6748\u51a8\u3047,\u934f\u8fab\ue178"

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "MB,\u93c4\ue21a\u60c1\u7f01\u0445\u753b\u951b\ufffd "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1109
    .local v5, "msgBigUpdateTip":Ljava/lang/String;
    :try_start_2b4
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v14

    sget v15, Lcom/ledo/fantasy/game/R$string;->strinfo_big_update_tip:I

    invoke-virtual {v14, v15}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1110
    .local v7, "strBigUpdateTip":Ljava/lang/String;
    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v16

    invoke-static {v7, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2d2
    .catch Ljava/lang/Exception; {:try_start_2b4 .. :try_end_2d2} :catch_2fe

    move-result-object v5

    .line 1115
    .end local v7    # "strBigUpdateTip":Ljava/lang/String;
    :goto_2d3
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1116
    new-instance v14, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler$3;-><init>(Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;)V

    invoke-virtual {v3, v9, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1124
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1125
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$5(Lcom/ledo/fantasy/update/UpdateEngineActivity;Landroid/app/AlertDialog;)V

    .line 1126
    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoPlayEnd:Z
    invoke-static {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$11(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Z

    move-result v14

    if-eqz v14, :cond_31e

    .line 1128
    const/4 v14, 0x0

    invoke-static {v2, v14}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$12(Lcom/ledo/fantasy/update/UpdateEngineActivity;Z)V

    .line 1129
    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$6(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/app/AlertDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_6

    .line 1111
    :catch_2fe
    move-exception v4

    .line 1112
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1113
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v14, "\u59dd\u3086\ue0bc\u93c7\u5b58\u67ca\u6748\u51a8\u3047,\u934f\u8fab\ue178"

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "MB,\u93c4\ue21a\u60c1\u7f01\u0445\u753b\u951b\ufffd "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2d3

    .line 1133
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_31e
    const/4 v14, 0x1

    invoke-static {v2, v14}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$12(Lcom/ledo/fantasy/update/UpdateEngineActivity;Z)V

    goto/16 :goto_6

    .line 1140
    .end local v3    # "alert":Landroid/app/AlertDialog$Builder;
    .end local v5    # "msgBigUpdateTip":Ljava/lang/String;
    :pswitch_324
    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateFlag:Z
    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$9()Z

    move-result v14

    if-nez v14, :cond_6

    .line 1146
    const-string v14, "UpdateEngine"

    const-string v15, "UPDATE_ENGINE_NOTIFY_DOWNLOADTOOLARGE"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v14

    const/4 v15, 0x5

    invoke-direct {v3, v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1148
    .restart local v3    # "alert":Landroid/app/AlertDialog$Builder;
    const-string v14, ""

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1150
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 1151
    .restart local v5    # "msgBigUpdateTip":Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v14

    sget v15, Lcom/ledo/fantasy/game/R$string;->strinfo_too_large_size_1:I

    invoke-virtual {v14, v15}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v13

    .line 1152
    .local v13, "toolargesize":Ljava/lang/Float;
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 1153
    .local v6, "needtodownload":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_3de

    .line 1154
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v14, "\u59dd\u3086\ue0bc\u93c7\u5b58\u67ca\u9350\u546d\ue190\u5bb8\u3125\u3047\u951b\ufffd"

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "MB\u951b\u591b\u7d1d\u5be4\u9e3f\ue185\u9355\u56e7\uff0b\u9353\u5d85\u7dda\u935f\u55d7\u7c35\u6d93\u5b2d\u6d47\u93c8\ufffd\u93c2\u626e\u5897\u7039\u5c7e\u66a3\u7039\u3221\u57db\u7ed4\ue224\u7d12"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1160
    :goto_388
    :try_start_388
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_3fa

    .line 1161
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v14

    sget v15, Lcom/ledo/fantasy/game/R$string;->strinfo_big_update_tip_1:I

    invoke-virtual {v14, v15}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1162
    .restart local v7    # "strBigUpdateTip":Ljava/lang/String;
    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v16

    invoke-static {v7, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3b2
    .catch Ljava/lang/Exception; {:try_start_388 .. :try_end_3b2} :catch_41a

    move-result-object v5

    .line 1176
    .end local v7    # "strBigUpdateTip":Ljava/lang/String;
    :goto_3b3
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1177
    new-instance v14, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler$4;-><init>(Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;)V

    invoke-virtual {v3, v9, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1184
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1185
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$5(Lcom/ledo/fantasy/update/UpdateEngineActivity;Landroid/app/AlertDialog;)V

    .line 1186
    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->mVideoPlayEnd:Z
    invoke-static {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$11(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Z

    move-result v14

    if-eqz v14, :cond_464

    .line 1188
    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$6(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/app/AlertDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    .line 1189
    const/4 v14, 0x0

    invoke-static {v2, v14}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$12(Lcom/ledo/fantasy/update/UpdateEngineActivity;Z)V

    goto/16 :goto_6

    .line 1156
    :cond_3de
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v14, "\u59dd\u3086\ue0bc\u93c7\u5b58\u67ca\u6748\u51a8\u3047,\u934f\u8fab\ue178"

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "MB\u951b\u5c7e\u69f8\u935a\ufe3e\u6237\u7f01\ue168\u7d35"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_388

    .line 1164
    :cond_3fa
    :try_start_3fa
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v14

    sget v15, Lcom/ledo/fantasy/game/R$string;->strinfo_big_update_tip:I

    invoke-virtual {v14, v15}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1165
    .restart local v7    # "strBigUpdateTip":Ljava/lang/String;
    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v16

    invoke-static {v7, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_418
    .catch Ljava/lang/Exception; {:try_start_3fa .. :try_end_418} :catch_41a

    move-result-object v5

    goto :goto_3b3

    .line 1167
    .end local v7    # "strBigUpdateTip":Ljava/lang/String;
    :catch_41a
    move-exception v4

    .line 1168
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1169
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_447

    .line 1170
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v14, "\u59dd\u3086\ue0bc\u93c7\u5b58\u67ca\u9350\u546d\ue190\u5bb8\u3125\u3047\u951b\ufffd"

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "MB\u951b\u591b\u7d1d\u5be4\u9e3f\ue185\u9355\u56e7\uff0b\u9353\u5d85\u7dda\u935f\u55d7\u7c35\u6d93\u5b2d\u6d47\u93c8\ufffd\u93c2\u626e\u5897\u7039\u5c7e\u66a3\u7039\u3221\u57db\u7ed4\ue224\u7d12"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1171
    goto/16 :goto_3b3

    .line 1172
    :cond_447
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v14, "\u59dd\u3086\ue0bc\u93c7\u5b58\u67ca\u6748\u51a8\u3047,\u934f\u8fab\ue178"

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "MB\u951b\u5c7e\u69f8\u935a\ufe3e\u6237\u7f01\ue168\u7d35"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3b3

    .line 1193
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_464
    const/4 v14, 0x1

    invoke-static {v2, v14}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$12(Lcom/ledo/fantasy/update/UpdateEngineActivity;Z)V

    goto/16 :goto_6

    .line 980
    :pswitch_data_46a
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_a7
        :pswitch_12e
        :pswitch_1a8
        :pswitch_1f1
        :pswitch_21d
        :pswitch_249
        :pswitch_25f
        :pswitch_272
        :pswitch_14f
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_324
    .end packed-switch
.end method
