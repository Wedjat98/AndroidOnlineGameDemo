.class public Lorg/apache/james/mime4j/storage/CipherStorageProvider;
.super Lorg/apache/james/mime4j/storage/AbstractStorageProvider;
.source "CipherStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;,
        Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;
    }
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final backend:Lorg/apache/james/mime4j/storage/StorageProvider;

.field private final keygen:Ljavax/crypto/KeyGenerator;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/StorageProvider;)V
    .registers 3
    .param p1, "backend"    # Lorg/apache/james/mime4j/storage/StorageProvider;

    .prologue
    .line 61
    const-string v0, "Blowfish"

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/storage/CipherStorageProvider;-><init>(Lorg/apache/james/mime4j/storage/StorageProvider;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/storage/StorageProvider;Ljava/lang/String;)V
    .registers 5
    .param p1, "backend"    # Lorg/apache/james/mime4j/storage/StorageProvider;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/AbstractStorageProvider;-><init>()V

    .line 75
    if-nez p1, :cond_b

    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 79
    :cond_b
    :try_start_b
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->backend:Lorg/apache/james/mime4j/storage/StorageProvider;

    .line 80
    iput-object p2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->algorithm:Ljava/lang/String;

    .line 81
    invoke-static {p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->keygen:Ljavax/crypto/KeyGenerator;
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_15} :catch_16

    .line 85
    return-void

    .line 82
    :catch_16
    move-exception v0

    .line 83
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getSecretKeySpec()Ljavax/crypto/spec/SecretKeySpec;
    .registers 4

    .prologue
    .line 95
    iget-object v1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->keygen:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 96
    .local v0, "raw":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->algorithm:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public createStorageOutputStream()Lorg/apache/james/mime4j/storage/StorageOutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->getSecretKeySpec()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    .line 90
    .local v0, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v1, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->backend:Lorg/apache/james/mime4j/storage/StorageProvider;

    invoke-interface {v2}, Lorg/apache/james/mime4j/storage/StorageProvider;->createStorageOutputStream()Lorg/apache/james/mime4j/storage/StorageOutputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->algorithm:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;-><init>(Lorg/apache/james/mime4j/storage/StorageOutputStream;Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    return-object v1
.end method
