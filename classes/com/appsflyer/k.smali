.class final Lcom/appsflyer/k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/k$b;,
        Lcom/appsflyer/k$d;,
        Lcom/appsflyer/k$c;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ˎ(Landroid/content/Context;)Lcom/appsflyer/k$c;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 45
    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_51

    .line 50
    new-instance v1, Lcom/appsflyer/k$d;

    invoke-direct {v1, v3}, Lcom/appsflyer/k$d;-><init>(B)V

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const/4 v2, 0x1

    :try_start_2f
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 55
    new-instance v0, Lcom/appsflyer/k$b;

    invoke-virtual {v1}, Lcom/appsflyer/k$d;->ˎ()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/appsflyer/k$b;-><init>(Landroid/os/IBinder;)V

    .line 56
    new-instance v2, Lcom/appsflyer/k$c;

    invoke-virtual {v0}, Lcom/appsflyer/k$b;->ˎ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/appsflyer/k$b;->ˋ()Z

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/appsflyer/k$c;-><init>(Ljava/lang/String;Z)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4b} :catch_60
    .catchall {:try_start_2f .. :try_end_4b} :catchall_62

    .line 62
    if-eqz p0, :cond_50

    .line 63
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 57
    :cond_50
    return-object v2

    .line 47
    :catch_51
    move-exception v0

    throw v0

    .line 62
    :cond_53
    if-eqz p0, :cond_58

    .line 63
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 66
    :cond_58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Google Play connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :catch_60
    move-exception v0

    :try_start_61
    throw v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    .line 62
    :catchall_62
    move-exception v0

    if-eqz p0, :cond_68

    .line 63
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_68
    throw v0
.end method
