.class final Lcom/appsflyer/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/f$b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ˊ(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 92
    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, p1, v1

    .line 93
    invoke-static {p0, v3}, Lcom/appsflyer/i$b;->ˎ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 94
    const/4 v0, 0x1

    .line 97
    :cond_e
    return v0

    .line 92
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method static ˏ(Landroid/content/Context;)Landroid/location/Location;
    .registers 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 28
    .line 30
    :try_start_1
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 5044
    const-string v2, "network"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v5, v3, v4

    .line 5085
    invoke-static {p0, v3}, Lcom/appsflyer/f;->ˊ(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 5086
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 6046
    :goto_22
    const-string v3, "gps"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v6, v4, v5

    .line 7085
    invoke-static {p0, v4}, Lcom/appsflyer/f;->ˊ(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 7086
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 9062
    :goto_36
    if-nez v0, :cond_42

    if-nez v2, :cond_42

    move-object v0, v1

    .line 33
    :cond_3b
    :goto_3b
    if-eqz v0, :cond_5f

    .line 39
    :goto_3d
    return-object v0

    :cond_3e
    move-object v2, v1

    .line 5088
    goto :goto_22

    :cond_40
    move-object v0, v1

    .line 7088
    goto :goto_36

    .line 9066
    :cond_42
    if-nez v0, :cond_48

    if-eqz v2, :cond_48

    move-object v0, v2

    .line 9067
    goto :goto_3b

    .line 9070
    :cond_48
    if-nez v2, :cond_4c

    if-nez v0, :cond_3b

    .line 9075
    :cond_4c
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_53} :catch_5e

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 9076
    const-wide/32 v6, 0xea60

    cmp-long v3, v6, v4

    if-gez v3, :cond_3b

    move-object v0, v2

    .line 9077
    goto :goto_3b

    :catch_5e
    move-exception v0

    :cond_5f
    move-object v0, v1

    goto :goto_3d
.end method
