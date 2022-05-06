.class public final enum Lonlysdk/framework/enumtype/UserActionResultCode;
.super Ljava/lang/Enum;
.source "UserActionResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lonlysdk/framework/enumtype/UserActionResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kAccountSwitchFail:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kAccountSwitchSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kAntiAddictionQueryAdult:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kAntiAddictionQueryNoUserData:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kAntiAddictionQueryNotAdult:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kBindAccountCancel:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kBindAccountFail:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kBindAccountSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kCheckServer:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kExitAntiAddiction:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kExitGame:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kLoginCancel:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kLoginFail:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kLoginGuestSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kLoginNetworkError:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kLoginNoNeed:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kLoginSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kLogoutFail:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kLogoutSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kMSDKLoginFailShowSelectQQOrWX:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kPauseGame:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kPlatformCenterEnter:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kRealNameRegister:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kSelectServer:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kUserActionResultNull:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kUserInitFail:Lonlysdk/framework/enumtype/UserActionResultCode;

.field public static final enum kUserInitSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kUserActionResultNull"

    invoke-direct {v0, v1, v3}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kUserActionResultNull:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 8
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kUserInitSuccess"

    invoke-direct {v0, v1, v4}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kUserInitSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 9
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kUserInitFail"

    invoke-direct {v0, v1, v5}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kUserInitFail:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 10
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kLoginSuccess"

    invoke-direct {v0, v1, v6}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 11
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kLoginGuestSuccess"

    invoke-direct {v0, v1, v7}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginGuestSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 12
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kLoginNetworkError"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginNetworkError:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 13
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kLoginNoNeed"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginNoNeed:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 14
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kLoginFail"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginFail:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 15
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kLoginCancel"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginCancel:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 16
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kLogoutSuccess"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kLogoutSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 17
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kLogoutFail"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kLogoutFail:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 18
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kPlatformCenterEnter"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kPlatformCenterEnter:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 19
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kExitAntiAddiction"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kExitAntiAddiction:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 20
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kPauseGame"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kPauseGame:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 21
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kExitGame"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kExitGame:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 22
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kAntiAddictionQueryNoUserData"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kAntiAddictionQueryNoUserData:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 23
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kAntiAddictionQueryNotAdult"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kAntiAddictionQueryNotAdult:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 24
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kAntiAddictionQueryAdult"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kAntiAddictionQueryAdult:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 25
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kRealNameRegister"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kRealNameRegister:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 26
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kAccountSwitchSuccess"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kAccountSwitchSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 27
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kAccountSwitchFail"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kAccountSwitchFail:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 28
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kMSDKLoginFailShowSelectQQOrWX"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kMSDKLoginFailShowSelectQQOrWX:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 29
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kBindAccountSuccess"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kBindAccountSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 30
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kBindAccountFail"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kBindAccountFail:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 31
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kBindAccountCancel"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kBindAccountCancel:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 32
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kSelectServer"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kSelectServer:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 33
    new-instance v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v1, "kCheckServer"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lonlysdk/framework/enumtype/UserActionResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->kCheckServer:Lonlysdk/framework/enumtype/UserActionResultCode;

    .line 6
    const/16 v0, 0x1b

    new-array v0, v0, [Lonlysdk/framework/enumtype/UserActionResultCode;

    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kUserActionResultNull:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v1, v0, v3

    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kUserInitSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v1, v0, v4

    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kUserInitFail:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v1, v0, v5

    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v1, v0, v6

    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginGuestSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginNetworkError:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginNoNeed:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginFail:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginCancel:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kLogoutSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kLogoutFail:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kPlatformCenterEnter:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kExitAntiAddiction:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kPauseGame:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kExitGame:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kAntiAddictionQueryNoUserData:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kAntiAddictionQueryNotAdult:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kAntiAddictionQueryAdult:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kRealNameRegister:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kAccountSwitchSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kAccountSwitchFail:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kMSDKLoginFailShowSelectQQOrWX:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kBindAccountSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kBindAccountFail:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kBindAccountCancel:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kSelectServer:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kCheckServer:Lonlysdk/framework/enumtype/UserActionResultCode;

    aput-object v2, v0, v1

    sput-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->ENUM$VALUES:[Lonlysdk/framework/enumtype/UserActionResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lonlysdk/framework/enumtype/UserActionResultCode;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lonlysdk/framework/enumtype/UserActionResultCode;

    return-object v0
.end method

.method public static values()[Lonlysdk/framework/enumtype/UserActionResultCode;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lonlysdk/framework/enumtype/UserActionResultCode;->ENUM$VALUES:[Lonlysdk/framework/enumtype/UserActionResultCode;

    array-length v1, v0

    new-array v2, v1, [Lonlysdk/framework/enumtype/UserActionResultCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
