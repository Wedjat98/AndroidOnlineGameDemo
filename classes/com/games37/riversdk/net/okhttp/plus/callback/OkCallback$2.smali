.class Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$2;
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

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;ILjava/lang/Object;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;

    .prologue
    .line 46
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$2;, "Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$2;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$2;->this$0:Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;

    iput p2, p0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$2;->val$code:I

    iput-object p3, p0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$2;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 49
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$2;, "Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$2;"
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$2;->this$0:Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;

    iget v1, p0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$2;->val$code:I

    iget-object v2, p0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$2;->val$t:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;->onSuccess(ILjava/lang/Object;)V

    .line 50
    return-void
.end method
