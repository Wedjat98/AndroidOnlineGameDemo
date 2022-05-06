.class public Lcom/games37/riversdk/common/utils/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# static fields
.field public static final FAILED:I = 0x1

.field public static final GET:I = 0x1

.field public static final INVALID:Ljava/lang/String; = "invalid"

.field public static final NETWORKTYPE_2G:I = 0x2

.field public static final NETWORKTYPE_3G:I = 0x3

.field public static final NETWORKTYPE_INVALID:I = 0x0

.field public static final NETWORKTYPE_WAP:I = 0x5

.field public static final NETWORKTYPE_WIFI:I = 0x1

.field public static final POST:I = 0x0

.field public static final SUCCESS:I = 0x2

.field public static final TAG:Ljava/lang/String; = "NetUtil"

.field public static final WAP:Ljava/lang/String; = "wap"

.field public static final WIFI:Ljava/lang/String; = "wifi"

.field public static final _2G:Ljava/lang/String; = "2g"

.field public static final _3G:Ljava/lang/String; = "3g"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .registers 8

    .prologue
    .line 62
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 63
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 65
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_14
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 66
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 67
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_14

    .line 68
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_14

    .line 69
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_33
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_33} :catch_35

    move-result-object v5

    .line 77
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :goto_34
    return-object v5

    .line 73
    :catch_35
    move-exception v2

    .line 74
    .local v2, "ex":Ljava/net/SocketException;
    const-string v5, "NetUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiPreference IpAddress error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v2    # "ex":Ljava/net/SocketException;
    :cond_52
    const/4 v5, 0x0

    goto :goto_34
.end method

.method public static getNetWorkType(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const-string v3, "connectivity"

    .line 108
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 109
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 111
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 112
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 115
    :goto_18
    return-object v2

    :cond_19
    const-string v2, "NETWORK_INVAILD"

    goto :goto_18
.end method

.method public static hasNetwork(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const-string v2, "connectivity"

    .line 88
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 89
    .local v0, "con":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 90
    .local v1, "workinfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_16

    .line 91
    :cond_14
    const/4 v2, 0x0

    .line 93
    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x1

    goto :goto_15
.end method

.method public static isFastMobileNetwork(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 122
    const-string v3, "phone"

    .line 123
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 124
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    packed-switch v3, :pswitch_data_26

    .line 173
    :goto_11
    :pswitch_11
    return v1

    :pswitch_12
    move v1, v2

    .line 136
    goto :goto_11

    :pswitch_14
    move v1, v2

    .line 139
    goto :goto_11

    :pswitch_16
    move v1, v2

    .line 145
    goto :goto_11

    :pswitch_18
    move v1, v2

    .line 148
    goto :goto_11

    :pswitch_1a
    move v1, v2

    .line 151
    goto :goto_11

    :pswitch_1c
    move v1, v2

    .line 154
    goto :goto_11

    :pswitch_1e
    move v1, v2

    .line 157
    goto :goto_11

    :pswitch_20
    move v1, v2

    .line 160
    goto :goto_11

    :pswitch_22
    move v1, v2

    .line 163
    goto :goto_11

    :pswitch_24
    move v1, v2

    .line 169
    goto :goto_11

    .line 124
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_1c
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_11
        :pswitch_16
        :pswitch_1a
        :pswitch_18
        :pswitch_11
        :pswitch_20
        :pswitch_24
        :pswitch_1e
        :pswitch_22
    .end packed-switch
.end method
