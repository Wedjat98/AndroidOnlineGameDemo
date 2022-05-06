.class public Lcom/ledo/fantasy/update/AppUpdateService;
.super Landroid/app/Service;
.source "AppUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;
    }
.end annotation


# instance fields
.field private updateDir:Ljava/io/File;

.field private updateFile:Ljava/io/File;

.field private updateIntent:Landroid/content/Intent;

.field private updateNotification:Landroid/app/Notification;

.field private updateNotificationManager:Landroid/app/NotificationManager;

.field private updatePendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updateDir:Ljava/io/File;

    .line 28
    iput-object v0, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updateFile:Ljava/io/File;

    .line 31
    iput-object v0, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updateNotificationManager:Landroid/app/NotificationManager;

    .line 32
    iput-object v0, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updateNotification:Landroid/app/Notification;

    .line 34
    iput-object v0, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updateIntent:Landroid/content/Intent;

    .line 35
    iput-object v0, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updatePendingIntent:Landroid/app/PendingIntent;

    .line 24
    return-void
.end method

.method public static Notify11_15(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;J)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;
    .param p4, "time"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 284
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 286
    .local v2, "mNotification":Landroid/app/NotificationManager;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    const-string v5, "R.drawable.ic_launcher_fantasy"

    invoke-virtual {v4, v5}, Lcom/ledo/fantasy/game/GameApp;->getUpdateResourceId(Ljava/lang/String;)I

    move-result v1

    .line 289
    .local v1, "icon":I
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 291
    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 292
    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 293
    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 294
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 295
    invoke-virtual {v4, p4, p5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 296
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 297
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 298
    .local v3, "notification":Landroid/app/Notification;
    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 300
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 301
    return-void
.end method

.method public static Notify16_(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;J)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;
    .param p4, "time"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 307
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 309
    .local v1, "mNotification":Landroid/app/NotificationManager;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    const-string v4, "R.drawable.ic_launcher_fantasy"

    invoke-virtual {v3, v4}, Lcom/ledo/fantasy/game/GameApp;->getUpdateResourceId(Ljava/lang/String;)I

    move-result v0

    .line 312
    .local v0, "icon":I
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 313
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 314
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 315
    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 316
    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 317
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 318
    invoke-virtual {v3, p4, p5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 319
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 320
    .local v2, "notification":Landroid/app/Notification;
    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 322
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 323
    return-void
.end method

.method static synthetic access$0(Lcom/ledo/fantasy/update/AppUpdateService;)Ljava/io/File;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updateFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ledo/fantasy/update/AppUpdateService;Landroid/app/PendingIntent;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updatePendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic access$2(Lcom/ledo/fantasy/update/AppUpdateService;)Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updatePendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ledo/fantasy/update/AppUpdateService;)Landroid/content/Intent;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updateIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ledo/fantasy/update/AppUpdateService;)Ljava/io/File;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updateDir:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 40
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    sget v4, Lcom/ledo/fantasy/game/R$string;->local_apkName:I

    invoke-virtual {v3, v4}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "localApkName":Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/ledo/fantasy/game/GameApp;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_74

    .line 42
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/ledo/fantasy/game/GameApp;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ledo/fantasy/update/AppUpdateManager;->m_DownloadDir:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updateDir:Ljava/io/File;

    .line 43
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updateDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updateFile:Ljava/io/File;

    .line 55
    :goto_38
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updateIntent:Landroid/content/Intent;

    .line 56
    iget-object v3, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updateIntent:Landroid/content/Intent;

    invoke-static {p0, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updatePendingIntent:Landroid/app/PendingIntent;

    .line 61
    const-string v2, "\u675e\u3128\u6297\u9a9e\u7ed8\u5142"

    .line 64
    .local v2, "strGameName":Ljava/lang/String;
    :try_start_51
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v3

    sget v4, Lcom/ledo/fantasy/game/R$string;->strinfo_game_name:I

    invoke-virtual {v3, v4}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5a} :catch_97

    move-result-object v2

    .line 76
    :goto_5b
    const-string v3, "0%"

    iget-object v4, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updatePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/ledo/fantasy/update/AppUpdateService;->startNotify(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 78
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;

    invoke-direct {v4, p0}, Lcom/ledo/fantasy/update/AppUpdateService$updateRunnable;-><init>(Lcom/ledo/fantasy/update/AppUpdateService;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    return v3

    .line 47
    .end local v2    # "strGameName":Ljava/lang/String;
    :cond_74
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ledo/fantasy/game/GameApp;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ledo/fantasy/update/AppUpdateManager;->m_DownloadDir:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updateDir:Ljava/io/File;

    .line 48
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updateDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/ledo/fantasy/update/AppUpdateService;->updateFile:Ljava/io/File;

    goto :goto_38

    .line 65
    .restart local v2    # "strGameName":Ljava/lang/String;
    :catch_97
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    const-string v2, "\u675e\u3128\u6297\u9a9e\u7ed8\u5142"

    goto :goto_5b
.end method

.method public startNotify(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 259
    .local v6, "version":I
    const/16 v0, 0xb

    if-lt v6, v0, :cond_1d

    .line 263
    const/16 v0, 0x10

    if-ge v6, v0, :cond_1e

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/ledo/fantasy/update/AppUpdateService;->Notify11_15(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;J)V

    .line 278
    :cond_1d
    :goto_1d
    return-void

    .line 270
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/ledo/fantasy/update/AppUpdateService;->Notify16_(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;J)V

    goto :goto_1d
.end method
