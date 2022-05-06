.class public final Lmobi/androidcloud/lib/net/g;
.super Lmobi/androidcloud/lib/net/transport/h;
.source "SourceFile"


# instance fields
.field private ij:[B

.field private ik:[B

.field private il:[B

.field private im:[B

.field private io:[B


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lmobi/androidcloud/lib/log/a;I)V
    .registers 6

    .prologue
    const/4 v1, 0x3

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lmobi/androidcloud/lib/net/transport/h;-><init>(Ljava/net/Socket;Lmobi/androidcloud/lib/log/a;I)V

    .line 34
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lmobi/androidcloud/lib/net/g;->il:[B

    .line 38
    new-array v0, v1, [B

    fill-array-data v0, :array_2a

    iput-object v0, p0, Lmobi/androidcloud/lib/net/g;->im:[B

    .line 39
    new-array v0, v1, [B

    fill-array-data v0, :array_30

    iput-object v0, p0, Lmobi/androidcloud/lib/net/g;->io:[B

    .line 45
    return-void

    .line 34
    :array_1c
    .array-data 1
        0x52t
        0x53t
        0x41t
        0x2ft
        0x45t
        0x43t
        0x42t
        0x2ft
        0x50t
        0x4bt
        0x43t
        0x53t
        0x31t
        0x50t
        0x61t
        0x64t
        0x64t
        0x69t
        0x6et
        0x67t
    .end array-data

    .line 38
    :array_2a
    .array-data 1
        0x52t
        0x53t
        0x41t
    .end array-data

    .line 39
    :array_30
    .array-data 1
        0x52t
        0x43t
        0x34t
    .end array-data
.end method

.method private jc()[B
    .registers 5

    .prologue
    .line 69
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    new-instance v1, Lmobi/androidcloud/lib/net/h;

    invoke-direct {v1}, Lmobi/androidcloud/lib/net/h;-><init>()V

    iget-object v1, v1, Lmobi/androidcloud/lib/net/h;->ip:[B

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 70
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lmobi/androidcloud/lib/net/g;->im:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lmobi/androidcloud/lib/net/g;->il:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 75
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 77
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 78
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 81
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 84
    const/16 v3, 0xd4

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 85
    const/16 v3, 0x9a

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 86
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 87
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 90
    iget-object v3, p0, Lmobi/androidcloud/lib/net/g;->ij:[B

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 91
    iget-object v3, p0, Lmobi/androidcloud/lib/net/g;->ik:[B

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 94
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 95
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 97
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method private jd()V
    .registers 4

    .prologue
    .line 113
    new-instance v0, Lmobi/androidcloud/lib/secure/b;

    iget-object v1, p0, Lmobi/androidcloud/lib/net/g;->iJ:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lmobi/androidcloud/lib/net/g;->ik:[B

    invoke-direct {v0, v1, v2}, Lmobi/androidcloud/lib/secure/b;-><init>(Ljava/io/InputStream;[B)V

    iput-object v0, p0, Lmobi/androidcloud/lib/net/g;->in:Ljava/io/InputStream;

    .line 114
    new-instance v0, Lmobi/androidcloud/lib/secure/c;

    iget-object v1, p0, Lmobi/androidcloud/lib/net/g;->iJ:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lmobi/androidcloud/lib/net/g;->ij:[B

    invoke-direct {v0, v1, v2}, Lmobi/androidcloud/lib/secure/c;-><init>(Ljava/io/OutputStream;[B)V

    iput-object v0, p0, Lmobi/androidcloud/lib/net/g;->out:Ljava/io/OutputStream;

    .line 115
    return-void
.end method


# virtual methods
.method public jb()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lmobi/androidcloud/lib/net/g;->io:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 60
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 61
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lmobi/androidcloud/lib/net/g;->ij:[B

    .line 62
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lmobi/androidcloud/lib/net/g;->ik:[B

    .line 63
    return-void
.end method

.method public q(Z)Z
    .registers 5

    .prologue
    .line 121
    :try_start_0
    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/g;->jb()V

    .line 123
    invoke-direct {p0}, Lmobi/androidcloud/lib/net/g;->jc()[B

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Client Hello Length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lmobi/androidcloud/lib/net/g;->iJ:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 128
    iget-object v0, p0, Lmobi/androidcloud/lib/net/g;->iJ:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 130
    invoke-direct {p0}, Lmobi/androidcloud/lib/net/g;->jd()V

    .line 132
    invoke-super {p0}, Lmobi/androidcloud/lib/net/transport/h;->jx()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2c

    .line 134
    const/4 v0, 0x1

    return v0

    .line 138
    :catch_2c
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Secure Client Error while Hello"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
