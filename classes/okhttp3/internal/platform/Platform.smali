.class public Lokhttp3/internal/platform/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field public static final INFO:I = 0x4

.field private static final PLATFORM:Lokhttp3/internal/platform/Platform;

.field public static final WARN:I = 0x5

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    invoke-static {}, Lokhttp3/internal/platform/Platform;->findPlatform()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    .line 76
    const-class v0, Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/platform/Platform;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alpnProtocolNames(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_e
    if-ge v0, v3, :cond_25

    .line 139
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Protocol;

    .line 140
    .local v2, "protocol":Lokhttp3/Protocol;
    sget-object v4, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-ne v2, v4, :cond_1d

    .line 138
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 141
    :cond_1d
    invoke-virtual {v2}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 143
    .end local v2    # "protocol":Lokhttp3/Protocol;
    :cond_25
    return-object v1
.end method

.method static concatLengthPrefixed(Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 180
    .local v2, "result":Lokio/Buffer;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_a
    if-ge v0, v3, :cond_2c

    .line 181
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Protocol;

    .line 182
    .local v1, "protocol":Lokhttp3/Protocol;
    sget-object v4, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-ne v1, v4, :cond_19

    .line 180
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 183
    :cond_19
    invoke-virtual {v1}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 184
    invoke-virtual {v1}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto :goto_16

    .line 186
    .end local v1    # "protocol":Lokhttp3/Protocol;
    :cond_2c
    invoke-virtual {v2}, Lokio/Buffer;->readByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method private static findPlatform()Lokhttp3/internal/platform/Platform;
    .registers 3

    .prologue
    .line 152
    invoke-static {}, Lokhttp3/internal/platform/AndroidPlatform;->buildIfSupported()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    .line 154
    .local v0, "android":Lokhttp3/internal/platform/Platform;
    if-eqz v0, :cond_7

    .line 171
    .end local v0    # "android":Lokhttp3/internal/platform/Platform;
    .local v1, "jdk9":Lokhttp3/internal/platform/Platform;
    .local v2, "jdkWithJettyBoot":Lokhttp3/internal/platform/Platform;
    :goto_6
    return-object v0

    .line 158
    .end local v1    # "jdk9":Lokhttp3/internal/platform/Platform;
    .end local v2    # "jdkWithJettyBoot":Lokhttp3/internal/platform/Platform;
    .restart local v0    # "android":Lokhttp3/internal/platform/Platform;
    :cond_7
    invoke-static {}, Lokhttp3/internal/platform/Jdk9Platform;->buildIfSupported()Lokhttp3/internal/platform/Jdk9Platform;

    move-result-object v1

    .line 160
    .restart local v1    # "jdk9":Lokhttp3/internal/platform/Platform;
    if-eqz v1, :cond_f

    move-object v0, v1

    .line 161
    goto :goto_6

    .line 164
    :cond_f
    invoke-static {}, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->buildIfSupported()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    .line 166
    .restart local v2    # "jdkWithJettyBoot":Lokhttp3/internal/platform/Platform;
    if-eqz v2, :cond_17

    move-object v0, v2

    .line 167
    goto :goto_6

    .line 171
    :cond_17
    new-instance v0, Lokhttp3/internal/platform/Platform;

    .end local v0    # "android":Lokhttp3/internal/platform/Platform;
    invoke-direct {v0}, Lokhttp3/internal/platform/Platform;-><init>()V

    goto :goto_6
.end method

.method public static get()Lokhttp3/internal/platform/Platform;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    return-object v0
.end method

.method static readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 11
    .param p0, "instance"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5
    const-class v6, Ljava/lang/Object;

    if-eq v0, v6, :cond_30

    .line 192
    :try_start_9
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 193
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 194
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 195
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_1d

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 209
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1d
    :goto_1d
    return-object v5

    .line 196
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1e
    invoke-virtual {p1, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_21} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_21} :catch_23

    move-result-object v5

    goto :goto_1d

    .line 198
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "value":Ljava/lang/Object;
    :catch_23
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 197
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2a
    move-exception v6

    .line 190
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_5

    .line 204
    :cond_30
    const-string v6, "delegate"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 205
    const-class v6, Ljava/lang/Object;

    const-string v7, "delegate"

    invoke-static {p0, v6, v7}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 206
    .local v1, "delegate":Ljava/lang/Object;
    if-eqz v1, :cond_1d

    invoke-static {v1, p1, p2}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1d
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .registers 2
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 115
    return-void
.end method

.method public buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;
    .registers 4
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 147
    new-instance v0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;

    invoke-static {p1}, Lokhttp3/internal/tls/TrustRootIndex;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/tls/BasicCertificateChainCleaner;-><init>(Lokhttp3/internal/tls/TrustRootIndex;)V

    return-object v0
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 125
    return-void
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    const-string v0, "OkHttp"

    return-object v0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 3
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 128
    const/4 v1, 0x5

    if-ne p1, v1, :cond_b

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 129
    .local v0, "logLevel":Ljava/util/logging/Level;
    :goto_5
    sget-object v1, Lokhttp3/internal/platform/Platform;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    return-void

    .line 128
    .end local v0    # "logLevel":Ljava/util/logging/Level;
    :cond_b
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_5
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .registers 8
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    const/4 v4, 0x0

    .line 92
    :try_start_1
    const-string v3, "sun.security.ssl.SSLContextImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 93
    .local v2, "sslContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "context"

    invoke-static {p1, v2, v3}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, "context":Ljava/lang/Object;
    if-nez v0, :cond_11

    move-object v3, v4

    .line 97
    .end local v0    # "context":Ljava/lang/Object;
    .end local v2    # "sslContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_10
    return-object v3

    .line 95
    .restart local v0    # "context":Ljava/lang/Object;
    .restart local v2    # "sslContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_11
    const-class v3, Ljavax/net/ssl/X509TrustManager;

    const-string v5, "trustManager"

    invoke-static {v0, v3, v5}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/X509TrustManager;
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1b} :catch_1c

    goto :goto_10

    .line 96
    .end local v0    # "context":Ljava/lang/Object;
    .end local v2    # "sslContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1c
    move-exception v1

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v3, v4

    .line 97
    goto :goto_10
.end method
