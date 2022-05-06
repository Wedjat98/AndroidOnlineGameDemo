.class public Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;
.super Ljava/lang/Object;
.source "DeviceRequestsHelper.java"


# static fields
.field static final DEVICE_INFO_DEVICE:Ljava/lang/String; = "device"

.field static final DEVICE_INFO_MODEL:Ljava/lang/String; = "model"

.field public static final DEVICE_INFO_PARAM:Ljava/lang/String; = "device_info"

.field static final SDK_FLAVOR:Ljava/lang/String; = "android"

.field static final SDK_HEADER:Ljava/lang/String; = "fbsdk"

.field static final SERVICE_TYPE:Ljava/lang/String; = "_fb._tcp."

.field private static deviceRequestsListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/nsd/NsdManager$RegistrationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    sput-object v0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanUpAdvertisementService(Ljava/lang/String;)V
    .registers 1
    .param p0, "userCode"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {p0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementServiceImpl(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method private static cleanUpAdvertisementServiceImpl(Ljava/lang/String;)V
    .registers 5
    .param p0, "userCode"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 204
    sget-object v2, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 205
    .local v1, "nsdRegistrationListener":Landroid/net/nsd/NsdManager$RegistrationListener;
    if-eqz v1, :cond_1e

    .line 207
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 208
    const-string v3, "servicediscovery"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 206
    check-cast v0, Landroid/net/nsd/NsdManager;

    .line 210
    .local v0, "nsdManager":Landroid/net/nsd/NsdManager;
    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 212
    sget-object v2, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v0    # "nsdManager":Landroid/net/nsd/NsdManager;
    :cond_1e
    return-void
.end method

.method public static generateQRCode(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 22
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v9, 0x0

    .line 101
    .local v9, "qrCode":Landroid/graphics/Bitmap;
    new-instance v8, Ljava/util/EnumMap;

    const-class v3, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v8, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 102
    .local v8, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v3, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :try_start_12
    new-instance v3, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v3}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 105
    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/16 v6, 0xc8

    const/16 v7, 0xc8

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v19

    .line 107
    .local v19, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v16

    .line 108
    .local v16, "h":I
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v12

    .line 109
    .local v12, "w":I
    mul-int v3, v16, v12

    new-array v10, v3, [I

    .line 111
    .local v10, "pixels":[I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_31
    move/from16 v0, v17

    move/from16 v1, v16

    if-lt v0, v1, :cond_47

    .line 119
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v12, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 120
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v15, v12

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 126
    .end local v10    # "pixels":[I
    .end local v12    # "w":I
    .end local v16    # "h":I
    .end local v17    # "i":I
    .end local v19    # "matrix":Lcom/google/zxing/common/BitMatrix;
    :goto_46
    return-object v9

    .line 112
    .restart local v10    # "pixels":[I
    .restart local v12    # "w":I
    .restart local v16    # "h":I
    .restart local v17    # "i":I
    .restart local v19    # "matrix":Lcom/google/zxing/common/BitMatrix;
    :cond_47
    mul-int v20, v17, v12

    .line 113
    .local v20, "offset":I
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_4b
    move/from16 v0, v18

    if-lt v0, v12, :cond_52

    .line 111
    add-int/lit8 v17, v17, 0x1

    goto :goto_31

    .line 114
    :cond_52
    add-int v4, v20, v18

    .line 115
    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_67

    const/high16 v3, -0x1000000

    .line 114
    :goto_62
    aput v3, v10, v4
    :try_end_64
    .catch Lcom/google/zxing/WriterException; {:try_start_12 .. :try_end_64} :catch_69

    .line 113
    add-int/lit8 v18, v18, 0x1

    goto :goto_4b

    .line 115
    :cond_67
    const/4 v3, -0x1

    goto :goto_62

    .line 122
    .end local v10    # "pixels":[I
    .end local v12    # "w":I
    .end local v16    # "h":I
    .end local v17    # "i":I
    .end local v18    # "j":I
    .end local v19    # "matrix":Lcom/google/zxing/common/BitMatrix;
    .end local v20    # "offset":I
    :catch_69
    move-exception v3

    goto :goto_46
.end method

.method public static getDeviceInfo()Ljava/lang/String;
    .registers 3

    .prologue
    .line 72
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .local v0, "deviceInfo":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_13} :catch_18

    .line 79
    :goto_13
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 76
    :catch_18
    move-exception v1

    goto :goto_13
.end method

.method public static isAvailable()Z
    .registers 2

    .prologue
    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1c

    .line 95
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getSmartLoginOptions()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/facebook/internal/SmartLoginOption;->Enabled:Lcom/facebook/internal/SmartLoginOption;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 94
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static startAdvertisementService(Ljava/lang/String;)Z
    .registers 2
    .param p0, "userCode"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 84
    invoke-static {p0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->startAdvertisementServiceImpl(Ljava/lang/String;)Z

    move-result v0

    .line 87
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static startAdvertisementServiceImpl(Ljava/lang/String;)Z
    .registers 14
    .param p0, "userCode"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 135
    sget-object v5, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 198
    :goto_b
    return v10

    .line 140
    :cond_c
    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    const/16 v7, 0x7c

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "sdkVersion":Ljava/lang/String;
    const-string v5, "%s_%s_%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 145
    const-string v7, "fbsdk"

    aput-object v7, v6, v11

    .line 148
    const-string v7, "%s-%s"

    new-array v8, v12, [Ljava/lang/Object;

    .line 149
    const-string v9, "android"

    aput-object v9, v8, v11

    .line 150
    aput-object v4, v8, v10

    .line 148
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 156
    aput-object p0, v6, v12

    .line 143
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "nsdServiceName":Ljava/lang/String;
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 160
    .local v0, "nsdLoginAdvertisementService":Landroid/net/nsd/NsdServiceInfo;
    const-string v5, "_fb._tcp."

    invoke-virtual {v0, v5}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v3}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 162
    const/16 v5, 0x50

    invoke-virtual {v0, v5}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 165
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 166
    const-string v6, "servicediscovery"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 164
    check-cast v1, Landroid/net/nsd/NsdManager;

    .line 169
    .local v1, "nsdManager":Landroid/net/nsd/NsdManager;
    new-instance v2, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper$1;

    invoke-direct {v2, v3, p0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v2, "nsdRegistrationListener":Landroid/net/nsd/NsdManager$RegistrationListener;
    sget-object v5, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    invoke-virtual {v5, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v1, v0, v10, v2}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    goto :goto_b
.end method
