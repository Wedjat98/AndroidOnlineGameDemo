.class public Lcom/games37/riversdk/common/encrypt/AESUtils;
.super Ljava/lang/Object;
.source "AESUtils.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "dasj#fdjriversdk"

.field private static final TOKEN_KEY:Ljava/lang/String; = "fqJfdzGDvfriversdkGty3VZ9taXxMVw"

.field private static sAesIv:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/games37/riversdk/common/encrypt/AESUtils;->sAesIv:[B

    return-void

    :array_a
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aesDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "decryptString"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "fqJfdzGDvfriversdkGty3VZ9taXxMVw"

    invoke-static {p0, v0}, Lcom/games37/riversdk/common/encrypt/AESUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aesDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "decryptString"    # Ljava/lang/String;
    .param p1, "decryptKey"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    const-string v6, "utf-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 78
    .local v0, "byteMi":[B
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v6, Lcom/games37/riversdk/common/encrypt/AESUtils;->sAesIv:[B

    invoke-direct {v5, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 79
    .local v5, "zeroIv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v4, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 80
    .local v4, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 81
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 82
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 83
    .local v2, "decryptedData":[B
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_32

    move-object p0, v6

    .line 86
    .end local v0    # "byteMi":[B
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "decryptedData":[B
    .end local v4    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v5    # "zeroIv":Ljavax/crypto/spec/IvParameterSpec;
    .end local p0    # "decryptString":Ljava/lang/String;
    :goto_31
    return-object p0

    .line 84
    .restart local p0    # "decryptString":Ljava/lang/String;
    :catch_32
    move-exception v3

    .line 85
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31
.end method

.method public static aesEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "encryptString"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, "fqJfdzGDvfriversdkGty3VZ9taXxMVw"

    invoke-static {p0, v0}, Lcom/games37/riversdk/common/encrypt/AESUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aesEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "encryptString"    # Ljava/lang/String;
    .param p1, "encryptKey"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v5, Lcom/games37/riversdk/common/encrypt/AESUtils;->sAesIv:[B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 57
    .local v4, "zeroIv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "utf-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v3, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 58
    .local v3, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 59
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 61
    .local v2, "encryptedData":[B
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v2, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_32

    move-object p0, v5

    .line 64
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "encryptedData":[B
    .end local v3    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v4    # "zeroIv":Ljavax/crypto/spec/IvParameterSpec;
    .end local p0    # "encryptString":Ljava/lang/String;
    :goto_31
    return-object p0

    .line 62
    .restart local p0    # "encryptString":Ljava/lang/String;
    :catch_32
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v5, 0x2

    :try_start_1
    invoke-static {p0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 122
    .local v4, "ivAndCipherText":[B
    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 123
    .local v3, "iv":[B
    const/16 v5, 0x10

    array-length v6, v4

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 125
    .local v1, "cipherText":[B
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 126
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "utf-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v5, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 127
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    const-string v7, "utf-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_3c

    move-object p0, v5

    .line 130
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "cipherText":[B
    .end local v3    # "iv":[B
    .end local v4    # "ivAndCipherText":[B
    .end local p0    # "encoded":Ljava/lang/String;
    :goto_3b
    return-object p0

    .line 128
    .restart local p0    # "encoded":Ljava/lang/String;
    :catch_3c
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "plain"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 99
    const/16 v5, 0x10

    :try_start_2
    new-array v3, v5, [B

    .line 100
    .local v3, "iv":[B
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 101
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 102
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "utf-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v5, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 103
    const-string v5, "utf-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 104
    .local v1, "cipherText":[B
    invoke-static {v3, v1}, Lcom/games37/riversdk/common/encrypt/AESUtils;->getCombinedArray([B[B)[B

    move-result-object v4

    .line 105
    .local v4, "ivAndCipherText":[B
    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_3c

    move-result-object p0

    .line 108
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "cipherText":[B
    .end local v3    # "iv":[B
    .end local v4    # "ivAndCipherText":[B
    .end local p0    # "plain":Ljava/lang/String;
    :goto_3b
    return-object p0

    .line 106
    .restart local p0    # "plain":Ljava/lang/String;
    :catch_3c
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method private static getCombinedArray([B[B)[B
    .registers 6
    .param p0, "one"    # [B
    .param p1, "two"    # [B

    .prologue
    .line 135
    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v0, v2, [B

    .line 136
    .local v0, "combined":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_19

    .line 137
    array-length v2, p0

    if-ge v1, v2, :cond_13

    aget-byte v2, p0, v1

    :goto_e
    aput-byte v2, v0, v1

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 137
    :cond_13
    array-length v2, p0

    sub-int v2, v1, v2

    aget-byte v2, p1, v2

    goto :goto_e

    .line 139
    :cond_19
    return-object v0
.end method
