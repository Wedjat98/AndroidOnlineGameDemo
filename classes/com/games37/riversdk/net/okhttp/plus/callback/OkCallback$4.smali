.class Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$4;
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

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;

    .prologue
    .line 61
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$4;, "Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$4;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$4;->this$0:Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;

    iput-object p2, p0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$4;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 64
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$4;, "Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$4;"
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$4;->this$0:Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;

    iget-object v1, p0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$4;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method
