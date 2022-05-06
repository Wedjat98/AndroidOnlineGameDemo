.class final Lcom/appsflyer/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# instance fields
.field private ˏ:Lcom/appsflyer/a;

.field private ॱ:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallReferrerServiceDisconnected()V
    .registers 2

    .prologue
    .line 128
    const-string v0, "Install Referrer service disconnected"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public final onInstallReferrerSetupFinished(I)V
    .registers 8

    .prologue
    .line 77
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 78
    const-string v0, "code"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/4 v1, 0x0

    .line 85
    packed-switch p1, :pswitch_data_e6

    .line 120
    const-string v0, "responseCode not found."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 3060
    :goto_17
    if-eqz v1, :cond_42

    .line 3061
    invoke-virtual {v1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 3062
    const-string v0, "val"

    invoke-virtual {v1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3065
    :cond_28
    const-string v0, "clk"

    invoke-virtual {v1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3066
    const-string v0, "install"

    invoke-virtual {v1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3069
    :cond_42
    iget-object v0, p0, Lcom/appsflyer/c;->ˏ:Lcom/appsflyer/a;

    if-eqz v0, :cond_4b

    .line 3070
    iget-object v0, p0, Lcom/appsflyer/c;->ˏ:Lcom/appsflyer/a;

    invoke-interface {v0, v2}, Lcom/appsflyer/a;->onHandleReferrer(Ljava/util/Map;)V

    .line 123
    :cond_4b
    return-void

    .line 88
    :pswitch_4c
    :try_start_4c
    const-string v0, "InstallReferrer connected"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/appsflyer/c;->ॱ:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 91
    iget-object v0, p0, Lcom/appsflyer/c;->ॱ:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object v1

    .line 92
    iget-object v0, p0, Lcom/appsflyer/c;->ॱ:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_64} :catch_65
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_64} :catch_93
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_64} :catch_b5

    goto :goto_17

    .line 100
    :catch_65
    move-exception v0

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get install referrer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 102
    const-string v3, "err"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 96
    :cond_86
    :try_start_86
    const-string v0, "ReferrerClient: InstallReferrer is not ready"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 97
    const-string v0, "err"

    const-string v3, "ReferrerClient: InstallReferrer is not ready"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_92} :catch_65
    .catch Ljava/lang/IllegalStateException; {:try_start_86 .. :try_end_92} :catch_93
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_92} :catch_b5

    goto :goto_17

    .line 104
    :catch_93
    move-exception v0

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get install referrer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 106
    const-string v3, "err"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 108
    :catch_b5
    move-exception v0

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get install referrer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 110
    const-string v3, "err"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 114
    :pswitch_d7
    const-string v0, "InstallReferrer not supported"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 117
    :pswitch_de
    const-string v0, "InstallReferrer not supported"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 85
    nop

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_de
        :pswitch_d7
    .end packed-switch
.end method

.method protected final ˎ(Landroid/content/Context;Lcom/appsflyer/a;)V
    .registers 5

    .prologue
    .line 34
    iput-object p2, p0, Lcom/appsflyer/c;->ˏ:Lcom/appsflyer/a;

    .line 36
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/c;->ॱ:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 39
    :try_start_c
    iget-object v0, p0, Lcom/appsflyer/c;->ॱ:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0, p0}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_12

    .line 45
    :goto_11
    return-void

    .line 40
    :catch_12
    move-exception v0

    .line 43
    const-string v1, "referrerClient -> startConnection"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method
