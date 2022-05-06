.class Lcom/appsflyer/AFKeystoreWrapper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ˊ:I

.field private ˋ:Ljava/security/KeyStore;

.field private final ˎ:Ljava/lang/Object;

.field private ˏ:Landroid/content/Context;

.field private ॱ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˎ:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˏ:Landroid/content/Context;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->ॱ:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˊ:I

    .line 3054
    const-string v0, "Initialising KeyStore.."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 3056
    :try_start_18
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˋ:Ljava/security/KeyStore;

    .line 3057
    iget-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˋ:Ljava/security/KeyStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_26} :catch_32
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_18 .. :try_end_26} :catch_2e
    .catch Ljava/security/cert/CertificateException; {:try_start_18 .. :try_end_26} :catch_30
    .catch Ljava/security/KeyStoreException; {:try_start_18 .. :try_end_26} :catch_27

    .line 3060
    :goto_26
    return-void

    .line 3058
    :catch_27
    move-exception v0

    .line 3059
    :goto_28
    const-string v1, "Couldn\'t load keystore instance of type: AndroidKeyStore"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26

    .line 3058
    :catch_2e
    move-exception v0

    goto :goto_28

    :catch_30
    move-exception v0

    goto :goto_28

    :catch_32
    move-exception v0

    goto :goto_28
.end method

.method private ˊ(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 121
    const-string v0, "Creating a new key with alias: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 123
    :try_start_e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 125
    const/4 v0, 0x1

    const/4 v4, 0x5

    invoke-virtual {v3, v0, v4}, Ljava/util/Calendar;->add(II)V

    .line 126
    const/4 v0, 0x0

    .line 127
    iget-object v4, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˎ:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1f} :catch_be

    .line 128
    :try_start_1f
    iget-object v5, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˋ:Ljava/security/KeyStore;

    invoke-virtual {v5, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ad

    .line 129
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_68

    .line 130
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    const-string v5, "CN=AndroidSDK, O=AppsFlyer"

    invoke-direct {v1, v5}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 132
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    .line 147
    :cond_58
    :goto_58
    const-string v1, "RSA"

    const-string v2, "AndroidKeyStore"

    invoke-static {v1, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 148
    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 149
    invoke-virtual {v1}, Ljava/security/KeyPairGeneratorSpi;->generateKeyPair()Ljava/security/KeyPair;

    .line 153
    :goto_66
    monitor-exit v4

    .line 157
    :goto_67
    return-void

    .line 136
    :cond_68
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_58

    .line 5046
    const-string v5, "OPPO"

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 137
    :goto_78
    if-nez v1, :cond_58

    .line 139
    new-instance v0, Landroid/security/KeyPairGeneratorSpec$Builder;

    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˏ:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v0, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    const-string v5, "CN=AndroidSDK, O=AppsFlyer"

    invoke-direct {v1, v5}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 142
    invoke-virtual {v0, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v0

    goto :goto_58

    .line 5049
    :cond_ab
    const/4 v1, 0x0

    goto :goto_78

    .line 151
    :cond_ad
    const-string v0, "Alias already exists: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_1f .. :try_end_ba} :catchall_bb

    goto :goto_66

    .line 153
    :catchall_bb
    move-exception v0

    :try_start_bc
    monitor-exit v4

    throw v0
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_be} :catch_be

    .line 154
    :catch_be
    move-exception v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occurred"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_67
.end method

.method private ˎ()Ljava/lang/String;
    .registers 5

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    const-string v1, "com.appsflyer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˎ:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_d
    const-string v2, "KSAppsFlyerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/AFKeystoreWrapper;->ॱ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v2, "KSAppsFlyerRICounter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˊ:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_2f

    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final ˊ()Z
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    .line 90
    const/4 v2, 0x0

    .line 91
    iget-object v3, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˎ:Ljava/lang/Object;

    monitor-enter v3

    .line 92
    :try_start_6
    iget-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˋ:Ljava/security/KeyStore;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_94

    if-eqz v0, :cond_99

    .line 94
    :try_start_a
    iget-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˋ:Ljava/security/KeyStore;

    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v4

    .line 95
    :cond_10
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 96
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    if-eqz v0, :cond_10

    .line 3172
    const-string v5, "com.appsflyer"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 97
    if-eqz v5, :cond_10

    .line 98
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 99
    array-length v5, v4

    const/4 v6, 0x3

    if-ne v5, v6, :cond_75

    .line 100
    const-string v5, "Found a matching AF key with alias:\n"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_3d} :catch_77
    .catchall {:try_start_a .. :try_end_3d} :catchall_94

    .line 102
    const/4 v0, 0x1

    :try_start_3e
    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    const/4 v2, 0x2

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 104
    array-length v4, v0

    if-ne v4, v7, :cond_73

    array-length v4, v2

    if-ne v4, v7, :cond_73

    .line 105
    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->ॱ:Ljava/lang/String;

    .line 106
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˊ:I
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_73} :catch_97
    .catchall {:try_start_3e .. :try_end_73} :catchall_94

    .line 116
    :cond_73
    :goto_73
    :try_start_73
    monitor-exit v3

    .line 117
    return v1

    :cond_75
    move v1, v2

    .line 114
    goto :goto_73

    .line 112
    :catch_77
    move-exception v0

    move v1, v2

    .line 113
    :goto_79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t list KeyStore Aliases: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_93
    .catchall {:try_start_73 .. :try_end_93} :catchall_94

    goto :goto_73

    .line 116
    :catchall_94
    move-exception v0

    monitor-exit v3

    throw v0

    .line 112
    :catch_97
    move-exception v0

    goto :goto_79

    :cond_99
    move v1, v2

    goto :goto_73
.end method

.method final ˋ()V
    .registers 5

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/appsflyer/AFKeystoreWrapper;->ˎ()Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˎ:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_7
    iget v2, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˊ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˊ:I

    .line 3160
    const-string v2, "Deleting key with alias: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_4d

    .line 3162
    :try_start_1a
    iget-object v2, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˎ:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1d
    .catch Ljava/security/KeyStoreException; {:try_start_1a .. :try_end_1d} :catch_2f
    .catchall {:try_start_1a .. :try_end_1d} :catchall_4d

    .line 3163
    :try_start_1d
    iget-object v3, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˋ:Ljava/security/KeyStore;

    invoke-virtual {v3, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 3164
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_2c

    .line 81
    :goto_23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_4d

    .line 82
    invoke-direct {p0}, Lcom/appsflyer/AFKeystoreWrapper;->ˎ()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appsflyer/AFKeystoreWrapper;->ˊ(Ljava/lang/String;)V

    .line 83
    return-void

    .line 3164
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v2

    throw v0
    :try_end_2f
    .catch Ljava/security/KeyStoreException; {:try_start_2d .. :try_end_2f} :catch_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_4d

    .line 3165
    :catch_2f
    move-exception v0

    .line 3166
    :try_start_30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " occurred"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_4d

    goto :goto_23

    .line 81
    :catchall_4d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final ˏ()Ljava/lang/String;
    .registers 3

    .prologue
    .line 186
    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˎ:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_3
    iget-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->ॱ:Ljava/lang/String;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-object v0

    .line 188
    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final ˏ(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 68
    iput-object p1, p0, Lcom/appsflyer/AFKeystoreWrapper;->ॱ:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˊ:I

    .line 70
    invoke-direct {p0}, Lcom/appsflyer/AFKeystoreWrapper;->ˎ()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appsflyer/AFKeystoreWrapper;->ˊ(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method final ॱ()I
    .registers 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˎ:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_3
    iget v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->ˊ:I

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return v0

    .line 194
    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method
