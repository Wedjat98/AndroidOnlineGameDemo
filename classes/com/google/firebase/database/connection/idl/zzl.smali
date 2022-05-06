.class public abstract Lcom/google/firebase/database/connection/idl/zzl;
.super Lcom/google/android/gms/internal/zzev;

# interfaces
.implements Lcom/google/firebase/database/connection/idl/zzk;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzev;-><init>()V

    const-string v0, "com.google.firebase.database.connection.idl.IConnectionAuthTokenProvider"

    invoke-virtual {p0, p0, v0}, Lcom/google/firebase/database/connection/idl/zzl;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzev;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    if-ne p1, v1, :cond_31

    invoke-static {p2}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p0, v2, v0}, Lcom/google/firebase/database/connection/idl/zzl;->zza(ZLcom/google/firebase/database/connection/idl/zzn;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_8

    :cond_1e
    const-string v0, "com.google.firebase.database.connection.idl.IGetTokenCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/firebase/database/connection/idl/zzn;

    if-eqz v4, :cond_2b

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzn;

    goto :goto_16

    :cond_2b
    new-instance v0, Lcom/google/firebase/database/connection/idl/zzp;

    invoke-direct {v0, v3}, Lcom/google/firebase/database/connection/idl/zzp;-><init>(Landroid/os/IBinder;)V

    goto :goto_16

    :cond_31
    const/4 v0, 0x0

    goto :goto_8
.end method
