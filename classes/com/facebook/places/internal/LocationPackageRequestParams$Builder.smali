.class public Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
.super Ljava/lang/Object;
.source "LocationPackageRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/internal/LocationPackageRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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

.field private locationProviders:[Ljava/lang/String;

.field private locationRequestTimeoutMs:J

.field private wifiMaxScanResults:I

.field private wifiScanMaxAgeMs:J

.field private wifiScanTimeoutMs:J


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x7530

    const/16 v3, 0x19

    const/4 v2, 0x1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-boolean v2, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isLocationScanEnabled:Z

    .line 150
    # getter for: Lcom/facebook/places/internal/LocationPackageRequestParams;->DEFAULT_LOCATION_PROVIDERS:[Ljava/lang/String;
    invoke-static {}, Lcom/facebook/places/internal/LocationPackageRequestParams;->access$0()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->locationProviders:[Ljava/lang/String;

    .line 151
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->locationMaxAccuracyMeters:F

    .line 152
    iput-wide v4, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->locationRequestTimeoutMs:J

    .line 153
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->lastLocationMaxAgeMs:J

    .line 155
    iput-boolean v2, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isWifiScanEnabled:Z

    .line 156
    iput-wide v4, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->wifiScanMaxAgeMs:J

    .line 157
    iput v3, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->wifiMaxScanResults:I

    .line 158
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->wifiScanTimeoutMs:J

    .line 159
    iput-boolean v2, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isWifiActiveScanAllowed:Z

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isWifiActiveScanForced:Z

    .line 162
    iput-boolean v2, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isBluetoothScanEnabled:Z

    .line 163
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->bluetoothScanDurationMs:J

    .line 164
    iput v3, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->bluetoothMaxScanResults:I

    .line 165
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->bluetoothFlushResultsTimeoutMs:J

    .line 148
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)Z
    .registers 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isLocationScanEnabled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->locationProviders:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)Z
    .registers 2

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isWifiActiveScanForced:Z

    return v0
.end method

.method static synthetic access$11(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)Z
    .registers 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isBluetoothScanEnabled:Z

    return v0
.end method

.method static synthetic access$12(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)J
    .registers 3

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->bluetoothScanDurationMs:J

    return-wide v0
.end method

.method static synthetic access$13(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->bluetoothMaxScanResults:I

    return v0
.end method

.method static synthetic access$14(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)J
    .registers 3

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->bluetoothFlushResultsTimeoutMs:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)F
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->locationMaxAccuracyMeters:F

    return v0
.end method

.method static synthetic access$3(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)J
    .registers 3

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->locationRequestTimeoutMs:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)J
    .registers 3

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->lastLocationMaxAgeMs:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)Z
    .registers 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isWifiScanEnabled:Z

    return v0
.end method

.method static synthetic access$6(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)J
    .registers 3

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->wifiScanMaxAgeMs:J

    return-wide v0
.end method

.method static synthetic access$7(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->wifiMaxScanResults:I

    return v0
.end method

.method static synthetic access$8(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)J
    .registers 3

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->wifiScanTimeoutMs:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;)Z
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isWifiActiveScanAllowed:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/facebook/places/internal/LocationPackageRequestParams;
    .registers 3

    .prologue
    .line 168
    new-instance v0, Lcom/facebook/places/internal/LocationPackageRequestParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/places/internal/LocationPackageRequestParams;-><init>(Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;Lcom/facebook/places/internal/LocationPackageRequestParams;)V

    return-object v0
.end method

.method public setBluetoothFlushResultsTimeoutMs(J)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    .registers 4
    .param p1, "bluetoothFlushResultsTimeoutMs"    # J

    .prologue
    .line 242
    iput-wide p1, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->bluetoothFlushResultsTimeoutMs:J

    .line 243
    return-object p0
.end method

.method public setBluetoothMaxScanResults(I)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    .registers 2
    .param p1, "bluetoothMaxScanResults"    # I

    .prologue
    .line 237
    iput p1, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->bluetoothMaxScanResults:I

    .line 238
    return-object p0
.end method

.method public setBluetoothScanDurationMs(J)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    .registers 4
    .param p1, "bluetoothScanDurationMs"    # J

    .prologue
    .line 232
    iput-wide p1, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->bluetoothScanDurationMs:J

    .line 233
    return-object p0
.end method

.method public setBluetoothScanEnabled(Z)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    .registers 2
    .param p1, "bluetoothScanEnabled"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isBluetoothScanEnabled:Z

    .line 228
    return-object p0
.end method

.method public setLastLocationMaxAgeMs(J)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    .registers 4
    .param p1, "lastLocationMaxAgeMs"    # J

    .prologue
    .line 177
    iput-wide p1, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->lastLocationMaxAgeMs:J

    .line 178
    return-object p0
.end method

.method public setLocationMaxAccuracyMeters(F)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    .registers 2
    .param p1, "locationMaxAccuracyMeters"    # F

    .prologue
    .line 187
    iput p1, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->locationMaxAccuracyMeters:F

    .line 188
    return-object p0
.end method

.method public setLocationProviders([Ljava/lang/String;)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    .registers 2
    .param p1, "locationProviders"    # [Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->locationProviders:[Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public setLocationRequestTimeoutMs(J)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    .registers 4
    .param p1, "locationRequestTimeoutMs"    # J

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->locationRequestTimeoutMs:J

    .line 193
    return-object p0
.end method

.method public setLocationScanEnabled(Z)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    .registers 2
    .param p1, "locationScanEnabled"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isLocationScanEnabled:Z

    .line 173
    return-object p0
.end method

.method public setWifiActiveScanAllowed(Z)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    .registers 2
    .param p1, "wifiActiveScanAllowed"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isWifiActiveScanAllowed:Z

    .line 218
    return-object p0
.end method

.method public setWifiActiveScanForced(Z)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    .registers 2
    .param p1, "wifiActiveScanForced"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isWifiActiveScanForced:Z

    .line 223
    return-object p0
.end method

.method public setWifiMaxScanResults(I)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    .registers 2
    .param p1, "wifiMaxScanResults"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->wifiMaxScanResults:I

    .line 208
    return-object p0
.end method

.method public setWifiScanEnabled(Z)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    .registers 2
    .param p1, "wifiScanEnabled"    # Z

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->isWifiScanEnabled:Z

    .line 198
    return-object p0
.end method

.method public setWifiScanMaxAgeMs(J)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    .registers 4
    .param p1, "wifiScanMaxAgeMs"    # J

    .prologue
    .line 202
    iput-wide p1, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->wifiScanMaxAgeMs:J

    .line 203
    return-object p0
.end method

.method public setWifiScanTimeoutMs(J)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    .registers 4
    .param p1, "wifiScanTimeoutMs"    # J

    .prologue
    .line 212
    iput-wide p1, p0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->wifiScanTimeoutMs:J

    .line 213
    return-object p0
.end method
