.class final Lcom/appsflyer/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/i$d;,
        Lcom/appsflyer/i$b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ˏ(Landroid/content/Context;)Lcom/appsflyer/i$b;
    .registers 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 86
    const-string v3, "unknown"

    .line 7069
    :try_start_5
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 7070
    if-eqz v0, :cond_c2

    .line 7073
    const/16 v5, 0x15

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v5, v6, :cond_74

    .line 9034
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v7

    .line 9035
    array-length v8, v7

    move v6, v4

    :goto_1b
    if-ge v6, v8, :cond_71

    aget-object v5, v7, v6

    .line 9036
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v9

    .line 11029
    if-eqz v9, :cond_5f

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_5f

    move v5, v2

    .line 10037
    :goto_2c
    if-eqz v5, :cond_6d

    .line 10038
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v2, v0, :cond_61

    .line 10039
    const-string v3, "WIFI"

    .line 93
    :goto_36
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 94
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_41} :catch_c6

    move-result-object v2

    .line 95
    :try_start_42
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_d0

    move-result-object v1

    .line 96
    if-eqz v1, :cond_4e

    :try_start_48
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_de

    .line 97
    :cond_4e
    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v4, v0, :cond_de

    .line 98
    const-string v0, "CDMA"
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_57} :catch_d7

    :goto_57
    move-object v1, v2

    move-object v2, v3

    .line 105
    :goto_59
    new-instance v3, Lcom/appsflyer/i$b;

    invoke-direct {v3, v2, v0, v1}, Lcom/appsflyer/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_5f
    move v5, v4

    .line 11029
    goto :goto_2c

    .line 10041
    :cond_61
    :try_start_61
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_6a

    .line 10042
    const-string v3, "MOBILE"

    goto :goto_36

    .line 10044
    :cond_6a
    const-string v3, "unknown"

    goto :goto_36

    .line 10035
    :cond_6d
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1b

    .line 10047
    :cond_71
    const-string v3, "unknown"

    goto :goto_36

    .line 12051
    :cond_74
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 14029
    if-eqz v5, :cond_87

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_87

    move v5, v2

    .line 13051
    :goto_82
    if-eqz v5, :cond_89

    .line 13052
    const-string v3, "WIFI"

    goto :goto_36

    :cond_87
    move v5, v4

    .line 14029
    goto :goto_82

    .line 13054
    :cond_89
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 16029
    if-eqz v5, :cond_9c

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_9c

    move v5, v2

    .line 14054
    :goto_97
    if-eqz v5, :cond_9e

    .line 14055
    const-string v3, "MOBILE"

    goto :goto_36

    :cond_9c
    move v5, v4

    .line 16029
    goto :goto_97

    .line 14057
    :cond_9e
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 18029
    if-eqz v5, :cond_b6

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_b6

    move v0, v2

    .line 15058
    :goto_ab
    if-eqz v0, :cond_c2

    .line 15059
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v2, v0, :cond_b8

    .line 15060
    const-string v3, "WIFI"

    goto :goto_36

    :cond_b6
    move v0, v4

    .line 18029
    goto :goto_ab

    .line 15061
    :cond_b8
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_c2

    .line 15062
    const-string v3, "MOBILE"

    goto/16 :goto_36

    .line 15065
    :cond_c2
    const-string v3, "unknown"
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_c4} :catch_c6

    goto/16 :goto_36

    .line 102
    :catch_c6
    move-exception v0

    move-object v2, v3

    move-object v3, v0

    move-object v0, v1

    .line 103
    :goto_ca
    const-string v4, "Exception while collecting network info. "

    invoke-static {v4, v3}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_59

    .line 102
    :catch_d0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v10

    goto :goto_ca

    :catch_d7
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v10

    goto :goto_ca

    :cond_de
    move-object v0, v1

    goto/16 :goto_57
.end method
