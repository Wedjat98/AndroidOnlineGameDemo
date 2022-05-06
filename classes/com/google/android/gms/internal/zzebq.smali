.class final Lcom/google/android/gms/internal/zzebq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzebh;


# instance fields
.field private synthetic zzmou:J

.field private synthetic zzmov:Lcom/google/android/gms/internal/zzebp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzebp;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebq;->zzmov:Lcom/google/android/gms/internal/zzebp;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzebq;->zzmou:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzebq;->zzmou:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzebq;->zzmov:Lcom/google/android/gms/internal/zzebp;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzebo;->zzd(Lcom/google/android/gms/internal/zzebo;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebq;->zzmov:Lcom/google/android/gms/internal/zzebp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    sget-object v1, Lcom/google/android/gms/internal/zzeby;->zzmpb:Lcom/google/android/gms/internal/zzeby;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzebo;->zza(Lcom/google/android/gms/internal/zzebo;Lcom/google/android/gms/internal/zzeby;)Lcom/google/android/gms/internal/zzeby;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebq;->zzmov:Lcom/google/android/gms/internal/zzebp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zza(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v1

    const-string v2, "Error fetching token: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_31
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v5, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebq;->zzmov:Lcom/google/android/gms/internal/zzebp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zze(Lcom/google/android/gms/internal/zzebo;)V

    :goto_3d
    return-void

    :cond_3e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_31

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebq;->zzmov:Lcom/google/android/gms/internal/zzebp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zza(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v0

    const-string v1, "Ignoring getToken error, because this was not the latest attempt."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3d
.end method

.method public final zzpl(Ljava/lang/String;)V
    .registers 11

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzebq;->zzmou:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebq;->zzmov:Lcom/google/android/gms/internal/zzebp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zzd(Lcom/google/android/gms/internal/zzebo;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebq;->zzmov:Lcom/google/android/gms/internal/zzebp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zzb(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzeby;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/zzeby;->zzmpc:Lcom/google/android/gms/internal/zzeby;

    if-ne v0, v3, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebq;->zzmov:Lcom/google/android/gms/internal/zzebp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zza(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v0

    const-string v1, "Successfully fetched token, opening connection"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v8, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebq;->zzmov:Lcom/google/android/gms/internal/zzebp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzebo;->zzpo(Ljava/lang/String;)V

    :goto_33
    return-void

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebq;->zzmov:Lcom/google/android/gms/internal/zzebp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zzb(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzeby;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/zzeby;->zzmpb:Lcom/google/android/gms/internal/zzeby;

    if-ne v0, v3, :cond_62

    move v0, v1

    :goto_41
    const-string v3, "Expected connection state disconnected, but was %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzebq;->zzmov:Lcom/google/android/gms/internal/zzebp;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzebo;->zzb(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzeby;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/zzebj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebq;->zzmov:Lcom/google/android/gms/internal/zzebp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zza(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v0

    const-string v1, "Not opening connection after token refresh, because connection was set to disconnected"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v8, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_33

    :cond_62
    move v0, v2

    goto :goto_41

    :cond_64
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebq;->zzmov:Lcom/google/android/gms/internal/zzebp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zza(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v0

    const-string v1, "Ignoring getToken result, because this was not the latest attempt."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v8, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_33
.end method
