.class public Lcom/games37/riversdk/core/webveiew/SDKWebView$CustomGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SDKWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/webveiew/SDKWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CustomGestureDetector"
.end annotation


# instance fields
.field private mCallback:Lcom/games37/riversdk/core/webveiew/SDKWebView$WebviewScroolCallback;

.field final synthetic this$0:Lcom/games37/riversdk/core/webveiew/SDKWebView;


# direct methods
.method public constructor <init>(Lcom/games37/riversdk/core/webveiew/SDKWebView;Lcom/games37/riversdk/core/webveiew/SDKWebView$WebviewScroolCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/webveiew/SDKWebView;
    .param p2, "callback"    # Lcom/games37/riversdk/core/webveiew/SDKWebView$WebviewScroolCallback;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView$CustomGestureDetector;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 347
    iput-object p2, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView$CustomGestureDetector;->mCallback:Lcom/games37/riversdk/core/webveiew/SDKWebView$WebviewScroolCallback;

    .line 348
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v3, 0x0

    .line 352
    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    .line 374
    :cond_8
    :goto_8
    return v3

    .line 355
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_8

    .line 359
    :try_start_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v4

    if-lez v1, :cond_31

    .line 360
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView$CustomGestureDetector;->mCallback:Lcom/games37/riversdk/core/webveiew/SDKWebView$WebviewScroolCallback;

    if-eqz v1, :cond_8

    .line 361
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView$CustomGestureDetector;->mCallback:Lcom/games37/riversdk/core/webveiew/SDKWebView$WebviewScroolCallback;

    invoke-interface {v1}, Lcom/games37/riversdk/core/webveiew/SDKWebView$WebviewScroolCallback;->onScrollDown()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2b} :catch_2c

    goto :goto_8

    .line 371
    :catch_2c
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_31
    :try_start_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v4

    if-gez v1, :cond_8

    .line 365
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView$CustomGestureDetector;->mCallback:Lcom/games37/riversdk/core/webveiew/SDKWebView$WebviewScroolCallback;

    if-eqz v1, :cond_8

    .line 366
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView$CustomGestureDetector;->mCallback:Lcom/games37/riversdk/core/webveiew/SDKWebView$WebviewScroolCallback;

    invoke-interface {v1}, Lcom/games37/riversdk/core/webveiew/SDKWebView$WebviewScroolCallback;->onScrollUp()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_47} :catch_2c

    goto :goto_8
.end method
