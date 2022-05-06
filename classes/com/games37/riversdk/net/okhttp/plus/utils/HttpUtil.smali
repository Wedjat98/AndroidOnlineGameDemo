.class public Lcom/games37/riversdk/net/okhttp/plus/utils/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/net/okhttp/plus/utils/HttpUtil$MyTrustManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .registers 2
    .param p0, "x0"    # [Ljavax/net/ssl/TrustManager;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/games37/riversdk/net/okhttp/plus/utils/HttpUtil;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0
.end method

.method private static chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .registers 5
    .param p0, "trustManagers"    # [Ljavax/net/ssl/TrustManager;

    .prologue
    .line 168
    array-length v2, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_10

    aget-object v0, p0, v1

    .line 169
    .local v0, "trustManager":Ljavax/net/ssl/TrustManager;
    instance-of v3, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_d

    .line 170
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 173
    .end local v0    # "trustManager":Ljavax/net/ssl/TrustManager;
    :goto_c
    return-object v0

    .line 168
    .restart local v0    # "trustManager":Ljavax/net/ssl/TrustManager;
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 173
    .end local v0    # "trustManager":Ljavax/net/ssl/TrustManager;
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static getSslSocketFactory([Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 11
    .param p0, "certificates"    # [Ljava/io/InputStream;
    .param p1, "bksFile"    # Ljava/io/InputStream;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 82
    :try_start_0
    invoke-static {p0}, Lcom/games37/riversdk/net/okhttp/plus/utils/HttpUtil;->prepareTrustManager([Ljava/io/InputStream;)[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 83
    .local v3, "trustManagers":[Ljavax/net/ssl/TrustManager;
    invoke-static {p1, p2}, Lcom/games37/riversdk/net/okhttp/plus/utils/HttpUtil;->prepareKeyManager(Ljava/io/InputStream;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    .line 84
    .local v1, "keyManagers":[Ljavax/net/ssl/KeyManager;
    const-string v4, "SSL"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 86
    .local v2, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    new-instance v6, Lcom/games37/riversdk/net/okhttp/plus/utils/HttpUtil$MyTrustManager;

    .line 87
    invoke-static {v3}, Lcom/games37/riversdk/net/okhttp/plus/utils/HttpUtil;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/games37/riversdk/net/okhttp/plus/utils/HttpUtil$MyTrustManager;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    aput-object v6, v4, v5

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 86
    invoke-virtual {v2, v1, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 88
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_28} :catch_2a
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_28} :catch_31
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_28} :catch_38

    move-result-object v4

    return-object v4

    .line 89
    .end local v1    # "keyManagers":[Ljavax/net/ssl/KeyManager;
    .end local v2    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v3    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_2a
    move-exception v0

    .line 90
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 91
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_31
    move-exception v0

    .line 92
    .local v0, "e":Ljava/security/KeyManagementException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 93
    .end local v0    # "e":Ljava/security/KeyManagementException;
    :catch_38
    move-exception v0

    .line 94
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public static initSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 5

    .prologue
    .line 209
    const/4 v1, 0x0

    .line 211
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    :try_start_1
    const-string v3, "SSL"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 212
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x0

    .line 213
    invoke-static {}, Lcom/games37/riversdk/net/okhttp/plus/utils/HttpUtil;->initTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    aput-object v4, v2, v3

    .line 214
    .local v2, "xTrustArray":[Ljavax/net/ssl/X509TrustManager;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1f

    .line 219
    .end local v2    # "xTrustArray":[Ljavax/net/ssl/X509TrustManager;
    :goto_1a
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    return-object v3

    .line 216
    :catch_1f
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public static initTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 1

    .prologue
    .line 223
    new-instance v0, Lcom/games37/riversdk/net/okhttp/plus/utils/HttpUtil$1;

    invoke-direct {v0}, Lcom/games37/riversdk/net/okhttp/plus/utils/HttpUtil$1;-><init>()V

    .line 237
    .local v0, "mTrustManager":Ljavax/net/ssl/X509TrustManager;
    return-object v0
.end method

.method public static parseMap2URLParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 49
    const-string p0, ""

    .line 76
    .end local p0    # "url":Ljava/lang/String;
    :cond_8
    :goto_8
    return-object p0

    .line 52
    .restart local p0    # "url":Ljava/lang/String;
    :cond_9
    if-eqz p1, :cond_8

    .line 57
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 59
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 67
    :goto_2e
    :try_start_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_78

    const-string v3, ""

    .line 70
    .local v3, "value":Ljava/lang/String;
    :goto_42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_62} :catch_83

    move-result-object p0

    .line 71
    goto :goto_2e

    .line 64
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2e

    .line 69
    .restart local v1    # "key":Ljava/lang/String;
    :cond_78
    :try_start_78
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_81} :catch_83

    move-result-object v3

    goto :goto_42

    .line 72
    .end local v1    # "key":Ljava/lang/String;
    :catch_83
    move-exception v4

    .line 76
    :cond_84
    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_8
.end method

.method private static prepareKeyManager(Ljava/io/InputStream;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;
    .registers 7
    .param p0, "bksFile"    # Ljava/io/InputStream;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 141
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 164
    :cond_5
    :goto_5
    return-object v3

    .line 144
    :cond_6
    :try_start_6
    const-string v4, "BKS"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 145
    .local v0, "clientKeyStore":Ljava/security/KeyStore;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v0, p0, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 147
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 148
    .local v2, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 149
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_25
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_25} :catch_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_25} :catch_2c
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_6 .. :try_end_25} :catch_31
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_25} :catch_36
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_25} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_25} :catch_40

    move-result-object v3

    goto :goto_5

    .line 151
    .end local v0    # "clientKeyStore":Ljava/security/KeyStore;
    .end local v2    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :catch_27
    move-exception v1

    .line 152
    .local v1, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_5

    .line 153
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :catch_2c
    move-exception v1

    .line 154
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_5

    .line 155
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_31
    move-exception v1

    .line 156
    .local v1, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v1}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_5

    .line 157
    .end local v1    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_36
    move-exception v1

    .line 158
    .local v1, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_5

    .line 159
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_3b
    move-exception v1

    .line 160
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 161
    .end local v1    # "e":Ljava/io/IOException;
    :catch_40
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method private static varargs prepareTrustManager([Ljava/io/InputStream;)[Ljavax/net/ssl/TrustManager;
    .registers 13
    .param p0, "certificates"    # [Ljava/io/InputStream;

    .prologue
    const/4 v8, 0x0

    .line 99
    if-eqz p0, :cond_6

    array-length v9, p0

    if-gtz v9, :cond_7

    .line 135
    :cond_6
    :goto_6
    return-object v8

    .line 103
    :cond_7
    :try_start_7
    const-string v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 104
    .local v2, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 105
    .local v6, "keyStore":Ljava/security/KeyStore;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 106
    const/4 v4, 0x0

    .line 107
    .local v4, "index":I
    array-length v10, p0

    const/4 v9, 0x0

    move v5, v4

    .end local v4    # "index":I
    .local v5, "index":I
    :goto_1d
    if-ge v9, v10, :cond_37

    aget-object v0, p0, v9

    .line 108
    .local v0, "certificate":Ljava/io/InputStream;
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "certificateAlias":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    invoke-virtual {v6, v1, v11}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_2e} :catch_48
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_2e} :catch_4d
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_2e} :catch_52
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2e} :catch_57

    .line 111
    if-eqz v0, :cond_33

    .line 112
    :try_start_30
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_5c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_30 .. :try_end_33} :catch_48
    .catch Ljava/security/cert/CertificateException; {:try_start_30 .. :try_end_33} :catch_4d
    .catch Ljava/security/KeyStoreException; {:try_start_30 .. :try_end_33} :catch_52
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_57

    .line 107
    :cond_33
    :goto_33
    add-int/lit8 v9, v9, 0x1

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_1d

    .line 118
    .end local v0    # "certificate":Ljava/io/InputStream;
    .end local v1    # "certificateAlias":Ljava/lang/String;
    :cond_37
    const/4 v7, 0x0

    .line 120
    .local v7, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :try_start_38
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v7

    .line 121
    invoke-virtual {v7, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 123
    invoke-virtual {v7}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_46
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_38 .. :try_end_46} :catch_48
    .catch Ljava/security/cert/CertificateException; {:try_start_38 .. :try_end_46} :catch_4d
    .catch Ljava/security/KeyStoreException; {:try_start_38 .. :try_end_46} :catch_52
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_46} :catch_57

    move-result-object v8

    .line 125
    .local v8, "trustManagers":[Ljavax/net/ssl/TrustManager;
    goto :goto_6

    .line 126
    .end local v2    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v5    # "index":I
    .end local v6    # "keyStore":Ljava/security/KeyStore;
    .end local v7    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_48
    move-exception v3

    .line 127
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_6

    .line 128
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4d
    move-exception v3

    .line 129
    .local v3, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_6

    .line 130
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :catch_52
    move-exception v3

    .line 131
    .local v3, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v3}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_6

    .line 132
    .end local v3    # "e":Ljava/security/KeyStoreException;
    :catch_57
    move-exception v3

    .line 133
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 113
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "certificate":Ljava/io/InputStream;
    .restart local v1    # "certificateAlias":Ljava/lang/String;
    .restart local v2    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v4    # "index":I
    .restart local v6    # "keyStore":Ljava/security/KeyStore;
    :catch_5c
    move-exception v11

    goto :goto_33
.end method
