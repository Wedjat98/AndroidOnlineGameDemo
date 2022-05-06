.class public Lcom/ledo/fantasy/game/AndroidSystemInfo;
.super Ljava/lang/Object;
.source "AndroidSystemInfo.java"


# static fields
.field private static batteryAvaliable:I = 0x0

.field private static final kCpuInfoMaxFreqFilePath:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/ledo/fantasy/game/AndroidSystemInfo;->batteryAvaliable:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppSrc()Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    .line 121
    sget v2, Lcom/ledo/fantasy/game/R$string;->update_need_select:I

    .line 120
    invoke-virtual {v1, v2}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "needtoselect":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->getPlatformID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    if-lez v0, :cond_28

    const-string v1, "small"

    :goto_1f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 123
    :cond_28
    const-string v1, "big"

    goto :goto_1f
.end method

.method public static getAvailabeSpace()J
    .registers 8

    .prologue
    .line 282
    const-wide/16 v2, 0x0

    .line 283
    .local v2, "blockSize":J
    const-wide/16 v0, 0x0

    .line 285
    .local v0, "availableBlocks":J
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/ledo/fantasy/game/GameApp;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_29

    .line 286
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 290
    .local v4, "path":Ljava/io/File;
    :goto_13
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 291
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 292
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 293
    mul-long v6, v0, v2

    return-wide v6

    .line 288
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "stat":Landroid/os/StatFs;
    :cond_29
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .restart local v4    # "path":Ljava/io/File;
    goto :goto_13
.end method

.method public static getBatteryAvaliable()I
    .registers 1

    .prologue
    .line 239
    sget v0, Lcom/ledo/fantasy/game/AndroidSystemInfo;->batteryAvaliable:I

    return v0
.end method

.method public static getCpuCount()I
    .registers 6

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, "count":I
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/devices/system/cpu/"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, "dir":Ljava/io/File;
    new-instance v4, Lcom/ledo/fantasy/game/AndroidSystemInfo$1CpuFilter;

    invoke-direct {v4}, Lcom/ledo/fantasy/game/AndroidSystemInfo$1CpuFilter;-><init>()V

    invoke-virtual {v1, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 180
    .local v3, "files":[Ljava/io/File;
    array-length v0, v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    .line 186
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    :goto_12
    return v0

    .line 181
    :catch_13
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    const-string v4, "getCpuCount"

    const-string v5, "exception"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public static getCpuName()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v10, 0x1

    .line 127
    const/4 v4, 0x0

    .line 128
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 129
    .local v1, "br":Ljava/io/BufferedReader;
    const-string v6, "notknown"

    .line 131
    .local v6, "result":Ljava/lang/String;
    :try_start_5
    new-instance v5, Ljava/io/FileReader;

    const-string v8, "/proc/cpuinfo"

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_c} :catch_2f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_48
    .catchall {:try_start_5 .. :try_end_c} :catchall_61

    .line 132
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_c
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_11} :catch_91
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_8a
    .catchall {:try_start_c .. :try_end_11} :catchall_83

    .line 133
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "text":Ljava/lang/String;
    const-string v8, ":\\s+"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "array":[Ljava/lang/String;
    array-length v8, v0

    if-le v8, v10, :cond_22

    .line 136
    const/4 v8, 0x1

    aget-object v6, v0, v8
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_22} :catch_94
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_22} :catch_8d
    .catchall {:try_start_11 .. :try_end_22} :catchall_86

    .line 143
    :cond_22
    if-eqz v5, :cond_27

    .line 145
    :try_start_24
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_77

    .line 150
    :cond_27
    :goto_27
    if-eqz v2, :cond_80

    .line 152
    :try_start_29
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_7c

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 158
    .end local v0    # "array":[Ljava/lang/String;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v7    # "text":Ljava/lang/String;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :cond_2e
    :goto_2e
    return-object v6

    .line 138
    :catch_2f
    move-exception v3

    .line 139
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_30
    :try_start_30
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_61

    .line 143
    if-eqz v4, :cond_38

    .line 145
    :try_start_35
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_43

    .line 150
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_38
    :goto_38
    if-eqz v1, :cond_2e

    .line 152
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_2e

    .line 153
    :catch_3e
    move-exception v3

    .line 154
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    .line 146
    .local v3, "e":Ljava/io/FileNotFoundException;
    :catch_43
    move-exception v3

    .line 147
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    .line 140
    .end local v3    # "e":Ljava/io/IOException;
    :catch_48
    move-exception v3

    .line 141
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_49
    :try_start_49
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_61

    .line 143
    if-eqz v4, :cond_51

    .line 145
    :try_start_4e
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_5c

    .line 150
    :cond_51
    :goto_51
    if-eqz v1, :cond_2e

    .line 152
    :try_start_53
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_2e

    .line 153
    :catch_57
    move-exception v3

    .line 154
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    .line 146
    :catch_5c
    move-exception v3

    .line 147
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .line 142
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_61
    move-exception v8

    .line 143
    :goto_62
    if-eqz v4, :cond_67

    .line 145
    :try_start_64
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_6d

    .line 150
    :cond_67
    :goto_67
    if-eqz v1, :cond_6c

    .line 152
    :try_start_69
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_72

    .line 157
    :cond_6c
    :goto_6c
    throw v8

    .line 146
    :catch_6d
    move-exception v3

    .line 147
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    .line 153
    .end local v3    # "e":Ljava/io/IOException;
    :catch_72
    move-exception v3

    .line 154
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6c

    .line 146
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v7    # "text":Ljava/lang/String;
    :catch_77
    move-exception v3

    .line 147
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    .line 153
    .end local v3    # "e":Ljava/io/IOException;
    :catch_7c
    move-exception v3

    .line 154
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    :cond_80
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2e

    .line 142
    .end local v0    # "array":[Ljava/lang/String;
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v7    # "text":Ljava/lang/String;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_83
    move-exception v8

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_62

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_86
    move-exception v8

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_62

    .line 140
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_8a
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_49

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_8d
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_49

    .line 138
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_91
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_30

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_94
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_30
.end method

.method public static getCurNetWorkType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 257
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ledo/fantasy/game/GameApp;->getCurNetWorkType()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "strResult":Ljava/lang/String;
    return-object v0
.end method

.method public static getFreeMemSize()I
    .registers 2

    .prologue
    .line 243
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ledo/fantasy/game/GameApp;->getCurFreeMemSize()I

    move-result v0

    .line 244
    .local v0, "nResult":I
    return v0
.end method

.method public static getGPUName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 253
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->getGPUName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ledo/fantasy/game/GameApp;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "strResult":Ljava/lang/String;
    return-object v0
.end method

.method public static getMaxCpuFreq()I
    .registers 8

    .prologue
    .line 81
    const/4 v5, 0x0

    .line 82
    .local v5, "result":I
    const/4 v3, 0x0

    .line 83
    .local v3, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 85
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v4, Ljava/io/FileReader;

    const-string v7, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v4, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_a} :catch_2a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_43
    .catchall {:try_start_3 .. :try_end_a} :catchall_5c

    .line 86
    .end local v3    # "fr":Ljava/io/FileReader;
    .local v4, "fr":Ljava/io/FileReader;
    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_f} :catch_8c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_85
    .catchall {:try_start_a .. :try_end_f} :catchall_7e

    .line 87
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "text":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 89
    div-int/lit16 v5, v5, 0x3e8
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_1d} :catch_8f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_88
    .catchall {:try_start_f .. :try_end_1d} :catchall_81

    .line 95
    if-eqz v4, :cond_22

    .line 97
    :try_start_1f
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_72

    .line 102
    :cond_22
    :goto_22
    if-eqz v1, :cond_7b

    .line 104
    :try_start_24
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_77

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 111
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v6    # "text":Ljava/lang/String;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :cond_29
    :goto_29
    return v5

    .line 90
    :catch_2a
    move-exception v2

    .line 91
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2b
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_5c

    .line 95
    if-eqz v3, :cond_33

    .line 97
    :try_start_30
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_3e

    .line 102
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_33
    :goto_33
    if-eqz v0, :cond_29

    .line 104
    :try_start_35
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_29

    .line 105
    :catch_39
    move-exception v2

    .line 106
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 98
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_3e
    move-exception v2

    .line 99
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 92
    .end local v2    # "e":Ljava/io/IOException;
    :catch_43
    move-exception v2

    .line 93
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_44
    :try_start_44
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_5c

    .line 95
    if-eqz v3, :cond_4c

    .line 97
    :try_start_49
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_57

    .line 102
    :cond_4c
    :goto_4c
    if-eqz v0, :cond_29

    .line 104
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_29

    .line 105
    :catch_52
    move-exception v2

    .line 106
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 98
    :catch_57
    move-exception v2

    .line 99
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    .line 94
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_5c
    move-exception v7

    .line 95
    :goto_5d
    if-eqz v3, :cond_62

    .line 97
    :try_start_5f
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_68

    .line 102
    :cond_62
    :goto_62
    if-eqz v0, :cond_67

    .line 104
    :try_start_64
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_6d

    .line 109
    :cond_67
    :goto_67
    throw v7

    .line 98
    :catch_68
    move-exception v2

    .line 99
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    .line 105
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6d
    move-exception v2

    .line 106
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    .line 98
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    .restart local v6    # "text":Ljava/lang/String;
    :catch_72
    move-exception v2

    .line 99
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 105
    .end local v2    # "e":Ljava/io/IOException;
    :catch_77
    move-exception v2

    .line 106
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_7b
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_29

    .line 94
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v6    # "text":Ljava/lang/String;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catchall_7e
    move-exception v7

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_5d

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catchall_81
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_5d

    .line 92
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_85
    move-exception v2

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_44

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_88
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_44

    .line 90
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_8c
    move-exception v2

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_2b

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_8f
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_2b
.end method

.method public static getOSVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 115
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 116
    .local v0, "strOSVersion":Ljava/lang/String;
    return-object v0
.end method

.method public static getProductModel()Ljava/lang/String;
    .registers 1

    .prologue
    .line 248
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 249
    .local v0, "strModel":Ljava/lang/String;
    return-object v0
.end method

.method public static getScreenHeightInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 277
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ledo/fantasy/game/GameApp;->getScreenHeightInfo()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "strResult":Ljava/lang/String;
    return-object v0
.end method

.method public static getScreenResolution()Ljava/lang/String;
    .registers 2

    .prologue
    .line 267
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ledo/fantasy/game/GameApp;->getScreenResolution()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "strResult":Ljava/lang/String;
    return-object v0
.end method

.method public static getScreenWidthInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 272
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ledo/fantasy/game/GameApp;->getScreenWidthInfo()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "strResult":Ljava/lang/String;
    return-object v0
.end method

.method public static getSimOperatorInfo()Ljava/lang/String;
    .registers 8

    .prologue
    .line 33
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v6

    if-nez v6, :cond_9

    .line 34
    const-string v4, "others#0"

    .line 71
    .local v1, "strIMEI":Ljava/lang/String;
    .local v2, "strName":Ljava/lang/String;
    .local v3, "strOpeCode":Ljava/lang/String;
    .local v4, "strResult":Ljava/lang/String;
    :goto_8
    return-object v4

    .line 36
    .end local v1    # "strIMEI":Ljava/lang/String;
    .end local v2    # "strName":Ljava/lang/String;
    .end local v3    # "strOpeCode":Ljava/lang/String;
    .end local v4    # "strResult":Ljava/lang/String;
    :cond_9
    const-string v4, "others#0"

    .line 37
    .restart local v4    # "strResult":Ljava/lang/String;
    const-string v2, "others"

    .line 38
    .restart local v2    # "strName":Ljava/lang/String;
    const-string v3, "0"

    .line 39
    .restart local v3    # "strOpeCode":Ljava/lang/String;
    const-string v1, "0"

    .line 41
    .restart local v1    # "strIMEI":Ljava/lang/String;
    :try_start_11
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Lcom/ledo/fantasy/game/GameApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 42
    .local v5, "telephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_50

    .line 43
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2a

    .line 45
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 47
    :cond_2a
    if-eqz v3, :cond_34

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 48
    :cond_34
    const-string v3, "0"

    .line 50
    :cond_36
    const-string v6, "46000"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4e

    const-string v6, "46002"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4e

    const-string v6, "46007"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 51
    :cond_4e
    const-string v2, "chinamobile"
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_50} :catch_ae

    .line 69
    .end local v5    # "telephonyMgr":Landroid/telephony/TelephonyManager;
    :cond_50
    :goto_50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    goto :goto_8

    .line 52
    .restart local v5    # "telephonyMgr":Landroid/telephony/TelephonyManager;
    :cond_72
    :try_start_72
    const-string v6, "46001"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_82

    const-string v6, "46006"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 53
    :cond_82
    const-string v2, "chinaunicom"

    .line 54
    goto :goto_50

    :cond_85
    const-string v6, "46003"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9d

    const-string v6, "46005"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9d

    const-string v6, "46011"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 55
    :cond_9d
    const-string v2, "chinatelecom"

    .line 56
    goto :goto_50

    :cond_a0
    const-string v6, "46020"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 57
    const-string v2, "chinatietong"

    .line 58
    goto :goto_50

    .line 59
    :cond_ab
    const-string v2, "others"
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_ad} :catch_ae

    goto :goto_50

    .line 63
    .end local v5    # "telephonyMgr":Landroid/telephony/TelephonyManager;
    :catch_ae
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "others"

    .line 65
    const-string v3, "0"

    .line 66
    const-string v1, "0"

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_50
.end method

.method public static getTotalMemSize()I
    .registers 13

    .prologue
    const/4 v12, 0x1

    .line 190
    const/4 v7, 0x0

    .line 191
    .local v7, "sizeMemory":I
    const-string v8, "/proc/meminfo"

    .line 194
    .local v8, "str1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 195
    .local v4, "localFileReader":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 197
    .local v2, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_6
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_52
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_6b
    .catchall {:try_start_6 .. :try_end_b} :catchall_84

    .line 198
    .end local v4    # "localFileReader":Ljava/io/FileReader;
    .local v5, "localFileReader":Ljava/io/FileReader;
    :try_start_b
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v10, 0x2000

    invoke-direct {v3, v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_12} :catch_b4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_ad
    .catchall {:try_start_b .. :try_end_12} :catchall_a6

    .line 199
    .end local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .local v3, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, "str2":Ljava/lang/String;
    const-string v10, "getTotalMemSize"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v10, "\\s+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "arrayOfString":[Ljava/lang/String;
    array-length v11, v0

    const/4 v10, 0x0

    :goto_23
    if-lt v10, v11, :cond_4a

    .line 207
    array-length v10, v0

    if-le v10, v12, :cond_3d

    .line 208
    const-string v10, "getTotalMemSize"

    const/4 v11, 0x1

    aget-object v11, v0, v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    div-int/lit16 v7, v10, 0x400
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_3d} :catch_b7
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_3d} :catch_b0
    .catchall {:try_start_12 .. :try_end_3d} :catchall_a9

    .line 216
    :cond_3d
    if-eqz v5, :cond_42

    .line 218
    :try_start_3f
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_9a

    .line 223
    :cond_42
    :goto_42
    if-eqz v3, :cond_a3

    .line 225
    :try_start_44
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_9f

    move-object v2, v3

    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 231
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .end local v9    # "str2":Ljava/lang/String;
    .restart local v4    # "localFileReader":Ljava/io/FileReader;
    :cond_49
    :goto_49
    return v7

    .line 204
    .end local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "localFileReader":Ljava/io/FileReader;
    .restart local v0    # "arrayOfString":[Ljava/lang/String;
    .restart local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v9    # "str2":Ljava/lang/String;
    :cond_4a
    :try_start_4a
    aget-object v6, v0, v10

    .line 205
    .local v6, "num":Ljava/lang/String;
    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_4f} :catch_b7
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4f} :catch_b0
    .catchall {:try_start_4a .. :try_end_4f} :catchall_a9

    .line 204
    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    .line 211
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .end local v6    # "num":Ljava/lang/String;
    .end local v9    # "str2":Ljava/lang/String;
    .restart local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "localFileReader":Ljava/io/FileReader;
    :catch_52
    move-exception v1

    .line 212
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_53
    :try_start_53
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_84

    .line 216
    if-eqz v4, :cond_5b

    .line 218
    :try_start_58
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_66

    .line 223
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_5b
    :goto_5b
    if-eqz v2, :cond_49

    .line 225
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_49

    .line 226
    :catch_61
    move-exception v1

    .line 227
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    .line 219
    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_66
    move-exception v1

    .line 220
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    .line 213
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6b
    move-exception v1

    .line 214
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_6c
    :try_start_6c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_84

    .line 216
    if-eqz v4, :cond_74

    .line 218
    :try_start_71
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_7f

    .line 223
    :cond_74
    :goto_74
    if-eqz v2, :cond_49

    .line 225
    :try_start_76
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_49

    .line 226
    :catch_7a
    move-exception v1

    .line 227
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    .line 219
    :catch_7f
    move-exception v1

    .line 220
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_74

    .line 215
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_84
    move-exception v10

    .line 216
    :goto_85
    if-eqz v4, :cond_8a

    .line 218
    :try_start_87
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_90

    .line 223
    :cond_8a
    :goto_8a
    if-eqz v2, :cond_8f

    .line 225
    :try_start_8c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_95

    .line 230
    :cond_8f
    :goto_8f
    throw v10

    .line 219
    :catch_90
    move-exception v1

    .line 220
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8a

    .line 226
    .end local v1    # "e":Ljava/io/IOException;
    :catch_95
    move-exception v1

    .line 227
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8f

    .line 219
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "localFileReader":Ljava/io/FileReader;
    .restart local v0    # "arrayOfString":[Ljava/lang/String;
    .restart local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v9    # "str2":Ljava/lang/String;
    :catch_9a
    move-exception v1

    .line 220
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 226
    .end local v1    # "e":Ljava/io/IOException;
    :catch_9f
    move-exception v1

    .line 227
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_a3
    move-object v2, v3

    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v4    # "localFileReader":Ljava/io/FileReader;
    goto :goto_49

    .line 215
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v4    # "localFileReader":Ljava/io/FileReader;
    .end local v9    # "str2":Ljava/lang/String;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    :catchall_a6
    move-exception v10

    move-object v4, v5

    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v4    # "localFileReader":Ljava/io/FileReader;
    goto :goto_85

    .end local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "localFileReader":Ljava/io/FileReader;
    .restart local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    :catchall_a9
    move-exception v10

    move-object v2, v3

    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v4    # "localFileReader":Ljava/io/FileReader;
    goto :goto_85

    .line 213
    .end local v4    # "localFileReader":Ljava/io/FileReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    :catch_ad
    move-exception v1

    move-object v4, v5

    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v4    # "localFileReader":Ljava/io/FileReader;
    goto :goto_6c

    .end local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "localFileReader":Ljava/io/FileReader;
    .restart local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    :catch_b0
    move-exception v1

    move-object v2, v3

    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v4    # "localFileReader":Ljava/io/FileReader;
    goto :goto_6c

    .line 211
    .end local v4    # "localFileReader":Ljava/io/FileReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    :catch_b4
    move-exception v1

    move-object v4, v5

    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v4    # "localFileReader":Ljava/io/FileReader;
    goto :goto_53

    .end local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "localFileReader":Ljava/io/FileReader;
    .restart local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    :catch_b7
    move-exception v1

    move-object v2, v3

    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v4    # "localFileReader":Ljava/io/FileReader;
    goto :goto_53
.end method

.method public static getVersionName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 297
    const-string v2, ""

    .line 298
    .local v2, "strVersionName":Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    .line 300
    .local v0, "context":Landroid/content/Context;
    :try_start_6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 301
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 300
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 301
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_16

    .line 306
    :goto_15
    return-object v2

    .line 302
    :catch_16
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, ""

    .line 304
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static isHasStorageCard()Z
    .registers 3

    .prologue
    .line 75
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 76
    .local v0, "isHasStorageCard":Z
    const-string v1, "androidsdcard:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return v0
.end method

.method public static setBatteryAvaliable(I)V
    .registers 1
    .param p0, "battery"    # I

    .prologue
    .line 235
    sput p0, Lcom/ledo/fantasy/game/AndroidSystemInfo;->batteryAvaliable:I

    .line 236
    return-void
.end method
