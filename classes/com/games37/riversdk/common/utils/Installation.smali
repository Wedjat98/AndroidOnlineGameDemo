.class public Lcom/games37/riversdk/common/utils/Installation;
.super Ljava/lang/Object;
.source "Installation.java"


# static fields
.field private static final INSTALLATION:Ljava/lang/String; = "RIVERSDK_INSTALLATION"

.field private static isFirst:Z

.field private static sID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/games37/riversdk/common/utils/Installation;->sID:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/games37/riversdk/common/utils/Installation;->isFirst:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static generateId(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 78
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_3a

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "id":Ljava/lang/String;
    :goto_39
    return-object v0

    .line 81
    .end local v0    # "id":Ljava/lang/String;
    :cond_3a
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "id":Ljava/lang/String;
    goto :goto_39
.end method

.method public static declared-synchronized id(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-class v4, Lcom/games37/riversdk/common/utils/Installation;

    monitor-enter v4

    :try_start_3
    sget-object v3, Lcom/games37/riversdk/common/utils/Installation;->sID:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 31
    invoke-static {p0}, Lcom/games37/riversdk/common/utils/Installation;->readInstallationSP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "tmpSId":Ljava/lang/String;
    if-eqz v1, :cond_16

    .line 33
    sput-object v1, Lcom/games37/riversdk/common/utils/Installation;->sID:Ljava/lang/String;

    .line 34
    const/4 v3, 0x0

    sput-boolean v3, Lcom/games37/riversdk/common/utils/Installation;->isFirst:Z

    .line 57
    .end local v1    # "tmpSId":Ljava/lang/String;
    :cond_12
    :goto_12
    sget-object v3, Lcom/games37/riversdk/common/utils/Installation;->sID:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_3d

    monitor-exit v4

    return-object v3

    .line 36
    .restart local v1    # "tmpSId":Ljava/lang/String;
    :cond_16
    :try_start_16
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v5, "RIVERSDK_INSTALLATION"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_3d

    .line 39
    .local v0, "installation":Ljava/io/File;
    :try_start_21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_40

    .line 41
    invoke-static {p0}, Lcom/games37/riversdk/common/utils/Installation;->generateId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/games37/riversdk/common/utils/Installation;->sID:Ljava/lang/String;

    .line 42
    const/4 v3, 0x1

    sput-boolean v3, Lcom/games37/riversdk/common/utils/Installation;->isFirst:Z

    .line 50
    :goto_30
    sget-object v3, Lcom/games37/riversdk/common/utils/Installation;->sID:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/games37/riversdk/common/utils/Installation;->writeInstallationSP(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_35} :catch_36
    .catchall {:try_start_21 .. :try_end_35} :catchall_3d

    goto :goto_12

    .line 51
    :catch_36
    move-exception v2

    .line 52
    .local v2, "var4":Ljava/lang/Exception;
    :try_start_37
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3d

    .line 30
    .end local v0    # "installation":Ljava/io/File;
    .end local v1    # "tmpSId":Ljava/lang/String;
    .end local v2    # "var4":Ljava/lang/Exception;
    :catchall_3d
    move-exception v3

    monitor-exit v4

    throw v3

    .line 45
    .restart local v0    # "installation":Ljava/io/File;
    .restart local v1    # "tmpSId":Ljava/lang/String;
    :cond_40
    :try_start_40
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/Installation;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/games37/riversdk/common/utils/Installation;->sID:Ljava/lang/String;

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 47
    const/4 v3, 0x0

    sput-boolean v3, Lcom/games37/riversdk/common/utils/Installation;->isFirst:Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4c} :catch_36
    .catchall {:try_start_40 .. :try_end_4c} :catchall_3d

    goto :goto_30
.end method

.method public static isFirstInstall(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    sget-boolean v0, Lcom/games37/riversdk/common/utils/Installation;->isFirst:Z

    return v0
.end method

.method private static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .param p0, "installation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v1, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    .line 63
    .local v0, "bytes":[B
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 64
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 65
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private static readInstallationSP(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const-string v0, "RIVERSDK_INSTALLATION"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static writeInstallationFile(Ljava/io/File;Landroid/content/Context;)V
    .registers 5
    .param p0, "installation"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 70
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/Installation;->generateId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 72
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 73
    return-void
.end method

.method private static writeInstallationSP(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p0}, Lcom/games37/riversdk/common/utils/Installation;->generateId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/games37/riversdk/common/utils/Installation;->writeInstallationSP(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private static writeInstallationSP(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sId"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 97
    const-string v0, "RIVERSDK_INSTALLATION"

    invoke-static {p0, v0, p1}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method
