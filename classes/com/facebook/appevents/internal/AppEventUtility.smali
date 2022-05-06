.class public Lcom/facebook/appevents/internal/AppEventUtility;
.super Ljava/lang/Object;
.source "AppEventUtility.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertIsMainThread()V
    .registers 2

    .prologue
    .line 41
    const-string v0, "Call must be made on the main thread"

    .line 42
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->isMainThread()Z

    move-result v1

    .line 40
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 44
    return-void
.end method

.method public static assertIsNotMainThread()V
    .registers 2

    .prologue
    .line 33
    const-string v0, "Call cannot be made on the main thread"

    .line 34
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->isMainThread()Z

    move-result v1

    .line 32
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method private static isMainThread()Z
    .registers 2

    .prologue
    .line 47
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
