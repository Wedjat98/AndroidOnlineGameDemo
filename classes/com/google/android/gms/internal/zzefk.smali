.class final Lcom/google/android/gms/internal/zzefk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/google/android/gms/internal/zzeib;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzmvz:Lcom/google/android/gms/internal/zzefh;

.field private synthetic zzmwc:Lcom/google/android/gms/internal/zzedh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzedh;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefk;->zzmwc:Lcom/google/android/gms/internal/zzedh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefk;->zzmwc:Lcom/google/android/gms/internal/zzedh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedh;->zzbvp()Lcom/google/android/gms/internal/zzeik;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefh;->zzd(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v0

    move-object v5, v6

    move-object v7, v0

    move v3, v2

    :goto_16
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzehm;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzefg;

    if-eqz v0, :cond_18a

    if-eqz v4, :cond_48

    :goto_26
    if-nez v3, :cond_2e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzefg;->zzbwt()Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_2e
    move v0, v1

    :goto_2f
    move-object v3, v4

    :goto_30
    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4f

    const-string v4, ""

    invoke-static {v4}, Lcom/google/android/gms/internal/zzejg;->zzpz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejg;

    move-result-object v4

    :goto_3c
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/zzehm;->zze(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object v4

    move-object v5, v4

    move-object v4, v3

    move v3, v0

    goto :goto_16

    :cond_48
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/zzefg;->zzr(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v4

    goto :goto_26

    :cond_4d
    move v0, v2

    goto :goto_2f

    :cond_4f
    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v4

    goto :goto_3c

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefh;->zzd(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzefg;

    if-nez v0, :cond_db

    new-instance v0, Lcom/google/android/gms/internal/zzefg;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegy;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/zzefg;-><init>(Lcom/google/android/gms/internal/zzegy;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzefh;->zzd(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v7

    invoke-virtual {v7, v6, v0}, Lcom/google/android/gms/internal/zzehm;->zzb(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzehm;)Lcom/google/android/gms/internal/zzehm;

    move-object v11, v0

    move-object v0, v4

    move v4, v3

    move-object v3, v11

    :goto_80
    iget-object v5, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegy;

    move-result-object v5

    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/zzegy;->zzg(Lcom/google/android/gms/internal/zzeik;)V

    if-eqz v0, :cond_f6

    new-instance v5, Lcom/google/android/gms/internal/zzehx;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzeik;->zzbyr()Lcom/google/android/gms/internal/zzejv;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/zzejw;->zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v0

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/gms/internal/zzehx;-><init>(Lcom/google/android/gms/internal/zzejw;ZZ)V

    move-object v0, v5

    :goto_99
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/zzefg;->zzc(Lcom/google/android/gms/internal/zzeik;)Z

    move-result v1

    if-nez v1, :cond_bd

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v2

    if-nez v2, :cond_bd

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzefh;->zzf(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzega;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzefh;->zze(Lcom/google/android/gms/internal/zzefh;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzefh;->zzg(Lcom/google/android/gms/internal/zzefh;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bd
    iget-object v2, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzefh;->zzc(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegg;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/zzegg;->zzt(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzegj;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzefk;->zzmwc:Lcom/google/android/gms/internal/zzedh;

    invoke-virtual {v3, v5, v2, v0}, Lcom/google/android/gms/internal/zzefg;->zza(Lcom/google/android/gms/internal/zzedh;Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzehx;)Ljava/util/List;

    move-result-object v0

    if-nez v1, :cond_da

    if-nez v4, :cond_da

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/zzefg;->zzb(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeil;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v2, v8, v1}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzeil;)V

    :cond_da
    return-object v0

    :cond_db
    if-nez v3, :cond_e3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzefg;->zzbwt()Z

    move-result v3

    if-eqz v3, :cond_eb

    :cond_e3
    move v3, v1

    :goto_e4
    if-eqz v4, :cond_ed

    :goto_e6
    move-object v11, v0

    move-object v0, v4

    move v4, v3

    move-object v3, v11

    goto :goto_80

    :cond_eb
    move v3, v2

    goto :goto_e4

    :cond_ed
    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzefg;->zzr(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v4

    goto :goto_e6

    :cond_f6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegy;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/zzegy;->zzf(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzehx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzehx;->zzbxz()Z

    move-result v0

    if-eqz v0, :cond_108

    move-object v0, v7

    goto :goto_99

    :cond_108
    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefh;->zzd(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/zzehm;->zzah(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehm;->zzbxx()Lcom/google/android/gms/internal/zzeag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_11e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzefg;

    if-eqz v1, :cond_188

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/zzefg;->zzr(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    if-eqz v1, :cond_188

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzejg;

    invoke-interface {v5, v0, v1}, Lcom/google/android/gms/internal/zzekd;->zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    :goto_14c
    move-object v5, v0

    goto :goto_11e

    :cond_14e
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzehx;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_156
    :goto_156
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_179

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/zzekd;->zzk(Lcom/google/android/gms/internal/zzejg;)Z

    move-result v7

    if-nez v7, :cond_156

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v5, v7, v0}, Lcom/google/android/gms/internal/zzekd;->zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v5

    goto :goto_156

    :cond_179
    new-instance v0, Lcom/google/android/gms/internal/zzehx;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzeik;->zzbyr()Lcom/google/android/gms/internal/zzejv;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/zzejw;->zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzehx;-><init>(Lcom/google/android/gms/internal/zzejw;ZZ)V

    goto/16 :goto_99

    :cond_188
    move-object v0, v5

    goto :goto_14c

    :cond_18a
    move v0, v3

    move-object v3, v4

    goto/16 :goto_30
.end method
