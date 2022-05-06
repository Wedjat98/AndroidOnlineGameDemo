.class final Lcom/google/firebase/database/connection/idl/zzae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzebh;


# instance fields
.field private synthetic zzmqx:Lcom/google/firebase/database/connection/idl/zzn;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/zzad;Lcom/google/firebase/database/connection/idl/zzn;)V
    .registers 3

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/zzae;->zzmqx:Lcom/google/firebase/database/connection/idl/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzae;->zzmqx:Lcom/google/firebase/database/connection/idl/zzn;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/idl/zzn;->onError(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzpl(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzae;->zzmqx:Lcom/google/firebase/database/connection/idl/zzn;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/idl/zzn;->zzpl(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
