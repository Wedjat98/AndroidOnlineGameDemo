.class Lcom/games37/riversdk/gm99/webview/GM99JSMethod$1;
.super Ljava/lang/Object;
.source "GM99JSMethod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->closeWebview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/webview/GM99JSMethod;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/webview/GM99JSMethod;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/webview/GM99JSMethod;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$1;->this$0:Lcom/games37/riversdk/gm99/webview/GM99JSMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$1;->this$0:Lcom/games37/riversdk/gm99/webview/GM99JSMethod;

    # getter for: Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->mPresenter:Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->access$000(Lcom/games37/riversdk/gm99/webview/GM99JSMethod;)Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$1;->this$0:Lcom/games37/riversdk/gm99/webview/GM99JSMethod;

    invoke-virtual {v1}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;->closeWebView(Landroid/app/Activity;)V

    .line 40
    return-void
.end method
