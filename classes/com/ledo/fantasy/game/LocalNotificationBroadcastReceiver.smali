.class public Lcom/ledo/fantasy/game/LocalNotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocalNotificationBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    const-string v13, "classname"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 18
    .local v4, "classname":Ljava/lang/String;
    const-string v13, "appname"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "appName":Ljava/lang/String;
    const-string v13, "content"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 20
    .local v6, "contentText":Ljava/lang/String;
    const-string v13, "index"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 21
    .local v8, "index":I
    const-string v13, "smalliconid"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 22
    .local v12, "smalliconid":I
    const-string v13, "largeiconid"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 23
    .local v9, "largeiconid":I
    if-eqz v4, :cond_3f

    const-string v13, ""

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3f

    if-nez v9, :cond_40

    .line 55
    :cond_3f
    :goto_3f
    return-void

    .line 28
    :cond_40
    :try_start_40
    const-string v13, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4a} :catch_91

    .line 30
    .local v10, "nm":Landroid/app/NotificationManager;
    :try_start_4a
    new-instance v13, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v13, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    .line 32
    invoke-virtual {v13, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 34
    .local v3, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    if-eqz v12, :cond_96

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v13, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 36
    .local v2, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 37
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 41
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    :goto_69
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 42
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 43
    .local v11, "pintent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const/high16 v13, 0x10000000

    move-object/from16 v0, p1

    invoke-static {v0, v8, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 45
    .local v5, "contentIndent":Landroid/app/PendingIntent;
    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 46
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v10, v8, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_8b} :catch_8c

    goto :goto_3f

    .line 48
    .end local v3    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v5    # "contentIndent":Landroid/app/PendingIntent;
    .end local v11    # "pintent":Landroid/content/Intent;
    :catch_8c
    move-exception v7

    .line 49
    .local v7, "e":Ljava/lang/Exception;
    :try_start_8d
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_3f

    .line 52
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "nm":Landroid/app/NotificationManager;
    :catch_91
    move-exception v7

    .line 53
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f

    .line 39
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v10    # "nm":Landroid/app/NotificationManager;
    :cond_96
    :try_start_96
    invoke-virtual {v3, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_8c

    goto :goto_69
.end method
