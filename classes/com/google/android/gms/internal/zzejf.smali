.class public final Lcom/google/android/gms/internal/zzejf;
.super Lcom/google/android/gms/internal/zzejy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzejy",
        "<",
        "Lcom/google/android/gms/internal/zzejf;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:Z


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lcom/google/android/gms/internal/zzekd;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzejy;-><init>(Lcom/google/android/gms/internal/zzekd;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzejf;->value:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/zzejf;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/zzejf;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzejf;->value:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzejf;->value:Z

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejf;->zznbx:Lcom/google/android/gms/internal/zzekd;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzejf;->zznbx:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzejf;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzejf;->value:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzejf;->zznbx:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/zzejy;)I
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/zzejf;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzejf;->value:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzejf;->value:Z

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzejf;->value:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_9

    :cond_10
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public final zza(Lcom/google/android/gms/internal/zzekf;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzejy;->zzb(Lcom/google/android/gms/internal/zzekf;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzejf;->value:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "boolean:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final zzbzm()Lcom/google/android/gms/internal/zzeka;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzeka;->zzncv:Lcom/google/android/gms/internal/zzeka;

    return-object v0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzejf;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzejf;->value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzejf;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/internal/zzekd;)V

    return-object v0
.end method
