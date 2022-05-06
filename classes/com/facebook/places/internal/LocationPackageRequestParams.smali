.class public Lcom/facebook/places/internal/LocationPackageRequestParams;
.super Ljava/lang/Object;
.source "LocationPackageRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_BLUETOOTH_ENABLED:Z = true

.field private static final DEFAULT_BLUETOOTH_FLUSH_RESULTS_TIMEOUT_MS:J = 0x12cL

.field private static final DEFAULT_BLUETOOTH_MAX_SCAN_RESULTS:I = 0x19

.field private static final DEFAULT_BLUETOOTH_SCAN_DURATION_MS:J = 0x1f4L

.field private static final DEFAULT_LAST_LOCATION_MAX_AGE_MS:J = 0xea60L

.field private static final DEFAULT_LOCATION_ENABLED:Z = true

.field private static final DEFAULT_LOCATION_MAX_ACCURACY_METERS:F = 100.0f

.field private static final DEFAULT_LOCATION_PROVIDERS:[Ljava/lang/String;

.field private static final DEFAULT_LOCATION_REQUEST_TIMEOUT_MS:J = 0x7530L

.field private static final DEFAULT_WIFI_ACTIVE_SCAN_ALLOWED:Z = true

.field private static final DEFAULT_WIFI_ACTIVE_SCAN_FORCED:Z = false

.field private static final DEFAULT_WIFI_ENABLED:Z = true

.field private static final DEFAULT_WIFI_MAX_SCAN_RESULTS:I = 0x19

.field private static final DEFAULT_WIFI_SCAN_MAX_AGE_MS:J = 0x7530L

.field private static final DEFAULT_WIFI_SCAN_TIMEOUT_MS:J = 0x1770L


# instance fields
.field private bluetoothFlushResultsTimeoutMs:J

.field private bluetoothMaxScanResults:I

.field private bluetoothScanDurationMs:J

.field private isBluetoothScanEnabled:Z

.field private isLocationScanEnabled:Z

.field private isWifiActiveScanAllowed:Z

.field private isWifiActiveScanForced:Z

.field private isWifiScanEnabled:Z

.field private lastLocationMaxAgeMs:J

.field private locationMaxAccuracyMeters:F

.field private final locationProviders:[Ljava/lang/String;

.field private locationRequestTimeoutMs:J

.field private wifiMaxScanResults:I

.field private wifiScanMaxAgeMs:J

.field private wifiScanTimeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "network"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gps"

    aput-object v2, v0, v1

    .line 32
    sput-object v0, Lcom/facebook/places/internal/LocationPackageRequestParams;->DEFAULT_LOCATION_PROVIDERS:[Ljava/lang/String;

    .line 48
    return-void
.end method

.method private constructor <init>(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)V
    .registers 4
    .param p1, "b"    # Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    # getter for: Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isLocationScanEnabled:Z
    invoke-static {p1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->access$0(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->isLocationScanEnabled:Z

    .line 70
    # getter for: Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->locationProviders:[Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->access$1(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->locationProviders:[Ljava/lang/String;

    .line 71
    # getter for: Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->locationMaxAccuracyMeters:F
    invoke-static {p1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->access$2(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)F

    move-result v0

    iput v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->locationMaxAccuracyMeters:F

    .line 72
    # getter for: Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->locationRequestTimeoutMs:J
    invoke-static {p1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->access$3(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->locationRequestTimeoutMs:J

    .line 73
    # getter for: Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->lastLocationMaxAgeMs:J
    invoke-static {p1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->access$4(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->lastLocationMaxAgeMs:J

    .line 75
    # getter for: Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isWifiScanEnabled:Z
    invoke-static {p1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->access$5(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->isWifiScanEnabled:Z

    .line 76
    # getter for: Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->wifiScanMaxAgeMs:J
    invoke-static {p1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->access$6(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->wifiScanMaxAgeMs:J

    .line 77
    # getter for: Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->wifiMaxScanResults:I
    invoke-static {p1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->access$7(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->wifiMaxScanResults:I

    .line 78
    # getter for: Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->wifiScanTimeoutMs:J
    invoke-static {p1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->access$8(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->wifiScanTimeoutMs:J

    .line 79
    # getter for: Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isWifiActiveScanAllowed:Z
    invoke-static {p1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->access$9(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->isWifiActiveScanAllowed:Z

    .line 80
    # getter for: Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isWifiActiveScanForced:Z
    invoke-static {p1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->access$10(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->isWifiActiveScanForced:Z

    .line 82
    # getter for: Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isBluetoothScanEnabled:Z
    invoke-static {p1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->access$11(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->isBluetoothScanEnabled:Z

    .line 83
    # getter for: Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->bluetoothScanDurationMs:J
    invoke-static {p1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->access$12(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->bluetoothScanDurationMs:J

    .line 84
    # getter for: Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->bluetoothMaxScanResults:I
    invoke-static {p1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->access$13(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->bluetoothMaxScanResults:I

    .line 85
    # getter for: Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->bluetoothFlushResultsTimeoutMs:J
    invoke-static {p1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->access$14(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->bluetoothFlushResultsTimeoutMs:J

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;Lcom/facebook/places/internal/LocationPackageRequestParams;)V
    .registers 3

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/facebook/places/internal/LocationPackageRequestParams;-><init>(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)V

    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/facebook/places/internal/LocationPackageRequestParams;->DEFAULT_LOCATION_PROVIDERS:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getBluetoothFlushResultsTimeoutMs()J
    .registers 3

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->bluetoothFlushResultsTimeoutMs:J

    return-wide v0
.end method

.method public getBluetoothMaxScanResults()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->bluetoothMaxScanResults:I

    return v0
.end method

.method public getBluetoothScanDurationMs()J
    .registers 3

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->bluetoothScanDurationMs:J

    return-wide v0
.end method

.method public getLastLocationMaxAgeMs()J
    .registers 3

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->lastLocationMaxAgeMs:J

    return-wide v0
.end method

.method public getLocationMaxAccuracyMeters()F
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->locationMaxAccuracyMeters:F

    return v0
.end method

.method public getLocationProviders()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->locationProviders:[Ljava/lang/String;

    return-object v0
.end method

.method public getLocationRequestTimeoutMs()J
    .registers 3

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->locationRequestTimeoutMs:J

    return-wide v0
.end method

.method public getWifiMaxScanResults()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->wifiMaxScanResults:I

    return v0
.end method

.method public getWifiScanMaxAgeMs()J
    .registers 3

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->wifiScanMaxAgeMs:J

    return-wide v0
.end method

.method public getWifiScanTimeoutMs()J
    .registers 3

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->wifiScanTimeoutMs:J

    return-wide v0
.end method

.method public isBluetoothScanEnabled()Z
    .registers 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->isBluetoothScanEnabled:Z

    return v0
.end method

.method public isLocationScanEnabled()Z
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->isLocationScanEnabled:Z

    return v0
.end method

.method public isWifiActiveScanAllowed()Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->isWifiActiveScanAllowed:Z

    return v0
.end method

.method public isWifiActiveScanForced()Z
    .registers 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->isWifiActiveScanForced:Z

    return v0
.end method

.method public isWifiScanEnabled()Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams;->isWifiScanEnabled:Z

    return v0
.end method
