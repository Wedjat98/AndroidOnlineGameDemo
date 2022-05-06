.class Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;
.super Landroid/bluetooth/le/ScanCallback;
.source "BleScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/internal/BleScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanCallBackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/places/internal/BleScannerImpl;


# direct methods
.method private constructor <init>(Lcom/facebook/places/internal/BleScannerImpl;)V
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/places/internal/BleScannerImpl;Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;)V
    .registers 3

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;-><init>(Lcom/facebook/places/internal/BleScannerImpl;)V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 198
    :try_start_3
    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    # getter for: Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;
    invoke-static {v3}, Lcom/facebook/places/internal/BleScannerImpl;->access$1(Lcom/facebook/places/internal/BleScannerImpl;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_2f

    .line 199
    :try_start_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_16

    .line 198
    monitor-exit v4

    .line 209
    :goto_15
    return-void

    .line 199
    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanResult;

    .line 200
    .local v2, "result":Landroid/bluetooth/le/ScanResult;
    # invokes: Lcom/facebook/places/internal/BleScannerImpl;->newBluetoothScanResult(Landroid/bluetooth/le/ScanResult;)Lcom/facebook/places/internal/BluetoothScanResult;
    invoke-static {v2}, Lcom/facebook/places/internal/BleScannerImpl;->access$2(Landroid/bluetooth/le/ScanResult;)Lcom/facebook/places/internal/BluetoothScanResult;

    move-result-object v0

    .line 201
    .local v0, "bluetoothScanResult":Lcom/facebook/places/internal/BluetoothScanResult;
    if-eqz v0, :cond_e

    .line 202
    iget-object v5, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    # getter for: Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;
    invoke-static {v5}, Lcom/facebook/places/internal/BleScannerImpl;->access$1(Lcom/facebook/places/internal/BleScannerImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 198
    .end local v0    # "bluetoothScanResult":Lcom/facebook/places/internal/BluetoothScanResult;
    .end local v2    # "result":Landroid/bluetooth/le/ScanResult;
    :catchall_2c
    move-exception v3

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v3
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2f} :catch_2f

    .line 206
    :catch_2f
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Exception in ble scan callback"

    # invokes: Lcom/facebook/places/internal/BleScannerImpl;->logException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v3, v1}, Lcom/facebook/places/internal/BleScannerImpl;->access$3(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_15
.end method

.method public onScanFailed(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    .line 191
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    invoke-static {v0, p1}, Lcom/facebook/places/internal/BleScannerImpl;->access$0(Lcom/facebook/places/internal/BleScannerImpl;I)V

    .line 192
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 7
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 213
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 215
    :try_start_3
    iget-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    # getter for: Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/places/internal/BleScannerImpl;->access$1(Lcom/facebook/places/internal/BleScannerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_1e

    .line 216
    :try_start_a
    # invokes: Lcom/facebook/places/internal/BleScannerImpl;->newBluetoothScanResult(Landroid/bluetooth/le/ScanResult;)Lcom/facebook/places/internal/BluetoothScanResult;
    invoke-static {p2}, Lcom/facebook/places/internal/BleScannerImpl;->access$2(Landroid/bluetooth/le/ScanResult;)Lcom/facebook/places/internal/BluetoothScanResult;

    move-result-object v0

    .line 217
    .local v0, "bluetoothScanResult":Lcom/facebook/places/internal/BluetoothScanResult;
    if-eqz v0, :cond_19

    .line 218
    iget-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    # getter for: Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/places/internal/BleScannerImpl;->access$1(Lcom/facebook/places/internal/BleScannerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_19
    monitor-exit v3

    .line 224
    .end local v0    # "bluetoothScanResult":Lcom/facebook/places/internal/BluetoothScanResult;
    :goto_1a
    return-void

    .line 215
    :catchall_1b
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1e} :catch_1e

    .line 221
    :catch_1e
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception in ble scan callback"

    # invokes: Lcom/facebook/places/internal/BleScannerImpl;->logException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v2, v1}, Lcom/facebook/places/internal/BleScannerImpl;->access$3(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1a
.end method
