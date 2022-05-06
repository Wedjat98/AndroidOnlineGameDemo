.class public abstract Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseJsonParser;
.super Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;
.source "OkBaseJsonParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public mType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseJsonParser;, "Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseJsonParser<TT;>;"
    invoke-direct {p0}, Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseJsonParser;->getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseJsonParser;->mType:Ljava/lang/reflect/Type;

    .line 20
    return-void
.end method

.method private static getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 26
    .local v1, "superclass":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_10

    .line 27
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Missing type parameter."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    move-object v0, v1

    .line 29
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 30
    .local v0, "parameter":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public abstract parse(Lokhttp3/Response;)Ljava/lang/Object;
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
