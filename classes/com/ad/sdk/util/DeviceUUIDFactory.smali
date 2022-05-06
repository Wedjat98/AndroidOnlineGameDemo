.class public Lcom/ad/sdk/util/DeviceUUIDFactory;
.super Ljava/lang/Object;
.source "DeviceUUIDFactory.java"


# static fields
.field protected static final PREFS_DEVICE_ID:Ljava/lang/String; = "customUserId"

.field protected static uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v3, Lcom/ad/sdk/util/DeviceUUIDFactory;

    monitor-enter v3

    .line 16
    :try_start_6
    sget-object v2, Lcom/ad/sdk/util/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    if-nez v2, :cond_20

    .line 18
    const-string v2, "atlassdk_setting_file"

    const/4 v4, 0x0

    .line 17
    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 19
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "customUserId"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_22

    .line 21
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    sput-object v2, Lcom/ad/sdk/util/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    .line 15
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_20
    :goto_20
    monitor-exit v3

    .line 29
    return-void

    .line 23
    .restart local v0    # "id":Ljava/lang/String;
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    sput-object v2, Lcom/ad/sdk/util/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    .line 24
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "customUserId"

    sget-object v5, Lcom/ad/sdk/util/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 25
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_20

    .line 15
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :catchall_3c
    move-exception v2

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_3c

    throw v2
.end method


# virtual methods
.method public getDeviceUUID()Ljava/util/UUID;
    .registers 2

    .prologue
    .line 61
    sget-object v0, Lcom/ad/sdk/util/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    return-object v0
.end method
