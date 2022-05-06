.class final Lcom/bumptech/glide/load/engine/executor/RuntimeCompat;
.super Ljava/lang/Object;
.source "RuntimeCompat.java"


# static fields
.field private static final CPU_LOCATION:Ljava/lang/String; = "/sys/devices/system/cpu/"

.field private static final CPU_NAME_REGEX:Ljava/lang/String; = "cpu[0-9]+"

.field private static final TAG:Ljava/lang/String; = "GlideRuntimeCompat"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static availableProcessors()I
    .registers 3

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 28
    .local v0, "cpus":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_16

    .line 29
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/RuntimeCompat;->getCoreCountPre17()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 31
    :cond_16
    return v0
.end method

.method private static getCoreCountPre17()I
    .registers 7

    .prologue
    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, "cpus":[Ljava/io/File;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 51
    .local v3, "originalPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    new-instance v0, Ljava/io/File;

    const-string v5, "/sys/devices/system/cpu/"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "cpuInfo":Ljava/io/File;
    const-string v5, "cpu[0-9]+"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 53
    .local v1, "cpuNamePattern":Ljava/util/regex/Pattern;
    new-instance v5, Lcom/bumptech/glide/load/engine/executor/RuntimeCompat$1;

    invoke-direct {v5, v1}, Lcom/bumptech/glide/load/engine/executor/RuntimeCompat$1;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v0, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1a} :catch_27
    .catchall {:try_start_5 .. :try_end_1a} :catchall_3c

    move-result-object v2

    .line 64
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 66
    .end local v0    # "cpuInfo":Ljava/io/File;
    .end local v1    # "cpuNamePattern":Ljava/util/regex/Pattern;
    :goto_1e
    const/4 v6, 0x1

    if-eqz v2, :cond_41

    array-length v5, v2

    :goto_22
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    return v5

    .line 59
    :catch_27
    move-exception v4

    .line 60
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_28
    const-string v5, "GlideRuntimeCompat"

    const/4 v6, 0x6

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 61
    const-string v5, "GlideRuntimeCompat"

    const-string v6, "Failed to calculate accurate cpu count"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_3c

    .line 64
    :cond_38
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1e

    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_3c
    move-exception v5

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5

    .line 66
    :cond_41
    const/4 v5, 0x0

    goto :goto_22
.end method
