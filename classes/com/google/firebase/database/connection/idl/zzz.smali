.class final Lcom/google/firebase/database/connection/idl/zzz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzebl;


# instance fields
.field private synthetic zzmqs:Lcom/google/firebase/database/connection/idl/zzq;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;Lcom/google/firebase/database/connection/idl/zzq;)V
    .registers 3

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/zzz;->zzmqs:Lcom/google/firebase/database/connection/idl/zzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbuh()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzz;->zzmqs:Lcom/google/firebase/database/connection/idl/zzq;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/idl/zzq;->zzbuh()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzbui()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzz;->zzmqs:Lcom/google/firebase/database/connection/idl/zzq;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/idl/zzq;->zzbui()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzbuj()Lcom/google/android/gms/internal/zzebb;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzz;->zzmqs:Lcom/google/firebase/database/connection/idl/zzq;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/idl/zzq;->zzbvh()Lcom/google/firebase/database/connection/idl/zza;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/connection/idl/zza;->zza(Lcom/google/firebase/database/connection/idl/zza;)Lcom/google/android/gms/internal/zzebb;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
