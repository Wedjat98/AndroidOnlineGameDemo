.class Lcom/gm99/fzzj/MyPlatform$3;
.super Lonlysdk/framework/listener/SDKActionListener;
.source "MyPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gm99/fzzj/MyPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$onlysdk$framework$enumtype$SDKActionResultCode:[I


# direct methods
.method static synthetic $SWITCH_TABLE$onlysdk$framework$enumtype$SDKActionResultCode()[I
    .registers 3

    .prologue
    .line 60
    sget-object v0, Lcom/gm99/fzzj/MyPlatform$3;->$SWITCH_TABLE$onlysdk$framework$enumtype$SDKActionResultCode:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lonlysdk/framework/enumtype/SDKActionResultCode;->values()[Lonlysdk/framework/enumtype/SDKActionResultCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lonlysdk/framework/enumtype/SDKActionResultCode;->kSDKActionDoPushGameLogOut:Lonlysdk/framework/enumtype/SDKActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/SDKActionResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lonlysdk/framework/enumtype/SDKActionResultCode;->kSDKActionInitFail:Lonlysdk/framework/enumtype/SDKActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/SDKActionResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lonlysdk/framework/enumtype/SDKActionResultCode;->kSDKActionInitResultForceClose:Lonlysdk/framework/enumtype/SDKActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/SDKActionResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lonlysdk/framework/enumtype/SDKActionResultCode;->kSDKActionInitSuccess:Lonlysdk/framework/enumtype/SDKActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/SDKActionResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lcom/gm99/fzzj/MyPlatform$3;->$SWITCH_TABLE$onlysdk$framework$enumtype$SDKActionResultCode:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Lonlysdk/framework/listener/SDKActionListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onSDKActionResult(Lonlysdk/framework/enumtype/SDKActionResultCode;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 11
    .param p1, "code"    # Lonlysdk/framework/enumtype/SDKActionResultCode;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonlysdk/framework/enumtype/SDKActionResultCode;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 64
    invoke-static {}, Lcom/gm99/fzzj/MyPlatform$3;->$SWITCH_TABLE$onlysdk$framework$enumtype$SDKActionResultCode()[I

    move-result-object v0

    invoke-virtual {p1}, Lonlysdk/framework/enumtype/SDKActionResultCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_92

    .line 101
    :cond_e
    :goto_e
    return-void

    .line 67
    :pswitch_f
    sget-object v0, Lcom/gm99/fzzj/MyPlatform;->TAG:Ljava/lang/String;

    const-string v1, "init sdk success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v0, Lcom/gm99/fzzj/MyPlatform;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/gm99/fzzj/MyPlatform;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeFloatWnd:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 73
    sget-object v0, Lcom/gm99/fzzj/MyPlatform;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->openSDKFloatWnd(Ljava/util/HashMap;)V

    .line 75
    :cond_32
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 76
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameApp;->setInitSDKSucceedFlag(Z)V

    .line 78
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->isMeetStartGameCondition()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 79
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->onStartGame()V

    goto :goto_e

    .line 84
    :pswitch_52
    sget-object v0, Lcom/gm99/fzzj/MyPlatform;->TAG:Ljava/lang/String;

    const-string v1, "init sdk failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v0, "\u9352\u6fc6\ue750\u9356\u6827\u3051\u7490\ufffd"

    const-string v1, "\u9352\u6fc6\ue750\u9356\u6827\u3051\u7490\ufffd, \u7487\u950b\ue5c5\u93cc\u30e7\u7d89\u7f01\u6ec3\u6097\u95b2\u5d88\u762f"

    const-string v2, "\u7ead\ue1bc\u757e"

    sget-object v3, Lcom/gm99/fzzj/MyPlatform;->listenerExitGame:Landroid/content/DialogInterface$OnClickListener;

    const-string v4, ""

    sget-object v5, Lcom/gm99/fzzj/MyPlatform;->listenerExitGame:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/ledo/fantasy/game/SystemUIUtil;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    goto :goto_e

    .line 88
    :pswitch_6d
    sget-object v0, Lcom/gm99/fzzj/MyPlatform;->TAG:Ljava/lang/String;

    const-string v1, "init result force game close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->release()V

    .line 91
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->finish()V

    .line 92
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 94
    :pswitch_81
    sget-object v0, Lcom/gm99/fzzj/MyPlatform;->TAG:Ljava/lang/String;

    const-string v1, "kSDKActionDoPushGameLogOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->onLogout()V

    .line 96
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/ledo/fantasy/game/JniProxy;->onLogined(I)V

    goto/16 :goto_e

    .line 64
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_f
        :pswitch_52
        :pswitch_6d
        :pswitch_81
    .end packed-switch
.end method
