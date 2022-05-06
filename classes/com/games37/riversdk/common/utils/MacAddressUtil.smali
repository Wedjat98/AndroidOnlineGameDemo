.class public Lcom/games37/riversdk/common/utils/MacAddressUtil;
.super Ljava/lang/Object;
.source "MacAddressUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string v0, ""

    return-object v0
.end method

.method private static getRawMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    :try_start_0
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 41
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_13

    move-result-object v1

    .line 42
    .local v1, "wifiAddress":Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 61
    .end local v1    # "wifiAddress":Ljava/lang/String;
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_12
    return-object v1

    .line 45
    :catch_13
    move-exception v4

    .line 50
    :cond_14
    const-string v4, "wlan0"

    invoke-static {v4}, Lcom/games37/riversdk/common/utils/MacAddressUtil;->loadAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "wlanAddress":Ljava/lang/String;
    if-eqz v3, :cond_1e

    move-object v1, v3

    .line 52
    goto :goto_12

    .line 56
    :cond_1e
    const-string v4, "eth0"

    invoke-static {v4}, Lcom/games37/riversdk/common/utils/MacAddressUtil;->loadAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "ethAddress":Ljava/lang/String;
    if-eqz v0, :cond_28

    move-object v1, v0

    .line 58
    goto :goto_12

    .line 61
    :cond_28
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private static loadAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 71
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/sys/class/net/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/address"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v7, 0x3e8

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 73
    .local v2, "fileData":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x400

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 74
    .local v6, "reader":Ljava/io/BufferedReader;
    const/16 v7, 0x400

    new-array v0, v7, [C

    .line 78
    .local v0, "buf":[C
    :goto_30
    invoke-virtual {v6, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    .local v4, "numRead":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_43

    .line 79
    const/4 v7, 0x0

    invoke-static {v0, v7, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "readData":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 85
    .end local v0    # "buf":[C
    .end local v2    # "fileData":Ljava/lang/StringBuilder;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "numRead":I
    .end local v5    # "readData":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :catch_40
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/IOException;
    const/4 v7, 0x0

    .end local v1    # "e":Ljava/io/IOException;
    :goto_42
    return-object v7

    .line 83
    .restart local v0    # "buf":[C
    .restart local v2    # "fileData":Ljava/lang/StringBuilder;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "numRead":I
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_43
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_49} :catch_40

    move-result-object v7

    goto :goto_42
.end method

.method private static removeSpaceString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "inputString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 97
    if-nez p0, :cond_5

    move-object v0, v1

    .line 106
    :cond_4
    :goto_4
    return-object v0

    .line 101
    :cond_5
    const-string v2, "\\s"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "outputString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 103
    goto :goto_4
.end method
