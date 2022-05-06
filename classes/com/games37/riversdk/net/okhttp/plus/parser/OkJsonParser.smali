.class public Lcom/games37/riversdk/net/okhttp/plus/parser/OkJsonParser;
.super Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseJsonParser;
.source "OkJsonParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseJsonParser",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 20
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/parser/OkJsonParser;, "Lcom/games37/riversdk/net/okhttp/plus/parser/OkJsonParser<TT;>;"
    invoke-direct {p0}, Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseJsonParser;-><init>()V

    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1f

    .line 22
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_28

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 27
    .local v0, "gsonBuilder":Lcom/google/gson/GsonBuilder;
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    iput-object v1, p0, Lcom/games37/riversdk/net/okhttp/plus/parser/OkJsonParser;->mGson:Lcom/google/gson/Gson;

    .line 31
    .end local v0    # "gsonBuilder":Lcom/google/gson/GsonBuilder;
    :goto_1e
    return-void

    .line 29
    :cond_1f
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, p0, Lcom/games37/riversdk/net/okhttp/plus/parser/OkJsonParser;->mGson:Lcom/google/gson/Gson;

    goto :goto_1e

    .line 22
    nop

    :array_28
    .array-data 4
        0x10
        0x80
        0x8
    .end array-data
.end method


# virtual methods
.method public parse(Lokhttp3/Response;)Ljava/lang/Object;
    .registers 5
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
    .line 35
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/parser/OkJsonParser;, "Lcom/games37/riversdk/net/okhttp/plus/parser/OkJsonParser<TT;>;"
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "body":Ljava/lang/String;
    iget-object v1, p0, Lcom/games37/riversdk/net/okhttp/plus/parser/OkJsonParser;->mGson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/games37/riversdk/net/okhttp/plus/parser/OkJsonParser;->mType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
