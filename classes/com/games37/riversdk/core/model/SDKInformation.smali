.class public Lcom/games37/riversdk/core/model/SDKInformation;
.super Ljava/lang/Object;
.source "SDKInformation.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SDKInformation"

.field private static volatile instance:Lcom/games37/riversdk/core/model/SDKInformation;


# instance fields
.field private advertiser:Ljava/lang/String;

.field private battery:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private customUserID:Ljava/lang/String;

.field private deviceID:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private gpid:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private isInit:Z

.field private language:Ljava/lang/String;

.field private mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

.field private mac:Ljava/lang/String;

.field private metaDataBundle:Lcom/games37/riversdk/core/model/DataBundle;

.field private netType:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private packageVersion:Ljava/lang/String;

.field private ratio:Ljava/lang/String;

.field private sdkConfigMap:Lcom/games37/riversdk/core/model/DataMap;

.field private timeZone:Ljava/lang/String;

.field private ueDeviceID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/games37/riversdk/core/model/SDKInformation;->instance:Lcom/games37/riversdk/core/model/SDKInformation;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->isInit:Z

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->deviceType:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->deviceModel:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->deviceID:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->ueDeviceID:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->imei:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->gpid:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->netType:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->mac:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->timeZone:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->ratio:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->battery:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->language:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->country:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->osVersion:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->customUserID:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->advertiser:Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/games37/riversdk/core/model/DataMap;

    invoke-direct {v0}, Lcom/games37/riversdk/core/model/DataMap;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->sdkConfigMap:Lcom/games37/riversdk/core/model/DataMap;

    .line 108
    new-instance v0, Lcom/games37/riversdk/core/model/DataBundle;

    invoke-direct {v0}, Lcom/games37/riversdk/core/model/DataBundle;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->metaDataBundle:Lcom/games37/riversdk/core/model/DataBundle;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->packageName:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->packageVersion:Ljava/lang/String;

    .line 130
    new-instance v0, Lcom/games37/riversdk/core/login/dao/LoginDao;

    invoke-direct {v0}, Lcom/games37/riversdk/core/login/dao/LoginDao;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    .line 131
    return-void
.end method

.method public static getInstance()Lcom/games37/riversdk/core/model/SDKInformation;
    .registers 2

    .prologue
    .line 119
    sget-object v0, Lcom/games37/riversdk/core/model/SDKInformation;->instance:Lcom/games37/riversdk/core/model/SDKInformation;

    if-nez v0, :cond_13

    .line 120
    const-class v1, Lcom/games37/riversdk/core/model/SDKInformation;

    monitor-enter v1

    .line 121
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/core/model/SDKInformation;->instance:Lcom/games37/riversdk/core/model/SDKInformation;

    if-nez v0, :cond_12

    .line 122
    new-instance v0, Lcom/games37/riversdk/core/model/SDKInformation;

    invoke-direct {v0}, Lcom/games37/riversdk/core/model/SDKInformation;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/model/SDKInformation;->instance:Lcom/games37/riversdk/core/model/SDKInformation;

    .line 124
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 126
    :cond_13
    sget-object v0, Lcom/games37/riversdk/core/model/SDKInformation;->instance:Lcom/games37/riversdk/core/model/SDKInformation;

    return-object v0

    .line 124
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private initGPId(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    iget-object v1, p0, Lcom/games37/riversdk/core/model/SDKInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    invoke-virtual {v1, p1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->getGPId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "gpid":Ljava/lang/String;
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 282
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/games37/riversdk/core/model/SDKInformation$1;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/core/model/SDKInformation$1;-><init>(Lcom/games37/riversdk/core/model/SDKInformation;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 287
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 291
    :goto_19
    return-void

    .line 289
    :cond_1a
    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->gpid:Ljava/lang/String;

    goto :goto_19
.end method


# virtual methods
.method public clearData()V
    .registers 2

    .prologue
    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->isInit:Z

    .line 307
    return-void
.end method

.method public getAdvertiser()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->advertiser:Ljava/lang/String;

    return-object v0
.end method

.method public getBattery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->battery:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomUserID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->customUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getGpid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->gpid:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaDataBundle()Lcom/games37/riversdk/core/model/DataBundle;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->metaDataBundle:Lcom/games37/riversdk/core/model/DataBundle;

    return-object v0
.end method

.method public getNetType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->netType:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->packageVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRatio()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->ratio:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->sdkConfigMap:Lcom/games37/riversdk/core/model/DataMap;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getUeDeviceID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->ueDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configClassPath"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-static {}, Lcom/games37/riversdk/common/utils/DevicesUtil;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->deviceType:Ljava/lang/String;

    .line 143
    invoke-static {}, Lcom/games37/riversdk/common/utils/DevicesUtil;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->deviceModel:Ljava/lang/String;

    .line 145
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/DevicesUtil;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->ueDeviceID:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->ueDeviceID:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->deviceID:Ljava/lang/String;

    .line 149
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/DevicesUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->imei:Ljava/lang/String;

    .line 151
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/NetUtil;->getNetWorkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->netType:Ljava/lang/String;

    .line 153
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/MacAddressUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->mac:Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/games37/riversdk/common/utils/DevicesUtil;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->timeZone:Ljava/lang/String;

    .line 157
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->getScreenResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->ratio:Ljava/lang/String;

    .line 159
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/DevicesUtil;->getBatteryStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->battery:Ljava/lang/String;

    .line 161
    invoke-static {}, Lcom/games37/riversdk/common/utils/DevicesUtil;->getSystemLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->language:Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/games37/riversdk/common/utils/DevicesUtil;->getSystemCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->country:Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/games37/riversdk/common/utils/DevicesUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->osVersion:Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/games37/riversdk/common/utils/DeviceUUIDFactory;

    invoke-direct {v0, p1}, Lcom/games37/riversdk/common/utils/DeviceUUIDFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/games37/riversdk/common/utils/DeviceUUIDFactory;->getDeviceUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->customUserID:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->sdkConfigMap:Lcom/games37/riversdk/core/model/DataMap;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/model/DataMap;->clear()V

    .line 171
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->sdkConfigMap:Lcom/games37/riversdk/core/model/DataMap;

    invoke-static {p2}, Lcom/games37/riversdk/common/utils/ReflectUtil;->getAllFileldAndValue(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/model/DataMap;->putAll(Ljava/util/Map;)V

    .line 173
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/PackageUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->packageName:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->metaDataBundle:Lcom/games37/riversdk/core/model/DataBundle;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/model/DataBundle;->clear()V

    .line 176
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->metaDataBundle:Lcom/games37/riversdk/core/model/DataBundle;

    invoke-static {p1}, Lcom/games37/riversdk/common/utils/ManifestUtil;->getAllMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/model/DataBundle;->putBundle(Landroid/os/Bundle;)V

    .line 178
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/PackageUtil;->getVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->packageVersion:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->sdkConfigMap:Lcom/games37/riversdk/core/model/DataMap;

    const-string v1, "PTCODE"

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->advertiser:Ljava/lang/String;

    .line 183
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/model/SDKInformation;->initGPId(Landroid/content/Context;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->isInit:Z

    .line 186
    return-void
.end method

.method public reInitData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configClassPath"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->isInit:Z

    if-nez v0, :cond_7

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/model/SDKInformation;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    :cond_7
    return-void
.end method

.method public setGpid(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gpADId"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p2, p0, Lcom/games37/riversdk/core/model/SDKInformation;->gpid:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    invoke-virtual {v0, p1, p2}, Lcom/games37/riversdk/core/login/dao/LoginDao;->setGPId(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    return-void
.end method
