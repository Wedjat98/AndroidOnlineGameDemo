.class final Lcom/appsflyer/t;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ˎ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/appsflyer/t;->ˎ:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized ˋ(Ljava/lang/ref/WeakReference;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x9

    .line 30
    const-class v1, Lcom/appsflyer/t;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_10

    .line 31
    sget-object v0, Lcom/appsflyer/t;->ˎ:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_b3

    .line 55
    :goto_e
    monitor-exit v1

    return-object v0

    .line 33
    :cond_10
    :try_start_10
    sget-object v2, Lcom/appsflyer/t;->ˎ:Ljava/lang/String;

    if-nez v2, :cond_2d

    .line 4118
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_30

    .line 35
    :goto_1a
    if-eqz v0, :cond_45

    .line 36
    sput-object v0, Lcom/appsflyer/t;->ˎ:Ljava/lang/String;

    .line 51
    :goto_1e
    sget-object v0, Lcom/appsflyer/t;->ˎ:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 52
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "uid"

    sget-object v3, Lcom/appsflyer/t;->ˎ:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_2d
    sget-object v0, Lcom/appsflyer/t;->ˎ:Ljava/lang/String;

    goto :goto_e

    .line 4121
    :cond_30
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "appsflyer-data"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4122
    const-string v2, "AF_INSTALLATION"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_43
    .catchall {:try_start_10 .. :try_end_43} :catchall_b3

    move-result-object v0

    goto :goto_1a

    .line 39
    :cond_45
    :try_start_45
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "AF_INSTALLATION"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_bf

    .line 6103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_b6

    .line 6104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_88
    sput-object v0, Lcom/appsflyer/t;->ˎ:Ljava/lang/String;

    .line 46
    :goto_8a
    sget-object v2, Lcom/appsflyer/t;->ˎ:Ljava/lang/String;

    .line 7131
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v3, "appsflyer-data"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7132
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7133
    const-string v3, "AF_INSTALLATION"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7134
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_c9

    .line 7135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_a9} :catch_ab
    .catchall {:try_start_45 .. :try_end_a9} :catchall_b3

    goto/16 :goto_1e

    .line 47
    :catch_ab
    move-exception v0

    .line 48
    :try_start_ac
    const-string v2, "Error getting AF unique ID"

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b1
    .catchall {:try_start_ac .. :try_end_b1} :catchall_b3

    goto/16 :goto_1e

    .line 30
    :catchall_b3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 7107
    :cond_b6
    :try_start_b6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_88

    .line 43
    :cond_bf
    invoke-static {v2}, Lcom/appsflyer/t;->ˎ(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/t;->ˎ:Ljava/lang/String;

    .line 44
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_8a

    .line 7137
    :cond_c9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_cc} :catch_ab
    .catchall {:try_start_b6 .. :try_end_cc} :catchall_b3

    goto/16 :goto_1e
.end method

.method private static ˎ(Ljava/io/File;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 59
    .line 62
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_27
    .catchall {:try_start_1 .. :try_end_8} :catchall_3e

    .line 63
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v0, v4

    new-array v0, v0, [B
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_53
    .catchall {:try_start_8 .. :try_end_f} :catchall_51

    .line 64
    :try_start_f
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 65
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_58
    .catchall {:try_start_f .. :try_end_15} :catchall_51

    .line 71
    :try_start_15
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_20

    .line 77
    :cond_18
    :goto_18
    new-instance v1, Ljava/lang/String;

    if-eqz v0, :cond_4d

    :goto_1c
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 73
    :catch_20
    move-exception v1

    .line 74
    const-string v2, "Exception while trying to close the InstallationFile"

    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    .line 66
    :catch_27
    move-exception v0

    move-object v2, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 67
    :goto_2c
    :try_start_2c
    const-string v3, "Exception while reading InstallationFile: "

    invoke-static {v3, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_51

    .line 70
    if-eqz v2, :cond_18

    .line 71
    :try_start_33
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_18

    .line 73
    :catch_37
    move-exception v1

    .line 74
    const-string v2, "Exception while trying to close the InstallationFile"

    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    .line 69
    :catchall_3e
    move-exception v0

    move-object v2, v1

    .line 70
    :goto_40
    if-eqz v2, :cond_45

    .line 71
    :try_start_42
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    .line 75
    :cond_45
    :goto_45
    throw v0

    .line 73
    :catch_46
    move-exception v1

    .line 74
    const-string v2, "Exception while trying to close the InstallationFile"

    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_45

    .line 77
    :cond_4d
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_1c

    .line 69
    :catchall_51
    move-exception v0

    goto :goto_40

    .line 66
    :catch_53
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2c

    :catch_58
    move-exception v1

    goto :goto_2c
.end method
