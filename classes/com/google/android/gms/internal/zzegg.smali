.class public final Lcom/google/android/gms/internal/zzegg;
.super Ljava/lang/Object;


# static fields
.field private static final zzmxa:Lcom/google/android/gms/internal/zzehq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehq",
            "<",
            "Lcom/google/android/gms/internal/zzegd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzmwx:Lcom/google/android/gms/internal/zzecy;

.field private zzmwy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzegd;",
            ">;"
        }
    .end annotation
.end field

.field private zzmwz:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzegi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzegi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzegg;->zzmxa:Lcom/google/android/gms/internal/zzehq;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzecy;->zzbvq()Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwy:Ljava/util/List;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwz:Ljava/lang/Long;

    return-void
.end method

.method private static zza(Ljava/util/List;Lcom/google/android/gms/internal/zzehq;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzecy;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzegd;",
            ">;",
            "Lcom/google/android/gms/internal/zzehq",
            "<",
            "Lcom/google/android/gms/internal/zzegd;",
            ">;",
            "Lcom/google/android/gms/internal/zzedk;",
            ")",
            "Lcom/google/android/gms/internal/zzecy;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzecy;->zzbvq()Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzegd;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzehq;->zzbs(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegd;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegd;->zzbxb()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/zzedk;->zzi(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegd;->zzbwz()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/zzecy;->zze(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    move-object v1, v0

    goto :goto_9

    :cond_39
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/zzedk;->zzi(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegd;->zzbwz()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-static {v3, p2}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/internal/zzecy;->zze(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    move-object v1, v0

    goto :goto_9

    :cond_55
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/zzedk;->zzi(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegd;->zzbxa()Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/zzecy;->zzb(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    move-object v1, v0

    goto :goto_9

    :cond_69
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/zzedk;->zzi(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-static {v3, p2}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegd;->zzbxa()Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/zzecy;->zzb(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    move-object v1, v0

    goto :goto_9

    :cond_87
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegd;->zzbxa()Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzecy;->zzf(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    if-eqz v0, :cond_9e

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/zzecy;->zze(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v1

    move-object v0, v1

    :goto_9a
    move-object v1, v0

    goto/16 :goto_9

    :cond_9d
    return-object v1

    :cond_9e
    move-object v0, v1

    goto :goto_9a
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzekc;ZLcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzekc;
    .registers 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzecy;->zzg(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzecy;->zzf(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    if-eqz v0, :cond_31

    :goto_11
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {p5, v0, p3, p4}, Lcom/google/android/gms/internal/zzejv;->zza(Lcom/google/android/gms/internal/zzekc;Lcom/google/android/gms/internal/zzekc;Z)I

    move-result v3

    if-lez v3, :cond_39

    if-eqz v1, :cond_2f

    invoke-virtual {p5, v0, v1, p4}, Lcom/google/android/gms/internal/zzejv;->zza(Lcom/google/android/gms/internal/zzekc;Lcom/google/android/gms/internal/zzekc;Z)I

    move-result v3

    if-gez v3, :cond_39

    :cond_2f
    :goto_2f
    move-object v1, v0

    goto :goto_15

    :cond_31
    if-eqz p2, :cond_38

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/zzecy;->zzb(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    goto :goto_11

    :cond_38
    return-object v1

    :cond_39
    move-object v0, v1

    goto :goto_2f
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .registers 7

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzedk;->zzh(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzecy;->zze(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzecy;->zzg(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p4, p2}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    goto :goto_d

    :cond_1f
    invoke-interface {p4, p2}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzecy;->zzb(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    goto :goto_d
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzehx;)Lcom/google/android/gms/internal/zzekd;
    .registers 6

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzecy;->zzf(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    if-eqz v0, :cond_d

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzehx;->zzf(Lcom/google/android/gms/internal/zzejg;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzecy;->zzg(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzehx;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzecy;->zzb(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    goto :goto_c

    :cond_26
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Ljava/util/List;Z)Lcom/google/android/gms/internal/zzekd;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            "Lcom/google/android/gms/internal/zzekd;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/google/android/gms/internal/zzekd;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    if-nez p4, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzecy;->zzf(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    if-eqz v0, :cond_13

    move-object p2, v0

    :cond_12
    :goto_12
    return-object p2

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzecy;->zzg(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecy;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    if-nez p2, :cond_2d

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzecy;->zze(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v2

    if-nez v2, :cond_2d

    move-object p2, v1

    goto :goto_12

    :cond_2d
    if-eqz p2, :cond_34

    :goto_2f
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzecy;->zzb(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p2

    goto :goto_12

    :cond_34
    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object p2

    goto :goto_2f

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzecy;->zzg(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    if-nez p4, :cond_47

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecy;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    :cond_47
    if-nez p4, :cond_57

    if-nez p2, :cond_57

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzecy;->zze(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v0

    if-nez v0, :cond_57

    move-object p2, v1

    goto :goto_12

    :cond_57
    new-instance v0, Lcom/google/android/gms/internal/zzegh;

    invoke-direct {v0, p0, p4, p3, p1}, Lcom/google/android/gms/internal/zzegh;-><init>(Lcom/google/android/gms/internal/zzegg;ZLjava/util/List;Lcom/google/android/gms/internal/zzedk;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegg;->zzmwy:Ljava/util/List;

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/zzegg;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzehq;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    if-eqz p2, :cond_69

    :goto_64
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzecy;->zzb(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p2

    goto :goto_12

    :cond_69
    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object p2

    goto :goto_64
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;Ljava/lang/Long;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwy:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/zzegd;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/zzegd;-><init>(JLcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzecy;->zzb(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzegg;->zzmwz:Ljava/lang/Long;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Ljava/lang/Long;Z)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwy:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/zzegd;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzegd;-><init>(JLcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzecy;->zze(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    :cond_1b
    iput-object p3, p0, Lcom/google/android/gms/internal/zzegg;->zzmwz:Ljava/lang/Long;

    return-void
.end method

.method public final zzbv(J)Lcom/google/android/gms/internal/zzegd;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzegd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegd;->zzbwy()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_6

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public final zzbw(J)Z
    .registers 16

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_125

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzegd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegd;->zzbwy()J

    move-result-wide v8

    cmp-long v5, v8, p1

    if-nez v5, :cond_62

    move-object v4, v0

    :goto_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwy:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzegd;->isVisible()Z

    move-result v7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    move v5, v3

    :goto_32
    if-eqz v7, :cond_a3

    if-ltz v8, :cond_a3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwy:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzegd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegd;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_121

    if-lt v8, v2, :cond_92

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzegd;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegd;->zzbxb()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegd;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/zzedk;->zzi(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v1

    :goto_58
    if-eqz v1, :cond_92

    move v0, v5

    move v1, v3

    :goto_5c
    add-int/lit8 v5, v8, -0x1

    move v8, v5

    move v7, v1

    move v5, v0

    goto :goto_32

    :cond_62
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegd;->zzbxa()Lcom/google/android/gms/internal/zzecy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzecy;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegd;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/zzedk;->zzh(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/zzedk;->zzi(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v1

    if-eqz v1, :cond_6e

    move v1, v6

    goto :goto_58

    :cond_90
    move v1, v3

    goto :goto_58

    :cond_92
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzegd;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegd;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzedk;->zzi(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v0

    if-eqz v0, :cond_121

    move v0, v6

    move v1, v7

    goto :goto_5c

    :cond_a3
    if-nez v7, :cond_a7

    move v6, v3

    :cond_a6
    :goto_a6
    return v6

    :cond_a7
    if-eqz v5, :cond_e3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwy:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/zzegg;->zzmxa:Lcom/google/android/gms/internal/zzehq;

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzegg;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzehq;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_da

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwy:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegg;->zzmwy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzegd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegd;->zzbwy()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwz:Ljava/lang/Long;

    goto :goto_a6

    :cond_da
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwz:Ljava/lang/Long;

    goto :goto_a6

    :cond_e3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzegd;->zzbxb()Z

    move-result v0

    if-eqz v0, :cond_f6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzegd;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzecy;->zzd(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    goto :goto_a6

    :cond_f6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzegd;->zzbxa()Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecy;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_fe
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzedk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzegd;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzedk;->zzh(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzecy;->zzd(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    goto :goto_fe

    :cond_121
    move v0, v5

    move v1, v7

    goto/16 :goto_5c

    :cond_125
    move-object v4, v1

    goto/16 :goto_1f
.end method

.method public final zzbxe()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzegd;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegg;->zzmwy:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzecy;->zzbvq()Lcom/google/android/gms/internal/zzecy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzegg;->zzmwy:Ljava/util/List;

    return-object v0
.end method

.method public final zzj(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .registers 11

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzecy;->zzf(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v2

    if-nez v2, :cond_8e

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/google/android/gms/internal/zzekd;->zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    move-object v1, v0

    goto :goto_17

    :cond_31
    iget-object v1, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzecy;->zzg(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekc;

    new-instance v4, Lcom/google/android/gms/internal/zzedk;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/android/gms/internal/zzejg;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzedk;-><init>([Lcom/google/android/gms/internal/zzejg;)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzecy;->zzg(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzecy;->zzb(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Lcom/google/android/gms/internal/zzekd;->zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    move-object v1, v0

    goto :goto_3c

    :cond_6d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzecy;->zzbvs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/google/android/gms/internal/zzekd;->zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    goto :goto_75

    :cond_8e
    move-object v1, v0

    :cond_8f
    return-object v1
.end method

.method public final zzt(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzegj;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzegj;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/zzegj;-><init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzegg;)V

    return-object v0
.end method

.method public final zzu(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwx:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzecy;->zzf(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    return-object v0
.end method
