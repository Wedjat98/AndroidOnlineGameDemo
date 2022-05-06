.class public Lcom/games37/riversdk/core/route/RiverSDKTransfer;
.super Ljava/lang/Object;
.source "RiverSDKTransfer.java"


# static fields
.field private static final API_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;

.field private static final APPLICATION_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Lcom/games37/riversdk/core/model/DataBundle;

    invoke-direct {v0}, Lcom/games37/riversdk/core/model/DataBundle;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->API_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;

    .line 25
    new-instance v0, Lcom/games37/riversdk/core/model/DataBundle;

    invoke-direct {v0}, Lcom/games37/riversdk/core/model/DataBundle;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->APPLICATION_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;

    .line 29
    invoke-static {}, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->initApiPathConfig()V

    .line 31
    invoke-static {}, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->initApplicationPathConfig()V

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRiverSDKApi(Ljava/lang/String;)Lcom/games37/riversdk/core/api/RiverSDKBaseApi;
    .registers 6
    .param p0, "platform"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-object v2, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->API_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;

    invoke-virtual {v2, p0}, Lcom/games37/riversdk/core/model/DataBundle;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "fullClassPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/ReflectUtil;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 80
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_f

    .line 81
    check-cast v1, Lcom/games37/riversdk/core/api/RiverSDKBaseApi;

    .end local v1    # "obj":Ljava/lang/Object;
    return-object v1

    .line 84
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_f
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RiverSDK:Create "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RiverSDKBaseApi Object Failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getRiverSDKApplication(Ljava/lang/String;)Lcom/games37/riversdk/core/api/BaseApplication;
    .registers 6
    .param p0, "platform"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v2, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->APPLICATION_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;

    invoke-virtual {v2, p0}, Lcom/games37/riversdk/core/model/DataBundle;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "fullClassPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/ReflectUtil;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 98
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_f

    .line 99
    check-cast v1, Lcom/games37/riversdk/core/api/BaseApplication;

    .end local v1    # "obj":Ljava/lang/Object;
    return-object v1

    .line 102
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_f
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RiverSDK:Create "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Application Object Failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static initApiPathConfig()V
    .registers 3

    .prologue
    .line 39
    sget-object v0, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->API_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;

    const-string v1, "gm99"

    const-string v2, "com.games37.riversdk.gm99.GM99SDKApi"

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/model/DataBundle;->putStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->API_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;

    const-string v1, "jp37"

    const-string v2, "com.games37.riversdk.jp37.JPSDKApi"

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/model/DataBundle;->putStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->API_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;

    const-string v1, "ujoy"

    const-string v2, "com.games37.riversdk.ujoy.UjoySDKApi"

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/model/DataBundle;->putStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->API_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;

    const-string v1, "gmthai"

    const-string v2, "com.games37.riversdk.gmthai.GMThaiSDKApi"

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/model/DataBundle;->putStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->API_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;

    const-string v1, "vgm"

    const-string v2, "com.games37.riversdk.vgm.VGMSDKApi"

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/model/DataBundle;->putStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->API_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;

    const-string v1, "37games"

    const-string v2, "com.games37.riversdk.games37.Games37SDKApi"

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/model/DataBundle;->putStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private static initApplicationPathConfig()V
    .registers 3

    .prologue
    .line 57
    sget-object v0, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->APPLICATION_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;

    const-string v1, "gm99"

    const-string v2, "com.games37.riversdk.gm99.GM99Application"

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/model/DataBundle;->putStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->APPLICATION_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;

    const-string v1, "jp37"

    const-string v2, "com.games37.riversdk.jp37.JPApplication"

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/model/DataBundle;->putStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->APPLICATION_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;

    const-string v1, "ujoy"

    const-string v2, "com.games37.riversdk.ujoy.UjoyApplication"

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/model/DataBundle;->putStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->APPLICATION_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;

    const-string v1, "gmthai"

    const-string v2, "com.games37.riversdk.gmthai.GMThaiSDKApplication"

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/model/DataBundle;->putStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->APPLICATION_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;

    const-string v1, "vgm"

    const-string v2, "com.games37.riversdk.vgm.VGMApplication"

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/model/DataBundle;->putStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->APPLICATION_PATH_CONFIG:Lcom/games37/riversdk/core/model/DataBundle;

    const-string v1, "37games"

    const-string v2, "com.games37.riversdk.games37.Games37Application"

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/model/DataBundle;->putStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
