.class public Lcom/ledo/fantasy/update/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static DownloadOneFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "dst"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Lcom/ledo/fantasy/update/FileDownloader;->DownloadOneFileIMP(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static DownloadOneFileIMP(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 39
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dst"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    .prologue
    .line 32
    const-string v30, "filedownload"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "src: "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " dst:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/16 v16, 0x0

    .line 34
    .local v16, "inputstream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 35
    .local v5, "cachedfile":Ljava/io/RandomAccessFile;
    const/16 v18, 0x0

    .line 37
    .local v18, "output":Ljava/io/OutputStream;
    const-wide/16 v20, 0x0

    .line 39
    .local v20, "size":J
    :try_start_2d
    const-string v30, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 40
    .local v6, "dirArray":[Ljava/lang/String;
    const-string v7, ""

    .line 41
    .local v7, "dirString":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3a
    array-length v0, v6

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v30

    if-lt v15, v0, :cond_190

    .line 44
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_1ad

    .line 46
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 55
    :cond_51
    :goto_51
    invoke-static/range {p0 .. p0}, Lcom/ledo/fantasy/update/FileDownloader;->GetDownloadFileSize(Ljava/lang/String;)J

    move-result-wide v26

    .line 56
    .local v26, "totalsize":J
    cmp-long v30, v26, v20

    if-gtz v30, :cond_85

    .line 59
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "DownloadOneFileIMP src = "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", dst = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "already downloaded. File is invalid, need to re-download."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 61
    const-wide/16 v20, 0x0

    .line 63
    :cond_85
    new-instance v28, Ljava/net/URL;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 64
    .local v28, "url":Ljava/net/URL;
    invoke-virtual/range {v28 .. v28}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v29

    check-cast v29, Ljava/net/HttpURLConnection;

    .line 65
    .local v29, "urlconn":Ljava/net/HttpURLConnection;
    const-string v30, "GET"

    invoke-virtual/range {v29 .. v30}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 66
    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 67
    const-string v30, "Content-Type"

    const-string v31, "application/octet-stream"

    invoke-virtual/range {v29 .. v31}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const v30, 0x15f90

    invoke-virtual/range {v29 .. v30}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 71
    const v30, 0x15f90

    invoke-virtual/range {v29 .. v30}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 73
    const-string v30, "User-Agent"

    const-string v31, ""

    invoke-virtual/range {v29 .. v31}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v30, "Accept"

    const-string v31, "*/*"

    invoke-virtual/range {v29 .. v31}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-eqz v30, :cond_f9

    .line 76
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "start size = "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 77
    const-string v30, "Range"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "bytes="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "-"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_f9
    invoke-virtual/range {v29 .. v29}, Ljava/net/HttpURLConnection;->connect()V

    .line 83
    invoke-virtual/range {v29 .. v29}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v22

    .line 84
    .local v22, "status":I
    invoke-virtual/range {v29 .. v29}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v19

    .line 85
    .local v19, "resonseMes":Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "DownloadOneFileIMP src = "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ",dst = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ",status = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", response ="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 86
    div-int/lit8 v30, v22, 0x64

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_158

    div-int/lit8 v30, v22, 0x64

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1c7

    .line 87
    :cond_158
    const-string v30, "filedownload"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "status: "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_17e} :catch_247
    .catchall {:try_start_2d .. :try_end_17e} :catchall_362

    .line 159
    if-eqz v5, :cond_183

    .line 160
    :try_start_180
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 161
    :cond_183
    if-eqz v16, :cond_188

    .line 162
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 163
    :cond_188
    if-eqz v18, :cond_18d

    .line 164
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_18d} :catch_1c2

    .line 88
    :cond_18d
    :goto_18d
    const/16 v30, 0x0

    .line 169
    .end local v6    # "dirArray":[Ljava/lang/String;
    .end local v7    # "dirString":Ljava/lang/String;
    .end local v12    # "file":Ljava/io/File;
    .end local v15    # "i":I
    .end local v19    # "resonseMes":Ljava/lang/String;
    .end local v22    # "status":I
    .end local v26    # "totalsize":J
    .end local v28    # "url":Ljava/net/URL;
    .end local v29    # "urlconn":Ljava/net/HttpURLConnection;
    :goto_18f
    return v30

    .line 42
    .restart local v6    # "dirArray":[Ljava/lang/String;
    .restart local v7    # "dirString":Ljava/lang/String;
    .restart local v15    # "i":I
    :cond_190
    :try_start_190
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v31, v6, v15

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 41
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3a

    .line 47
    .restart local v12    # "file":Ljava/io/File;
    :cond_1ad
    if-eqz p2, :cond_51

    .line 48
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v13, "file1":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_51

    .line 50
    invoke-virtual {v13}, Ljava/io/File;->length()J
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_1bf} :catch_247
    .catchall {:try_start_190 .. :try_end_1bf} :catchall_362

    move-result-wide v20

    goto/16 :goto_51

    .line 165
    .end local v13    # "file1":Ljava/io/File;
    .restart local v19    # "resonseMes":Ljava/lang/String;
    .restart local v22    # "status":I
    .restart local v26    # "totalsize":J
    .restart local v28    # "url":Ljava/net/URL;
    .restart local v29    # "urlconn":Ljava/net/HttpURLConnection;
    :catch_1c2
    move-exception v10

    .line 166
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18d

    .line 90
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1c7
    :try_start_1c7
    invoke-virtual/range {v29 .. v29}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 91
    array-length v0, v6

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-object v9, v6, v30

    .line 92
    .local v9, "dstfilename":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1d7} :catch_247
    .catchall {:try_start_1c7 .. :try_end_1d7} :catchall_362

    .line 95
    .local v8, "dstFile":Ljava/io/File;
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-nez v30, :cond_1f2

    .line 96
    :try_start_1dd
    const-string v30, "create dstFile"

    invoke-static/range {v30 .. v30}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_1ef

    .line 99
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->RemoveDir(Ljava/lang/String;)V

    .line 101
    :cond_1ef
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_1f2
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_1f2} :catch_22f
    .catchall {:try_start_1dd .. :try_end_1f2} :catchall_362

    .line 113
    :cond_1f2
    :goto_1f2
    :try_start_1f2
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string v30, "rw"

    move-object/from16 v0, v30

    invoke-direct {v14, v8, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    .local v14, "fos":Ljava/io/RandomAccessFile;
    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 115
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/ledo/fantasy/update/FileDownloader;->nativeProgressCallBack(I)Z

    .line 116
    const/16 v17, 0x0

    .line 117
    .local v17, "length":I
    const v30, 0xa000

    move/from16 v0, v30

    new-array v4, v0, [B

    .line 118
    .local v4, "buffer":[B
    :cond_211
    :goto_211
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v17

    if-gtz v17, :cond_30f

    .line 131
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_21c} :catch_247
    .catchall {:try_start_1f2 .. :try_end_21c} :catchall_362

    .line 159
    if-eqz v5, :cond_221

    .line 160
    :try_start_21e
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 161
    :cond_221
    if-eqz v16, :cond_226

    .line 162
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 163
    :cond_226
    if-eqz v18, :cond_22b

    .line 164
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_22b
    .catch Ljava/lang/Exception; {:try_start_21e .. :try_end_22b} :catch_385

    .line 169
    :cond_22b
    :goto_22b
    const/16 v30, 0x1

    goto/16 :goto_18f

    .line 103
    .end local v4    # "buffer":[B
    .end local v14    # "fos":Ljava/io/RandomAccessFile;
    .end local v17    # "length":I
    :catch_22f
    move-exception v10

    .line 105
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_230
    const-string v30, "createNewFile failed!"

    invoke-static/range {v30 .. v30}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_243

    .line 107
    const-string v30, "FileUtils.touch "

    invoke-static/range {v30 .. v30}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 108
    invoke-static {v8}, Lorg/apache/commons/io/FileUtils;->touch(Ljava/io/File;)V

    .line 110
    :cond_243
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_246
    .catch Ljava/lang/Exception; {:try_start_230 .. :try_end_246} :catch_247
    .catchall {:try_start_230 .. :try_end_246} :catchall_362

    goto :goto_1f2

    .line 133
    .end local v6    # "dirArray":[Ljava/lang/String;
    .end local v7    # "dirString":Ljava/lang/String;
    .end local v8    # "dstFile":Ljava/io/File;
    .end local v9    # "dstfilename":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "file":Ljava/io/File;
    .end local v15    # "i":I
    .end local v19    # "resonseMes":Ljava/lang/String;
    .end local v22    # "status":I
    .end local v26    # "totalsize":J
    .end local v28    # "url":Ljava/net/URL;
    .end local v29    # "urlconn":Ljava/net/HttpURLConnection;
    :catch_247
    move-exception v10

    .line 134
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_248
    const-class v30, Ljava/io/IOException;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_28c

    .line 135
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v30

    const-string v31, "No space left on device"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_28c

    .line 136
    const-string v24, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3\uff01"
    :try_end_268
    .catchall {:try_start_248 .. :try_end_268} :catchall_362

    .line 138
    .local v24, "strTips":Ljava/lang/String;
    :try_start_268
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v30

    sget v31, Lcom/ledo/fantasy/game/R$string;->no_space_tip:I

    invoke-virtual/range {v30 .. v31}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;
    :try_end_271
    .catch Ljava/lang/Exception; {:try_start_268 .. :try_end_271} :catch_373
    .catchall {:try_start_268 .. :try_end_271} :catchall_362

    move-result-object v24

    .line 143
    :goto_272
    :try_start_272
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    .line 144
    const-string v30, "EVENT_NO_SPACE_LEFT_ON_DEVICE"

    move-object/from16 v0, v30

    invoke-static {v0, v10}, Lcom/ledo/fantasy/game/FlurryManager;->LogEventException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .end local v24    # "strTips":Ljava/lang/String;
    :cond_28c
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v8    # "dstFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_2c7

    .line 149
    new-instance v25, Ljava/io/File;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v25, "to":Ljava/io/File;
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 151
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 154
    .end local v25    # "to":Ljava/io/File;
    :cond_2c7
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "DownloadOneFileIMP src = "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ",dst = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ",exception = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/ledo/fantasy/game/NativeCrashManager;->SDXLLog(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2fc
    .catchall {:try_start_272 .. :try_end_2fc} :catchall_362

    .line 159
    if-eqz v5, :cond_301

    .line 160
    :try_start_2fe
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 161
    :cond_301
    if-eqz v16, :cond_306

    .line 162
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 163
    :cond_306
    if-eqz v18, :cond_30b

    .line 164
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_30b
    .catch Ljava/lang/Exception; {:try_start_2fe .. :try_end_30b} :catch_37b

    .line 156
    :cond_30b
    :goto_30b
    const/16 v30, 0x0

    goto/16 :goto_18f

    .line 119
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v4    # "buffer":[B
    .restart local v6    # "dirArray":[Ljava/lang/String;
    .restart local v7    # "dirString":Ljava/lang/String;
    .restart local v9    # "dstfilename":Ljava/lang/String;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v14    # "fos":Ljava/io/RandomAccessFile;
    .restart local v15    # "i":I
    .restart local v17    # "length":I
    .restart local v19    # "resonseMes":Ljava/lang/String;
    .restart local v22    # "status":I
    .restart local v26    # "totalsize":J
    .restart local v28    # "url":Ljava/net/URL;
    .restart local v29    # "urlconn":Ljava/net/HttpURLConnection;
    :cond_30f
    const/16 v30, 0x0

    :try_start_311
    move/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v14, v4, v0, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 121
    if-eqz p2, :cond_211

    .line 122
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v20, v20, v30

    .line 123
    invoke-static/range {v17 .. v17}, Lcom/ledo/fantasy/update/FileDownloader;->nativeProgressCallBack(I)Z

    move-result v30

    if-nez v30, :cond_211

    .line 124
    const-wide/16 v30, 0x64

    mul-long v30, v30, v20

    div-long v30, v30, v26

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->NotifyStep(I)V

    .line 126
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v31, "%d kb/%d kb"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-wide/16 v34, 0x400

    div-long v34, v20, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    const-wide/16 v34, 0x400

    div-long v34, v26, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v30 .. v32}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 127
    .local v23, "str":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->NotifyDownLoadSize(Ljava/lang/String;)V
    :try_end_360
    .catch Ljava/lang/Exception; {:try_start_311 .. :try_end_360} :catch_247
    .catchall {:try_start_311 .. :try_end_360} :catchall_362

    goto/16 :goto_211

    .line 157
    .end local v4    # "buffer":[B
    .end local v6    # "dirArray":[Ljava/lang/String;
    .end local v7    # "dirString":Ljava/lang/String;
    .end local v8    # "dstFile":Ljava/io/File;
    .end local v9    # "dstfilename":Ljava/lang/String;
    .end local v12    # "file":Ljava/io/File;
    .end local v14    # "fos":Ljava/io/RandomAccessFile;
    .end local v15    # "i":I
    .end local v17    # "length":I
    .end local v19    # "resonseMes":Ljava/lang/String;
    .end local v22    # "status":I
    .end local v23    # "str":Ljava/lang/String;
    .end local v26    # "totalsize":J
    .end local v28    # "url":Ljava/net/URL;
    .end local v29    # "urlconn":Ljava/net/HttpURLConnection;
    :catchall_362
    move-exception v30

    .line 159
    if-eqz v5, :cond_368

    .line 160
    :try_start_365
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 161
    :cond_368
    if-eqz v16, :cond_36d

    .line 162
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 163
    :cond_36d
    if-eqz v18, :cond_372

    .line 164
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_372
    .catch Ljava/lang/Exception; {:try_start_365 .. :try_end_372} :catch_380

    .line 168
    :cond_372
    :goto_372
    throw v30

    .line 139
    .restart local v10    # "e":Ljava/lang/Exception;
    .restart local v24    # "strTips":Ljava/lang/String;
    :catch_373
    move-exception v11

    .line 140
    .local v11, "ex":Ljava/lang/Exception;
    :try_start_374
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    const-string v24, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3\uff01"
    :try_end_379
    .catchall {:try_start_374 .. :try_end_379} :catchall_362

    goto/16 :goto_272

    .line 165
    .end local v11    # "ex":Ljava/lang/Exception;
    .end local v24    # "strTips":Ljava/lang/String;
    .restart local v8    # "dstFile":Ljava/io/File;
    :catch_37b
    move-exception v10

    .line 166
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30b

    .line 165
    .end local v8    # "dstFile":Ljava/io/File;
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_380
    move-exception v10

    .line 166
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_372

    .line 165
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v4    # "buffer":[B
    .restart local v6    # "dirArray":[Ljava/lang/String;
    .restart local v7    # "dirString":Ljava/lang/String;
    .restart local v8    # "dstFile":Ljava/io/File;
    .restart local v9    # "dstfilename":Ljava/lang/String;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v14    # "fos":Ljava/io/RandomAccessFile;
    .restart local v15    # "i":I
    .restart local v17    # "length":I
    .restart local v19    # "resonseMes":Ljava/lang/String;
    .restart local v22    # "status":I
    .restart local v26    # "totalsize":J
    .restart local v28    # "url":Ljava/net/URL;
    .restart local v29    # "urlconn":Ljava/net/HttpURLConnection;
    :catch_385
    move-exception v10

    .line 166
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_22b
.end method

.method static GetDownloadFileSize(Ljava/lang/String;)J
    .registers 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 173
    const-wide/16 v2, 0x0

    .line 175
    .local v2, "size":J
    :try_start_2
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 176
    .local v0, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v2, v4

    .line 177
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    .line 181
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :goto_15
    return-wide v2

    .line 178
    :catch_16
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static native nativeProgressCallBack(I)Z
.end method
