.class Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener$3;
.super Ljava/lang/Object;
.source "DownloadListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;Ljava/io/IOException;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener$3;->this$0:Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;

    iput-object p2, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener$3;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener$3;->this$0:Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;

    iget-object v1, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener$3;->val$e:Ljava/io/IOException;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->onFailure(Ljava/lang/Exception;)V

    .line 60
    return-void
.end method
