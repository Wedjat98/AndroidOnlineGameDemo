.class final Lcom/google/android/gms/internal/zzcva;
.super Lcom/google/android/gms/internal/zzcvf;


# instance fields
.field private synthetic zzjyo:I

.field private synthetic zzjyp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcuz;Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;)V
    .registers 6

    iput p3, p0, Lcom/google/android/gms/internal/zzcva;->zzjyo:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcva;->zzjyp:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcvf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcva;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/plus/internal/zzh;

    iget v0, p0, Lcom/google/android/gms/internal/zzcva;->zzjyo:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcva;->zzjyp:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/plus/internal/zzh;->zza(Lcom/google/android/gms/common/api/internal/zzn;ILjava/lang/String;)Lcom/google/android/gms/common/internal/zzaq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zza(Lcom/google/android/gms/common/internal/zzaq;)V

    return-void
.end method
