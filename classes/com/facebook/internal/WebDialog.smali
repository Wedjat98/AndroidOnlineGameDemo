.class public Lcom/facebook/internal/WebDialog;
.super Landroid/app/Dialog;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/WebDialog$Builder;,
        Lcom/facebook/internal/WebDialog$DialogWebViewClient;,
        Lcom/facebook/internal/WebDialog$OnCompleteListener;,
        Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;
    }
.end annotation


# static fields
.field private static final API_EC_DIALOG_CANCEL:I = 0x1069

.field private static final BACKGROUND_GRAY:I = -0x34000000

.field static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field private static final DEFAULT_THEME:I

.field static final DISABLE_SSL_CHECK_FOR_TESTING:Z = false

.field private static final DISPLAY_TOUCH:Ljava/lang/String; = "touch"

.field private static final LOG_TAG:Ljava/lang/String; = "FacebookSDK.WebDialog"

.field private static final MAX_PADDING_SCREEN_HEIGHT:I = 0x500

.field private static final MAX_PADDING_SCREEN_WIDTH:I = 0x320

.field private static final MIN_SCALE_FACTOR:D = 0.5

.field private static final NO_PADDING_SCREEN_HEIGHT:I = 0x320

.field private static final NO_PADDING_SCREEN_WIDTH:I = 0x1e0

.field static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field private static volatile webDialogTheme:I


# instance fields
.field private contentFrameLayout:Landroid/widget/FrameLayout;

.field private crossImageView:Landroid/widget/ImageView;

.field private expectedRedirectUrl:Ljava/lang/String;

.field private isDetached:Z

.field private isPageFinished:Z

.field private listenerCalled:Z

.field private onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

.field private spinner:Landroid/app/ProgressDialog;

.field private uploadTask:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;

.field private windowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 113
    sget v0, Lcom/facebook/R$style;->com_facebook_activity_theme:I

    sput v0, Lcom/facebook/internal/WebDialog;->DEFAULT_THEME:I

    .line 126
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {}, Lcom/facebook/internal/WebDialog;->getWebDialogTheme()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/internal/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 206
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "theme"    # I

    .prologue
    const/4 v1, 0x0

    .line 217
    if-nez p3, :cond_7

    invoke-static {}, Lcom/facebook/internal/WebDialog;->getWebDialogTheme()I

    move-result p3

    .end local p3    # "theme":I
    :cond_7
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 116
    const-string v0, "fbconnect://success"

    iput-object v0, p0, Lcom/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;

    .line 123
    iput-boolean v1, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    .line 124
    iput-boolean v1, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    .line 125
    iput-boolean v1, p0, Lcom/facebook/internal/WebDialog;->isPageFinished:Z

    .line 218
    iput-object p2, p0, Lcom/facebook/internal/WebDialog;->url:Ljava/lang/String;

    .line 219
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/WebDialog$OnCompleteListener;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "theme"    # I
    .param p5, "listener"    # Lcom/facebook/internal/WebDialog$OnCompleteListener;

    .prologue
    const/4 v6, 0x0

    .line 236
    if-nez p4, :cond_7

    invoke-static {}, Lcom/facebook/internal/WebDialog;->getWebDialogTheme()I

    move-result p4

    .end local p4    # "theme":I
    :cond_7
    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 116
    const-string v1, "fbconnect://success"

    iput-object v1, p0, Lcom/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;

    .line 123
    iput-boolean v6, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    .line 124
    iput-boolean v6, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    .line 125
    iput-boolean v6, p0, Lcom/facebook/internal/WebDialog;->isPageFinished:Z

    .line 238
    if-nez p3, :cond_1b

    .line 239
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "parameters":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 243
    .restart local p3    # "parameters":Landroid/os/Bundle;
    :cond_1b
    const-string v1, "redirect_uri"

    const-string v2, "fbconnect://success"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "display"

    const-string v2, "touch"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "client_id"

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "sdk"

    .line 251
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "android-%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iput-object p5, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    .line 255
    const-string v1, "share"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 256
    const-string v1, "media"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 257
    new-instance v1, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    invoke-direct {v1, p0, p2, p3}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;-><init>(Lcom/facebook/internal/WebDialog;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/facebook/internal/WebDialog;->uploadTask:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    .line 265
    :goto_61
    return-void

    .line 260
    :cond_62
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object v1

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dialog/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-static {v1, v2, p3}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 263
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/WebDialog;->url:Ljava/lang/String;

    goto :goto_61
.end method

.method static synthetic access$0(Lcom/facebook/internal/WebDialog;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/internal/WebDialog;)Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    return v0
.end method

.method static synthetic access$2(Lcom/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/internal/WebDialog;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/facebook/internal/WebDialog;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/facebook/internal/WebDialog;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/facebook/internal/WebDialog;Z)V
    .registers 2

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/facebook/internal/WebDialog;->isPageFinished:Z

    return-void
.end method

.method static synthetic access$7(Lcom/facebook/internal/WebDialog;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/facebook/internal/WebDialog;->url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/facebook/internal/WebDialog;I)V
    .registers 2

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/facebook/internal/WebDialog;->setUpWebView(I)V

    return-void
.end method

.method private createCrossImage()V
    .registers 4

    .prologue
    .line 506
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    .line 508
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/facebook/internal/WebDialog$2;

    invoke-direct {v2, p0}, Lcom/facebook/internal/WebDialog$2;-><init>(Lcom/facebook/internal/WebDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$drawable;->com_facebook_close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 515
    .local v0, "crossDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 519
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    return-void
.end method

.method private getScaledSize(IFII)I
    .registers 15
    .param p1, "screenSize"    # I
    .param p2, "density"    # F
    .param p3, "noPaddingSize"    # I
    .param p4, "maxPaddingSize"    # I

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 460
    int-to-float v3, p1

    div-float/2addr v3, p2

    float-to-int v2, v3

    .line 462
    .local v2, "scaledSize":I
    if-gt v2, p3, :cond_d

    .line 463
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 474
    .local v0, "scaleFactor":D
    :goto_9
    int-to-double v4, p1

    mul-double/2addr v4, v0

    double-to-int v3, v4

    return v3

    .line 464
    .end local v0    # "scaleFactor":D
    :cond_d
    if-lt v2, p4, :cond_12

    .line 465
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 466
    .restart local v0    # "scaleFactor":D
    goto :goto_9

    .line 470
    .end local v0    # "scaleFactor":D
    :cond_12
    sub-int v3, p4, v2

    int-to-double v4, v3

    .line 471
    sub-int v3, p4, p3

    int-to-double v6, v3

    .line 470
    div-double/2addr v4, v6

    mul-double/2addr v4, v8

    .line 469
    add-double v0, v8, v4

    .restart local v0    # "scaleFactor":D
    goto :goto_9
.end method

.method public static getWebDialogTheme()I
    .registers 1

    .prologue
    .line 170
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 171
    sget v0, Lcom/facebook/internal/WebDialog;->webDialogTheme:I

    return v0
.end method

.method protected static initDefaultTheme(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    if-nez p0, :cond_3

    .line 152
    :cond_2
    :goto_2
    return-void

    .line 138
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 138
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_10} :catch_27

    move-result-object v0

    .line 144
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 149
    sget v2, Lcom/facebook/internal/WebDialog;->webDialogTheme:I

    if-nez v2, :cond_2

    .line 150
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.facebook.sdk.WebDialogTheme"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/facebook/internal/WebDialog;->setWebDialogTheme(I)V

    goto :goto_2

    .line 140
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_27
    move-exception v1

    .line 141
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/WebDialog$OnCompleteListener;)Lcom/facebook/internal/WebDialog;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "theme"    # I
    .param p4, "listener"    # Lcom/facebook/internal/WebDialog$OnCompleteListener;

    .prologue
    .line 160
    invoke-static {p0}, Lcom/facebook/internal/WebDialog;->initDefaultTheme(Landroid/content/Context;)V

    .line 162
    new-instance v0, Lcom/facebook/internal/WebDialog;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/WebDialog$OnCompleteListener;)V

    return-object v0
.end method

.method private setUpWebView(I)V
    .registers 9
    .param p1, "margin"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 524
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 525
    .local v0, "webViewContainer":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/facebook/internal/WebDialog$3;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/facebook/internal/WebDialog$3;-><init>(Lcom/facebook/internal/WebDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    .line 537
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 538
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 539
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/facebook/internal/WebDialog$DialogWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/internal/WebDialog$DialogWebViewClient;-><init>(Lcom/facebook/internal/WebDialog;Lcom/facebook/internal/WebDialog$DialogWebViewClient;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 540
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 541
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/facebook/internal/WebDialog;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 543
    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 542
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 545
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 546
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 547
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 548
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 549
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/facebook/internal/WebDialog$4;

    invoke-direct {v2, p0}, Lcom/facebook/internal/WebDialog$4;-><init>(Lcom/facebook/internal/WebDialog;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 560
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 561
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 562
    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 563
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 564
    return-void
.end method

.method public static setWebDialogTheme(I)V
    .registers 1
    .param p0, "theme"    # I

    .prologue
    .line 179
    if-eqz p0, :cond_5

    .end local p0    # "theme":I
    :goto_2
    sput p0, Lcom/facebook/internal/WebDialog;->webDialogTheme:I

    .line 180
    return-void

    .line 179
    .restart local p0    # "theme":I
    :cond_5
    sget p0, Lcom/facebook/internal/WebDialog;->DEFAULT_THEME:I

    goto :goto_2
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    if-nez v0, :cond_10

    .line 501
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    .line 503
    :cond_10
    return-void
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_9

    .line 297
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 299
    :cond_9
    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    if-nez v0, :cond_1e

    .line 300
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 301
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 304
    :cond_1e
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 305
    return-void
.end method

.method public getOnCompleteListener()Lcom/facebook/internal/WebDialog$OnCompleteListener;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    return-object v0
.end method

.method protected getWebView()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method protected isListenerCalled()Z
    .registers 2

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    return v0
.end method

.method protected isPageFinished()Z
    .registers 2

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->isPageFinished:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 4

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    .line 337
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->mustFixWindowParamsForAutofill(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 338
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->windowParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v0, :cond_41

    .line 339
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 340
    const-string v0, "FacebookSDK.WebDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set token on onAttachedToWindow(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/internal/WebDialog;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_41
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 344
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 359
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 361
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    .line 362
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 363
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/facebook/R$string;->com_facebook_loading:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 366
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/facebook/internal/WebDialog$1;

    invoke-direct {v2, p0}, Lcom/facebook/internal/WebDialog$1;-><init>(Lcom/facebook/internal/WebDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 373
    invoke-virtual {p0, v5}, Lcom/facebook/internal/WebDialog;->requestWindowFeature(I)Z

    .line 374
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    .line 377
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->resize()V

    .line 378
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 381
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 387
    invoke-direct {p0}, Lcom/facebook/internal/WebDialog;->createCrossImage()V

    .line 389
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->url:Ljava/lang/String;

    if-eqz v1, :cond_6f

    .line 393
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 394
    .local v0, "crossWidth":I
    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/facebook/internal/WebDialog;->setUpWebView(I)V

    .line 400
    .end local v0    # "crossWidth":I
    :cond_6f
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 401
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 400
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/facebook/internal/WebDialog;->setContentView(Landroid/view/View;)V

    .line 404
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    .line 330
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 331
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 287
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 288
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->cancel()V

    .line 291
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 309
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 310
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->uploadTask:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->uploadTask:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    invoke-virtual {v0}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1f

    .line 311
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->uploadTask:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 312
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 316
    :goto_1e
    return-void

    .line 314
    :cond_1f
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->resize()V

    goto :goto_1e
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->uploadTask:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    if-eqz v0, :cond_f

    .line 321
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->uploadTask:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->cancel(Z)Z

    .line 322
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 324
    :cond_f
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 325
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 348
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v0, :cond_6

    .line 351
    iput-object p1, p0, Lcom/facebook/internal/WebDialog;->windowParams:Landroid/view/WindowManager$LayoutParams;

    .line 354
    :cond_6
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 355
    return-void
.end method

.method protected parseResponseUri(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 411
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 413
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 414
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 416
    return-object v0
.end method

.method public resize()V
    .registers 11

    .prologue
    const/16 v9, 0x320

    .line 432
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 433
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 434
    .local v2, "display":Landroid/view/Display;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 435
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 438
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v7, v8, :cond_4e

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 439
    .local v5, "width":I
    :goto_22
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v7, v8, :cond_51

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 442
    .local v3, "height":I
    :goto_2a
    iget v7, v4, Landroid/util/DisplayMetrics;->density:F

    const/16 v8, 0x1e0

    invoke-direct {p0, v5, v7, v8, v9}, Lcom/facebook/internal/WebDialog;->getScaledSize(IFII)I

    move-result v7

    .line 443
    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 441
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 445
    .local v1, "dialogWidth":I
    iget v7, v4, Landroid/util/DisplayMetrics;->density:F

    const/16 v8, 0x500

    invoke-direct {p0, v3, v7, v9, v8}, Lcom/facebook/internal/WebDialog;->getScaledSize(IFII)I

    move-result v7

    .line 446
    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 444
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 448
    .local v0, "dialogHeight":I
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 449
    return-void

    .line 438
    .end local v0    # "dialogHeight":I
    .end local v1    # "dialogWidth":I
    .end local v3    # "height":I
    .end local v5    # "width":I
    :cond_4e
    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_22

    .line 439
    .restart local v5    # "width":I
    :cond_51
    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_2a
.end method

.method protected sendErrorToListener(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 486
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    if-nez v1, :cond_1b

    .line 487
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    .line 489
    instance-of v1, p1, Lcom/facebook/FacebookException;

    if-eqz v1, :cond_1c

    move-object v0, p1

    .line 490
    check-cast v0, Lcom/facebook/FacebookException;

    .line 494
    .local v0, "facebookException":Lcom/facebook/FacebookException;
    :goto_12
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/facebook/internal/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 495
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->dismiss()V

    .line 497
    .end local v0    # "facebookException":Lcom/facebook/FacebookException;
    :cond_1b
    return-void

    .line 492
    :cond_1c
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .restart local v0    # "facebookException":Lcom/facebook/FacebookException;
    goto :goto_12
.end method

.method protected sendSuccessToListener(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    if-nez v0, :cond_14

    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    .line 480
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/internal/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 481
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->dismiss()V

    .line 483
    :cond_14
    return-void
.end method

.method protected setExpectedRedirectUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "expectedRedirectUrl"    # Ljava/lang/String;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setOnCompleteListener(Lcom/facebook/internal/WebDialog$OnCompleteListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/facebook/internal/WebDialog$OnCompleteListener;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    .line 274
    return-void
.end method
