.class public Lcom/facebook/places/internal/ScannerFactory;
.super Ljava/lang/Object;
.source "ScannerFactory.java"


# static fields
.field public static final OS_VERSION_JELLY_BEAN_MR1:I = 0x11

.field public static final OS_VERSION_JELLY_BEAN_MR2:I = 0x12

.field public static final OS_VERSION_LOLLIPOP:I = 0x15


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBleScanner(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)Lcom/facebook/places/internal/BleScanner;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Lcom/facebook/places/internal/LocationPackageRequestParams;

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_c

    .line 39
    new-instance v0, Lcom/facebook/places/internal/BleScannerImpl;

    invoke-direct {v0, p0, p1}, Lcom/facebook/places/internal/BleScannerImpl;-><init>(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)V

    .line 41
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/facebook/places/internal/BleScannerLegacy;

    invoke-direct {v0}, Lcom/facebook/places/internal/BleScannerLegacy;-><init>()V

    goto :goto_b
.end method

.method public static newLocationScanner(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)Lcom/facebook/places/internal/LocationScanner;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Lcom/facebook/places/internal/LocationPackageRequestParams;

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/places/internal/LocationScannerImpl;

    invoke-direct {v0, p0, p1}, Lcom/facebook/places/internal/LocationScannerImpl;-><init>(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)V

    return-object v0
.end method

.method public static newWifiScanner(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)Lcom/facebook/places/internal/WifiScanner;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Lcom/facebook/places/internal/LocationPackageRequestParams;

    .prologue
    .line 45
    new-instance v0, Lcom/facebook/places/internal/WifiScannerImpl;

    invoke-direct {v0, p0, p1}, Lcom/facebook/places/internal/WifiScannerImpl;-><init>(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)V

    return-object v0
.end method
