.class final Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;
.super Ljava/net/SecureCacheResponse;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->createJavaCacheResponse(Lcom/squareup/okhttp/Response;)Ljava/net/CacheResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Lcom/squareup/okhttp/ResponseBody;

.field final synthetic val$handshake:Lcom/squareup/okhttp/Handshake;

.field final synthetic val$headers:Lcom/squareup/okhttp/Headers;

.field final synthetic val$response:Lcom/squareup/okhttp/Response;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/Handshake;Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/ResponseBody;)V
    .registers 5

    .prologue
    .line 185
    iput-object p1, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/squareup/okhttp/Handshake;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$headers:Lcom/squareup/okhttp/Headers;

    iput-object p3, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$response:Lcom/squareup/okhttp/Response;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$body:Lcom/squareup/okhttp/ResponseBody;

    invoke-direct {p0}, Ljava/net/SecureCacheResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$body:Lcom/squareup/okhttp/ResponseBody;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 228
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$body:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_5
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/squareup/okhttp/Handshake;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/squareup/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$headers:Lcom/squareup/okhttp/Headers;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$response:Lcom/squareup/okhttp/Response;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/StatusLine;->get(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCertificateChain()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/squareup/okhttp/Handshake;

    if-nez v2, :cond_6

    .line 196
    :goto_5
    return-object v1

    .line 195
    :cond_6
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/squareup/okhttp/Handshake;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v0

    .line 196
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_14

    .end local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_12
    move-object v1, v0

    goto :goto_5

    .restart local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_14
    move-object v0, v1

    goto :goto_12
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/squareup/okhttp/Handshake;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 216
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/squareup/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Handshake;->localPrincipal()Ljava/security/Principal;

    move-result-object v0

    goto :goto_5
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/squareup/okhttp/Handshake;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 210
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/squareup/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Handshake;->peerPrincipal()Ljava/security/Principal;

    move-result-object v0

    goto :goto_5
.end method

.method public getServerCertificateChain()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/squareup/okhttp/Handshake;

    if-nez v2, :cond_6

    .line 204
    :goto_5
    return-object v1

    .line 203
    :cond_6
    iget-object v2, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;->val$handshake:Lcom/squareup/okhttp/Handshake;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    .line 204
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_14

    .end local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_12
    move-object v1, v0

    goto :goto_5

    .restart local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_14
    move-object v0, v1

    goto :goto_12
.end method
