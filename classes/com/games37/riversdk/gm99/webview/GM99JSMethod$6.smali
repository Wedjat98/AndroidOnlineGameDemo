.class Lcom/games37/riversdk/gm99/webview/GM99JSMethod$6;
.super Ljava/lang/Object;
.source "GM99JSMethod.java"

# interfaces
.implements Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->fbShare(Ljava/lang/String;)V
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
    .line 101
    iput-object p1, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$6;->this$0:Lcom/games37/riversdk/gm99/webview/GM99JSMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "jsMethodName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$6;->this$0:Lcom/games37/riversdk/gm99/webview/GM99JSMethod;

    invoke-virtual {v0, p1, p2}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->invokeJSMethod(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method
