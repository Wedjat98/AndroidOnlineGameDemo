.class public Lcom/games37/riversdk/net/okhttp/plus/parser/OkTextParser;
.super Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;
.source "OkTextParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lokhttp3/Response;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/net/okhttp/plus/parser/OkTextParser;->parse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lokhttp3/Response;)Ljava/lang/String;
    .registers 3
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 16
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
