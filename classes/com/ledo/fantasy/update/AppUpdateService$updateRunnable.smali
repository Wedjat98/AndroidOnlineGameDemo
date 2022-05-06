.class public Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;
.super Ljava/lang/Object;
.source "AppUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ledo/fantasy/update/AppUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "updateRunnable"
.end annotation


# static fields
.field public static final DOWNLOADING:I = 0x2

.field public static final DOWNLOAD_COMPLETE:I = 0x0

.field public static final DOWNLOAD_FAIL:I = 0x1


# instance fields
.field message:Landroid/os/Message;

.field final synthetic this$0:Lcom/ledo/fantasy/update/AppUpdateService;

.field private updateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/ledo/fantasy/update/AppUpdateService;)V
    .registers 3

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;

    invoke-direct {v0, p0}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable$1;-><init>(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)V

    iput-object v0, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->updateHandler:Landroid/os/Handler;

    .line 218
    iget-object v0, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->updateHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->message:Landroid/os/Message;

    return-void
.end method

.method static synthetic access$0(Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;)Lcom/ledo/fantasy/update/AppUpdateService;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;

    return-object v0
.end method


# virtual methods
.method public downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J
    .registers 29
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "saveFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v6, 0x0

    .line 151
    .local v6, "downloadCount":I
    const/4 v5, 0x0

    .line 152
    .local v5, "currentSize":I
    const-wide/16 v16, 0x0

    .line 153
    .local v16, "totalSize":J
    const/16 v18, 0x0

    .line 155
    .local v18, "updateTotalSize":I
    const/4 v10, 0x0

    .line 156
    .local v10, "httpConnection":Ljava/net/HttpURLConnection;
    const/4 v12, 0x0

    .line 157
    .local v12, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 160
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_9
    new-instance v19, Ljava/net/URL;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 161
    .local v19, "url":Ljava/net/URL;
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    .line 162
    const-string v20, "User-Agent"

    const-string v21, "PacificHttpClient"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    if-lez v5, :cond_48

    .line 164
    const-string v20, "RANGE"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "bytes="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_48
    const/16 v20, 0x2710

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 167
    const/16 v20, 0x4e20

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 168
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v18

    .line 169
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    div-int/lit8 v20, v20, 0x64

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_76

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    div-int/lit8 v20, v20, 0x64

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8f

    .line 170
    :cond_76
    new-instance v20, Ljava/lang/Exception;

    const-string v21, "fail!"

    invoke-direct/range {v20 .. v21}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_7e
    .catchall {:try_start_9 .. :try_end_7e} :catchall_7e

    .line 204
    .end local v19    # "url":Ljava/net/URL;
    :catchall_7e
    move-exception v20

    .line 205
    :goto_7f
    if-eqz v10, :cond_84

    .line 206
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 208
    :cond_84
    if-eqz v12, :cond_89

    .line 209
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 211
    :cond_89
    if-eqz v8, :cond_8e

    .line 212
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 214
    :cond_8e
    throw v20

    .line 172
    .restart local v19    # "url":Ljava/net/URL;
    :cond_8f
    :try_start_8f
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 173
    new-instance v9, Ljava/io/FileOutputStream;

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-direct {v9, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_9e
    .catchall {:try_start_8f .. :try_end_9e} :catchall_7e

    .line 174
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    const/16 v20, 0x1000

    :try_start_a0
    move/from16 v0, v20

    new-array v4, v0, [B

    .line 175
    .local v4, "buffer":[B
    const/4 v13, 0x0

    .line 177
    .local v13, "readsize":I
    const-string v15, "\u6fee\u6fd3\u7d7d\u5a40\ue045\u7a09\u7023\ue15f\u7970"
    :try_end_a7
    .catchall {:try_start_a0 .. :try_end_a7} :catchall_15c

    .line 179
    .local v15, "strIsDownloading":Ljava/lang/String;
    :try_start_a7
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v20

    sget v21, Lcom/ledo/fantasy/game/R$string;->strinfo_downloading_tip:I

    invoke-virtual/range {v20 .. v21}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b0} :catch_c7
    .catchall {:try_start_a7 .. :try_end_b0} :catchall_15c

    move-result-object v15

    .line 186
    :cond_b1
    :goto_b1
    :try_start_b1
    invoke-virtual {v12, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_15c

    move-result v13

    if-gtz v13, :cond_ce

    .line 205
    if-eqz v10, :cond_bc

    .line 206
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 208
    :cond_bc
    if-eqz v12, :cond_c1

    .line 209
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 211
    :cond_c1
    if-eqz v9, :cond_c6

    .line 212
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 215
    :cond_c6
    return-wide v16

    .line 180
    :catch_c7
    move-exception v7

    .line 182
    .local v7, "e":Ljava/lang/Exception;
    :try_start_c8
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    const-string v15, "\u6fee\u6fd3\u7d7d\u5a40\ue045\u7a09\u7023\ue15f\u7970"

    .line 186
    goto :goto_b1

    .line 187
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_ce
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v4, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 188
    int-to-long v0, v13

    move-wide/from16 v20, v0

    add-long v16, v16, v20

    .line 190
    if-eqz v6, :cond_f2

    const-wide/16 v20, 0x64

    mul-long v20, v20, v16

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x3

    move/from16 v0, v20

    if-le v0, v6, :cond_b1

    .line 191
    :cond_f2
    add-int/lit8 v6, v6, 0x3

    .line 192
    new-instance v20, Ljava/lang/StringBuilder;

    const-wide/16 v22, 0x64

    mul-long v22, v22, v16

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v24, v0

    div-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 195
    .local v14, "step":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;

    move-object/from16 v22, v0

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService;->updatePendingIntent:Landroid/app/PendingIntent;
    invoke-static/range {v22 .. v22}, Lcom/ledo/fantasy/update/AppUpdateService;->access$2(Lcom/ledo/fantasy/update/AppUpdateService;)Landroid/app/PendingIntent;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v15, v14, v2}, Lcom/ledo/fantasy/update/AppUpdateService;->startNotify(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 197
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v11, "intent":Landroid/content/Intent;
    const-string v20, "android.intent.action.UPDATE_RECEIVER"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v20, "flag"

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v20, "progress"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/ledo/fantasy/update/AppUpdateService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_15a
    .catchall {:try_start_c8 .. :try_end_15a} :catchall_15c

    goto/16 :goto_b1

    .line 204
    .end local v4    # "buffer":[B
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "readsize":I
    .end local v14    # "step":Ljava/lang/String;
    .end local v15    # "strIsDownloading":Ljava/lang/String;
    :catchall_15c
    move-exception v20

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_7f
.end method

.method public run()V
    .registers 7

    .prologue
    .line 220
    iget-object v3, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->message:Landroid/os/Message;

    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->what:I

    .line 223
    :try_start_5
    iget-object v3, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService;->updateDir:Ljava/io/File;
    invoke-static {v3}, Lcom/ledo/fantasy/update/AppUpdateService;->access$4(Lcom/ledo/fantasy/update/AppUpdateService;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 224
    iget-object v3, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService;->updateDir:Ljava/io/File;
    invoke-static {v3}, Lcom/ledo/fantasy/update/AppUpdateService;->access$4(Lcom/ledo/fantasy/update/AppUpdateService;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 226
    :cond_1a
    iget-object v3, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService;->updateFile:Ljava/io/File;
    invoke-static {v3}, Lcom/ledo/fantasy/update/AppUpdateService;->access$0(Lcom/ledo/fantasy/update/AppUpdateService;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 227
    iget-object v3, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService;->updateFile:Ljava/io/File;
    invoke-static {v3}, Lcom/ledo/fantasy/update/AppUpdateService;->access$0(Lcom/ledo/fantasy/update/AppUpdateService;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 231
    :cond_2f
    sget-object v3, Lcom/ledo/fantasy/update/AppUpdateManager;->m_APKURL:Ljava/lang/String;

    iget-object v4, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->this$0:Lcom/ledo/fantasy/update/AppUpdateService;

    # getter for: Lcom/ledo/fantasy/update/AppUpdateService;->updateFile:Ljava/io/File;
    invoke-static {v4}, Lcom/ledo/fantasy/update/AppUpdateService;->access$0(Lcom/ledo/fantasy/update/AppUpdateService;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v0

    .line 232
    .local v0, "downloadSize":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_48

    .line 234
    iget-object v3, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->updateHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->message:Landroid/os/Message;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_48} :catch_49

    .line 242
    .end local v0    # "downloadSize":J
    :cond_48
    :goto_48
    return-void

    .line 236
    :catch_49
    move-exception v2

    .line 237
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    iget-object v3, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->message:Landroid/os/Message;

    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    .line 240
    iget-object v3, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->updateHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;->message:Landroid/os/Message;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_48
.end method
