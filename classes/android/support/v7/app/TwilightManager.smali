.class Landroid/support/v7/app/TwilightManager;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/TwilightManager$TwilightState;
    }
.end annotation


# static fields
.field private static final SUNRISE:I = 0x6

.field private static final SUNSET:I = 0x16

.field private static final TAG:Ljava/lang/String; = "TwilightManager"

.field private static sInstance:Landroid/support/v7/app/TwilightManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "locationManager"    # Landroid/location/LocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/support/v7/app/TwilightManager$TwilightState;

    invoke-direct {v0}, Landroid/support/v7/app/TwilightManager$TwilightState;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    .line 69
    iput-object p1, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    .line 71
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Landroid/support/v7/app/TwilightManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    sget-object v0, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;

    if-nez v0, :cond_17

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 51
    new-instance v1, Landroid/support/v7/app/TwilightManager;

    const-string v0, "location"

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/app/TwilightManager;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;

    .line 54
    :cond_17
    sget-object v0, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;

    return-object v0
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "coarseLoc":Landroid/location/Location;
    const/4 v1, 0x0

    .line 109
    .local v1, "fineLoc":Landroid/location/Location;
    iget-object v3, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, v4}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 111
    .local v2, "permission":I
    if-nez v2, :cond_12

    .line 112
    const-string v3, "network"

    invoke-direct {p0, v3}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 115
    :cond_12
    iget-object v3, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v4}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 117
    if-nez v2, :cond_22

    .line 118
    const-string v3, "gps"

    invoke-direct {p0, v3}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 121
    :cond_22
    if-eqz v1, :cond_35

    if-eqz v0, :cond_35

    .line 123
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_33

    .line 126
    .end local v1    # "fineLoc":Landroid/location/Location;
    :cond_32
    :goto_32
    return-object v1

    .restart local v1    # "fineLoc":Landroid/location/Location;
    :cond_33
    move-object v1, v0

    .line 123
    goto :goto_32

    .line 126
    :cond_35
    if-nez v1, :cond_32

    move-object v1, v0

    goto :goto_32
.end method

.method private getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 134
    iget-object v1, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    .line 139
    :goto_e
    return-object v1

    .line 136
    :catch_f
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TwilightManager"

    const-string v2, "Failed to get last known location"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private isStateValid()Z
    .registers 5

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    iget-wide v0, v0, Landroid/support/v7/app/TwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static setInstance(Landroid/support/v7/app/TwilightManager;)V
    .registers 1
    .param p0, "twilightManager"    # Landroid/support/v7/app/TwilightManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 59
    sput-object p0, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;

    .line 60
    return-void
.end method

.method private updateState(Landroid/location/Location;)V
    .registers 26
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    .line 148
    .local v14, "state":Landroid/support/v7/app/TwilightManager$TwilightState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 149
    .local v12, "now":J
    invoke-static {}, Landroid/support/v7/app/TwilightCalculator;->getInstance()Landroid/support/v7/app/TwilightCalculator;

    move-result-object v3

    .line 152
    .local v3, "calculator":Landroid/support/v7/app/TwilightCalculator;
    const-wide/32 v4, 0x5265c00

    sub-long v4, v12, v4

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 152
    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 154
    iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    move-wide/from16 v22, v0

    .line 157
    .local v22, "yesterdaySunset":J
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    move-wide v4, v12

    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 158
    iget v4, v3, Landroid/support/v7/app/TwilightCalculator;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_75

    const/4 v2, 0x1

    .line 159
    .local v2, "isNight":Z
    :goto_32
    iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    move-wide/from16 v16, v0

    .line 160
    .local v16, "todaySunrise":J
    iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    move-wide/from16 v18, v0

    .line 163
    .local v18, "todaySunset":J
    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v12

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 163
    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 165
    iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    move-wide/from16 v20, v0

    .line 168
    .local v20, "tomorrowSunrise":J
    const-wide/16 v10, 0x0

    .line 169
    .local v10, "nextUpdate":J
    const-wide/16 v4, -0x1

    cmp-long v4, v16, v4

    if-eqz v4, :cond_5b

    const-wide/16 v4, -0x1

    cmp-long v4, v18, v4

    if-nez v4, :cond_77

    .line 171
    :cond_5b
    const-wide/32 v4, 0x2932e00

    add-long v10, v12, v4

    .line 185
    :goto_60
    iput-boolean v2, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    .line 186
    move-wide/from16 v0, v22

    iput-wide v0, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->yesterdaySunset:J

    .line 187
    move-wide/from16 v0, v16

    iput-wide v0, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->todaySunrise:J

    .line 188
    move-wide/from16 v0, v18

    iput-wide v0, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->todaySunset:J

    .line 189
    move-wide/from16 v0, v20

    iput-wide v0, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->tomorrowSunrise:J

    .line 190
    iput-wide v10, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->nextUpdate:J

    .line 191
    return-void

    .line 158
    .end local v2    # "isNight":Z
    .end local v10    # "nextUpdate":J
    .end local v16    # "todaySunrise":J
    .end local v18    # "todaySunset":J
    .end local v20    # "tomorrowSunrise":J
    :cond_75
    const/4 v2, 0x0

    goto :goto_32

    .line 173
    .restart local v2    # "isNight":Z
    .restart local v10    # "nextUpdate":J
    .restart local v16    # "todaySunrise":J
    .restart local v18    # "todaySunset":J
    .restart local v20    # "tomorrowSunrise":J
    :cond_77
    cmp-long v4, v12, v18

    if-lez v4, :cond_82

    .line 174
    add-long v10, v10, v20

    .line 181
    :goto_7d
    const-wide/32 v4, 0xea60

    add-long/2addr v10, v4

    goto :goto_60

    .line 175
    :cond_82
    cmp-long v4, v12, v16

    if-lez v4, :cond_89

    .line 176
    add-long v10, v10, v18

    goto :goto_7d

    .line 178
    :cond_89
    add-long v10, v10, v16

    goto :goto_7d
.end method


# virtual methods
.method isNight()Z
    .registers 7

    .prologue
    .line 79
    iget-object v3, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    .line 81
    .local v3, "state":Landroid/support/v7/app/TwilightManager$TwilightState;
    invoke-direct {p0}, Landroid/support/v7/app/TwilightManager;->isStateValid()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 83
    iget-boolean v4, v3, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    .line 101
    :goto_a
    return v4

    .line 87
    :cond_b
    invoke-direct {p0}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v2

    .line 88
    .local v2, "location":Landroid/location/Location;
    if-eqz v2, :cond_17

    .line 89
    invoke-direct {p0, v2}, Landroid/support/v7/app/TwilightManager;->updateState(Landroid/location/Location;)V

    .line 90
    iget-boolean v4, v3, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    goto :goto_a

    .line 93
    :cond_17
    const-string v4, "TwilightManager"

    const-string v5, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 100
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 101
    .local v1, "hour":I
    const/4 v4, 0x6

    if-lt v1, v4, :cond_2f

    const/16 v4, 0x16

    if-lt v1, v4, :cond_31

    :cond_2f
    const/4 v4, 0x1

    goto :goto_a

    :cond_31
    const/4 v4, 0x0

    goto :goto_a
.end method
