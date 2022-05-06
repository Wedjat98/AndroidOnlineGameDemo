.class public Lcom/games37/riversdk/gm99/webview/GM99WebviewActivityPresenter;
.super Ljava/lang/Object;
.source "GM99WebviewActivityPresenter.java"

# interfaces
.implements Lcom/games37/riversdk/core/presenter/IActivityPresenter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-static {p1, p2, p3, p4}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 58
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    return-void
.end method
