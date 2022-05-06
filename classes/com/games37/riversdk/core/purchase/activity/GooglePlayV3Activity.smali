.class public Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;
.super Lcom/games37/riversdk/core/activity/BaseActivity;
.source "GooglePlayV3Activity.java"


# static fields
.field public static final GOOGLE_API_KEY:Ljava/lang/String; = "GOOGLE_API_KEY"

.field public static final IVIEW_CLASS_PATH:Ljava/lang/String; = "IVIEW_CLASS_PATH"

.field public static final PURCHASEINFO:Ljava/lang/String; = "PURCHASEINFO"

.field public static final TAG:Ljava/lang/String; = "GooglePlayV3Activity"


# instance fields
.field private iView:Lcom/games37/riversdk/core/view/IView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    return-void
.end method

.method private init()V
    .registers 14

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "GOOGLE_API_KEY"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "google_api_key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "IVIEW_CLASS_PATH"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "classPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "PURCHASEINFO"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    .line 58
    .local v7, "purchaseInfoObj":Ljava/io/Serializable;
    if-nez v7, :cond_35

    const/4 v6, 0x0

    .line 60
    .end local v7    # "purchaseInfoObj":Ljava/io/Serializable;
    .local v6, "purchaseInfo":Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    :goto_24
    invoke-static {v3}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 61
    invoke-virtual {p0}, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->finish()V

    .line 62
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "GOOGLE_API_KEY is null!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 58
    .end local v6    # "purchaseInfo":Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    .restart local v7    # "purchaseInfoObj":Ljava/io/Serializable;
    :cond_35
    check-cast v7, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    move-object v6, v7

    goto :goto_24

    .line 64
    .end local v7    # "purchaseInfoObj":Ljava/io/Serializable;
    .restart local v6    # "purchaseInfo":Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    :cond_39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v8, "GOOGLE_API_KEY"

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v8, "PURCHASEINFO"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 67
    invoke-static {v1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_67

    .line 68
    new-array v2, v12, [Ljava/lang/Class;

    const-class v8, Landroid/app/Activity;

    aput-object v8, v2, v10

    const-class v8, Landroid/os/Bundle;

    aput-object v8, v2, v11

    .line 69
    .local v2, "classes":[Ljava/lang/Class;
    new-array v5, v12, [Ljava/lang/Object;

    aput-object p0, v5, v10

    aput-object v0, v5, v11

    .line 71
    .local v5, "params":[Ljava/lang/Object;
    invoke-static {v1, v2, v5}, Lcom/games37/riversdk/common/utils/ReflectUtil;->getObject(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 72
    .local v4, "obj":Ljava/lang/Object;
    check-cast v4, Lcom/games37/riversdk/core/view/IView;

    .end local v4    # "obj":Ljava/lang/Object;
    iput-object v4, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    .line 77
    .end local v2    # "classes":[Ljava/lang/Class;
    .end local v5    # "params":[Ljava/lang/Object;
    :goto_66
    return-void

    .line 74
    :cond_67
    const-string v8, "GooglePlayV3Activity"

    const-string v9, "the class path is empty!"

    invoke-static {v8, v9}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->finish()V

    goto :goto_66
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/games37/riversdk/core/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 123
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    if-eqz v0, :cond_c

    .line 124
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/games37/riversdk/core/view/IView;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 126
    :cond_c
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    if-eqz v0, :cond_9

    .line 139
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/view/IView;->onBackPressed()V

    .line 141
    :cond_9
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/games37/riversdk/core/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->requestWindowFeature(I)Z

    .line 47
    invoke-direct {p0}, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->init()V

    .line 48
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->setContentView(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/view/IView;->onCreate(Landroid/app/Activity;)V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onDestroy()V

    .line 131
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    if-eqz v0, :cond_c

    .line 132
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/view/IView;->onDestroy(Landroid/app/Activity;)V

    .line 134
    :cond_c
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onPause()V

    .line 91
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    if-eqz v0, :cond_c

    .line 92
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/view/IView;->onPause(Landroid/app/Activity;)V

    .line 94
    :cond_c
    return-void
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onRestart()V

    .line 115
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    if-eqz v0, :cond_c

    .line 116
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/view/IView;->onRestart(Landroid/app/Activity;)V

    .line 118
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    if-eqz v0, :cond_c

    .line 108
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/view/IView;->onResume(Landroid/app/Activity;)V

    .line 110
    :cond_c
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onStart()V

    .line 83
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    if-eqz v0, :cond_c

    .line 84
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/view/IView;->onStart(Landroid/app/Activity;)V

    .line 86
    :cond_c
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onStop()V

    .line 99
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    if-eqz v0, :cond_c

    .line 100
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;->iView:Lcom/games37/riversdk/core/view/IView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/view/IView;->onStop(Landroid/app/Activity;)V

    .line 102
    :cond_c
    return-void
.end method
