.class public abstract Lcom/google/firebase/database/connection/idl/zzu;
.super Lcom/google/android/gms/internal/zzev;

# interfaces
.implements Lcom/google/firebase/database/connection/idl/zzt;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzev;-><init>()V

    const-string v0, "com.google.firebase.database.connection.idl.IPersistentConnection"

    invoke-virtual {p0, p0, v0}, Lcom/google/firebase/database/connection/idl/zzu;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/firebase/database/connection/idl/zzt;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.firebase.database.connection.idl.IPersistentConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/firebase/database/connection/idl/zzt;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzt;

    goto :goto_3

    :cond_11
    new-instance v0, Lcom/google/firebase/database/connection/idl/zzv;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/idl/zzv;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzev;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v7

    :goto_9
    return v0

    :cond_a
    packed-switch p1, :pswitch_data_21e

    const/4 v0, 0x0

    goto :goto_9

    :pswitch_f
    sget-object v0, Lcom/google/firebase/database/connection/idl/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzc;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_34

    move-object v2, v6

    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzaq(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_49

    :goto_2c
    invoke-virtual {p0, v0, v2, v3, v6}, Lcom/google/firebase/database/connection/idl/zzu;->setup(Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/firebase/database/connection/idl/zzk;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzw;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_32
    move v0, v7

    goto :goto_9

    :cond_34
    const-string v1, "com.google.firebase.database.connection.idl.IConnectionAuthTokenProvider"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v3, v1, Lcom/google/firebase/database/connection/idl/zzk;

    if-eqz v3, :cond_42

    check-cast v1, Lcom/google/firebase/database/connection/idl/zzk;

    move-object v2, v1

    goto :goto_1e

    :cond_42
    new-instance v1, Lcom/google/firebase/database/connection/idl/zzm;

    invoke-direct {v1, v2}, Lcom/google/firebase/database/connection/idl/zzm;-><init>(Landroid/os/IBinder;)V

    move-object v2, v1

    goto :goto_1e

    :cond_49
    const-string v1, "com.google.firebase.database.connection.idl.IPersistentConnectionDelegate"

    invoke-interface {v4, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v5, v1, Lcom/google/firebase/database/connection/idl/zzw;

    if-eqz v5, :cond_57

    check-cast v1, Lcom/google/firebase/database/connection/idl/zzw;

    move-object v6, v1

    goto :goto_2c

    :cond_57
    new-instance v6, Lcom/google/firebase/database/connection/idl/zzy;

    invoke-direct {v6, v4}, Lcom/google/firebase/database/connection/idl/zzy;-><init>(Landroid/os/IBinder;)V

    goto :goto_2c

    :pswitch_5d
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/idl/zzu;->initialize()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_32

    :pswitch_64
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/idl/zzu;->shutdown()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_32

    :pswitch_6b
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/idl/zzu;->refreshAuthToken()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_32

    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/idl/zzu;->refreshAuthToken2(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_32

    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzaq(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_a2

    move-object v3, v6

    :goto_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    if-nez v8, :cond_b6

    :goto_9a
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/firebase/database/connection/idl/zzu;->listen(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzq;JLcom/google/firebase/database/connection/idl/zzah;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_32

    :cond_a2
    const-string v0, "com.google.firebase.database.connection.idl.IListenHashProvider"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/firebase/database/connection/idl/zzq;

    if-eqz v3, :cond_b0

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzq;

    move-object v3, v0

    goto :goto_90

    :cond_b0
    new-instance v3, Lcom/google/firebase/database/connection/idl/zzs;

    invoke-direct {v3, v4}, Lcom/google/firebase/database/connection/idl/zzs;-><init>(Landroid/os/IBinder;)V

    goto :goto_90

    :cond_b6
    const-string v0, "com.google.firebase.database.connection.idl.IRequestResultCallback"

    invoke-interface {v8, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v6, v0, Lcom/google/firebase/database/connection/idl/zzah;

    if-eqz v6, :cond_c4

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzah;

    move-object v6, v0

    goto :goto_9a

    :cond_c4
    new-instance v6, Lcom/google/firebase/database/connection/idl/zzaj;

    invoke-direct {v6, v8}, Lcom/google/firebase/database/connection/idl/zzaj;-><init>(Landroid/os/IBinder;)V

    goto :goto_9a

    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzaq(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/database/connection/idl/zzu;->unlisten(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_32

    :pswitch_de
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/idl/zzu;->purgeOutstandingWrites()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_32

    :pswitch_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzaq(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_100

    :goto_f8
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/firebase/database/connection/idl/zzu;->put(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_32

    :cond_100
    const-string v0, "com.google.firebase.database.connection.idl.IRequestResultCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/firebase/database/connection/idl/zzah;

    if-eqz v4, :cond_10e

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzah;

    move-object v6, v0

    goto :goto_f8

    :cond_10e
    new-instance v6, Lcom/google/firebase/database/connection/idl/zzaj;

    invoke-direct {v6, v3}, Lcom/google/firebase/database/connection/idl/zzaj;-><init>(Landroid/os/IBinder;)V

    goto :goto_f8

    :pswitch_114
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzaq(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_132

    :goto_12a
    invoke-virtual {p0, v1, v2, v3, v6}, Lcom/google/firebase/database/connection/idl/zzu;->compareAndPut(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/firebase/database/connection/idl/zzah;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_32

    :cond_132
    const-string v0, "com.google.firebase.database.connection.idl.IRequestResultCallback"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v5, v0, Lcom/google/firebase/database/connection/idl/zzah;

    if-eqz v5, :cond_140

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzah;

    move-object v6, v0

    goto :goto_12a

    :cond_140
    new-instance v6, Lcom/google/firebase/database/connection/idl/zzaj;

    invoke-direct {v6, v4}, Lcom/google/firebase/database/connection/idl/zzaj;-><init>(Landroid/os/IBinder;)V

    goto :goto_12a

    :pswitch_146
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzaq(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_160

    :goto_158
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/firebase/database/connection/idl/zzu;->merge(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_32

    :cond_160
    const-string v0, "com.google.firebase.database.connection.idl.IRequestResultCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/firebase/database/connection/idl/zzah;

    if-eqz v4, :cond_16e

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzah;

    move-object v6, v0

    goto :goto_158

    :cond_16e
    new-instance v6, Lcom/google/firebase/database/connection/idl/zzaj;

    invoke-direct {v6, v3}, Lcom/google/firebase/database/connection/idl/zzaj;-><init>(Landroid/os/IBinder;)V

    goto :goto_158

    :pswitch_174
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzaq(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_18e

    :goto_186
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/firebase/database/connection/idl/zzu;->onDisconnectPut(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_32

    :cond_18e
    const-string v0, "com.google.firebase.database.connection.idl.IRequestResultCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/firebase/database/connection/idl/zzah;

    if-eqz v4, :cond_19c

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzah;

    move-object v6, v0

    goto :goto_186

    :cond_19c
    new-instance v6, Lcom/google/firebase/database/connection/idl/zzaj;

    invoke-direct {v6, v3}, Lcom/google/firebase/database/connection/idl/zzaj;-><init>(Landroid/os/IBinder;)V

    goto :goto_186

    :pswitch_1a2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzaq(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_1bc

    :goto_1b4
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/firebase/database/connection/idl/zzu;->onDisconnectMerge(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_32

    :cond_1bc
    const-string v0, "com.google.firebase.database.connection.idl.IRequestResultCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/firebase/database/connection/idl/zzah;

    if-eqz v4, :cond_1ca

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzah;

    move-object v6, v0

    goto :goto_1b4

    :cond_1ca
    new-instance v6, Lcom/google/firebase/database/connection/idl/zzaj;

    invoke-direct {v6, v3}, Lcom/google/firebase/database/connection/idl/zzaj;-><init>(Landroid/os/IBinder;)V

    goto :goto_1b4

    :pswitch_1d0
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1e2

    :goto_1da
    invoke-virtual {p0, v1, v6}, Lcom/google/firebase/database/connection/idl/zzu;->onDisconnectCancel(Ljava/util/List;Lcom/google/firebase/database/connection/idl/zzah;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_32

    :cond_1e2
    const-string v0, "com.google.firebase.database.connection.idl.IRequestResultCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/firebase/database/connection/idl/zzah;

    if-eqz v3, :cond_1f0

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzah;

    move-object v6, v0

    goto :goto_1da

    :cond_1f0
    new-instance v6, Lcom/google/firebase/database/connection/idl/zzaj;

    invoke-direct {v6, v2}, Lcom/google/firebase/database/connection/idl/zzaj;-><init>(Landroid/os/IBinder;)V

    goto :goto_1da

    :pswitch_1f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/idl/zzu;->interrupt(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_32

    :pswitch_202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/idl/zzu;->resume(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_32

    :pswitch_20e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/idl/zzu;->isInterrupted(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Z)V

    goto/16 :goto_32

    :pswitch_data_21e
    .packed-switch 0x1
        :pswitch_f
        :pswitch_5d
        :pswitch_64
        :pswitch_6b
        :pswitch_7d
        :pswitch_ca
        :pswitch_de
        :pswitch_e6
        :pswitch_114
        :pswitch_146
        :pswitch_174
        :pswitch_1a2
        :pswitch_1d0
        :pswitch_1f6
        :pswitch_202
        :pswitch_20e
        :pswitch_72
    .end packed-switch
.end method
