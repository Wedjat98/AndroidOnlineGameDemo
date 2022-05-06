.class public Lcom/ledo/fantasy/game/NativeCrashManager;
.super Ljava/lang/Object;
.source "NativeCrashManager.java"


# static fields
.field public static final _fileName_luaErrLordTestLog:Ljava/lang/String; = "lordtest.log"

.field public static final _suffix_uploadLuaErrLordTestLog:Ljava/lang/String; = "_luaerr_lordtest.log"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetIPAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 255
    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_28

    .line 256
    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 257
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_28

    .line 258
    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 263
    :cond_28
    :try_start_28
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 264
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;
    :try_end_2f
    .catch Ljava/net/UnknownHostException; {:try_start_28 .. :try_end_2f} :catch_31

    move-result-object v2

    .line 269
    .end local v0    # "address":Ljava/net/InetAddress;
    :goto_30
    return-object v2

    .line 265
    :catch_31
    move-exception v1

    .line 267
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 269
    const-string v2, ""

    goto :goto_30
.end method

.method public static LogUpdateIPAddress(Ljava/lang/String;)V
    .registers 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 237
    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_28

    .line 238
    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 239
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_28

    .line 240
    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 245
    :cond_28
    :try_start_28
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 246
    .local v0, "address":Ljava/net/InetAddress;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ip address = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/net/UnknownHostException; {:try_start_28 .. :try_end_42} :catch_43

    .line 252
    .end local v0    # "address":Ljava/net/InetAddress;
    :goto_42
    return-void

    .line 247
    :catch_43
    move-exception v1

    .line 249
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_42
.end method

.method public static SDXLLog(Ljava/lang/String;)V
    .registers 5
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 227
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ledo/fantasy/game/NativeCrashManager;->getUpdateLogName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 229
    .local v1, "write":Ljava/io/BufferedWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 231
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_47

    .line 234
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "write":Ljava/io/BufferedWriter;
    :goto_46
    return-void

    .line 232
    :catch_47
    move-exception v2

    goto :goto_46
.end method

.method public static checkLuaErrorAndUploadLordTestLogIfNeed()V
    .registers 1

    .prologue
    .line 142
    invoke-static {}, Lcom/ledo/fantasy/game/NativeCrashManager;->isLordTestLogSizeSmallEnoughToUploadForLuaErr()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 143
    invoke-static {}, Lcom/ledo/fantasy/game/NativeCrashManager;->copyLordTestLogToLuaErrUploadFileName()V

    .line 148
    new-instance v0, Lcom/ledo/fantasy/game/NativeCrashManager$1;

    invoke-direct {v0}, Lcom/ledo/fantasy/game/NativeCrashManager$1;-><init>()V

    .line 173
    invoke-virtual {v0}, Lcom/ledo/fantasy/game/NativeCrashManager$1;->start()V

    .line 175
    :cond_11
    return-void
.end method

.method private static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "destdir"    # Ljava/lang/String;

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, "byteread":I
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v6, "srcfile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 291
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v2, "destfile":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 293
    .local v4, "in":Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 294
    .local v5, "out":Ljava/io/OutputStream;
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 295
    .local v0, "buffer":[B
    :goto_3a
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_4b

    .line 298
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 299
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 300
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 309
    .end local v0    # "buffer":[B
    .end local v2    # "destfile":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "srcfile":Ljava/io/File;
    :cond_4a
    :goto_4a
    return-void

    .line 296
    .restart local v0    # "buffer":[B
    .restart local v2    # "destfile":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "srcfile":Ljava/io/File;
    :cond_4b
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_4f} :catch_50
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4f} :catch_55

    goto :goto_3a

    .line 302
    .end local v0    # "buffer":[B
    .end local v2    # "destfile":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "srcfile":Ljava/io/File;
    :catch_50
    move-exception v3

    .line 304
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4a

    .line 305
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_55
    move-exception v3

    .line 307
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a
.end method

.method public static copyLordTestLogToLuaErrUploadFileName()V
    .registers 5

    .prologue
    .line 69
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lordtest.log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, "logFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ledo/fantasy/game/GameApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_luaerr_lordtest.log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "dstFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 72
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5a

    .line 78
    .end local v0    # "dstFile":Ljava/io/File;
    :cond_59
    :goto_59
    return-void

    .line 74
    :catch_5a
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_59
.end method

.method public static createUpdateLogFile()V
    .registers 6

    .prologue
    .line 210
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/ledo/fantasy/game/NativeCrashManager;->getUpdateLogName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v2, "updatelog":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 212
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, "to":Ljava/io/File;
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 218
    .end local v1    # "to":Ljava/io/File;
    :cond_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    .line 223
    :goto_51
    return-void

    .line 219
    :catch_52
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51
.end method

.method public static getCacheDir()Ljava/lang/String;
    .registers 1

    .prologue
    .line 312
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 313
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 316
    :goto_16
    return-object v0

    :cond_17
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method private static getUpdateLogName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ledo/fantasy/game/GameApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_update.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handleUpdateFiles()V
    .registers 2

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/update.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ledo/fantasy/game/NativeCrashManager;->uploadUpdateErrorLog(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public static isHaveLuaErrorWithUploadLordTestLog()Z
    .registers 14

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "bExistErr":Z
    const/4 v6, 0x0

    .line 83
    .local v6, "fis":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 84
    .local v8, "inputreader":Ljava/io/InputStreamReader;
    const/4 v2, 0x0

    .line 86
    .local v2, "buffreader":Ljava/io/BufferedReader;
    :try_start_4
    new-instance v10, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ledo/fantasy/game/GameApp;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_luaerr_lordtest.log"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v10, "srcfile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_63

    .line 88
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_3d} :catch_80
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3d} :catch_a3
    .catchall {:try_start_4 .. :try_end_3d} :catchall_c6

    .line 89
    .end local v6    # "fis":Ljava/io/InputStream;
    .local v7, "fis":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 90
    .local v1, "bSmallSize":Z
    if-eqz v7, :cond_4b

    .line 91
    :try_start_40
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v12

    div-int/lit16 v5, v12, 0x400

    .line 92
    .local v5, "fileSize":I
    const/16 v12, 0x400

    if-ge v5, v12, :cond_4b

    .line 93
    const/4 v1, 0x1

    .line 96
    .end local v5    # "fileSize":I
    :cond_4b
    if-eqz v7, :cond_11f

    if-eqz v1, :cond_11f

    .line 97
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_54} :catch_110
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_54} :catch_104
    .catchall {:try_start_40 .. :try_end_54} :catchall_f8

    .line 98
    .end local v8    # "inputreader":Ljava/io/InputStreamReader;
    .local v9, "inputreader":Ljava/io/InputStreamReader;
    :try_start_54
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_59} :catch_114
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_59} :catch_107
    .catchall {:try_start_54 .. :try_end_59} :catchall_fb

    .line 99
    .end local v2    # "buffreader":Ljava/io/BufferedReader;
    .local v3, "buffreader":Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 100
    .local v11, "strLine":Ljava/lang/String;
    :cond_5a
    :try_start_5a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_5d} :catch_119
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_10b
    .catchall {:try_start_5a .. :try_end_5d} :catchall_ff

    move-result-object v11

    if-nez v11, :cond_73

    move-object v2, v3

    .end local v3    # "buffreader":Ljava/io/BufferedReader;
    .restart local v2    # "buffreader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputreader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .line 115
    .end local v1    # "bSmallSize":Z
    .end local v7    # "fis":Ljava/io/InputStream;
    .end local v11    # "strLine":Ljava/lang/String;
    .restart local v6    # "fis":Ljava/io/InputStream;
    :cond_63
    :goto_63
    if-eqz v6, :cond_68

    .line 117
    :try_start_65
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_e6

    .line 122
    :cond_68
    :goto_68
    if-eqz v8, :cond_6d

    .line 124
    :try_start_6a
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_ec

    .line 129
    :cond_6d
    :goto_6d
    if-eqz v2, :cond_72

    .line 131
    :try_start_6f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_f2

    .line 138
    .end local v10    # "srcfile":Ljava/io/File;
    :cond_72
    :goto_72
    return v0

    .line 101
    .end local v2    # "buffreader":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/InputStream;
    .end local v8    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v1    # "bSmallSize":Z
    .restart local v3    # "buffreader":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/InputStream;
    .restart local v9    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v10    # "srcfile":Ljava/io/File;
    .restart local v11    # "strLine":Ljava/lang/String;
    :cond_73
    :try_start_73
    const-string v12, "[LUA ERROR]"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_78
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_78} :catch_119
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_78} :catch_10b
    .catchall {:try_start_73 .. :try_end_78} :catchall_ff

    move-result v12

    if-eqz v12, :cond_5a

    .line 102
    const/4 v0, 0x1

    move-object v2, v3

    .end local v3    # "buffreader":Ljava/io/BufferedReader;
    .restart local v2    # "buffreader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputreader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .line 103
    .end local v7    # "fis":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    goto :goto_63

    .line 108
    .end local v1    # "bSmallSize":Z
    .end local v10    # "srcfile":Ljava/io/File;
    .end local v11    # "strLine":Ljava/lang/String;
    :catch_80
    move-exception v4

    .line 110
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_81
    :try_start_81
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_c6

    .line 115
    if-eqz v6, :cond_89

    .line 117
    :try_start_86
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_99

    .line 122
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_89
    :goto_89
    if-eqz v8, :cond_8e

    .line 124
    :try_start_8b
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_9e

    .line 129
    :cond_8e
    :goto_8e
    if-eqz v2, :cond_72

    .line 131
    :try_start_90
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_72

    .line 132
    :catch_94
    move-exception v4

    .line 133
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_72

    .line 118
    .local v4, "e":Ljava/io/FileNotFoundException;
    :catch_99
    move-exception v4

    .line 119
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_89

    .line 125
    .end local v4    # "e":Ljava/io/IOException;
    :catch_9e
    move-exception v4

    .line 126
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8e

    .line 111
    .end local v4    # "e":Ljava/io/IOException;
    :catch_a3
    move-exception v4

    .line 113
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_a4
    :try_start_a4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_c6

    .line 115
    if-eqz v6, :cond_ac

    .line 117
    :try_start_a9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_bc

    .line 122
    :cond_ac
    :goto_ac
    if-eqz v8, :cond_b1

    .line 124
    :try_start_ae
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_c1

    .line 129
    :cond_b1
    :goto_b1
    if-eqz v2, :cond_72

    .line 131
    :try_start_b3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_72

    .line 132
    :catch_b7
    move-exception v4

    .line 133
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_72

    .line 118
    :catch_bc
    move-exception v4

    .line 119
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ac

    .line 125
    :catch_c1
    move-exception v4

    .line 126
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b1

    .line 114
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_c6
    move-exception v12

    .line 115
    :goto_c7
    if-eqz v6, :cond_cc

    .line 117
    :try_start_c9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_d7

    .line 122
    :cond_cc
    :goto_cc
    if-eqz v8, :cond_d1

    .line 124
    :try_start_ce
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_dc

    .line 129
    :cond_d1
    :goto_d1
    if-eqz v2, :cond_d6

    .line 131
    :try_start_d3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_e1

    .line 136
    :cond_d6
    :goto_d6
    throw v12

    .line 118
    :catch_d7
    move-exception v4

    .line 119
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_cc

    .line 125
    .end local v4    # "e":Ljava/io/IOException;
    :catch_dc
    move-exception v4

    .line 126
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d1

    .line 132
    .end local v4    # "e":Ljava/io/IOException;
    :catch_e1
    move-exception v4

    .line 133
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d6

    .line 118
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v10    # "srcfile":Ljava/io/File;
    :catch_e6
    move-exception v4

    .line 119
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_68

    .line 125
    .end local v4    # "e":Ljava/io/IOException;
    :catch_ec
    move-exception v4

    .line 126
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6d

    .line 132
    .end local v4    # "e":Ljava/io/IOException;
    :catch_f2
    move-exception v4

    .line 133
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_72

    .line 114
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "fis":Ljava/io/InputStream;
    .restart local v1    # "bSmallSize":Z
    .restart local v7    # "fis":Ljava/io/InputStream;
    :catchall_f8
    move-exception v12

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    goto :goto_c7

    .end local v6    # "fis":Ljava/io/InputStream;
    .end local v8    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v7    # "fis":Ljava/io/InputStream;
    .restart local v9    # "inputreader":Ljava/io/InputStreamReader;
    :catchall_fb
    move-exception v12

    move-object v8, v9

    .end local v9    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputreader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    goto :goto_c7

    .end local v2    # "buffreader":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/InputStream;
    .end local v8    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v3    # "buffreader":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/InputStream;
    .restart local v9    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v11    # "strLine":Ljava/lang/String;
    :catchall_ff
    move-exception v12

    move-object v2, v3

    .end local v3    # "buffreader":Ljava/io/BufferedReader;
    .restart local v2    # "buffreader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputreader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    goto :goto_c7

    .line 111
    .end local v6    # "fis":Ljava/io/InputStream;
    .end local v11    # "strLine":Ljava/lang/String;
    .restart local v7    # "fis":Ljava/io/InputStream;
    :catch_104
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    goto :goto_a4

    .end local v6    # "fis":Ljava/io/InputStream;
    .end local v8    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v7    # "fis":Ljava/io/InputStream;
    .restart local v9    # "inputreader":Ljava/io/InputStreamReader;
    :catch_107
    move-exception v4

    move-object v8, v9

    .end local v9    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputreader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    goto :goto_a4

    .end local v2    # "buffreader":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/InputStream;
    .end local v8    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v3    # "buffreader":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/InputStream;
    .restart local v9    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v11    # "strLine":Ljava/lang/String;
    :catch_10b
    move-exception v4

    move-object v2, v3

    .end local v3    # "buffreader":Ljava/io/BufferedReader;
    .restart local v2    # "buffreader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputreader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    goto :goto_a4

    .line 108
    .end local v6    # "fis":Ljava/io/InputStream;
    .end local v11    # "strLine":Ljava/lang/String;
    .restart local v7    # "fis":Ljava/io/InputStream;
    :catch_110
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    goto/16 :goto_81

    .end local v6    # "fis":Ljava/io/InputStream;
    .end local v8    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v7    # "fis":Ljava/io/InputStream;
    .restart local v9    # "inputreader":Ljava/io/InputStreamReader;
    :catch_114
    move-exception v4

    move-object v8, v9

    .end local v9    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputreader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    goto/16 :goto_81

    .end local v2    # "buffreader":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/InputStream;
    .end local v8    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v3    # "buffreader":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/InputStream;
    .restart local v9    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v11    # "strLine":Ljava/lang/String;
    :catch_119
    move-exception v4

    move-object v2, v3

    .end local v3    # "buffreader":Ljava/io/BufferedReader;
    .restart local v2    # "buffreader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputreader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    goto/16 :goto_81

    .end local v6    # "fis":Ljava/io/InputStream;
    .end local v11    # "strLine":Ljava/lang/String;
    .restart local v7    # "fis":Ljava/io/InputStream;
    :cond_11f
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    goto/16 :goto_63
.end method

.method public static isLordTestLogSizeSmallEnoughToUploadForLuaErr()Z
    .registers 8

    .prologue
    .line 36
    const/4 v3, 0x0

    .line 37
    .local v3, "fis":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 39
    .local v0, "bSmallSize":Z
    :try_start_2
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "lordtest.log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v5, "srcfile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 41
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2f} :catch_43
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2f} :catch_52
    .catchall {:try_start_2 .. :try_end_2f} :catchall_61

    .line 42
    .end local v3    # "fis":Ljava/io/InputStream;
    .local v4, "fis":Ljava/io/InputStream;
    if-eqz v4, :cond_7b

    .line 43
    :try_start_31
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v6

    div-int/lit16 v2, v6, 0x400
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_37} :catch_78
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_37} :catch_75
    .catchall {:try_start_31 .. :try_end_37} :catchall_72

    .line 44
    .local v2, "fileSize":I
    const/16 v6, 0x400

    if-ge v2, v6, :cond_7b

    .line 45
    const/4 v0, 0x1

    move-object v3, v4

    .line 56
    .end local v2    # "fileSize":I
    .end local v4    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    :cond_3d
    :goto_3d
    if-eqz v3, :cond_42

    .line 58
    :try_start_3f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_6d

    .line 64
    .end local v5    # "srcfile":Ljava/io/File;
    :cond_42
    :goto_42
    return v0

    .line 49
    :catch_43
    move-exception v1

    .line 51
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_44
    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_61

    .line 56
    if-eqz v3, :cond_42

    .line 58
    :try_start_49
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_42

    .line 59
    :catch_4d
    move-exception v1

    .line 60
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 52
    .end local v1    # "e":Ljava/io/IOException;
    :catch_52
    move-exception v1

    .line 54
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_53
    :try_start_53
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_61

    .line 56
    if-eqz v3, :cond_42

    .line 58
    :try_start_58
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_42

    .line 59
    :catch_5c
    move-exception v1

    .line 60
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 55
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_61
    move-exception v6

    .line 56
    :goto_62
    if-eqz v3, :cond_67

    .line 58
    :try_start_64
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    .line 63
    :cond_67
    :goto_67
    throw v6

    .line 59
    :catch_68
    move-exception v1

    .line 60
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    .line 59
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "srcfile":Ljava/io/File;
    :catch_6d
    move-exception v1

    .line 60
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 55
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v4    # "fis":Ljava/io/InputStream;
    :catchall_72
    move-exception v6

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    goto :goto_62

    .line 52
    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v4    # "fis":Ljava/io/InputStream;
    :catch_75
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    goto :goto_53

    .line 49
    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v4    # "fis":Ljava/io/InputStream;
    :catch_78
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    goto :goto_44

    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v4    # "fis":Ljava/io/InputStream;
    :cond_7b
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    goto :goto_3d
.end method

.method private static moveFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "destdir"    # Ljava/lang/String;

    .prologue
    .line 277
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v1, "file":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 280
    return-void
.end method

.method public static uploadUpdateErrorLog(Ljava/lang/String;)V
    .registers 2
    .param p0, "logFilename"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Lcom/ledo/fantasy/game/NativeCrashManager$2;

    invoke-direct {v0}, Lcom/ledo/fantasy/game/NativeCrashManager$2;-><init>()V

    .line 206
    invoke-virtual {v0}, Lcom/ledo/fantasy/game/NativeCrashManager$2;->start()V

    .line 207
    return-void
.end method
