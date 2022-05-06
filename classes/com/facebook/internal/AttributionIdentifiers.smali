.class public Lcom/facebook/internal/AttributionIdentifiers;
.super Ljava/lang/Object;
.source "AttributionIdentifiers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;,
        Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;
    }
.end annotation


# static fields
.field private static final ANDROID_ID_COLUMN_NAME:Ljava/lang/String; = "androidid"

.field private static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field private static final ATTRIBUTION_ID_CONTENT_PROVIDER:Ljava/lang/String; = "com.facebook.katana.provider.AttributionIdProvider"

.field private static final ATTRIBUTION_ID_CONTENT_PROVIDER_WAKIZASHI:Ljava/lang/String; = "com.facebook.wakizashi.provider.AttributionIdProvider"

.field private static final CONNECTION_RESULT_SUCCESS:I = 0x0

.field private static final IDENTIFIER_REFRESH_INTERVAL_MILLIS:J = 0x36ee80L

.field private static final LIMIT_TRACKING_COLUMN_NAME:Ljava/lang/String; = "limit_tracking"

.field private static final TAG:Ljava/lang/String;

.field private static recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;


# instance fields
.field private androidAdvertiserId:Ljava/lang/String;

.field private androidInstallerPackage:Ljava/lang/String;

.field private attributionId:Ljava/lang/String;

.field private fetchTime:J

.field private limitTracking:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-class v0, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/AttributionIdentifiers;->TAG:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 3
    .param p0, "identifiers"    # Lcom/facebook/internal/AttributionIdentifiers;

    .prologue
    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->fetchTime:J

    .line 232
    sput-object p0, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    .line 233
    return-object p0
.end method

.method private static getAndroidId(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidIdViaReflection(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    .line 76
    .local v0, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    if-nez v0, :cond_11

    .line 77
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidIdViaService(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    .line 78
    if-nez v0, :cond_11

    .line 79
    new-instance v0, Lcom/facebook/internal/AttributionIdentifiers;

    .end local v0    # "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    invoke-direct {v0}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    .line 82
    .restart local v0    # "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    :cond_11
    return-object v0
.end method

.method private static getAndroidIdViaReflection(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 89
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    if-ne v8, v10, :cond_1b

    .line 90
    new-instance v8, Lcom/facebook/FacebookException;

    const-string v10, "getAndroidId cannot be called on the main thread."

    invoke-direct {v8, v10}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_13

    .line 138
    :catch_13
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "android_id"

    invoke-static {v8, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v5, v9

    .line 141
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1a
    return-object v5

    .line 93
    :cond_1b
    :try_start_1b
    const-string v8, "com.google.android.gms.common.GooglePlayServicesUtil"

    .line 94
    const-string v10, "isGooglePlayServicesAvailable"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    .line 95
    const-class v13, Landroid/content/Context;

    aput-object v13, v11, v12

    .line 92
    invoke-static {v8, v10, v11}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 98
    .local v6, "isGooglePlayServicesAvailable":Ljava/lang/reflect/Method;
    if-nez v6, :cond_2f

    move-object v5, v9

    .line 99
    goto :goto_1a

    .line 103
    :cond_2f
    const/4 v8, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    .line 102
    invoke-static {v8, v6, v10}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, "connectionResult":Ljava/lang/Object;
    instance-of v8, v1, Ljava/lang/Integer;

    if-eqz v8, :cond_46

    .line 105
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "connectionResult":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_48

    :cond_46
    move-object v5, v9

    .line 106
    goto :goto_1a

    .line 110
    :cond_48
    const-string v8, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 111
    const-string v10, "getAdvertisingIdInfo"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    .line 112
    const-class v13, Landroid/content/Context;

    aput-object v13, v11, v12

    .line 109
    invoke-static {v8, v10, v11}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 114
    .local v3, "getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    if-nez v3, :cond_5c

    move-object v5, v9

    .line 115
    goto :goto_1a

    .line 118
    :cond_5c
    const/4 v8, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    .line 117
    invoke-static {v8, v3, v10}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    .local v0, "advertisingInfo":Ljava/lang/Object;
    if-nez v0, :cond_6b

    move-object v5, v9

    .line 120
    goto :goto_1a

    .line 123
    :cond_6b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v10, "getId"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-static {v8, v10, v11}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 125
    .local v4, "getId":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 126
    const-string v10, "isLimitAdTrackingEnabled"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    .line 124
    invoke-static {v8, v10, v11}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 127
    .local v7, "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_89

    if-nez v7, :cond_8b

    :cond_89
    move-object v5, v9

    .line 128
    goto :goto_1a

    .line 131
    :cond_8b
    new-instance v5, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-direct {v5}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    .line 133
    .local v5, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v4, v8}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 132
    iput-object v8, v5, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    .line 136
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    .line 134
    invoke-static {v0, v7, v8}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v5, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_aa} :catch_13

    goto/16 :goto_1a
.end method

.method private static getAndroidIdViaService(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 145
    new-instance v1, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;

    invoke-direct {v1, v5}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;-><init>(Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;)V

    .line 146
    .local v1, "connection":Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "com.google.android.gms"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const/4 v6, 0x1

    invoke-virtual {p0, v4, v1, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 150
    :try_start_19
    new-instance v0, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;

    invoke-virtual {v1}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;-><init>(Landroid/os/IBinder;)V

    .line 151
    .local v0, "adInfo":Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;
    new-instance v3, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-direct {v3}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    .line 152
    .local v3, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    invoke-virtual {v0}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->getAdvertiserId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    .line 153
    invoke-virtual {v0}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->isTrackingLimited()Z

    move-result v6

    iput-boolean v6, v3, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_33} :catch_37
    .catchall {:try_start_19 .. :try_end_33} :catchall_42

    .line 158
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 161
    .end local v0    # "adInfo":Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;
    .end local v3    # "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    :goto_36
    return-object v3

    .line 155
    :catch_37
    move-exception v2

    .line 156
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_38
    const-string v6, "android_id"

    invoke-static {v6, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_42

    .line 158
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .end local v2    # "exception":Ljava/lang/Exception;
    :cond_40
    move-object v3, v5

    .line 161
    goto :goto_36

    .line 157
    :catchall_42
    move-exception v5

    .line 158
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 159
    throw v5
.end method

.method public static getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 17
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_11

    .line 168
    sget-object v0, Lcom/facebook/internal/AttributionIdentifiers;->TAG:Ljava/lang/String;

    .line 169
    const-string v3, "getAttributionIdentifiers should not be called from the main thread"

    .line 167
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_11
    sget-object v0, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    if-eqz v0, :cond_28

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    iget-wide v14, v0, Lcom/facebook/internal/AttributionIdentifiers;->fetchTime:J

    sub-long/2addr v4, v14

    .line 174
    const-wide/32 v14, 0x36ee80

    cmp-long v0, v4, v14

    if-gez v0, :cond_28

    .line 175
    sget-object v0, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    .line 226
    :cond_27
    :goto_27
    return-object v0

    .line 178
    :cond_28
    invoke-static/range {p0 .. p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidId(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v10

    .line 179
    .local v10, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    const/4 v8, 0x0

    .line 181
    .local v8, "c":Landroid/database/Cursor;
    const/4 v0, 0x3

    :try_start_2e
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 182
    const-string v3, "aid"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    .line 183
    const-string v3, "androidid"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 184
    const-string v3, "limit_tracking"

    aput-object v3, v2, v0

    .line 185
    .local v2, "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 186
    .local v1, "providerUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 187
    const-string v3, "com.facebook.katana.provider.AttributionIdProvider"

    const/4 v4, 0x0

    .line 186
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 188
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 193
    :cond_53
    :goto_53
    invoke-static/range {p0 .. p0}, Lcom/facebook/internal/AttributionIdentifiers;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 194
    .local v11, "installerPackageName":Ljava/lang/String;
    if-eqz v11, :cond_5b

    .line 195
    iput-object v11, v10, Lcom/facebook/internal/AttributionIdentifiers;->androidInstallerPackage:Ljava/lang/String;

    .line 197
    :cond_5b
    if-nez v1, :cond_7b

    .line 198
    invoke-static {v10}, Lcom/facebook/internal/AttributionIdentifiers;->cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_60} :catch_d5
    .catchall {:try_start_2e .. :try_end_60} :catchall_f6

    move-result-object v0

    .line 222
    if-eqz v8, :cond_27

    .line 223
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_27

    .line 189
    .end local v11    # "installerPackageName":Ljava/lang/String;
    :cond_67
    :try_start_67
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 190
    const-string v3, "com.facebook.wakizashi.provider.AttributionIdProvider"

    const/4 v4, 0x0

    .line 189
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 191
    const-string v0, "content://com.facebook.wakizashi.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_53

    .line 200
    .restart local v11    # "installerPackageName":Ljava/lang/String;
    :cond_7b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 201
    if-eqz v8, :cond_8e

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_98

    .line 202
    :cond_8e
    invoke-static {v10}, Lcom/facebook/internal/AttributionIdentifiers;->cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_91} :catch_d5
    .catchall {:try_start_67 .. :try_end_91} :catchall_f6

    move-result-object v0

    .line 222
    if-eqz v8, :cond_27

    .line 223
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_27

    .line 204
    :cond_98
    :try_start_98
    const-string v0, "aid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 205
    .local v7, "attributionColumnIndex":I
    const-string v0, "androidid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 206
    .local v6, "androidIdColumnIndex":I
    const-string v0, "limit_tracking"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 208
    .local v12, "limitTrackingColumnIndex":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/facebook/internal/AttributionIdentifiers;->attributionId:Ljava/lang/String;

    .line 212
    if-lez v6, :cond_ca

    if-lez v12, :cond_ca

    .line 213
    invoke-virtual {v10}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ca

    .line 214
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    .line 216
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 215
    iput-boolean v0, v10, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_ca} :catch_d5
    .catchall {:try_start_98 .. :try_end_ca} :catchall_f6

    .line 222
    :cond_ca
    if-eqz v8, :cond_cf

    .line 223
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_cf
    invoke-static {v10}, Lcom/facebook/internal/AttributionIdentifiers;->cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    goto/16 :goto_27

    .line 218
    .end local v1    # "providerUri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "androidIdColumnIndex":I
    .end local v7    # "attributionColumnIndex":I
    .end local v11    # "installerPackageName":Ljava/lang/String;
    .end local v12    # "limitTrackingColumnIndex":I
    :catch_d5
    move-exception v9

    .line 219
    .local v9, "e":Ljava/lang/Exception;
    :try_start_d6
    sget-object v0, Lcom/facebook/internal/AttributionIdentifiers;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Caught unexpected exception in getAttributionId(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catchall {:try_start_d6 .. :try_end_ee} :catchall_f6

    .line 222
    if-eqz v8, :cond_f3

    .line 223
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_f3
    const/4 v0, 0x0

    goto/16 :goto_27

    .line 221
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_f6
    move-exception v0

    .line 222
    if-eqz v8, :cond_fc

    .line 223
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_fc
    throw v0
.end method

.method private static getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 255
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_f

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method


# virtual methods
.method public getAndroidAdvertiserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidInstallerPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->androidInstallerPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->attributionId:Ljava/lang/String;

    return-object v0
.end method

.method public isTrackingLimited()Z
    .registers 2

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z

    return v0
.end method
