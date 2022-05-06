.class Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->download(Landroid/content/Context;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$FinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$1;->this$0:Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$1;->this$0:Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->updateTaskFlag()V

    .line 103
    return-void
.end method

.method public onSuccess()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$1;->this$0:Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->updateSuccessFlag()V

    .line 96
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager$1;->this$0:Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/download/DownloadManager;->updateTaskFlag()V

    .line 97
    return-void
.end method
