.class final Lcom/google/firebase/database/connection/idl/zzaf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzebg;


# instance fields
.field private synthetic zzmqy:Lcom/google/firebase/database/connection/idl/zzk;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/zzk;)V
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzaf;->zzmqy:Lcom/google/firebase/database/connection/idl/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ZLcom/google/android/gms/internal/zzebh;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzaf;->zzmqy:Lcom/google/firebase/database/connection/idl/zzk;

    new-instance v1, Lcom/google/firebase/database/connection/idl/zzag;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/database/connection/idl/zzag;-><init>(Lcom/google/firebase/database/connection/idl/zzaf;Lcom/google/android/gms/internal/zzebh;)V

    invoke-interface {v0, p1, v1}, Lcom/google/firebase/database/connection/idl/zzk;->zza(ZLcom/google/firebase/database/connection/idl/zzn;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
