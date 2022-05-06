.class public final Lcom/google/android/gms/internal/zzejt;
.super Lcom/google/android/gms/internal/zzejy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzejy",
        "<",
        "Lcom/google/android/gms/internal/zzejt;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzncn:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzekd;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzejy;-><init>(Lcom/google/android/gms/internal/zzekd;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejt;->zzncn:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/zzejt;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/zzejt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejt;->zzncn:Ljava/lang/Double;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzejt;->zzncn:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejt;->zznbx:Lcom/google/android/gms/internal/zzekd;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzejt;->zznbx:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejt;->zzncn:Ljava/lang/Double;

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejt;->zzncn:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejt;->zznbx:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/zzejy;)I
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/zzejt;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejt;->zzncn:Ljava/lang/Double;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzejt;->zzncn:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzekf;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzejy;->zzb(Lcom/google/android/gms/internal/zzekf;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "number:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejt;->zzncn:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzelt;->zzk(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2a
    return-object v0

    :cond_2b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method protected final zzbzm()Lcom/google/android/gms/internal/zzeka;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzeka;->zzncw:Lcom/google/android/gms/internal/zzeka;

    return-object v0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzejt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejt;->zzncn:Ljava/lang/Double;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzejt;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzekd;)V

    return-object v0
.end method
