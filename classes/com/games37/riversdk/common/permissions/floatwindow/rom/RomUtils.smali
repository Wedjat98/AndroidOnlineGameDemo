.class public Lcom/games37/riversdk/common/permissions/floatwindow/rom/RomUtils;
.super Ljava/lang/Object;
.source "RomUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RomUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIs360Rom()Z
    .registers 2

    .prologue
    .line 99
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "QiKU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "360"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    .line 99
    :goto_15
    return v0

    .line 100
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static checkIsHuaweiRom()Z
    .registers 2

    .prologue
    .line 77
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static checkIsMeizuRom()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 88
    const-string v2, "ro.build.display.id"

    invoke-static {v2}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/RomUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "meizuFlymeOSFlag":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 94
    :cond_d
    :goto_d
    return v1

    .line 91
    :cond_e
    const-string v2, "flyme"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "flyme"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 92
    :cond_22
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public static checkIsMiuiRom()Z
    .registers 1

    .prologue
    .line 84
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/RomUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static checkIsOppoRom()Z
    .registers 2

    .prologue
    .line 104
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "OPPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static getEmuiVersion()D
    .registers 6

    .prologue
    .line 27
    :try_start_0
    const-string v3, "ro.build.version.emui"

    invoke-static {v3}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/RomUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "emuiVersion":Ljava/lang/String;
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "version":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-wide v4

    .line 33
    .end local v2    # "version":Ljava/lang/String;
    :goto_16
    return-wide v4

    .line 30
    :catch_17
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    goto :goto_16
.end method

.method public static getMiuiVersion()I
    .registers 5

    .prologue
    .line 42
    const-string v2, "ro.miui.ui.version.name"

    invoke-static {v2}, Lcom/games37/riversdk/common/permissions/floatwindow/rom/RomUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "version":Ljava/lang/String;
    if-eqz v1, :cond_2b

    .line 45
    const/4 v2, 0x1

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_12

    move-result v2

    .line 50
    :goto_11
    return v2

    .line 46
    :catch_12
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "RomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get miui version code error, version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    const/4 v2, -0x1

    goto :goto_11
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "propName"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v2, 0x0

    .line 57
    .local v2, "input":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getprop "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 58
    .local v5, "p":Ljava/lang/Process;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x400

    invoke-direct {v3, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2c} :catch_43
    .catchall {:try_start_1 .. :try_end_2c} :catchall_6c

    .line 59
    .end local v2    # "input":Ljava/io/BufferedReader;
    .local v3, "input":Ljava/io/BufferedReader;
    :try_start_2c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_7f
    .catchall {:try_start_2c .. :try_end_33} :catchall_7c

    .line 65
    if-eqz v3, :cond_38

    .line 67
    :try_start_35
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_3a

    :cond_38
    :goto_38
    move-object v2, v3

    .line 73
    .end local v3    # "input":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "p":Ljava/lang/Process;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :cond_39
    :goto_39
    return-object v4

    .line 68
    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "p":Ljava/lang/Process;
    :catch_3a
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "RomUtils"

    const-string v7, "Exception while closing InputStream"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 61
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "input":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "p":Ljava/lang/Process;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :catch_43
    move-exception v1

    .line 62
    .local v1, "ex":Ljava/io/IOException;
    :goto_44
    :try_start_44
    const-string v6, "RomUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read sysprop "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_44 .. :try_end_5c} :catchall_6c

    .line 63
    const/4 v4, 0x0

    .line 65
    if-eqz v2, :cond_39

    .line 67
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_39

    .line 68
    :catch_63
    move-exception v0

    .line 69
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "RomUtils"

    const-string v7, "Exception while closing InputStream"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_6c
    move-exception v6

    :goto_6d
    if-eqz v2, :cond_72

    .line 67
    :try_start_6f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    .line 70
    :cond_72
    :goto_72
    throw v6

    .line 68
    :catch_73
    move-exception v0

    .line 69
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "RomUtils"

    const-string v8, "Exception while closing InputStream"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_72

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    .restart local v5    # "p":Ljava/lang/Process;
    :catchall_7c
    move-exception v6

    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_6d

    .line 61
    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :catch_7f
    move-exception v1

    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_44
.end method
