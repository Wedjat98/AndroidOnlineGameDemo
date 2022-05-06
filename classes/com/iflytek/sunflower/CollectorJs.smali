.class public Lcom/iflytek/sunflower/CollectorJs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sunflower/CollectorJs$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/sunflower/CollectorJs;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/sunflower/CollectorJs;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/iflytek/sunflower/CollectorJs$a;

    invoke-direct {v0, p0, p3}, Lcom/iflytek/sunflower/CollectorJs$a;-><init>(Lcom/iflytek/sunflower/CollectorJs;Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/sunflower/CollectorJs;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/sunflower/CollectorJs;->a:Landroid/content/Context;

    return-object v0
.end method
