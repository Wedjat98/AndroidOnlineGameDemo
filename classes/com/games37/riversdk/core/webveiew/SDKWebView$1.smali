.class Lcom/games37/riversdk/core/webveiew/SDKWebView$1;
.super Ljava/lang/Object;
.source "SDKWebView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/webveiew/SDKWebView;->invokeJSMethod(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/webveiew/SDKWebView;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/webveiew/SDKWebView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/core/webveiew/SDKWebView;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView$1;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 256
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/webveiew/SDKWebView$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 259
    const-string v0, "SDKWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeJSMethod onReceiveValue value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method
