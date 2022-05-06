.class public abstract Lcom/google/firebase/database/connection/idl/zzr;
.super Lcom/google/android/gms/internal/zzev;

# interfaces
.implements Lcom/google/firebase/database/connection/idl/zzq;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzev;-><init>()V

    const-string v0, "com.google.firebase.database.connection.idl.IListenHashProvider"

    invoke-virtual {p0, p0, v0}, Lcom/google/firebase/database/connection/idl/zzr;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzev;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    packed-switch p1, :pswitch_data_2e

    const/4 v0, 0x0

    goto :goto_7

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/idl/zzr;->zzbuh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_18
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/idl/zzr;->zzbui()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Z)V

    goto :goto_7

    :pswitch_23
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/idl/zzr;->zzbvh()Lcom/google/firebase/database/connection/idl/zza;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v1}, Lcom/google/android/gms/internal/zzew;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_7

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_d
        :pswitch_18
        :pswitch_23
    .end packed-switch
.end method
