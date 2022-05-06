.class public final Lcom/google/android/gms/internal/zzeik;
.super Ljava/lang/Object;


# instance fields
.field private final zzmks:Lcom/google/android/gms/internal/zzedk;

.field private final zzmkw:Lcom/google/android/gms/internal/zzeih;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeih;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeik;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    return-void
.end method

.method public static zzam(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeik;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzeik;

    sget-object v1, Lcom/google/android/gms/internal/zzeih;->zznae:Lcom/google/android/gms/internal/zzeih;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzeik;-><init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeih;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/google/android/gms/internal/zzeik;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeik;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzeik;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzedk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzeih;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeih;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isDefault()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeih;->isDefault()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbsy()Lcom/google/android/gms/internal/zzedk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zzmks:Lcom/google/android/gms/internal/zzedk;

    return-object v0
.end method

.method public final zzbyr()Lcom/google/android/gms/internal/zzejv;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeih;->zzbyr()Lcom/google/android/gms/internal/zzejv;

    move-result-object v0

    return-object v0
.end method

.method public final zzbyv()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeih;->zzbyv()Z

    move-result v0

    return v0
.end method

.method public final zzbyy()Lcom/google/android/gms/internal/zzeih;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    return-object v0
.end method
