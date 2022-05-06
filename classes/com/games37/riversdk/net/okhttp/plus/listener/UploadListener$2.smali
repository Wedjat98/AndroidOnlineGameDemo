.class Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$2;
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

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;

    .prologue
    .line 43
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$2;, "Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$2;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$2;->this$0:Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;

    iput p2, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$2;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 46
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$2;, "Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$2;"
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$2;->this$0:Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;

    new-instance v1, Ljava/lang/Exception;

    iget v2, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$2;->val$code:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->onFailure(Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method
