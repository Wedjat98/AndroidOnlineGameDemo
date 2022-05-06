.class final Lcom/google/android/gms/internal/zzefx;
.super Lcom/google/android/gms/internal/zzedh;


# instance fields
.field private zzmrr:Lcom/google/android/gms/internal/zzeik;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeik;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzedh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefx;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/zzefx;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/google/android/gms/internal/zzefx;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzefx;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefx;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeik;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefx;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzedh;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzefx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzefx;-><init>(Lcom/google/android/gms/internal/zzeik;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzehz;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeia;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeia;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/firebase/database/DatabaseError;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeic;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final zzbvp()Lcom/google/android/gms/internal/zzeik;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefx;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzedh;)Z
    .registers 3

    instance-of v0, p1, Lcom/google/android/gms/internal/zzefx;

    return v0
.end method
