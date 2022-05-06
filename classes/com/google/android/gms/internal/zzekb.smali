.class public final Lcom/google/android/gms/internal/zzekb;
.super Lcom/google/android/gms/internal/zzejy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzejy",
        "<",
        "Lcom/google/android/gms/internal/zzekb;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:J


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/google/android/gms/internal/zzekd;)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzejy;-><init>(Lcom/google/android/gms/internal/zzekd;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzekb;->value:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/zzekb;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/zzekb;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzekb;->value:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzekb;->value:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekb;->zznbx:Lcom/google/android/gms/internal/zzekd;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzekb;->zznbx:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzekb;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzekb;->value:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzekb;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekb;->zznbx:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/zzejy;)I
    .registers 6

    check-cast p1, Lcom/google/android/gms/internal/zzekb;

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzekb;->value:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzekb;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzelt;->zzi(JJ)I

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

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzekb;->value:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzelt;->zzk(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_27
    return-object v0

    :cond_28
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_27
.end method

.method protected final zzbzm()Lcom/google/android/gms/internal/zzeka;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzeka;->zzncw:Lcom/google/android/gms/internal/zzeka;

    return-object v0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/zzekb;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzekb;->value:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzekb;-><init>(Ljava/lang/Long;Lcom/google/android/gms/internal/zzekd;)V

    return-object v0
.end method
