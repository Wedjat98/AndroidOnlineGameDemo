.class public Lcom/facebook/places/internal/LocationScannerImpl;
.super Ljava/lang/Object;
.source "LocationScannerImpl.java"

# interfaces
.implements Lcom/facebook/places/internal/LocationScanner;
.implements Landroid/location/LocationListener;


# static fields
.field private static final MIN_DISTANCE_BETWEEN_UPDATES:F = 0.0f

.field private static final MIN_TIME_BETWEEN_UPDATES:J = 0x64L


# instance fields
.field private context:Landroid/content/Context;

.field private enabledProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private freshLocation:Landroid/location/Location;

.field private locationManager:Landroid/location/LocationManager;

.field private params:Lcom/facebook/places/internal/LocationPackageRequestParams;

.field private final scanLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/facebook/places/internal/LocationPackageRequestParams;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->scanLock:Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    .line 58
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    .line 59
    return-void
.end method

.method private getFreshLocation()Landroid/location/Location;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->freshLocation:Landroid/location/Location;

    .line 105
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "LocationScanner"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 107
    .local v7, "handlerThread":Landroid/os/HandlerThread;
    :try_start_a
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 108
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->enabledProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_50

    move-result v0

    if-nez v0, :cond_3c

    .line 117
    :try_start_19
    iget-object v2, p0, Lcom/facebook/places/internal/LocationScannerImpl;->scanLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_5d
    .catchall {:try_start_19 .. :try_end_1c} :catchall_50

    .line 118
    :try_start_1c
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->scanLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v3}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getLocationRequestTimeoutMs()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 117
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_5a

    .line 124
    :goto_28
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 125
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 128
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->freshLocation:Landroid/location/Location;

    if-nez v0, :cond_5f

    .line 129
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v2, Lcom/facebook/places/internal/ScannerException$Type;->TIMEOUT:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v2}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0

    .line 108
    :cond_3c
    :try_start_3c
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    .local v1, "provider":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    .line 111
    const-wide/16 v2, 0x64

    .line 112
    const/4 v4, 0x0

    .line 114
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    .line 109
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_4f
    .catchall {:try_start_3c .. :try_end_4f} :catchall_50

    goto :goto_13

    .line 123
    .end local v1    # "provider":Ljava/lang/String;
    :catchall_50
    move-exception v0

    .line 124
    iget-object v2, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 125
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 126
    throw v0

    .line 117
    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5d} :catch_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_50

    .line 120
    :catch_5d
    move-exception v0

    goto :goto_28

    .line 131
    :cond_5f
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->freshLocation:Landroid/location/Location;

    return-object v0
.end method

.method private getLastLocation(Ljava/lang/String;)Landroid/location/Location;
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 82
    .local v0, "lastLocation":Landroid/location/Location;
    if-eqz v0, :cond_1d

    .line 83
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 84
    .local v2, "lastLocationTs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v2

    .line 85
    .local v4, "locationAgeMs":J
    iget-object v1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v1}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getLastLocationMaxAgeMs()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_1d

    .line 89
    .end local v0    # "lastLocation":Landroid/location/Location;
    .end local v2    # "lastLocationTs":J
    .end local v4    # "locationAgeMs":J
    :goto_1c
    return-object v0

    .restart local v0    # "lastLocation":Landroid/location/Location;
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v2, p0, Lcom/facebook/places/internal/LocationScannerImpl;->enabledProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_11

    .line 100
    invoke-direct {p0}, Lcom/facebook/places/internal/LocationScannerImpl;->getFreshLocation()Landroid/location/Location;

    move-result-object v0

    :goto_10
    return-object v0

    .line 94
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    .local v1, "provider":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/facebook/places/internal/LocationScannerImpl;->getLastLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 96
    .local v0, "lastLocation":Landroid/location/Location;
    if-eqz v0, :cond_6

    goto :goto_10
.end method

.method public initAndCheckEligibility()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/internal/Validate;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 65
    new-instance v1, Lcom/facebook/places/internal/ScannerException;

    sget-object v2, Lcom/facebook/places/internal/ScannerException$Type;->PERMISSION_DENIED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v1, v2}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v1

    .line 68
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v2}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getLocationProviders()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->enabledProviders:Ljava/util/List;

    .line 69
    iget-object v1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v1}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getLocationProviders()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_26
    if-lt v1, v3, :cond_38

    .line 75
    iget-object v1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->enabledProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 76
    new-instance v1, Lcom/facebook/places/internal/ScannerException;

    sget-object v2, Lcom/facebook/places/internal/ScannerException$Type;->DISABLED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v1, v2}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v1

    .line 69
    :cond_38
    aget-object v0, v2, v1

    .line 70
    .local v0, "provider":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 71
    iget-object v4, p0, Lcom/facebook/places/internal/LocationScannerImpl;->enabledProviders:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 78
    .end local v0    # "provider":Ljava/lang/String;
    :cond_4a
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->freshLocation:Landroid/location/Location;

    if-nez v0, :cond_1d

    .line 137
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v1}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getLocationMaxAccuracyMeters()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d

    .line 138
    iget-object v1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->scanLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_15
    iput-object p1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->freshLocation:Landroid/location/Location;

    .line 140
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->scanLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 138
    monitor-exit v1

    .line 144
    :cond_1d
    return-void

    .line 138
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 159
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 154
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 149
    return-void
.end method
