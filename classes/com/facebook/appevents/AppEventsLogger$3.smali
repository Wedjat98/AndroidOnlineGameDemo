.class Lcom/facebook/appevents/AppEventsLogger$3;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsLogger;->initializeLib(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$logger:Lcom/facebook/appevents/AppEventsLogger;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/AppEventsLogger;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger$3;->val$logger:Lcom/facebook/appevents/AppEventsLogger;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 407
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 409
    .local v0, "params":Landroid/os/Bundle;
    :try_start_5
    const-string v1, "com.facebook.core.Core"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 410
    const-string v1, "core_lib_included"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_10} :catch_67

    .line 413
    :goto_10
    :try_start_10
    const-string v1, "com.facebook.login.Login"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 414
    const-string v1, "login_lib_included"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_1b} :catch_65

    .line 417
    :goto_1b
    :try_start_1b
    const-string v1, "com.facebook.share.Share"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 418
    const-string v1, "share_lib_included"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_26} :catch_63

    .line 421
    :goto_26
    :try_start_26
    const-string v1, "com.facebook.places.Places"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 422
    const-string v1, "places_lib_included"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_31
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_31} :catch_61

    .line 425
    :goto_31
    :try_start_31
    const-string v1, "com.facebook.messenger.Messenger"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 426
    const-string v1, "messenger_lib_included"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_3c} :catch_5f

    .line 429
    :goto_3c
    :try_start_3c
    const-string v1, "com.facebook.applinks.AppLinks"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 430
    const-string v1, "applinks_lib_included"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_47} :catch_5d

    .line 433
    :goto_47
    :try_start_47
    const-string v1, "com.facebook.all.All"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 434
    const-string v1, "all_lib_included"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_52
    .catch Ljava/lang/ClassNotFoundException; {:try_start_47 .. :try_end_52} :catch_5b

    .line 437
    :goto_52
    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger$3;->val$logger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v2, "fb_sdk_initialize"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 438
    return-void

    .line 435
    :catch_5b
    move-exception v1

    goto :goto_52

    .line 431
    :catch_5d
    move-exception v1

    goto :goto_47

    .line 427
    :catch_5f
    move-exception v1

    goto :goto_3c

    .line 423
    :catch_61
    move-exception v1

    goto :goto_31

    .line 419
    :catch_63
    move-exception v1

    goto :goto_26

    .line 415
    :catch_65
    move-exception v1

    goto :goto_1b

    .line 411
    :catch_67
    move-exception v1

    goto :goto_10
.end method
