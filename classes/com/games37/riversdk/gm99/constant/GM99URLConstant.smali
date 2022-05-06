.class public Lcom/games37/riversdk/gm99/constant/GM99URLConstant;
.super Lcom/games37/riversdk/core/constant/CommonURLConstant;
.source "GM99URLConstant.java"


# static fields
.field public static final AC_BUTTON:I = 0xb

.field public static ADDSERVER:Ljava/lang/String; = null

.field public static final CHECK_BIND:Ljava/lang/String; = "check_bind"

.field public static final CHECK_VERSION:Ljava/lang/String; = "check_version"

.field public static final CLOSE_AC_BUTTON:I = 0x11

.field public static final COLLECT_DATA:Ljava/lang/String; = "https://collectdata.gm99.com/ps.gif"

.field public static final CONFIRM_HIDE_SDK_BUTTON:I = 0x10

.field public static final CUSTOMER_URL:Ljava/lang/String; = "toService.do"

.field public static DIRECT_LOGIN:Ljava/lang/String; = null

.field public static DIRLOGIN:Ljava/lang/String; = null

.field public static final EVENTS_API_HOST:Ljava/lang/String; = "https://eventsapi.gm99.com/"

.field public static final EVENTS_HOST:Ljava/lang/String; = "https://events.gm99.com/"

.field public static final FACEBOOK_LOGIN:Ljava/lang/String; = "facebook"

.field public static final FAQ_ACTION:Ljava/lang/String; = "SupportOrder/create"

.field public static final FB_BUTTON:I = 0xd

.field public static final FIND_PWD:Ljava/lang/String; = "center/m_forgot_pwd"

.field public static final FLOAT_VIEW_EVENTS:Ljava/lang/String; = "sdk/execute"

.field public static final INSTALLINFO:Ljava/lang/String; = "installInfo"

.field public static ISMOBILEOPEN:Ljava/lang/String; = null

.field public static final ISMOBILEOPEN2:Ljava/lang/String; = "isMobileOpen2"

.field public static final LOGIN:Ljava/lang/String; = "login"

.field public static final MABPASSPORT_SDK_HOST:Ljava/lang/String; = "http://182.160.13.233:99/"

.field public static final MFBAPPS_HOST:Ljava/lang/String; = "https://mfbapps.gm99.com/"

.field public static final MSTORE_HOST:Ljava/lang/String; = "https://mstore.gm99.com/"

.field public static final MSUPPORT_HOST:Ljava/lang/String; = "https://msupport.gm99.com/"

.field public static final PASSPORT_HOST:Ljava/lang/String; = "https://passport.gm99.com/"

.field public static final PRIVACY:Ljava/lang/String; = "about/privacypolicy.html"

.field public static final PURCHASE_GOOGLEPLAY:Ljava/lang/String; = "google_play/submit"

.field public static final PURCHASE_MOBILE:Ljava/lang/String; = "mobile"

.field public static final REGISTER:Ljava/lang/String; = "register"

.field public static final REQUEST_CHAT_TOKEN:Ljava/lang/String; = "/http/www.gm99.com/kfchat"

.field public static final REQUEST_CHAT_URL:Ljava/lang/String; = "http://mchatkf.gm99.com/v2/"

.field public static final RIVER_SDK_EXECUTE:Ljava/lang/String; = "river_sdk/execute"

.field public static final SAFETY_CERT_URL:Ljava/lang/String; = "https://service.gm99.com/about/privacypolicy.html"

.field public static final SEND_GOODS:Ljava/lang/String; = "google_play/callback"

.field public static final SERVICE_CHAT_BUTTON:I = 0xe

.field public static final SERVICE_HOST:Ljava/lang/String; = "https://service.gm99.com/"

.field public static final SETTING_BUTTON:I = 0xf

.field public static final UPDATE_URL:Ljava/lang/String; = "bind/view"

.field public static final USER_CENTER:Ljava/lang/String; = "center/mobile"

.field public static final USER_CENTER_BUTTON:I = 0xc

.field public static final USER_SERVICE:Ljava/lang/String; = "About/termsofuse"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-string v0, "direct_login"

    sput-object v0, Lcom/games37/riversdk/gm99/constant/GM99URLConstant;->DIRECT_LOGIN:Ljava/lang/String;

    .line 69
    const-string v0, "login/dirLogin"

    sput-object v0, Lcom/games37/riversdk/gm99/constant/GM99URLConstant;->DIRLOGIN:Ljava/lang/String;

    .line 77
    const-string v0, "addServer"

    sput-object v0, Lcom/games37/riversdk/gm99/constant/GM99URLConstant;->ADDSERVER:Ljava/lang/String;

    .line 136
    const-string v0, "ismobileopen"

    sput-object v0, Lcom/games37/riversdk/gm99/constant/GM99URLConstant;->ISMOBILEOPEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/games37/riversdk/core/constant/CommonURLConstant;-><init>()V

    return-void
.end method
