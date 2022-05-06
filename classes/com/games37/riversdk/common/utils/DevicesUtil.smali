.class public Lcom/games37/riversdk/common/utils/DevicesUtil;
.super Ljava/lang/Object;
.source "DevicesUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendNumber(Ljava/lang/StringBuilder;II)V
    .registers 6
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "count"    # I
    .param p2, "value"    # I

    .prologue
    .line 198
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "string":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p1, v2

    if-ge v0, v2, :cond_15

    .line 200
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 202
    :cond_15
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    return-void
.end method

.method public static createGmtOffsetString(ZZI)Ljava/lang/String;
    .registers 8
    .param p0, "includeGmt"    # Z
    .param p1, "includeMinuteSeparator"    # Z
    .param p2, "offsetMillis"    # I

    .prologue
    const/4 v4, 0x2

    .line 178
    const v3, 0xea60

    div-int v1, p2, v3

    .line 179
    .local v1, "offsetMinutes":I
    const/16 v2, 0x2b

    .line 180
    .local v2, "sign":C
    if-gez v1, :cond_d

    .line 181
    const/16 v2, 0x2d

    .line 182
    neg-int v1, v1

    .line 184
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 185
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1b

    .line 186
    const-string v3, "GMT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    div-int/lit8 v3, v1, 0x3c

    invoke-static {v0, v4, v3}, Lcom/games37/riversdk/common/utils/DevicesUtil;->appendNumber(Ljava/lang/StringBuilder;II)V

    .line 190
    if-eqz p1, :cond_2a

    .line 191
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    :cond_2a
    rem-int/lit8 v3, v1, 0x3c

    invoke-static {v0, v4, v3}, Lcom/games37/riversdk/common/utils/DevicesUtil;->appendNumber(Ljava/lang/StringBuilder;II)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "android_id":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    .line 103
    :goto_b
    return-object v0

    .line 100
    :catch_c
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, ""

    goto :goto_b
.end method

.method public static getBatteryStatus(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "battery":Ljava/lang/String;
    :try_start_1
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 137
    .local v4, "mFilter":Landroid/content/IntentFilter;
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 138
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1a

    .line 139
    const-string v5, "level"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 140
    .local v3, "level":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1b

    move-result-object v0

    .line 145
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "level":I
    .end local v4    # "mFilter":Landroid/content/IntentFilter;
    :cond_1a
    :goto_1a
    return-object v0

    .line 142
    :catch_1b
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, "-1"

    goto :goto_1a
.end method

.method public static getCurrentTimeZone()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 164
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 165
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-static {v2, v2, v1}, Lcom/games37/riversdk/common/utils/DevicesUtil;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string v0, ""

    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    .line 86
    .local v0, "bd":Landroid/os/Build;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v1
.end method

.method public static getDeviceType()Ljava/lang/String;
    .registers 1

    .prologue
    .line 76
    const-string v0, "android"

    return-object v0
.end method

.method public static getMobileEquipmentIdentity(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const-string v0, ""

    .line 124
    .local v0, "imei":Ljava/lang/String;
    return-object v0
.end method

.method public static final getOSVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    invoke-static {p0}, Lcom/games37/riversdk/common/utils/DevicesUtil;->getTelImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "imsi":Ljava/lang/String;
    const-string v1, "\u672a\u77e5"

    .line 235
    .local v1, "operator":Ljava/lang/String;
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 236
    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "46007"

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 239
    :cond_24
    const-string v1, "\u4e2d\u56fd\u79fb\u52a8"

    .line 248
    :cond_26
    :goto_26
    return-object v1

    .line 240
    :cond_27
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "46006"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 242
    :cond_37
    const-string v1, "\u4e2d\u56fd\u8054\u901a"

    goto :goto_26

    .line 243
    :cond_3a
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    const-string v2, "46011"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    const-string v2, "46005"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 245
    :cond_52
    const-string v1, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_26
.end method

.method public static getSIMState(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 213
    .local v1, "state":Z
    const-string v2, "phone"

    .line 214
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 215
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    packed-switch v2, :pswitch_data_14

    .line 220
    const/4 v1, 0x0

    .line 223
    :goto_11
    return v1

    .line 217
    :pswitch_12
    const/4 v1, 0x1

    .line 218
    goto :goto_11

    .line 215
    :pswitch_data_14
    .packed-switch 0x5
        :pswitch_12
    .end packed-switch
.end method

.method public static final getSystemCountry()Ljava/lang/String;
    .registers 1

    .prologue
    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getSystemLanguage()Ljava/lang/String;
    .registers 1

    .prologue
    .line 49
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTelImsi(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    const-string v0, ""

    return-object v0
.end method

.method public static getTimeZone()Ljava/lang/String;
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 155
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-virtual {v0, v1, v1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
