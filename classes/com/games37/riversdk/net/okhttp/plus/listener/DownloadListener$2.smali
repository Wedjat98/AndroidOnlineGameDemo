.class Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener$2;
.super Ljava/lang/Object;
.source "DownloadListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;

.field final synthetic val$newFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;Ljava/io/File;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener$2;->this$0:Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;

    iput-object p2, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener$2;->val$newFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener$2;->this$0:Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;

    iget-object v1, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener$2;->val$newFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->onSuccess(Ljava/io/File;)V

    .line 50
    return-void
.end method
