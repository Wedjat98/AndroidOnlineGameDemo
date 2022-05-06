.class public abstract Lcom/gm99/fzzj/GameAppImpl;
.super Lcom/ledo/fantasy/game/GameApp;
.source "GameAppImpl.java"


# instance fields
.field protected isAppActived:Z

.field listenerNO:Landroid/content/DialogInterface$OnClickListener;

.field listenerYES:Landroid/content/DialogInterface$OnClickListener;

.field private m_hasNetWork:Z

.field private m_parentOnPause:Z

.field protected m_platform:Lcom/gm99/fzzj/MyPlatform;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 84
    invoke-direct {p0}, Lcom/ledo/fantasy/game/GameApp;-><init>()V

    .line 24
    iput-boolean v2, p0, Lcom/gm99/fzzj/GameAppImpl;->isAppActived:Z

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    .line 27
    iput-boolean v3, p0, Lcom/gm99/fzzj/GameAppImpl;->m_parentOnPause:Z

    .line 28
    iput-boolean v2, p0, Lcom/gm99/fzzj/GameAppImpl;->m_hasNetWork:Z

    .line 30
    new-instance v1, Lcom/gm99/fzzj/GameAppImpl$1;

    invoke-direct {v1, p0}, Lcom/gm99/fzzj/GameAppImpl$1;-><init>(Lcom/gm99/fzzj/GameAppImpl;)V

    iput-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->listenerYES:Landroid/content/DialogInterface$OnClickListener;

    .line 41
    new-instance v1, Lcom/gm99/fzzj/GameAppImpl$2;

    invoke-direct {v1, p0}, Lcom/gm99/fzzj/GameAppImpl$2;-><init>(Lcom/gm99/fzzj/GameAppImpl;)V

    iput-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->listenerNO:Landroid/content/DialogInterface$OnClickListener;

    .line 86
    const-string v0, "0"

    .line 87
    .local v0, "strDelayInitSDK":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 88
    iput-boolean v3, p0, Lcom/gm99/fzzj/GameAppImpl;->delayInitSDk:Z

    .line 92
    :goto_28
    return-void

    .line 90
    :cond_29
    iput-boolean v2, p0, Lcom/gm99/fzzj/GameAppImpl;->delayInitSDk:Z

    goto :goto_28
.end method


# virtual methods
.method protected CheckAndShowNetworkDialog()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 52
    invoke-static {p0}, Lcom/ledo/fantasy/game/GameApp;->checkNetwork(Landroid/content/Context;)Z

    move-result v7

    .line 53
    .local v7, "result":Z
    if-eqz v7, :cond_32

    .line 55
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameApp;->setCheckNetworkOKFlag(Z)V

    .line 57
    iget-boolean v0, p0, Lcom/gm99/fzzj/GameAppImpl;->delayInitSDk:Z

    if-eqz v0, :cond_20

    .line 58
    new-instance v0, Lcom/gm99/fzzj/MyPlatform;

    invoke-direct {v0, p0}, Lcom/gm99/fzzj/MyPlatform;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    .line 59
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-static {p0, v0}, Lcom/ledo/fantasy/game/JniProxy;->initialize(Landroid/app/Activity;Lcom/ledo/fantasy/game/ChannelPlatformInterface;)V

    .line 71
    :cond_1f
    :goto_1f
    return-void

    .line 61
    :cond_20
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->isMeetStartGameCondition()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 62
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->startGame()V

    goto :goto_1f

    .line 68
    :cond_32
    const-string v0, "\u7f03\u6220\u7cb6\u5bee\u509a\u7236"

    const-string v1, "\u7f03\u6220\u7cb6\u5bee\u509a\u7236,\u7487\u950b\ue5c5\u93cc\u30e7\u7d89\u7f01\u6ec3\u6097\u95b2\u5d88\u762f"

    const-string v2, "\u95ab\ufffd\u9351\ufffd"

    iget-object v3, p0, Lcom/gm99/fzzj/GameAppImpl;->listenerYES:Landroid/content/DialogInterface$OnClickListener;

    const-string v4, "\u95b2\u5d88\u762f"

    iget-object v5, p0, Lcom/gm99/fzzj/GameAppImpl;->listenerNO:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/ledo/fantasy/game/SystemUIUtil;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    .line 69
    iput-boolean v8, p0, Lcom/gm99/fzzj/GameAppImpl;->m_hasNetWork:Z

    goto :goto_1f
.end method

.method protected getUpdateResourceClass()Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/game/Utils;->GetCurMainRFileDirMark()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".R"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v2

    .line 102
    .end local v0    # "className":Ljava/lang/String;
    :goto_1b
    return-object v2

    .line 99
    :catch_1c
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 102
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method protected initializeSDK()V
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/gm99/fzzj/GameAppImpl;->delayInitSDk:Z

    if-eqz v0, :cond_8

    .line 76
    invoke-virtual {p0}, Lcom/gm99/fzzj/GameAppImpl;->CheckAndShowNetworkDialog()V

    .line 81
    :goto_7
    return-void

    .line 78
    :cond_8
    new-instance v0, Lcom/gm99/fzzj/MyPlatform;

    invoke-direct {v0, p0}, Lcom/gm99/fzzj/MyPlatform;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    .line 79
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-static {p0, v0}, Lcom/ledo/fantasy/game/JniProxy;->initialize(Landroid/app/Activity;Lcom/ledo/fantasy/game/ChannelPlatformInterface;)V

    goto :goto_7
.end method

.method public isAppOnFrontground()Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/gm99/fzzj/GameAppImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 345
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {p0}, Lcom/gm99/fzzj/GameAppImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 347
    .local v2, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_1c

    .line 357
    :cond_1b
    :goto_1b
    return v4

    .line 350
    :cond_1c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 352
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_20

    .line 354
    const/4 v4, 0x1

    goto :goto_1b
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 256
    invoke-super {p0, p1, p2, p3}, Lcom/ledo/fantasy/game/GameApp;->onActivityResult(IILandroid/content/Intent;)V

    .line 258
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 259
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnActivityResultHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 260
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->onActivityResultHandle(IILandroid/content/Intent;Ljava/util/HashMap;)V

    .line 263
    :cond_27
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 322
    invoke-super {p0}, Lcom/ledo/fantasy/game/GameApp;->onBackPressed()V

    .line 324
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 325
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnBackPressedHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 326
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->onBackPressedHandle(Ljava/util/HashMap;)V

    .line 329
    :cond_27
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 333
    invoke-super {p0, p1}, Lcom/ledo/fantasy/game/GameApp;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 335
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 336
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnConfigurationChangedHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 337
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->onConfigurationChangedHandle(Landroid/content/res/Configuration;Ljava/util/HashMap;)V

    .line 340
    :cond_27
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 301
    invoke-super {p0, p1}, Lcom/ledo/fantasy/game/GameApp;->onCreate(Landroid/os/Bundle;)V

    .line 303
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 304
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnCreateHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 305
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lonlysdk/framework/protocol/OnlySDKAgent;->onCreateHandle(Landroid/os/Bundle;)V

    .line 308
    :cond_26
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 313
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnDestroyHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 314
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->onDestroyHandle(Ljava/util/HashMap;)V

    .line 317
    :cond_24
    invoke-super {p0}, Lcom/ledo/fantasy/game/GameApp;->onDestroy()V

    .line 318
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/ledo/fantasy/game/GameApp;->onNewIntent(Landroid/content/Intent;)V

    .line 268
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 269
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnNewIntentHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 270
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lonlysdk/framework/protocol/OnlySDKAgent;->onNewIntentHandle(Landroid/content/Intent;)V

    .line 273
    :cond_26
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "bParentOnPauseHandle":Z
    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v1, :cond_20

    sget-boolean v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->s_isInSDKRun:Z

    if-eqz v1, :cond_20

    .line 193
    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v1}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v1}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v1

    sget-object v2, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeGameWillNotShowInSDKRun:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1, v2}, Lonlysdk/framework/protocol/OnlySDKAgent;->isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 194
    const/4 v0, 0x1

    .line 197
    :cond_20
    if-eqz v0, :cond_4d

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_parentOnPause:Z

    .line 199
    invoke-virtual {p0}, Lcom/gm99/fzzj/GameAppImpl;->parentPause()V

    .line 205
    :goto_28
    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v1}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 206
    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v1}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v1

    sget-object v2, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnPauseHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1, v2}, Lonlysdk/framework/protocol/OnlySDKAgent;->isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 207
    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v1}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lonlysdk/framework/protocol/OnlySDKAgent;->onPauseHandle(Ljava/util/HashMap;)V

    .line 211
    :cond_4c
    return-void

    .line 201
    :cond_4d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_parentOnPause:Z

    .line 202
    invoke-super {p0}, Lcom/ledo/fantasy/game/GameApp;->onPause()V

    goto :goto_28
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 129
    invoke-super {p0}, Lcom/ledo/fantasy/game/GameApp;->onRestart()V

    .line 131
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 132
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnRestartHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 133
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->onRestart()V

    .line 136
    :cond_26
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 151
    invoke-super {p0}, Lcom/ledo/fantasy/game/GameApp;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 154
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnResumeHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 155
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->onResumeHandle(Ljava/util/HashMap;)V

    .line 159
    :cond_27
    iget-boolean v0, p0, Lcom/gm99/fzzj/GameAppImpl;->isAppActived:Z

    if-nez v0, :cond_31

    .line 161
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->showPauseScreen()V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gm99/fzzj/GameAppImpl;->isAppActived:Z

    .line 165
    :cond_31
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 166
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeGameWillNotShowInSDKRun:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_parentOnPause:Z

    .line 170
    :cond_4e
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/ledo/fantasy/game/GameApp;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 182
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnSaveInstanceStateHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 183
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->onSaveInstanceStateHandle(Landroid/os/Bundle;Ljava/util/HashMap;)V

    .line 186
    :cond_27
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 140
    invoke-super {p0}, Lcom/ledo/fantasy/game/GameApp;->onStart()V

    .line 142
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 143
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnStartHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 144
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->onStartHandle(Ljava/util/HashMap;)V

    .line 147
    :cond_27
    return-void
.end method

.method protected onStop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 216
    iget-boolean v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_hasNetWork:Z

    if-nez v1, :cond_f

    .line 217
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ledo/fantasy/game/GameApp;->finish()V

    .line 218
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 221
    :cond_f
    const/4 v0, 0x0

    .line 223
    .local v0, "bGameWillNotShowInSDKRun":Z
    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v1}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 224
    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v1}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v1

    sget-object v2, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeGameWillNotShowInSDKRun:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1, v2}, Lonlysdk/framework/protocol/OnlySDKAgent;->isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 225
    const/4 v0, 0x1

    .line 228
    :cond_2b
    iget-boolean v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_parentOnPause:Z

    if-eqz v1, :cond_33

    if-eqz v0, :cond_33

    .line 231
    sget-object v1, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    .line 236
    :cond_33
    invoke-super {p0}, Lcom/ledo/fantasy/game/GameApp;->onStop()V

    .line 238
    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v1}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 239
    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v1}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v1

    sget-object v2, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnStopHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1, v2}, Lonlysdk/framework/protocol/OnlySDKAgent;->isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 240
    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v1}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lonlysdk/framework/protocol/OnlySDKAgent;->onStopHandle(Ljava/util/HashMap;)V

    .line 244
    :cond_5a
    invoke-virtual {p0}, Lcom/gm99/fzzj/GameAppImpl;->isAppOnFrontground()Z

    move-result v1

    if-nez v1, :cond_62

    .line 246
    iput-boolean v3, p0, Lcom/gm99/fzzj/GameAppImpl;->isAppActived:Z

    .line 249
    :cond_62
    if-eqz v0, :cond_6a

    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v1, :cond_6a

    .line 250
    sput-boolean v3, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->s_isInSDKRun:Z

    .line 252
    :cond_6a
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 290
    invoke-super {p0, p1}, Lcom/ledo/fantasy/game/GameApp;->onWindowFocusChanged(Z)V

    .line 292
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 293
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnWindowFocusChangedHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 294
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0}, Lcom/gm99/fzzj/MyPlatform;->getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->onWindowFocusChangedHandle(ZLjava/util/HashMap;)V

    .line 297
    :cond_27
    return-void
.end method

.method protected purchaseWithJsonStrParam(Ljava/lang/String;)I
    .registers 4
    .param p1, "strJson"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "result":I
    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v1, :cond_b

    .line 114
    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v1, p1}, Lcom/gm99/fzzj/MyPlatform;->purchaseWithJsonStrParam(Ljava/lang/String;)I

    move-result v0

    .line 116
    :cond_b
    return v0
.end method

.method protected socialShareWithJsonParam(Ljava/lang/String;)I
    .registers 4
    .param p1, "strJson"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "result":I
    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v1, :cond_b

    .line 122
    iget-object v1, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v1, p1}, Lcom/gm99/fzzj/MyPlatform;->socialShareWithJsonParam(Ljava/lang/String;)I

    move-result v0

    .line 124
    :cond_b
    return v0
.end method

.method protected submitExtendDataToSDKJsonStr(Ljava/lang/String;)V
    .registers 3
    .param p1, "strJson"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    if-eqz v0, :cond_9

    .line 107
    iget-object v0, p0, Lcom/gm99/fzzj/GameAppImpl;->m_platform:Lcom/gm99/fzzj/MyPlatform;

    invoke-virtual {v0, p1}, Lcom/gm99/fzzj/MyPlatform;->submitExtendDataToSDKJsonStr(Ljava/lang/String;)V

    .line 109
    :cond_9
    return-void
.end method
