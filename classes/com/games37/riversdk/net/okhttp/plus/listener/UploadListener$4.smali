.class Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$4;
.super Ljava/lang/Object;
.source "UploadListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;Ljava/io/IOException;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;

    .prologue
    .line 63
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$4;, "Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$4;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$4;->this$0:Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;

    iput-object p2, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$4;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 66
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$4;, "Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$4;"
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$4;->this$0:Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;

    iget-object v1, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$4;->val$e:Ljava/io/IOException;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->onFailure(Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method
