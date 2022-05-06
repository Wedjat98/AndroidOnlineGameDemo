.class final Lcom/google/android/gms/internal/zzcvd;
.super Lcom/google/android/gms/internal/zzcvf;


# instance fields
.field private synthetic zzjyq:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcuz;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Collection;)V
    .registers 5

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcvd;->zzjyq:Ljava/util/Collection;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcvf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcva;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/plus/internal/zzh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcvd;->zzjyq:Ljava/util/Collection;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/zzh;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/util/Collection;)V

    return-void
.end method
