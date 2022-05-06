.class public final Lcom/google/android/gms/internal/zzegd;
.super Ljava/lang/Object;


# instance fields
.field private final zzmks:Lcom/google/android/gms/internal/zzedk;

.field private final zzmwq:J

.field private final zzmwr:Lcom/google/android/gms/internal/zzekd;

.field private final zzmws:Lcom/google/android/gms/internal/zzecy;

.field private final zzmwt:Z


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzegd;->zzmwq:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzegd;->zzmks:Lcom/google/android/gms/internal/zzedk;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmwt:Z

    return-void
.end method

.method public constructor <init>(JLcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzegd;->zzmwq:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzegd;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzegd;->zzmwt:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

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
    check-cast p1, Lcom/google/android/gms/internal/zzegd;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmwq:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzegd;->zzmwq:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzegd;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzedk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    move v0, v1

    goto :goto_4

    :cond_2b
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmwt:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzegd;->zzmwt:Z

    if-eq v2, v3, :cond_33

    move v0, v1

    goto :goto_4

    :cond_33
    iget-object v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    :cond_41
    iget-object v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzecy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_4f
    move v0, v1

    goto :goto_4

    :cond_51
    iget-object v2, p1, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    if-eqz v2, :cond_41

    :cond_55
    move v0, v1

    goto :goto_4

    :cond_57
    iget-object v2, p1, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    if-eqz v2, :cond_4

    goto :goto_4f
.end method

.method public final hashCode()I
    .registers 5

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmwq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmwt:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzedk;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    if-eqz v2, :cond_3a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzecy;->hashCode()I

    move-result v1

    :cond_3a
    add-int/2addr v0, v1

    return v0

    :cond_3c
    move v0, v1

    goto :goto_2d
.end method

.method public final isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmwt:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 9

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmwq:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzegd;->zzmwt:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4e

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "UserWriteRecord{id="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " overwrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " merge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbsy()Lcom/google/android/gms/internal/zzedk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmks:Lcom/google/android/gms/internal/zzedk;

    return-object v0
.end method

.method public final zzbwy()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmwq:J

    return-wide v0
.end method

.method public final zzbwz()Lcom/google/android/gms/internal/zzekd;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t access overwrite when write is a merge!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    return-object v0
.end method

.method public final zzbxa()Lcom/google/android/gms/internal/zzecy;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t access merge when write is an overwrite!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    return-object v0
.end method

.method public final zzbxb()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
