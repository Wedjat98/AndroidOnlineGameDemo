.class Lcom/qiniu/android/http/Client$3;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/qiniu/android/utils/StringMap$Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/Client;->asyncSend(Lcom/squareup/okhttp/Request$Builder;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/Client;

.field final synthetic val$requestBuilder:Lcom/squareup/okhttp/Request$Builder;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/Client;Lcom/squareup/okhttp/Request$Builder;)V
    .registers 3
    .param p1, "this$0"    # Lcom/qiniu/android/http/Client;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/qiniu/android/http/Client$3;->this$0:Lcom/qiniu/android/http/Client;

    iput-object p2, p0, Lcom/qiniu/android/http/Client$3;->val$requestBuilder:Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/qiniu/android/http/Client$3;->val$requestBuilder:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 131
    return-void
.end method
