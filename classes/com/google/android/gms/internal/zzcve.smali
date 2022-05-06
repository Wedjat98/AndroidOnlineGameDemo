.class final Lcom/google/android/gms/internal/zzcve;
.super Lcom/google/android/gms/internal/zzcvf;


# instance fields
.field private synthetic zzjyr:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcuz;Lcom/google/android/gms/common/api/GoogleApiClient;[Ljava/lang/String;)V
    .registers 5

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcve;->zzjyr:[Ljava/lang/String;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcve;->zzjyr:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/zzh;->zzc(Lcom/google/android/gms/common/api/internal/zzn;[Ljava/lang/String;)V

    return-void
.end method
