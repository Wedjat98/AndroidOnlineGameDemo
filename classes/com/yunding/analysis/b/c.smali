.class public Lcom/yunding/analysis/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yunding/analysis/b/c$c;,
        Lcom/yunding/analysis/b/c$b;,
        Lcom/yunding/analysis/b/c$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/yunding/analysis/b/c$a;
    .registers 6

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_50

    new-instance v1, Lcom/yunding/analysis/b/c$b;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/yunding/analysis/b/c$b;-><init>(Lcom/yunding/analysis/b/c$1;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_59

    :try_start_35
    new-instance v0, Lcom/yunding/analysis/b/c$c;

    invoke-virtual {v1}, Lcom/yunding/analysis/b/c$b;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yunding/analysis/b/c$c;-><init>(Landroid/os/IBinder;)V

    new-instance v2, Lcom/yunding/analysis/b/c$a;

    invoke-virtual {v0}, Lcom/yunding/analysis/b/c$c;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/yunding/analysis/b/c$c;->a(Z)Z

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/yunding/analysis/b/c$a;-><init>(Ljava/lang/String;Z)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_4c} :catch_52
    .catchall {:try_start_35 .. :try_end_4c} :catchall_54

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v2

    :catch_50
    move-exception v0

    throw v0

    :catch_52
    move-exception v0

    :try_start_53
    throw v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    :cond_59
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Google Play connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
