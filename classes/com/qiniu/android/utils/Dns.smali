.class public final Lcom/qiniu/android/utils/Dns;
.super Ljava/lang/Object;
.source "Dns.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "hostName"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/qiniu/android/utils/Dns;->getAddresses(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "array":[Ljava/lang/String;
    if-eqz v0, :cond_9

    array-length v1, v0

    if-nez v1, :cond_b

    .line 35
    :cond_9
    const/4 v1, 0x0

    .line 37
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_a
.end method

.method public static getAddresses(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "hostName"    # Ljava/lang/String;

    .prologue
    .line 18
    const/4 v3, 0x0

    .line 20
    .local v3, "ret":[Ljava/net/InetAddress;
    :try_start_1
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_4} :catch_17

    move-result-object v3

    .line 25
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    .line 26
    .local v2, "r":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v4, v2

    if-ge v1, v4, :cond_1e

    .line 27
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 21
    .end local v1    # "i":I
    .end local v2    # "r":[Ljava/lang/String;
    :catch_17
    move-exception v0

    .line 22
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 23
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    .line 29
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_1e
    return-object v2
.end method

.method public static getAddressesString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "hostName"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/qiniu/android/utils/Dns;->getAddresses(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v0, v1}, Lcom/qiniu/android/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
