.class Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$1;
.super Lcom/games37/riversdk/core/callback/ShowViewCallback;
.source "FloatViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->openWebview(Landroid/app/Activity;Landroid/os/Bundle;)V
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
    .line 226
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$1;->this$0:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    invoke-direct {p0}, Lcom/games37/riversdk/core/callback/ShowViewCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewDismiss()V
    .registers 2

    .prologue
    .line 236
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->show()V

    .line 237
    return-void
.end method

.method public onViewShow()V
    .registers 2

    .prologue
    .line 230
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->hide()V

    .line 231
    return-void
.end method
