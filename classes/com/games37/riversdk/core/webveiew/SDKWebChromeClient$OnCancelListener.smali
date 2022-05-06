.class public Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$OnCancelListener;
.super Ljava/lang/Object;
.source "SDKWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OnCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;


# direct methods
.method protected constructor <init>(Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$OnCancelListener;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$OnCancelListener;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->destroyUploadMsg()V

    .line 400
    return-void
.end method
