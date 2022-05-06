.class public Lmobi/androidcloud/lib/session/ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static volatile hM:I

.field private static hN:I

.field private static hO:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x0

    sput v0, Lmobi/androidcloud/lib/session/ConnectivityReceiver;->hM:I

    .line 18
    const/4 v0, -0x1

    sput v0, Lmobi/androidcloud/lib/session/ConnectivityReceiver;->hN:I

    .line 19
    const-wide/16 v0, 0x0

    sput-wide v0, Lmobi/androidcloud/lib/session/ConnectivityReceiver;->hO:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .prologue
    .line 25
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connectivty Changed Action:= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 30
    if-nez v0, :cond_19

    .line 82
    :cond_18
    :goto_18
    return-void

    .line 36
    :cond_19
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_18

    .line 44
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network Change "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is Active and connected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lmobi/androidcloud/lib/session/ConnectivityReceiver;->hO:J

    sub-long/2addr v2, v4

    .line 54
    sget v1, Lmobi/androidcloud/lib/session/ConnectivityReceiver;->hN:I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v1, v4, :cond_5a

    .line 57
    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-ltz v1, :cond_18

    .line 65
    :cond_5a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lmobi/androidcloud/lib/session/ConnectivityReceiver;->hO:J

    .line 67
    sget v1, Lmobi/androidcloud/lib/session/ConnectivityReceiver;->hM:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lmobi/androidcloud/lib/session/ConnectivityReceiver;->hM:I

    .line 69
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    sput v0, Lmobi/androidcloud/lib/session/ConnectivityReceiver;->hN:I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6c} :catch_6d

    goto :goto_18

    .line 77
    :catch_6d
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Excpetion while parsing Conenctivy Manager"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 72
    :cond_7d
    const/4 v0, -0x1

    :try_start_7e
    sput v0, Lmobi/androidcloud/lib/session/ConnectivityReceiver;->hN:I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_80} :catch_6d

    goto :goto_18
.end method
