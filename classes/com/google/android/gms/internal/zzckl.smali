.class final Lcom/google/android/gms/internal/zzckl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjij:Lcom/google/android/gms/internal/zzckg;

.field private synthetic zzjil:Lcom/google/android/gms/measurement/AppMeasurement$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckg;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckl;->zzjij:Lcom/google/android/gms/internal/zzckg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckl;->zzjil:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckl;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckg;->zzd(Lcom/google/android/gms/internal/zzckg;)Lcom/google/android/gms/internal/zzche;

    move-result-object v1

    if-nez v1, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckl;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Failed to send current screen to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckl;->zzjil:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-nez v0, :cond_44

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckl;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzche;->zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckl;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckg;->zze(Lcom/google/android/gms/internal/zzckg;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_32} :catch_33

    goto :goto_17

    :catch_33
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckl;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Failed to send current screen to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17

    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckl;->zzjil:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwm:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckl;->zzjil:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwk:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckl;->zzjil:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckl;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzche;->zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_5d} :catch_33

    goto :goto_2d
.end method
