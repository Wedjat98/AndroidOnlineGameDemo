.class public Lcom/iflytek/speech/UtilityConfig;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_SPEAKER_VERIFIER:Ljava/lang/String; = "com.iflytek.vflynote.speakerverify"

.field public static final ACTION_SPEECH_RECOGNIZER:Ljava/lang/String; = "com.iflytek.vflynote.recognize"

.field public static final ACTION_SPEECH_SYNTHESIZER:Ljava/lang/String; = "com.iflytek.vflynote.synthesize"

.field public static final ACTION_SPEECH_UNDERSTANDER:Ljava/lang/String; = "com.iflytek.vflynote.speechunderstand"

.field public static final ACTION_SPEECH_WAKEUP:Ljava/lang/String; = "com.iflytek.vflynote.wakeup"

.field public static final ACTION_TEXT_UNDERSTANDER:Ljava/lang/String; = "com.iflytek.vflynote.textunderstand"

.field public static final CHANNEL_ID:Ljava/lang/String; = "16010000"

.field public static final CHANNEL_NAME:Ljava/lang/String; = "dev.voicecloud"

.field public static final COMPONENT_PKG:Ljava/lang/String; = "com.iflytek.vflynote"

.field public static final COMPONENT_URL:Ljava/lang/String; = "http://iss.openspeech.cn/v?"

.field public static final KEY_CALLER_APPID:Ljava/lang/String; = "caller.appid"

.field public static final KEY_CALLER_NAME:Ljava/lang/String; = "caller.name"

.field public static final KEY_CALLER_PKG_NAME:Ljava/lang/String; = "caller.pkg"

.field public static final KEY_CALLER_VER_CODE:Ljava/lang/String; = "caller.ver.code"

.field public static final KEY_CALLER_VER_NAME:Ljava/lang/String; = "caller.ver.name"

.field public static final KEY_CHANNEL_ID:Ljava/lang/String; = "channel.id"

.field public static final KEY_CHANNEL_NAME:Ljava/lang/String; = "channel.name"

.field public static final KEY_DEVICE_INFO:Ljava/lang/String; = "device"

.field public static final KEY_REQUEST_PACKAGE:Ljava/lang/String; = "request.package"

.field public static final METADATA_KEY_ENGINE_TYPE:Ljava/lang/String; = "enginetype"

.field public static final SDK_VER_NAME:Ljava/lang/String; = "sdk.ver.name"

.field public static final SETTINGS_ACTION_ASR:Ljava/lang/String; = "com.iflytek.vflynote.settings.asr"

.field public static final SETTINGS_ACTION_MAIN:Ljava/lang/String; = "com.iflytek.vflynote.settings.main"

.field public static final SETTINGS_ACTION_TTS:Ljava/lang/String; = "com.iflytek.vflynote.activity.speaker.SpeakerSetting"

.field private static callerHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iflytek/speech/UtilityConfig;->callerHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendHttpParam(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_1c

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1c
    return-void
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    sget-object v0, Lcom/iflytek/speech/UtilityConfig;->callerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/iflytek/speech/UtilityConfig;->callerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sget-object v2, Lcom/iflytek/speech/UtilityConfig;->callerHashMap:Ljava/util/HashMap;

    const-string v3, "caller.name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/iflytek/speech/UtilityConfig;->callerHashMap:Ljava/util/HashMap;

    const-string v3, "caller.pkg"

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iflytek/speech/UtilityConfig;->callerHashMap:Ljava/util/HashMap;

    const-string v2, "caller.ver.name"

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iflytek/speech/UtilityConfig;->callerHashMap:Ljava/util/HashMap;

    const-string v2, "caller.ver.code"

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_59} :catch_62

    :goto_59
    sget-object v0, Lcom/iflytek/speech/UtilityConfig;->callerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_10

    :catch_62
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_59
.end method

.method public static getComponentUrlParam(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "caller.name"

    invoke-static {p0, v0}, Lcom/iflytek/speech/UtilityConfig;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "caller.pkg"

    invoke-static {p0, v1}, Lcom/iflytek/speech/UtilityConfig;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "channel.id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v3, "16010000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "sdk.ver.name"

    invoke-static {}, Lcom/iflytek/speech/Version;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/iflytek/speech/UtilityConfig;->appendHttpParam(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "caller.name"

    invoke-static {v2, v3, v0}, Lcom/iflytek/speech/UtilityConfig;->appendHttpParam(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "caller.pkg"

    invoke-static {v2, v0, v1}, Lcom/iflytek/speech/UtilityConfig;->appendHttpParam(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "os.imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/L;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v3, "os.imei"

    invoke-virtual {v1, v3}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";net.mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/L;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v3, "net.mac"

    invoke-virtual {v1, v3}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";unique_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/X;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device"

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/P;->a([B)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2, v1, v3}, Lcom/iflytek/speech/UtilityConfig;->appendHttpParam(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
