.class public Lcom/games37/riversdk/common/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FileUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 165
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 170
    .end local v0    # "file":Ljava/io/File;
    :cond_14
    return-void
.end method

.method public static file2byte(Ljava/lang/String;)[B
    .registers 9
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v2, 0x0

    .line 112
    .local v2, "buffer":[B
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v4, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 114
    .local v5, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 117
    .local v0, "b":[B
    :goto_14
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, "n":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_25

    .line 118
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1f} :catch_20
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1f} :catch_30

    goto :goto_14

    .line 123
    .end local v0    # "b":[B
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "n":I
    :catch_20
    move-exception v3

    .line 124
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 128
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_24
    return-object v2

    .line 120
    .restart local v0    # "b":[B
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "n":I
    :cond_25
    :try_start_25
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 121
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 122
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2e} :catch_20
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2e} :catch_30

    move-result-object v2

    goto :goto_24

    .line 125
    .end local v0    # "b":[B
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "n":I
    :catch_30
    move-exception v3

    .line 126
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24
.end method

.method public static getCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/utils/FileUtil;->getExternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 213
    .local v0, "appCacheDir":Ljava/io/File;
    if-nez v0, :cond_a

    .line 214
    invoke-static {p0, p1}, Lcom/games37/riversdk/common/utils/FileUtil;->getInternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 217
    :cond_a
    if-nez v0, :cond_14

    .line 218
    const-string v1, "FileUtil"

    const-string v2, "getCacheDirectory fail ,the reason is mobile phone unknown exception !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_13
    :goto_13
    return-object v0

    .line 220
    :cond_14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_13

    .line 221
    const-string v1, "FileUtil"

    const-string v2, "getCacheDirectory fail ,the reason is make directory fail !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public static getExternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "appCacheDir":Ljava/io/File;
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 251
    :goto_17
    if-nez v0, :cond_43

    .line 252
    new-instance v0, Ljava/io/File;

    .end local v0    # "appCacheDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 255
    .restart local v0    # "appCacheDir":Ljava/io/File;
    :cond_43
    if-nez v0, :cond_52

    .line 256
    const-string v1, "FileUtil"

    const-string v2, "getExternalDirectory fail ,the reason is sdCard unknown exception !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_4c
    :goto_4c
    return-object v0

    .line 248
    :cond_4d
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_17

    .line 258
    :cond_52
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 259
    const-string v1, "FileUtil"

    const-string v2, "getExternalDiretory fail ,the reason is make directory fail !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 263
    :cond_66
    const-string v1, "FileUtil"

    const-string v2, "getExternalDirectory fail ,the reason is sdCard nonexistence or sdCard mount fail !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, "lastIndexStart":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 152
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 154
    :goto_13
    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static getInternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "appCacheDir":Ljava/io/File;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 283
    :goto_b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 284
    const-string v1, "FileUtil"

    const-string v2, "getInternalDirectory fail ,the reason is make directory fail !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1e
    return-object v0

    .line 280
    :cond_1f
    new-instance v0, Ljava/io/File;

    .end local v0    # "appCacheDir":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0    # "appCacheDir":Ljava/io/File;
    goto :goto_b
.end method

.method public static mkdir(Ljava/lang/String;)V
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 141
    :cond_e
    return-void
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .registers 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 82
    const/4 v4, 0x0

    .line 83
    .local v4, "res":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_9

    move-object v5, v4

    .line 99
    .end local v4    # "res":Ljava/lang/String;
    .local v5, "res":Ljava/lang/String;
    :goto_8
    return-object v5

    .line 87
    .end local v5    # "res":Ljava/lang/String;
    .restart local v4    # "res":Ljava/lang/String;
    :cond_9
    :try_start_9
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    .local v6, "sb":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 89
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 91
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v1, ""

    .line 92
    .local v1, "data":Ljava/lang/String;
    :goto_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 93
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2a} :catch_2b

    goto :goto_21

    .line 96
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_2b
    move-exception v2

    .line 97
    .local v2, "e":Ljava/io/IOException;
    const-string v4, ""

    .end local v2    # "e":Ljava/io/IOException;
    :goto_2e
    move-object v5, v4

    .line 99
    .end local v4    # "res":Ljava/lang/String;
    .restart local v5    # "res":Ljava/lang/String;
    goto :goto_8

    .line 95
    .end local v5    # "res":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "res":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_30
    :try_start_30
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_2b

    move-result-object v4

    goto :goto_2e
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, "content":Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .local v5, "sb":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 62
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 64
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v2, ""

    .line 65
    .local v2, "data":Ljava/lang/String;
    :goto_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 66
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_22} :catch_23

    goto :goto_19

    .line 69
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :catch_23
    move-exception v3

    .line 70
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    const-string v1, ""

    .line 73
    .end local v3    # "e":Ljava/io/IOException;
    :goto_29
    return-object v1

    .line 68
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_2a
    :try_start_2a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_23

    move-result-object v1

    goto :goto_29
.end method

.method public static save2File(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v4, "FileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---save2File---:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_18
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 41
    :cond_26
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 42
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 43
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 44
    .local v0, "buffer":[B
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 45
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_39} :catch_3a

    .line 49
    .end local v0    # "buffer":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_39
    return-void

    .line 46
    :catch_3a
    move-exception v1

    .line 47
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39
.end method

.method public static saveFileFromBytes([BLjava/lang/String;)Ljava/io/File;
    .registers 9
    .param p0, "b"    # [B
    .param p1, "outputFile"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v2, 0x0

    .line 181
    .local v2, "ret":Ljava/io/File;
    const/4 v4, 0x0

    .line 183
    .local v4, "stream":Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_23
    .catchall {:try_start_2 .. :try_end_7} :catchall_32

    .line 184
    .end local v2    # "ret":Ljava/io/File;
    .local v3, "ret":Ljava/io/File;
    :try_start_7
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 185
    .local v1, "fstream":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_45
    .catchall {:try_start_7 .. :try_end_11} :catchall_3e

    .line 186
    .end local v4    # "stream":Ljava/io/BufferedOutputStream;
    .local v5, "stream":Ljava/io/BufferedOutputStream;
    :try_start_11
    invoke-virtual {v5, p0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_48
    .catchall {:try_start_11 .. :try_end_14} :catchall_41

    .line 190
    if-eqz v5, :cond_4c

    .line 192
    :try_start_16
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1c

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "stream":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .line 198
    .end local v1    # "fstream":Ljava/io/FileOutputStream;
    .end local v3    # "ret":Ljava/io/File;
    .restart local v2    # "ret":Ljava/io/File;
    :cond_1b
    :goto_1b
    return-object v2

    .line 193
    .end local v2    # "ret":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v1    # "fstream":Ljava/io/FileOutputStream;
    .restart local v3    # "ret":Ljava/io/File;
    .restart local v5    # "stream":Ljava/io/BufferedOutputStream;
    :catch_1c
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "stream":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .line 195
    .end local v3    # "ret":Ljava/io/File;
    .restart local v2    # "ret":Ljava/io/File;
    goto :goto_1b

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fstream":Ljava/io/FileOutputStream;
    :catch_23
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    :goto_24
    :try_start_24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_32

    .line 190
    if-eqz v4, :cond_1b

    .line 192
    :try_start_29
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_1b

    .line 193
    :catch_2d
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_32
    move-exception v6

    :goto_33
    if-eqz v4, :cond_38

    .line 192
    :try_start_35
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    .line 195
    :cond_38
    :goto_38
    throw v6

    .line 193
    :catch_39
    move-exception v0

    .line 194
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ret":Ljava/io/File;
    .restart local v3    # "ret":Ljava/io/File;
    :catchall_3e
    move-exception v6

    move-object v2, v3

    .end local v3    # "ret":Ljava/io/File;
    .restart local v2    # "ret":Ljava/io/File;
    goto :goto_33

    .end local v2    # "ret":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v1    # "fstream":Ljava/io/FileOutputStream;
    .restart local v3    # "ret":Ljava/io/File;
    .restart local v5    # "stream":Ljava/io/BufferedOutputStream;
    :catchall_41
    move-exception v6

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "stream":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "ret":Ljava/io/File;
    .restart local v2    # "ret":Ljava/io/File;
    goto :goto_33

    .line 187
    .end local v1    # "fstream":Ljava/io/FileOutputStream;
    .end local v2    # "ret":Ljava/io/File;
    .restart local v3    # "ret":Ljava/io/File;
    :catch_45
    move-exception v0

    move-object v2, v3

    .end local v3    # "ret":Ljava/io/File;
    .restart local v2    # "ret":Ljava/io/File;
    goto :goto_24

    .end local v2    # "ret":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v1    # "fstream":Ljava/io/FileOutputStream;
    .restart local v3    # "ret":Ljava/io/File;
    .restart local v5    # "stream":Ljava/io/BufferedOutputStream;
    :catch_48
    move-exception v0

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "stream":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "ret":Ljava/io/File;
    .restart local v2    # "ret":Ljava/io/File;
    goto :goto_24

    .end local v2    # "ret":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "ret":Ljava/io/File;
    .restart local v5    # "stream":Ljava/io/BufferedOutputStream;
    :cond_4c
    move-object v4, v5

    .end local v5    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "stream":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "ret":Ljava/io/File;
    .restart local v2    # "ret":Ljava/io/File;
    goto :goto_1b
.end method
