.class Lcom/android/installreferrer/api/InstallReferrerClientImpl;
.super Lcom/android/installreferrer/api/InstallReferrerClient;
.source "InstallReferrerClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/installreferrer/api/InstallReferrerClientImpl$InstallReferrerServiceConnection;,
        Lcom/android/installreferrer/api/InstallReferrerClientImpl$ClientState;
    }
.end annotation


# static fields
.field private static final PLAY_STORE_MIN_APP_VER:I = 0x4d17ab4

.field private static final SERVICE_ACTION_NAME:Ljava/lang/String; = "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

.field private static final SERVICE_NAME:Ljava/lang/String; = "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

.field private static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.android.vending"

.field private static final TAG:Ljava/lang/String; = "InstallReferrerClient"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private mClientState:I

.field private mService:Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/installreferrer/api/InstallReferrerClient;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method static synthetic access$102(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;)Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/installreferrer/api/InstallReferrerClientImpl;
    .param p1, "x1"    # Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mService:Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/installreferrer/api/InstallReferrerClientImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/installreferrer/api/InstallReferrerClientImpl;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    return p1
.end method

.method private isPlayStoreCompatible()Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 197
    iget-object v5, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 199
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    :try_start_7
    const-string v5, "com.android.vending"

    const/16 v6, 0x80

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 200
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_11} :catch_18

    .line 201
    .local v3, "versionCode":I
    const v5, 0x4d17ab4

    if-lt v3, v5, :cond_17

    const/4 v4, 0x1

    .line 203
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "versionCode":I
    :cond_17
    :goto_17
    return v4

    .line 202
    :catch_18
    move-exception v0

    .line 203
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_17
.end method


# virtual methods
.method public endConnection()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 167
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    .line 168
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_18

    .line 169
    const-string v0, "InstallReferrerClient"

    const-string v1, "Unbinding from service."

    invoke-static {v0, v1}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 171
    iput-object v2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 173
    :cond_18
    iput-object v2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mService:Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    .line 174
    return-void
.end method

.method public getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->isReady()Z

    move-result v3

    if-nez v3, :cond_e

    .line 179
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Service not connected. Please start a connection before using the service."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v1, "paramsBundle":Landroid/os/Bundle;
    const-string v3, "package_name"

    iget-object v4, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :try_start_1e
    new-instance v2, Lcom/android/installreferrer/api/ReferrerDetails;

    iget-object v3, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mService:Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    .line 187
    invoke-interface {v3, v1}, Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;->getInstallReferrer(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/installreferrer/api/ReferrerDetails;-><init>(Landroid/os/Bundle;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_2a

    .line 188
    .local v2, "referrerDetails":Lcom/android/installreferrer/api/ReferrerDetails;
    return-object v2

    .line 189
    .end local v2    # "referrerDetails":Lcom/android/installreferrer/api/ReferrerDetails;
    :catch_2a
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "InstallReferrerClient"

    const-string v4, "RemoteException getting install referrer information"

    invoke-static {v3, v4}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    .line 192
    throw v0
.end method

.method public isReady()Z
    .registers 3

    .prologue
    .line 89
    iget v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mService:Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    .registers 15
    .param p1, "listener"    # Lcom/android/installreferrer/api/InstallReferrerStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->isReady()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 95
    const-string v7, "InstallReferrerClient"

    const-string v8, "Service connection is valid. No need to re-initialize."

    invoke-static {v7, v8}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-interface {p1, v10}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    .line 163
    :goto_14
    return-void

    .line 101
    :cond_15
    iget v7, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    if-ne v7, v11, :cond_24

    .line 102
    const-string v7, "InstallReferrerClient"

    const-string v8, "Client is already in the process of connecting to the service."

    invoke-static {v7, v8}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-interface {p1, v9}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    goto :goto_14

    .line 108
    :cond_24
    iget v7, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    if-ne v7, v9, :cond_33

    .line 109
    const-string v7, "InstallReferrerClient"

    const-string v8, "Client was already closed and can\'t be reused. Please create another instance."

    invoke-static {v7, v8}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-interface {p1, v9}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    goto :goto_14

    .line 116
    :cond_33
    const-string v7, "InstallReferrerClient"

    const-string v8, "Starting install referrer service setup."

    invoke-static {v7, v8}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v7, Lcom/android/installreferrer/api/InstallReferrerClientImpl$InstallReferrerServiceConnection;

    const/4 v8, 0x0

    invoke-direct {v7, p0, p1, v8}, Lcom/android/installreferrer/api/InstallReferrerClientImpl$InstallReferrerServiceConnection;-><init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/InstallReferrerStateListener;Lcom/android/installreferrer/api/InstallReferrerClientImpl$1;)V

    iput-object v7, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 119
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v6, "serviceIntent":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.android.vending"

    const-string v9, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 121
    iget-object v7, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 124
    .local v3, "intentServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_bd

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_bd

    .line 126
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 127
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_bd

    .line 128
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 129
    .local v4, "packageName":Ljava/lang/String;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 130
    .local v0, "className":Ljava/lang/String;
    const-string v7, "com.android.vending"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_af

    if-eqz v0, :cond_af

    .line 132
    invoke-direct {p0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->isPlayStoreCompatible()Z

    move-result v7

    if-eqz v7, :cond_af

    .line 133
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 134
    .local v2, "explicitServiceIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mApplicationContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 135
    invoke-virtual {v7, v2, v8, v11}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 137
    .local v1, "connectionResult":Z
    if-eqz v1, :cond_a1

    .line 139
    const-string v7, "InstallReferrerClient"

    const-string v8, "Service was bonded successfully."

    invoke-static {v7, v8}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 144
    :cond_a1
    const-string v7, "InstallReferrerClient"

    const-string v8, "Connection to service is blocked."

    invoke-static {v7, v8}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput v10, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    .line 146
    invoke-interface {p1, v11}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    goto/16 :goto_14

    .line 151
    .end local v1    # "connectionResult":Z
    .end local v2    # "explicitServiceIntent":Landroid/content/Intent;
    :cond_af
    const-string v7, "InstallReferrerClient"

    const-string v8, "Play Store missing or incompatible. Version 8.3.73 or later required."

    invoke-static {v7, v8}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iput v10, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    .line 154
    invoke-interface {p1, v12}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    goto/16 :goto_14

    .line 160
    .end local v0    # "className":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_bd
    iput v10, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    .line 161
    const-string v7, "InstallReferrerClient"

    const-string v8, "Install Referrer service unavailable on device."

    invoke-static {v7, v8}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-interface {p1, v12}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    goto/16 :goto_14
.end method
