.class Lcom/iflytek/cloud/thirdparty/v$b$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/cloud/thirdparty/v$b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/v$b;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/v$b;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const v11, 0x3a98000

    const/16 v10, 0x5207

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v0, "alsa data save thread enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :try_start_c
    new-instance v3, Landroid/os/MemoryFile;

    const/4 v0, 0x0

    const v1, 0x3b15000

    invoke-direct {v3, v0, v1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_177

    const/4 v0, 0x0

    :try_start_16
    invoke-virtual {v3, v0}, Landroid/os/MemoryFile;->allowPurging(Z)Z

    move v6, v4

    move v0, v4

    :goto_1b
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v$b;->a(Lcom/iflytek/cloud/thirdparty/v$b;)Z

    move-result v1

    if-eqz v1, :cond_c6

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v$b;->b(Lcom/iflytek/cloud/thirdparty/v$b;)Lcom/iflytek/cloud/thirdparty/x;

    move-result-object v7

    monitor-enter v7
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_2a} :catch_6d

    move v5, v0

    :goto_2b
    :try_start_2b
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v$b;->b(Lcom/iflytek/cloud/thirdparty/v$b;)Lcom/iflytek/cloud/thirdparty/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->e()Z

    move-result v0

    if-nez v0, :cond_a0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v$b;->b(Lcom/iflytek/cloud/thirdparty/v$b;)Lcom/iflytek/cloud/thirdparty/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->f()Lcom/iflytek/cloud/thirdparty/x$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v9, 0x0

    invoke-virtual {v8}, Lcom/iflytek/cloud/thirdparty/x$a;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v9, v5, v1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    invoke-virtual {v8}, Lcom/iflytek/cloud/thirdparty/x$a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v$b;->b(Lcom/iflytek/cloud/thirdparty/v$b;)Lcom/iflytek/cloud/thirdparty/x;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/iflytek/cloud/thirdparty/x;->a(Lcom/iflytek/cloud/thirdparty/x$a;)V

    goto :goto_2b

    :catchall_6a
    move-exception v0

    monitor-exit v7
    :try_end_6c
    .catchall {:try_start_2b .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw v0
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6d} :catch_6d

    :catch_6d
    move-exception v0

    move-object v1, v2

    :goto_6f
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const-string v4, "\u4fdd\u5b58\u6587\u4ef6\u5931\u8d25\uff01"

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    new-instance v4, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v4, v0, v10}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Throwable;I)V

    move-object v0, v1

    move-object v1, v4

    :cond_7e
    :goto_7e
    if-eqz v3, :cond_83

    :try_start_80
    invoke-virtual {v3}, Landroid/os/MemoryFile;->close()V

    :cond_83
    if-eqz v0, :cond_88

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_88} :catch_16c

    :cond_88
    :goto_88
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/v$b;->a(Lcom/iflytek/cloud/thirdparty/v$b;Ljava/lang/Thread;)Ljava/lang/Thread;

    if-eqz v1, :cond_9a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/v$b;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->c(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/v$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/v$a;->a(Lcom/iflytek/cloud/SpeechError;)V

    :cond_9a
    const-string v0, "alsa data save thread exit"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :cond_a0
    :try_start_a0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v$b;->b(Lcom/iflytek/cloud/thirdparty/v$b;)Lcom/iflytek/cloud/thirdparty/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->d()V

    monitor-exit v7
    :try_end_aa
    .catchall {:try_start_a0 .. :try_end_aa} :catchall_6a

    if-gt v11, v5, :cond_182

    const/4 v0, 0x1

    move v1, v4

    :goto_ae
    :try_start_ae
    monitor-enter p0
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_af} :catch_6d

    :try_start_af
    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-static {v5}, Lcom/iflytek/cloud/thirdparty/v$b;->b(Lcom/iflytek/cloud/thirdparty/v$b;)Lcom/iflytek/cloud/thirdparty/x;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/cloud/thirdparty/x;->e()Z

    move-result v5

    if-eqz v5, :cond_be

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    :cond_be
    monitor-exit p0

    move v6, v0

    move v0, v1

    goto/16 :goto_1b

    :catchall_c3
    move-exception v0

    monitor-exit p0
    :try_end_c5
    .catchall {:try_start_af .. :try_end_c5} :catchall_c3

    :try_start_c5
    throw v0

    :cond_c6
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v$b;->b(Lcom/iflytek/cloud/thirdparty/v$b;)Lcom/iflytek/cloud/thirdparty/x;

    move-result-object v7

    monitor-enter v7
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_c5 .. :try_end_cd} :catch_6d

    move v5, v0

    :goto_ce
    :try_start_ce
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v$b;->b(Lcom/iflytek/cloud/thirdparty/v$b;)Lcom/iflytek/cloud/thirdparty/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->e()Z

    move-result v0

    if-nez v0, :cond_10e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v$b;->b(Lcom/iflytek/cloud/thirdparty/v$b;)Lcom/iflytek/cloud/thirdparty/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->f()Lcom/iflytek/cloud/thirdparty/x$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v9, 0x0

    invoke-virtual {v8}, Lcom/iflytek/cloud/thirdparty/x$a;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v9, v5, v1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    invoke-virtual {v8}, Lcom/iflytek/cloud/thirdparty/x$a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v$b;->b(Lcom/iflytek/cloud/thirdparty/v$b;)Lcom/iflytek/cloud/thirdparty/x;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/iflytek/cloud/thirdparty/x;->a(Lcom/iflytek/cloud/thirdparty/x$a;)V

    move v5, v0

    goto :goto_ce

    :cond_10e
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v$b;->b(Lcom/iflytek/cloud/thirdparty/v$b;)Lcom/iflytek/cloud/thirdparty/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->d()V

    monitor-exit v7
    :try_end_118
    .catchall {:try_start_ce .. :try_end_118} :catchall_167

    if-nez v2, :cond_17e

    :try_start_11a
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v$b;->c(Lcom/iflytek/cloud/thirdparty/v$b;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "rw"

    invoke-direct {v0, v1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_127
    .catch Ljava/lang/Throwable; {:try_start_11a .. :try_end_127} :catch_6d

    if-eqz v6, :cond_16a

    sub-int v1, v11, v5

    :goto_12b
    if-lez v1, :cond_17c

    :try_start_12d
    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-static {v4, v0, v3, v5, v1}, Lcom/iflytek/cloud/thirdparty/v$b;->a(Lcom/iflytek/cloud/thirdparty/v$b;Ljava/io/RandomAccessFile;Landroid/os/MemoryFile;II)Z

    move-result v1

    if-nez v1, :cond_17c

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v4, 0x5207

    invoke-direct {v1, v4}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    const-string v4, "save last memory file data failed!"

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    :goto_141
    if-nez v1, :cond_7e

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/v$b$1;->a:Lcom/iflytek/cloud/thirdparty/v$b;

    const/4 v6, 0x0

    const v7, 0x3a98000

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v0, v3, v6, v5}, Lcom/iflytek/cloud/thirdparty/v$b;->a(Lcom/iflytek/cloud/thirdparty/v$b;Ljava/io/RandomAccessFile;Landroid/os/MemoryFile;II)Z

    move-result v4

    if-nez v4, :cond_7e

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v4, 0x5207

    invoke-direct {v1, v4}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    const-string v4, "save current memory file data failed!"

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V
    :try_end_15f
    .catch Ljava/lang/Throwable; {:try_start_12d .. :try_end_15f} :catch_161

    goto/16 :goto_7e

    :catch_161
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_6f

    :catchall_167
    move-exception v0

    :try_start_168
    monitor-exit v7
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_167

    :try_start_169
    throw v0
    :try_end_16a
    .catch Ljava/lang/Throwable; {:try_start_169 .. :try_end_16a} :catch_6d

    :cond_16a
    move v1, v4

    goto :goto_12b

    :catch_16c
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const-string v0, "\u5173\u95ed\u6587\u4ef6\u5f02\u5e38\uff01"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    goto/16 :goto_88

    :catch_177
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_6f

    :cond_17c
    move-object v1, v2

    goto :goto_141

    :cond_17e
    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_7e

    :cond_182
    move v0, v6

    move v1, v5

    goto/16 :goto_ae
.end method
