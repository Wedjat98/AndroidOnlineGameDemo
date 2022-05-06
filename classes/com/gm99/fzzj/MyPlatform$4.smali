.class Lcom/gm99/fzzj/MyPlatform$4;
.super Lonlysdk/framework/listener/UserActionListener;
.source "MyPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gm99/fzzj/MyPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$onlysdk$framework$enumtype$UserActionResultCode:[I


# direct methods
.method static synthetic $SWITCH_TABLE$onlysdk$framework$enumtype$UserActionResultCode()[I
    .registers 3

    .prologue
    .line 104
    sget-object v0, Lcom/gm99/fzzj/MyPlatform$4;->$SWITCH_TABLE$onlysdk$framework$enumtype$UserActionResultCode:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lonlysdk/framework/enumtype/UserActionResultCode;->values()[Lonlysdk/framework/enumtype/UserActionResultCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kAccountSwitchFail:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_15a

    :goto_16
    :try_start_16
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kAccountSwitchSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_20} :catch_157

    :goto_20
    :try_start_20
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kAntiAddictionQueryAdult:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_154

    :goto_2a
    :try_start_2a
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kAntiAddictionQueryNoUserData:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_34} :catch_151

    :goto_34
    :try_start_34
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kAntiAddictionQueryNotAdult:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_14e

    :goto_3e
    :try_start_3e
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kBindAccountCancel:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_14b

    :goto_48
    :try_start_48
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kBindAccountFail:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_148

    :goto_52
    :try_start_52
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kBindAccountSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_145

    :goto_5c
    :try_start_5c
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kCheckServer:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_66} :catch_142

    :goto_66
    :try_start_66
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kExitAntiAddiction:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_70} :catch_13f

    :goto_70
    :try_start_70
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kExitGame:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_7a} :catch_13c

    :goto_7a
    :try_start_7a
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginCancel:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_84} :catch_139

    :goto_84
    :try_start_84
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginFail:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_8e} :catch_136

    :goto_8e
    :try_start_8e
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginGuestSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_97} :catch_133

    :goto_97
    :try_start_97
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginNetworkError:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a0} :catch_130

    :goto_a0
    :try_start_a0
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginNoNeed:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_a9} :catch_12d

    :goto_a9
    :try_start_a9
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_b2} :catch_12b

    :goto_b2
    :try_start_b2
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kLogoutFail:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b2 .. :try_end_bc} :catch_129

    :goto_bc
    :try_start_bc
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kLogoutSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_c6} :catch_127

    :goto_c6
    :try_start_c6
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kMSDKLoginFailShowSelectQQOrWX:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_d0} :catch_125

    :goto_d0
    :try_start_d0
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kPauseGame:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d0 .. :try_end_da} :catch_123

    :goto_da
    :try_start_da
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kPlatformCenterEnter:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e4} :catch_121

    :goto_e4
    :try_start_e4
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kRealNameRegister:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_ee} :catch_11f

    :goto_ee
    :try_start_ee
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kSelectServer:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee .. :try_end_f8} :catch_11d

    :goto_f8
    :try_start_f8
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kUserActionResultNull:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f8 .. :try_end_101} :catch_11b

    :goto_101
    :try_start_101
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kUserInitFail:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10a} :catch_119

    :goto_10a
    :try_start_10a
    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kUserInitSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_113
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_113} :catch_117

    :goto_113
    sput-object v0, Lcom/gm99/fzzj/MyPlatform$4;->$SWITCH_TABLE$onlysdk$framework$enumtype$UserActionResultCode:[I

    goto/16 :goto_4

    :catch_117
    move-exception v1

    goto :goto_113

    :catch_119
    move-exception v1

    goto :goto_10a

    :catch_11b
    move-exception v1

    goto :goto_101

    :catch_11d
    move-exception v1

    goto :goto_f8

    :catch_11f
    move-exception v1

    goto :goto_ee

    :catch_121
    move-exception v1

    goto :goto_e4

    :catch_123
    move-exception v1

    goto :goto_da

    :catch_125
    move-exception v1

    goto :goto_d0

    :catch_127
    move-exception v1

    goto :goto_c6

    :catch_129
    move-exception v1

    goto :goto_bc

    :catch_12b
    move-exception v1

    goto :goto_b2

    :catch_12d
    move-exception v1

    goto/16 :goto_a9

    :catch_130
    move-exception v1

    goto/16 :goto_a0

    :catch_133
    move-exception v1

    goto/16 :goto_97

    :catch_136
    move-exception v1

    goto/16 :goto_8e

    :catch_139
    move-exception v1

    goto/16 :goto_84

    :catch_13c
    move-exception v1

    goto/16 :goto_7a

    :catch_13f
    move-exception v1

    goto/16 :goto_70

    :catch_142
    move-exception v1

    goto/16 :goto_66

    :catch_145
    move-exception v1

    goto/16 :goto_5c

    :catch_148
    move-exception v1

    goto/16 :goto_52

    :catch_14b
    move-exception v1

    goto/16 :goto_48

    :catch_14e
    move-exception v1

    goto/16 :goto_3e

    :catch_151
    move-exception v1

    goto/16 :goto_34

    :catch_154
    move-exception v1

    goto/16 :goto_2a

    :catch_157
    move-exception v1

    goto/16 :goto_20

    :catch_15a
    move-exception v1

    goto/16 :goto_16
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 104
    invoke-direct {p0}, Lonlysdk/framework/listener/UserActionListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onUserActionResult(Lonlysdk/framework/enumtype/UserActionResultCode;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 11
    .param p1, "code"    # Lonlysdk/framework/enumtype/UserActionResultCode;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonlysdk/framework/enumtype/UserActionResultCode;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->getPlatformID()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "strPlatSuffix":Ljava/lang/String;
    invoke-static {}, Lcom/gm99/fzzj/MyPlatform$4;->$SWITCH_TABLE$onlysdk$framework$enumtype$UserActionResultCode()[I

    move-result-object v1

    invoke-virtual {p1}, Lonlysdk/framework/enumtype/UserActionResultCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_106

    .line 258
    :cond_15
    :goto_15
    :pswitch_15
    return-void

    .line 121
    :pswitch_16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Platform_login_success_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gm99/fzzj/MyPlatform;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 122
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isLogoutByGame:Z

    .line 123
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isInSDKRun:Z

    .line 124
    invoke-static {v3}, Lcom/ledo/fantasy/game/JniProxy;->onLogined(I)V

    goto :goto_15

    .line 131
    :pswitch_32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Platform_login_guest_success_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gm99/fzzj/MyPlatform;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 132
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isLogoutByGame:Z

    .line 133
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isInSDKRun:Z

    .line 134
    invoke-static {v4}, Lcom/ledo/fantasy/game/JniProxy;->onLogined(I)V

    goto :goto_15

    .line 137
    :pswitch_4e
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isLogoutByGame:Z

    .line 138
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isInSDKRun:Z

    .line 140
    :pswitch_52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Platform_login_fail_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gm99/fzzj/MyPlatform;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 141
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isLogoutByGame:Z

    .line 142
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isInSDKRun:Z

    .line 143
    invoke-static {v5}, Lcom/ledo/fantasy/game/JniProxy;->onLogined(I)V

    .line 144
    const-string v1, "jhad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 145
    sget-object v1, Lcom/gm99/fzzj/MyPlatform;->gameActivity:Landroid/app/Activity;

    const-string v2, "\u9427\u8bf2\u7d8d\u6fb6\u8fab\u89e6"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_15

    .line 150
    :pswitch_81
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isLogoutByGame:Z

    .line 151
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isInSDKRun:Z

    .line 152
    invoke-static {v5}, Lcom/ledo/fantasy/game/JniProxy;->onLogined(I)V

    goto :goto_15

    .line 155
    :pswitch_89
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isInSDKRun:Z

    goto :goto_15

    .line 158
    :pswitch_8c
    sget-object v1, Lcom/gm99/fzzj/MyPlatform;->TAG:Ljava/lang/String;

    const-string v2, "log out success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isInSDKRun:Z

    .line 162
    sget-boolean v1, Lcom/gm99/fzzj/MyPlatform;->s_isLogoutByGame:Z

    if-nez v1, :cond_a5

    .line 164
    new-instance v1, Lcom/gm99/fzzj/MyPlatform$4$1;

    invoke-direct {v1, p0}, Lcom/gm99/fzzj/MyPlatform$4$1;-><init>(Lcom/gm99/fzzj/MyPlatform$4;)V

    .line 179
    invoke-virtual {v1}, Lcom/gm99/fzzj/MyPlatform$4$1;->start()V

    .line 184
    :goto_a1
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isLogoutByGame:Z

    goto/16 :goto_15

    .line 181
    :cond_a5
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->onLogout()V

    .line 182
    invoke-static {v6}, Lcom/ledo/fantasy/game/JniProxy;->onLogined(I)V

    goto :goto_a1

    .line 188
    :pswitch_ac
    const-string v1, "msdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 189
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isInSDKRun:Z

    .line 190
    sget-boolean v1, Lcom/gm99/fzzj/MyPlatform;->s_isLogoutByGame:Z

    if-nez v1, :cond_c6

    .line 192
    new-instance v1, Lcom/gm99/fzzj/MyPlatform$4$2;

    invoke-direct {v1, p0}, Lcom/gm99/fzzj/MyPlatform$4$2;-><init>(Lcom/gm99/fzzj/MyPlatform$4;)V

    .line 207
    invoke-virtual {v1}, Lcom/gm99/fzzj/MyPlatform$4$2;->start()V

    .line 212
    :goto_c2
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isLogoutByGame:Z

    goto/16 :goto_15

    .line 209
    :cond_c6
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->onLogout()V

    .line 210
    invoke-static {v6}, Lcom/ledo/fantasy/game/JniProxy;->onLogined(I)V

    goto :goto_c2

    .line 216
    :pswitch_cd
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isLogoutByGame:Z

    .line 217
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isInSDKRun:Z

    goto/16 :goto_15

    .line 227
    :pswitch_d3
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->release()V

    .line 228
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ledo/fantasy/game/GameApp;->finish()V

    .line 229
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_15

    .line 238
    :pswitch_e2
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isLogoutByGame:Z

    .line 239
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isInSDKRun:Z

    goto/16 :goto_15

    .line 242
    :pswitch_e8
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isLogoutByGame:Z

    .line 243
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isInSDKRun:Z

    goto/16 :goto_15

    .line 246
    :pswitch_ee
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isLogoutByGame:Z

    .line 247
    sput-boolean v3, Lcom/gm99/fzzj/MyPlatform;->s_isInSDKRun:Z

    goto/16 :goto_15

    .line 250
    :pswitch_f4
    invoke-static {p3}, Lcom/gm99/fzzj/MyPlatform;->parseHashMapToJson(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ledo/fantasy/game/JniProxy;->onServerChanged(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 253
    :pswitch_fd
    invoke-static {p3}, Lcom/gm99/fzzj/MyPlatform;->parseHashMapToJson(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ledo/fantasy/game/JniProxy;->onServerChecked(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 110
    :pswitch_data_106
    .packed-switch 0x2
        :pswitch_15
        :pswitch_15
        :pswitch_16
        :pswitch_32
        :pswitch_4e
        :pswitch_89
        :pswitch_52
        :pswitch_81
        :pswitch_8c
        :pswitch_cd
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_d3
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_e2
        :pswitch_e8
        :pswitch_ee
        :pswitch_ac
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_f4
        :pswitch_fd
    .end packed-switch
.end method
