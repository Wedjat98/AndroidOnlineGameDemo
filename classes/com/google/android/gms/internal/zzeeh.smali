.class final Lcom/google/android/gms/internal/zzeeh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzefz;


# instance fields
.field final synthetic zzmti:Lcom/google/android/gms/internal/zzedn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeh;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzega;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeeh;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzedn;->zzc(Lcom/google/android/gms/internal/zzedn;)Lcom/google/android/gms/internal/zzebm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzedk;->zzbwg()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeih;->zzbyu()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzebm;->zza(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzega;Lcom/google/android/gms/internal/zzebl;Lcom/google/android/gms/internal/zzefw;)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeeh;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzedn;->zzc(Lcom/google/android/gms/internal/zzedn;)Lcom/google/android/gms/internal/zzebm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzedk;->zzbwg()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeih;->zzbyu()Ljava/util/Map;

    move-result-object v2

    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzega;->zzbwx()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_20
    new-instance v5, Lcom/google/android/gms/internal/zzeei;

    invoke-direct {v5, p0, p4}, Lcom/google/android/gms/internal/zzeei;-><init>(Lcom/google/android/gms/internal/zzeeh;Lcom/google/android/gms/internal/zzefw;)V

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzebm;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzebl;Ljava/lang/Long;Lcom/google/android/gms/internal/zzece;)V

    return-void

    :cond_2a
    const/4 v4, 0x0

    goto :goto_20
.end method
