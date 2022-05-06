.class public final Lcom/games37/riversdk/gm99/constant/GM99SDKConstant;
.super Ljava/lang/Object;
.source "GM99SDKConstant.java"


# static fields
.field public static final FB_SECRETKEY:Ljava/lang/String; = "zixW*#cZ6R6#lGN1!vwY0!dZe#0nlVYSkkNHuraH!j9gg%YKxmM&o5QZPxTCD#e6"

.field public static final LOGIN_VIEW_PATH:Ljava/lang/String; = "com.games37.riversdk.gm99.login.view.GM99LoginView"

.field public static final LOG_TAG:Ljava/lang/String; = "RiverSDK_GM99"

.field public static final PURCHASE_VIEW_PATH:Ljava/lang/String; = "com.games37.riversdk.gm99.purchase.view.GM99PurchaseView"

.field public static final RIVERSDK_GM99_LOGIN_SP_STORAGE:Ljava/lang/String; = "RIVERSDK_GM99_LOGIN_SP_STORAGE"

.field public static final RIVERSDK_GM99_PURCHASE_SP_STORAGE:Ljava/lang/String; = "RIVERSDK_GM99_PURCHASE_SP_STORAGE"

.field public static final ROOT_PATH:Ljava/lang/String;

.field public static final SDCARD_PATH:Ljava/lang/String;

.field public static final WEBVIEW_ACTIVITY_PRESENTER_CLASS_PATH:Ljava/lang/String; = "com.games37.riversdk.gm99.webview.GM99WebviewActivityPresenter"

.field public static final WEBVIEW_JS_METHOD_PATH:Ljava/lang/String; = "com.games37.riversdk.gm99.webview.GM99JSMethod"

.field public static final WEBVIEW_PATH:Ljava/lang/String; = "com.games37.riversdk.gm99.webview.GM99SDKWebview"

.field public static final WEBVIEW_TOOLBAR_VIEW_PATH:Ljava/lang/String; = "com.games37.riversdk.gm99.webview.GM99WebviewToolBar"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/gm99/constant/GM99SDKConstant;->SDCARD_PATH:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/games37/riversdk/gm99/constant/GM99SDKConstant;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/gm99"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/gm99/constant/GM99SDKConstant;->ROOT_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
