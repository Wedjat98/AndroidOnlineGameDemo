.class Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$2;
.super Lcom/games37/riversdk/core/callback/ShowViewCallback;
.source "FloatViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->openWebView(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$2;->this$0:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    invoke-direct {p0}, Lcom/games37/riversdk/core/callback/ShowViewCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewDismiss()V
    .registers 2

    .prologue
    .line 262
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->show()V

    .line 263
    return-void
.end method

.method public onViewShow()V
    .registers 2

    .prologue
    .line 256
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->hide()V

    .line 257
    return-void
.end method
