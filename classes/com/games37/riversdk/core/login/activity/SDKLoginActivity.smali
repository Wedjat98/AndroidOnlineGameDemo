.class public Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;
.super Lcom/games37/riversdk/core/activity/BaseActivity;
.source "SDKLoginActivity.java"


# static fields
.field public static final IS_CLOSE:Ljava/lang/String; = "IS_CLOSE"

.field public static final IVIEW_CLASS_PATH:Ljava/lang/String; = "IVIEW_CLASS_PATH"

.field public static final TAG:Ljava/lang/String; = "SDKLoginActivity"


# instance fields
.field private iView:Lcom/games37/riversdk/core/view/IView;

.field private mIsClose:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->mIsClose:Z

    return-void
.end method

.method private init()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 44
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/games37/riversdk/core/model/SDKInformation;->getMetaDataBundle()Lcom/games37/riversdk/core/model/DataBundle;

    move-result-object v5

    const-string v6, "RiverSDK.LoginClose"

    .line 45
    invoke-virtual {v5, v6, v7}, Lcom/games37/riversdk/core/model/DataBundle;->getBoolData(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->mIsClose:Z

    .line 48
    invoke-virtual {p0}, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "IVIEW_CLASS_PATH"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "classPath":Ljava/lang/String;
    invoke-static {v1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 50
    new-array v2, v9, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    aput-object v5, v2, v7

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v2, v8

    .line 52
    .local v2, "classes":[Ljava/lang/Class;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "IS_CLOSE"

    iget-boolean v6, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->mIsClose:Z

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    new-array v4, v9, [Ljava/lang/Object;

    aput-object p0, v4, v7

    aput-object v0, v4, v8

    .line 57
    .local v4, "params":[Ljava/lang/Object;
    invoke-static {v1, v2, v4}, Lcom/games37/riversdk/common/utils/ReflectUtil;->getObject(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 58
    .local v3, "obj":Ljava/lang/Object;
    check-cast v3, Lcom/games37/riversdk/core/view/IView;

    .end local v3    # "obj":Ljava/lang/Object;
    iput-object v3, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    .line 63
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "classes":[Ljava/lang/Class;
    .end local v4    # "params":[Ljava/lang/Object;
    :goto_47
    return-void

    .line 60
    :cond_48
    const-string v5, "SDKLoginActivity"

    const-string v6, "init the class path is empty!"

    invoke-static {v5, v6}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->finish()V

    goto :goto_47
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/games37/riversdk/core/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 124
    iget-object v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    if-eqz v0, :cond_c

    .line 125
    iget-object v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/games37/riversdk/core/view/IView;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 127
    :cond_c
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->mIsClose:Z

    if-eqz v0, :cond_5

    .line 119
    :goto_4
    return-void

    .line 118
    :cond_5
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onBackPressed()V

    goto :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/games37/riversdk/core/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-direct {p0}, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->init()V

    .line 38
    iget-object v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->setContentView(Landroid/view/View;)V

    .line 39
    iget-object v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/view/IView;->onCreate(Landroid/app/Activity;)V

    .line 40
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onDestroy()V

    .line 108
    iget-object v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    if-eqz v0, :cond_c

    .line 109
    iget-object v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/view/IView;->onDestroy(Landroid/app/Activity;)V

    .line 111
    :cond_c
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onPause()V

    .line 76
    iget-object v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    if-eqz v0, :cond_c

    .line 77
    iget-object v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/view/IView;->onPause(Landroid/app/Activity;)V

    .line 79
    :cond_c
    return-void
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onRestart()V

    .line 100
    iget-object v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    if-eqz v0, :cond_c

    .line 101
    iget-object v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/view/IView;->onRestart(Landroid/app/Activity;)V

    .line 103
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    if-eqz v0, :cond_c

    .line 93
    iget-object v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/view/IView;->onResume(Landroid/app/Activity;)V

    .line 95
    :cond_c
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onStart()V

    .line 68
    iget-object v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    if-eqz v0, :cond_c

    .line 69
    iget-object v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/view/IView;->onStart(Landroid/app/Activity;)V

    .line 71
    :cond_c
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onStop()V

    .line 84
    iget-object v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    if-eqz v0, :cond_c

    .line 85
    iget-object v0, p0, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/view/IView;->onStop(Landroid/app/Activity;)V

    .line 87
    :cond_c
    return-void
.end method
