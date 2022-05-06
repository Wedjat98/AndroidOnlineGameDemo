.class public Lcom/ledo/fantasy/game/SystemUIUtil;
.super Ljava/lang/Object;
.source "SystemUIUtil.java"


# static fields
.field static condor:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/ledo/fantasy/game/SystemUIUtil;->condor:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AsynDownloadOneFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "index"    # I

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ledo/fantasy/update/AsynFileDownloader;->StartDownloadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 48
    return-void
.end method

.method public static getTimeStr(J)Ljava/lang/String;
    .registers 3
    .param p0, "p_lCurrentTime"    # J

    .prologue
    .line 82
    const-string v0, "Time:00:00:00"

    return-object v0
.end method

.method public static getUpdateResourceStrByName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    sget v1, Lcom/ledo/fantasy/game/R$string;->ld_subplat:I

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionStr()Ljava/lang/String;
    .registers 5

    .prologue
    .line 87
    const-string v2, ""

    .line 89
    .local v2, "l_version":Ljava/lang/String;
    :try_start_2
    sget-object v3, Lcom/ledo/fantasy/game/SystemUIUtil;->condor:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 90
    .local v1, "l_pManager":Landroid/content/pm/PackageManager;
    sget-object v3, Lcom/ledo/fantasy/game/SystemUIUtil;->condor:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 91
    .local v0, "l_pInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_28

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 93
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_29

    .line 98
    .end local v0    # "l_pInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "l_pManager":Landroid/content/pm/PackageManager;
    :cond_28
    :goto_28
    return-object v2

    .line 95
    :catch_29
    move-exception v3

    goto :goto_28
.end method

.method public static is3GEnabled()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 65
    sget-object v4, Lcom/ledo/fantasy/game/SystemUIUtil;->condor:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 66
    .local v2, "l_contex":Landroid/content/Context;
    if-eqz v2, :cond_1b

    .line 68
    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 69
    .local v0, "l_CM":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 71
    .local v1, "l_NetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1b

    .line 73
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    .line 77
    .end local v0    # "l_CM":Landroid/net/ConnectivityManager;
    .end local v1    # "l_NetworkInfo":Landroid/net/NetworkInfo;
    :cond_1b
    return v3
.end method

.method public static isWifiActive()Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ledo/fantasy/game/GameApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 120
    .local v1, "context":Landroid/content/Context;
    const-string v5, "connectivity"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 121
    .local v0, "connectivityMgr":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1d

    .line 123
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 124
    .local v2, "infos":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1d

    .line 126
    array-length v6, v2

    move v5, v4

    :goto_1b
    if-lt v5, v6, :cond_1e

    .line 135
    .end local v2    # "infos":[Landroid/net/NetworkInfo;
    :cond_1d
    :goto_1d
    return v4

    .line 126
    .restart local v2    # "infos":[Landroid/net/NetworkInfo;
    :cond_1e
    aget-object v3, v2, v5

    .line 128
    .local v3, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WIFI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 130
    const/4 v4, 0x1

    goto :goto_1d

    .line 126
    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b
.end method

.method public static isWifiEnabled()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 52
    sget-object v4, Lcom/ledo/fantasy/game/SystemUIUtil;->condor:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    .local v1, "l_contex":Landroid/content/Context;
    if-eqz v1, :cond_32

    .line 55
    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 56
    .local v0, "l_CM":Landroid/net/ConnectivityManager;
    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 58
    .local v2, "l_telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_2b

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_33

    .line 59
    :cond_2b
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_33

    .line 61
    .end local v0    # "l_CM":Landroid/net/ConnectivityManager;
    .end local v2    # "l_telManager":Landroid/telephony/TelephonyManager;
    :cond_32
    :goto_32
    return v3

    .line 58
    .restart local v0    # "l_CM":Landroid/net/ConnectivityManager;
    .restart local v2    # "l_telManager":Landroid/telephony/TelephonyManager;
    :cond_33
    const/4 v3, 0x1

    goto :goto_32
.end method

.method public static openUrl(Ljava/lang/String;)V
    .registers 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 41
    .local v1, "l_uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 42
    .local v0, "l_it":Landroid/content/Intent;
    sget-object v2, Lcom/ledo/fantasy/game/SystemUIUtil;->condor:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .registers 1
    .param p0, "_condor"    # Landroid/app/Activity;

    .prologue
    .line 29
    sput-object p0, Lcom/ledo/fantasy/game/SystemUIUtil;->condor:Landroid/app/Activity;

    .line 30
    return-void
.end method

.method public static setRunImageVisible(Z)V
    .registers 2
    .param p0, "visible"    # Z

    .prologue
    .line 114
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ledo/fantasy/game/GameApp;->setRunImageVisible(Z)V

    .line 115
    return-void
.end method

.method public static showDefaultAlert(Ljava/lang/String;)V
    .registers 1
    .param p0, "p_sMessage"    # Ljava/lang/String;

    .prologue
    .line 35
    return-void
.end method

.method public static showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .registers 11
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "yesStr"    # Ljava/lang/String;
    .param p3, "yesListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "noStr"    # Ljava/lang/String;
    .param p5, "noListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "haveCancelButton"    # Ljava/lang/Boolean;

    .prologue
    .line 103
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/ledo/fantasy/game/SystemUIUtil;->condor:Landroid/app/Activity;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 104
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {v1, p4, p5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 110
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 111
    return-void
.end method
