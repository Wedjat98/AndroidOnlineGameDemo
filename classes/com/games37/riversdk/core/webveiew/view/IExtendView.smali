.class public abstract Lcom/games37/riversdk/core/webveiew/view/IExtendView;
.super Lcom/games37/riversdk/core/view/IView;
.source "IExtendView.java"


# instance fields
.field protected isNeverShow:Z

.field protected mSDKWebview:Lcom/games37/riversdk/core/webveiew/SDKWebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/SDKWebView;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "webView"    # Lcom/games37/riversdk/core/webveiew/SDKWebView;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/IView;-><init>(Landroid/app/Activity;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/games37/riversdk/core/webveiew/view/IExtendView;->isNeverShow:Z

    .line 21
    iput-object p2, p0, Lcom/games37/riversdk/core/webveiew/view/IExtendView;->mSDKWebview:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    .line 22
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method

.method public isNeverShow()Z
    .registers 2

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/games37/riversdk/core/webveiew/view/IExtendView;->isNeverShow:Z

    return v0
.end method

.method public setNeverShow(Z)V
    .registers 2
    .param p1, "neverShow"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/games37/riversdk/core/webveiew/view/IExtendView;->isNeverShow:Z

    .line 30
    return-void
.end method

.method public show()V
    .registers 1

    .prologue
    .line 34
    return-void
.end method
