.class Lcom/games37/riversdk/gm99/webview/GM99JSMethod$3;
.super Ljava/lang/Object;
.source "GM99JSMethod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->openChatInBrowser(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/webview/GM99JSMethod;

.field final synthetic val$gameId:Ljava/lang/String;

.field final synthetic val$serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/webview/GM99JSMethod;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/webview/GM99JSMethod;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$3;->this$0:Lcom/games37/riversdk/gm99/webview/GM99JSMethod;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$3;->val$gameId:Ljava/lang/String;

    iput-object p3, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$3;->val$serverId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$3;->this$0:Lcom/games37/riversdk/gm99/webview/GM99JSMethod;

    # getter for: Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->mPresenter:Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->access$000(Lcom/games37/riversdk/gm99/webview/GM99JSMethod;)Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$3;->this$0:Lcom/games37/riversdk/gm99/webview/GM99JSMethod;

    invoke-virtual {v1}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$3;->val$gameId:Ljava/lang/String;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$3;->val$serverId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;->openChatInBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
