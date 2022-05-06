.class Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$3;
.super Ljava/lang/Object;
.source "OkCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;

    .prologue
    .line 53
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$3;, "Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$3;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$3;->this$0:Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;

    iput p2, p0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$3;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 56
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$3;, "Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$3;"
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$3;->this$0:Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;

    new-instance v1, Ljava/lang/Exception;

    iget v2, p0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$3;->val$code:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method
