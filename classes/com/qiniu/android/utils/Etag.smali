.class public final Lcom/qiniu/android/utils/Etag;
.super Ljava/lang/Object;
.source "Etag.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static data([B)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # [B

    .prologue
    .line 44
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/qiniu/android/utils/Etag;->data([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static data([BII)Ljava/lang/String;
    .registers 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 29
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    int-to-long v2, p2

    invoke-static {v1, v2, v3}, Lcom/qiniu/android/utils/Etag;->stream(Ljava/io/InputStream;J)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 34
    :goto_a
    return-object v1

    .line 30
    :catch_b
    move-exception v0

    .line 31
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 34
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static file(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 56
    .local v0, "fi":Ljava/io/FileInputStream;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/qiniu/android/utils/Etag;->stream(Ljava/io/InputStream;J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static file(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Lcom/qiniu/android/utils/Etag;->file(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static oneBlock([BLjava/io/InputStream;I)[B
    .registers 9
    .param p0, "buffer"    # [B
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 103
    const/4 v3, 0x0

    .line 105
    .local v3, "sha1":Ljava/security/MessageDigest;
    :try_start_2
    const-string v4, "sha-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_7} :catch_16

    move-result-object v3

    .line 111
    array-length v0, p0

    .line 112
    .local v0, "buffSize":I
    :goto_9
    if-eqz p2, :cond_1e

    .line 113
    if-le v0, p2, :cond_1c

    move v2, p2

    .line 115
    .local v2, "next":I
    :goto_e
    invoke-virtual {p1, p0, v5, v2}, Ljava/io/InputStream;->read([BII)I

    .line 116
    invoke-virtual {v3, p0, v5, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 117
    sub-int/2addr p2, v2

    .line 118
    goto :goto_9

    .line 106
    .end local v0    # "buffSize":I
    .end local v2    # "next":I
    :catch_16
    move-exception v1

    .line 107
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 109
    const/4 v4, 0x0

    .line 120
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1b
    return-object v4

    .restart local v0    # "buffSize":I
    :cond_1c
    move v2, v0

    .line 113
    goto :goto_e

    .line 120
    :cond_1e
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    goto :goto_1b
.end method

.method private static resultEncode([[B)Ljava/lang/String;
    .registers 12
    .param p0, "sha1s"    # [[B

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 131
    const/16 v2, 0x16

    .line 132
    .local v2, "head":B
    aget-object v1, p0, v8

    .line 133
    .local v1, "finalHash":[B
    array-length v3, v1

    .line 134
    .local v3, "len":I
    add-int/lit8 v7, v3, 0x1

    new-array v4, v7, [B

    .line 135
    .local v4, "ret":[B
    array-length v7, p0

    if-eq v7, v10, :cond_2d

    .line 136
    const/16 v2, -0x6a

    .line 137
    const/4 v6, 0x0

    .line 139
    .local v6, "sha1":Ljava/security/MessageDigest;
    :try_start_11
    const-string v7, "sha-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_16} :catch_23

    move-result-object v6

    .line 145
    array-length v9, p0

    move v7, v8

    :goto_19
    if-ge v7, v9, :cond_29

    aget-object v5, p0, v7

    .line 146
    .local v5, "s":[B
    invoke-virtual {v6, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 145
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 140
    .end local v5    # "s":[B
    :catch_23
    move-exception v0

    .line 141
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 143
    const/4 v7, 0x0

    .line 152
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v6    # "sha1":Ljava/security/MessageDigest;
    :goto_28
    return-object v7

    .line 148
    .restart local v6    # "sha1":Ljava/security/MessageDigest;
    :cond_29
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 150
    .end local v6    # "sha1":Ljava/security/MessageDigest;
    :cond_2d
    aput-byte v2, v4, v8

    .line 151
    invoke-static {v1, v8, v4, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    invoke-static {v4}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString([B)Ljava/lang/String;

    move-result-object v7

    goto :goto_28
.end method

.method public static stream(Ljava/io/InputStream;J)Ljava/lang/String;
    .registers 16
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const-wide/16 v8, 0x0

    cmp-long v3, p1, v8

    if-nez v3, :cond_9

    .line 81
    const-string v3, "Fto5o-5ea0sNMlW_75VgGJCv2AcJ"

    .line 90
    :goto_8
    return-object v3

    .line 83
    :cond_9
    const/high16 v3, 0x10000

    new-array v1, v3, [B

    .line 84
    .local v1, "buffer":[B
    const-wide/32 v8, 0x400000

    add-long/2addr v8, p1

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    long-to-int v3, v8

    const/high16 v8, 0x400000

    div-int/2addr v3, v8

    new-array v0, v3, [[B

    .line 85
    .local v0, "blocks":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    array-length v3, v0

    if-ge v2, v3, :cond_3b

    .line 86
    const-wide/32 v8, 0x400000

    int-to-long v10, v2

    mul-long/2addr v8, v10

    sub-long v4, p1, v8

    .line 87
    .local v4, "left":J
    const-wide/32 v8, 0x400000

    cmp-long v3, v4, v8

    if-lez v3, :cond_39

    const-wide/32 v6, 0x400000

    .line 88
    .local v6, "read":J
    :goto_2f
    long-to-int v3, v6

    invoke-static {v1, p0, v3}, Lcom/qiniu/android/utils/Etag;->oneBlock([BLjava/io/InputStream;I)[B

    move-result-object v3

    aput-object v3, v0, v2

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .end local v6    # "read":J
    :cond_39
    move-wide v6, v4

    .line 87
    goto :goto_2f

    .line 90
    .end local v4    # "left":J
    :cond_3b
    invoke-static {v0}, Lcom/qiniu/android/utils/Etag;->resultEncode([[B)Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method
