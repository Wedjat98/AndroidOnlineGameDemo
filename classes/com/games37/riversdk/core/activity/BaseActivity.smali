.class public Lcom/games37/riversdk/core/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 55
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 50
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 35
    return-void
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 45
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 30
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 25
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 40
    return-void
.end method
