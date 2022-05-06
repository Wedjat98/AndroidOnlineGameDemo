.class public Lcom/iflytek/cloud/thirdparty/P;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-object v6

    :cond_8
    :try_start_8
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_3d
    .catchall {:try_start_8 .. :try_end_d} :catchall_49

    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_35} :catch_65
    .catchall {:try_start_d .. :try_end_35} :catchall_60

    move-result-object v0

    if-eqz v7, :cond_3b

    :try_start_38
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_5b

    :cond_3b
    :goto_3b
    move-object v6, v0

    goto :goto_7

    :catch_3d
    move-exception v0

    move-object v1, v6

    :goto_3f
    :try_start_3f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_62

    if-eqz v1, :cond_47

    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_56

    :cond_47
    :goto_47
    move-object v0, v6

    goto :goto_3b

    :catchall_49
    move-exception v0

    move-object v7, v6

    :goto_4b
    if-eqz v7, :cond_50

    :try_start_4d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    :cond_50
    :goto_50
    throw v0

    :catch_51
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    :catch_56
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    :catch_5b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    :catchall_60
    move-exception v0

    goto :goto_4b

    :catchall_62
    move-exception v0

    move-object v7, v1

    goto :goto_4b

    :catch_65
    move-exception v0

    move-object v1, v7

    goto :goto_3f
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const-class v2, Lcom/iflytek/cloud/thirdparty/P;

    monitor-enter v2

    :try_start_4
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v1, v4

    new-array v5, v1, [B

    move v1, v0

    :goto_12
    array-length v6, v4

    if-ge v1, v6, :cond_1d

    aget-char v6, v4, v1

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1d
    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_26
    array-length v4, v1

    if-ge v0, v4, :cond_40

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    if-ge v4, v5, :cond_36

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_36
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_40
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_43} :catch_46
    .catchall {:try_start_4 .. :try_end_43} :catchall_4d

    move-result-object v0

    :goto_44
    monitor-exit v2

    return-object v0

    :catch_46
    move-exception v0

    :try_start_47
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const-string v0, ""
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4d

    goto :goto_44

    :catchall_4d
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a([B)[B
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    return-object p0

    :cond_4
    const/4 v0, 0x0

    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_3

    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static b([B)[B
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_9
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_2f
    .catchall {:try_start_9 .. :try_end_e} :catchall_44

    :try_start_e
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v1, v4, :cond_1d

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    :cond_1d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    :goto_22
    array-length v4, v0

    if-ge v1, v4, :cond_57

    aget-byte v4, v0, v1

    xor-int/lit8 v4, v4, 0x5

    int-to-byte v4, v4

    aput-byte v4, v0, v1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2c} :catch_68
    .catchall {:try_start_e .. :try_end_2c} :catchall_66

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :catch_2f
    move-exception v1

    move-object v2, v0

    :goto_31
    :try_start_31
    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_66

    if-eqz v2, :cond_39

    :try_start_36
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_39
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3e} :catch_3f

    goto :goto_3

    :catch_3f
    move-exception v1

    :goto_40
    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_44
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_47
    if-eqz v2, :cond_4c

    :try_start_49
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_4c
    if-eqz v3, :cond_51

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_51} :catch_52

    :cond_51
    :goto_51
    throw v0

    :catch_52
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_51

    :cond_57
    if-eqz v2, :cond_5c

    :try_start_59
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_64

    :cond_5c
    if-eqz v3, :cond_3

    :try_start_5e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_3

    :catch_62
    move-exception v1

    goto :goto_40

    :catch_64
    move-exception v1

    goto :goto_40

    :catchall_66
    move-exception v0

    goto :goto_47

    :catch_68
    move-exception v1

    goto :goto_31
.end method

.method public static c([B)[B
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_6

    move-object v0, v1

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_13

    aget-byte v2, p0, v0

    xor-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_13
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_1d
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_86
    .catchall {:try_start_1d .. :try_end_22} :catchall_69

    const/16 v0, 0x400

    :try_start_24
    new-array v0, v0, [B

    :goto_26
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v2, v0, v5, v6}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_50

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_33} :catch_34
    .catchall {:try_start_24 .. :try_end_33} :catchall_84

    goto :goto_26

    :catch_34
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_38
    :try_start_38
    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_84

    if-eqz v2, :cond_40

    :try_start_3d
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_40
    if-eqz v3, :cond_45

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_45
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4a} :catch_4b

    goto :goto_5

    :catch_4b
    move-exception v1

    :goto_4c
    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_50
    :try_start_50
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_34
    .catchall {:try_start_50 .. :try_end_53} :catchall_84

    move-result-object v0

    :try_start_54
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_8c
    .catchall {:try_start_54 .. :try_end_57} :catchall_84

    if-eqz v2, :cond_5c

    :try_start_59
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_80

    :cond_5c
    if-eqz v3, :cond_61

    :try_start_5e
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_82

    :cond_61
    if-eqz v4, :cond_5

    :try_start_63
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_5

    :catch_67
    move-exception v1

    goto :goto_4c

    :catchall_69
    move-exception v0

    move-object v2, v1

    :goto_6b
    if-eqz v2, :cond_70

    :try_start_6d
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_70
    if-eqz v3, :cond_75

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_75
    if-eqz v4, :cond_7a

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_7a} :catch_7b

    :cond_7a
    :goto_7a
    throw v0

    :catch_7b
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_7a

    :catch_80
    move-exception v1

    goto :goto_4c

    :catch_82
    move-exception v1

    goto :goto_4c

    :catchall_84
    move-exception v0

    goto :goto_6b

    :catch_86
    move-exception v0

    move-object v2, v1

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_38

    :catch_8c
    move-exception v1

    goto :goto_38
.end method
