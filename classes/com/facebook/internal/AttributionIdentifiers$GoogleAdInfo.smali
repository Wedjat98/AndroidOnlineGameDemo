.class final Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;
.super Ljava/lang/Object;
.source "AttributionIdentifiers.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/AttributionIdentifiers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GoogleAdInfo"
.end annotation


# static fields
.field private static final FIRST_TRANSACTION_CODE:I = 0x1

.field private static final SECOND_TRANSACTION_CODE:I = 0x2


# instance fields
.field private binder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->binder:Landroid/os/IBinder;

    .line 295
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAdvertiserId()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 304
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 308
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 307
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 309
    iget-object v3, p0, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->binder:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 310
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 311
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    move-result-object v1

    .line 313
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 316
    return-object v1

    .line 312
    .end local v1    # "id":Ljava/lang/String;
    :catchall_22
    move-exception v3

    .line 313
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    throw v3
.end method

.method public isTrackingLimited()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 321
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 325
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 324
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 326
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget-object v4, p0, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->binder:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 328
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 329
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_2c

    move-result v4

    if-eqz v4, :cond_2a

    .line 331
    .local v1, "limitAdTracking":Z
    :goto_23
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    return v1

    .end local v1    # "limitAdTracking":Z
    :cond_2a
    move v1, v3

    .line 329
    goto :goto_23

    .line 330
    :catchall_2c
    move-exception v3

    .line 331
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 333
    throw v3
.end method
