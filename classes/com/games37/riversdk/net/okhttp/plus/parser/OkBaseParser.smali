.class public abstract Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;
.super Ljava/lang/Object;
.source "OkBaseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected code:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;, "Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 23
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;, "Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser<TT;>;"
    iget v0, p0, Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;->code:I

    return v0
.end method

.method protected abstract parse(Lokhttp3/Response;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public parseResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .registers 3
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;, "Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser<TT;>;"
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;->code:I

    .line 19
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;->parse(Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
