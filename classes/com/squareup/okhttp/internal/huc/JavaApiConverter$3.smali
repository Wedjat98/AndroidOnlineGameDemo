.class final Lcom/squareup/okhttp/internal/huc/JavaApiConverter$3;
.super Lcom/squareup/okhttp/ResponseBody;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->createOkBody(Lcom/squareup/okhttp/Headers;Ljava/io/InputStream;)Lcom/squareup/okhttp/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$okHeaders:Lcom/squareup/okhttp/Headers;

.field final synthetic val$source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/Headers;Lokio/BufferedSource;)V
    .registers 3

    .prologue
    .line 344
    iput-object p1, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$3;->val$okHeaders:Lcom/squareup/okhttp/Headers;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$3;->val$source:Lokio/BufferedSource;

    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$3;->val$okHeaders:Lcom/squareup/okhttp/Headers;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->contentLength(Lcom/squareup/okhttp/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .registers 4

    .prologue
    .line 346
    iget-object v1, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$3;->val$okHeaders:Lcom/squareup/okhttp/Headers;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "contentTypeHeader":Ljava/lang/String;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v1

    goto :goto_b
.end method

.method public source()Lokio/BufferedSource;
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$3;->val$source:Lokio/BufferedSource;

    return-object v0
.end method
