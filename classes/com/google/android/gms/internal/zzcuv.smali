.class final Lcom/google/android/gms/internal/zzcuv;
.super Lcom/google/android/gms/internal/zzcuw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcuu;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcuw;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcuv;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/plus/internal/zzh;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/plus/internal/zzh;->zzk(Lcom/google/android/gms/common/api/internal/zzn;)V

    return-void
.end method
