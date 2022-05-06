.class final Lcom/google/firebase/database/connection/idl/zzaa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzece;


# instance fields
.field private synthetic zzmqt:Lcom/google/firebase/database/connection/idl/zzah;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/zzah;)V
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzaa;->zzmqt:Lcom/google/firebase/database/connection/idl/zzah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzaa;->zzmqt:Lcom/google/firebase/database/connection/idl/zzah;

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/database/connection/idl/zzah;->zzbd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
