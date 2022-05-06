.class public Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter;
.super Ljava/lang/Object;
.source "IJSBusinessPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeWebView(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 26
    :cond_b
    return-void
.end method

.method public closeWebView(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "webview"    # Landroid/webkit/WebView;

    .prologue
    .line 34
    if-nez p2, :cond_6

    .line 35
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter;->closeWebView(Landroid/app/Activity;)V

    .line 43
    :goto_5
    return-void

    .line 38
    :cond_6
    invoke-virtual {p2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 39
    invoke-virtual {p2}, Landroid/webkit/WebView;->goBack()V

    goto :goto_5

    .line 41
    :cond_10
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter;->closeWebView(Landroid/app/Activity;)V

    goto :goto_5
.end method
