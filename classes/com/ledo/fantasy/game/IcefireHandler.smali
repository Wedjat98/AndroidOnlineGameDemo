.class public Lcom/ledo/fantasy/game/IcefireHandler;
.super Landroid/os/Handler;
.source "IcefireHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ledo/fantasy/game/IcefireHandler$DialogMessage;,
        Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;
    }
.end annotation


# static fields
.field public static final HANDLER_CLICK_RUN_VIEW:I = 0x8

.field public static final HANDLER_HIDE_LAUNCH_VIEW:I = 0x5

.field public static final HANDLER_HIDE_RUN_VIEW:I = 0x7

.field public static final HANDLER_SHOW_DIALOG:I = 0x1

.field public static final HANDLER_SHOW_EDITBOX_DIALOG:I = 0x2

.field public static final HANDLER_SHOW_RUN_VIEW:I = 0x6

.field public static final HANDLER_SHOW_SECONDE_SPLASH_IMG:I = 0x3

.field public static final HANDLER_SPLASH_SCREEN_ENDED:I = 0x4

.field public static final HANDLER_START_GAME:I = 0x9


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ledo/fantasy/game/GameApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ledo/fantasy/game/GameApp;)V
    .registers 3
    .param p1, "activity"    # Lcom/ledo/fantasy/game/GameApp;

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ledo/fantasy/game/IcefireHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 59
    return-void
.end method

.method private showDialog(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 109
    iget-object v2, p0, Lcom/ledo/fantasy/game/IcefireHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ledo/fantasy/game/GameApp;

    .line 110
    .local v1, "theActivity":Lcom/ledo/fantasy/game/GameApp;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ledo/fantasy/game/IcefireHandler$DialogMessage;

    .line 111
    .local v0, "dialogMessage":Lcom/ledo/fantasy/game/IcefireHandler$DialogMessage;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 112
    iget-object v3, v0, Lcom/ledo/fantasy/game/IcefireHandler$DialogMessage;->titile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 113
    iget-object v3, v0, Lcom/ledo/fantasy/game/IcefireHandler$DialogMessage;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 114
    const-string v3, "Ok"

    .line 115
    new-instance v4, Lcom/ledo/fantasy/game/IcefireHandler$1;

    invoke-direct {v4, p0}, Lcom/ledo/fantasy/game/IcefireHandler$1;-><init>(Lcom/ledo/fantasy/game/IcefireHandler;)V

    .line 114
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 123
    return-void
.end method

.method private showEditBoxDialog(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;

    .line 127
    .local v8, "editBoxMessage":Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;
    new-instance v0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;

    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 128
    iget-object v2, v8, Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;->title:Ljava/lang/String;

    .line 129
    iget-object v3, v8, Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;->content:Ljava/lang/String;

    .line 130
    iget v4, v8, Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;->inputMode:I

    .line 131
    iget v5, v8, Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;->inputFlag:I

    .line 132
    iget v6, v8, Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;->returnType:I

    .line 133
    iget v7, v8, Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;->maxLength:I

    .line 127
    invoke-direct/range {v0 .. v7}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 133
    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->show()V

    .line 134
    return-void
.end method

.method private showSecondSplashImg()V
    .registers 1

    .prologue
    .line 170
    return-void
.end method

.method private splashScreenEnded()V
    .registers 3

    .prologue
    .line 173
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameApp;->setSplashEndFlag(Z)V

    .line 178
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ledo/fantasy/game/GameApp;->delayInitSDk:Z

    if-eqz v0, :cond_18

    .line 180
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->initializeSDK()V

    .line 186
    :goto_17
    return-void

    .line 184
    :cond_18
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->CheckAndShowNetworkDialog()V

    goto :goto_17
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    .line 103
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 106
    :goto_8
    return-void

    .line 76
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/ledo/fantasy/game/IcefireHandler;->showDialog(Landroid/os/Message;)V

    goto :goto_8

    .line 79
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/ledo/fantasy/game/IcefireHandler;->showEditBoxDialog(Landroid/os/Message;)V

    goto :goto_8

    .line 82
    :pswitch_11
    invoke-direct {p0}, Lcom/ledo/fantasy/game/IcefireHandler;->showSecondSplashImg()V

    goto :goto_8

    .line 85
    :pswitch_15
    invoke-direct {p0}, Lcom/ledo/fantasy/game/IcefireHandler;->splashScreenEnded()V

    goto :goto_8

    .line 88
    :pswitch_19
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->hideLaunchView()V

    goto :goto_8

    .line 91
    :pswitch_21
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->hideRunView()V

    goto :goto_8

    .line 94
    :pswitch_29
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->showRunView()V

    goto :goto_8

    .line 97
    :pswitch_31
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->clickRunView()V

    goto :goto_8

    .line 100
    :pswitch_39
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->startGame()V

    goto :goto_8

    .line 74
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_29
        :pswitch_21
        :pswitch_31
        :pswitch_39
    .end packed-switch
.end method
