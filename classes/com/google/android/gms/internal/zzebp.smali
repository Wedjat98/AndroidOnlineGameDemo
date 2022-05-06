.class final Lcom/google/android/gms/internal/zzebp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmos:Z

.field final synthetic zzmot:Lcom/google/android/gms/internal/zzebo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzebo;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzebp;->zzmos:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zza(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v0

    const-string v3, "Trying to fetch auth token"

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zzb(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzeby;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/zzeby;->zzmpb:Lcom/google/android/gms/internal/zzeby;

    if-ne v0, v3, :cond_4d

    move v0, v1

    :goto_1b
    const-string v3, "Not in disconnected state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzebo;->zzb(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzeby;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/zzebj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    sget-object v1, Lcom/google/android/gms/internal/zzeby;->zzmpc:Lcom/google/android/gms/internal/zzeby;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzebo;->zza(Lcom/google/android/gms/internal/zzebo;Lcom/google/android/gms/internal/zzeby;)Lcom/google/android/gms/internal/zzeby;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zzc(Lcom/google/android/gms/internal/zzebo;)J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zzd(Lcom/google/android/gms/internal/zzebo;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzebo;->zzf(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzebg;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzebp;->zzmos:Z

    new-instance v4, Lcom/google/android/gms/internal/zzebq;

    invoke-direct {v4, p0, v0, v1}, Lcom/google/android/gms/internal/zzebq;-><init>(Lcom/google/android/gms/internal/zzebp;J)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/zzebg;->zza(ZLcom/google/android/gms/internal/zzebh;)V

    return-void

    :cond_4d
    move v0, v2

    goto :goto_1b
.end method
