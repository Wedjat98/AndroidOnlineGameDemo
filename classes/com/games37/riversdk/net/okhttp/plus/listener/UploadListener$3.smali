.class Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$3;
.super Ljava/lang/Object;
.source "UploadListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;

    .prologue
    .line 51
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$3;, "Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$3;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$3;->this$0:Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;

    iput-object p2, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 54
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$3;, "Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$3;"
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$3;->this$0:Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;

    iget-object v1, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->onFailure(Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method
