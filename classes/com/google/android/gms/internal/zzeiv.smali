.class public final Lcom/google/android/gms/internal/zzeiv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeiw;


# instance fields
.field private final limit:I

.field private final zznaa:Lcom/google/android/gms/internal/zzejv;

.field private final zznbe:Lcom/google/android/gms/internal/zzeiy;

.field private final zznbf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeih;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzeiy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzeiy;-><init>(Lcom/google/android/gms/internal/zzeih;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeiv;->zznbe:Lcom/google/android/gms/internal/zzeiy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeih;->zzbyr()Lcom/google/android/gms/internal/zzejv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeiv;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeih;->getLimit()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzeiv;->limit:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeih;->zzbyt()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_1d
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeiv;->zznbf:Z

    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeix;Lcom/google/android/gms/internal/zzeit;)Lcom/google/android/gms/internal/zzejw;
    .registers 16

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeiv;->zznbe:Lcom/google/android/gms/internal/zzeiy;

    new-instance v3, Lcom/google/android/gms/internal/zzekc;

    invoke-direct {v3, p2, p3}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzeiy;->zza(Lcom/google/android/gms/internal/zzekc;)Z

    move-result v0

    if-nez v0, :cond_13a

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v3

    :goto_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_21
    :goto_21
    return-object p1

    :cond_22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->getChildCount()I

    move-result v0

    iget v4, p0, Lcom/google/android/gms/internal/zzeiv;->limit:I

    if-ge v0, v4, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeiv;->zznbe:Lcom/google/android/gms/internal/zzeiy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeiy;->zzbzh()Lcom/google/android/gms/internal/zzeiw;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/zzeiw;->zza(Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeix;Lcom/google/android/gms/internal/zzeit;)Lcom/google/android/gms/internal/zzejw;

    move-result-object p1

    goto :goto_21

    :cond_3e
    new-instance v5, Lcom/google/android/gms/internal/zzekc;

    invoke-direct {v5, p2, v3}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeiv;->zznbf:Z

    if-eqz v0, :cond_90

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejw;->zzcaj()Lcom/google/android/gms/internal/zzekc;

    move-result-object v0

    :goto_4b
    iget-object v4, p0, Lcom/google/android/gms/internal/zzeiv;->zznbe:Lcom/google/android/gms/internal/zzeiy;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzeiy;->zza(Lcom/google/android/gms/internal/zzekc;)Z

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/google/android/gms/internal/zzekd;->zzk(Lcom/google/android/gms/internal/zzejg;)Z

    move-result v4

    if-eqz v4, :cond_fe

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v7

    iget-object v4, p0, Lcom/google/android/gms/internal/zzeiv;->zznaa:Lcom/google/android/gms/internal/zzejv;

    iget-boolean v8, p0, Lcom/google/android/gms/internal/zzeiv;->zznbf:Z

    invoke-interface {p5, v4, v0, v8}, Lcom/google/android/gms/internal/zzeix;->zza(Lcom/google/android/gms/internal/zzejv;Lcom/google/android/gms/internal/zzekc;Z)Lcom/google/android/gms/internal/zzekc;

    move-result-object v0

    move-object v4, v0

    :goto_6c
    if-eqz v4, :cond_95

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzejg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/zzekd;->zzk(Lcom/google/android/gms/internal/zzejg;)Z

    move-result v0

    if-eqz v0, :cond_95

    :cond_86
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeiv;->zznaa:Lcom/google/android/gms/internal/zzejv;

    iget-boolean v8, p0, Lcom/google/android/gms/internal/zzeiv;->zznbf:Z

    invoke-interface {p5, v0, v4, v8}, Lcom/google/android/gms/internal/zzeix;->zza(Lcom/google/android/gms/internal/zzejv;Lcom/google/android/gms/internal/zzekc;Z)Lcom/google/android/gms/internal/zzekc;

    move-result-object v0

    move-object v4, v0

    goto :goto_6c

    :cond_90
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejw;->zzcak()Lcom/google/android/gms/internal/zzekc;

    move-result-object v0

    goto :goto_4b

    :cond_95
    if-nez v4, :cond_b4

    move v0, v1

    :goto_98
    if-eqz v6, :cond_bd

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_bd

    if-ltz v0, :cond_bd

    move v0, v1

    :goto_a3
    if-eqz v0, :cond_bf

    if-eqz p6, :cond_ae

    invoke-static {p2, v3, v7}, Lcom/google/android/gms/internal/zzehz;->zza(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzehz;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/zzeit;->zza(Lcom/google/android/gms/internal/zzehz;)V

    :cond_ae
    invoke-virtual {p1, p2, v3}, Lcom/google/android/gms/internal/zzejw;->zzg(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;

    move-result-object p1

    goto/16 :goto_21

    :cond_b4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeiv;->zznaa:Lcom/google/android/gms/internal/zzejv;

    iget-boolean v8, p0, Lcom/google/android/gms/internal/zzeiv;->zznbf:Z

    invoke-virtual {v0, v4, v5, v8}, Lcom/google/android/gms/internal/zzejv;->zza(Lcom/google/android/gms/internal/zzekc;Lcom/google/android/gms/internal/zzekc;Z)I

    move-result v0

    goto :goto_98

    :cond_bd
    move v0, v2

    goto :goto_a3

    :cond_bf
    if-eqz p6, :cond_c8

    invoke-static {p2, v7}, Lcom/google/android/gms/internal/zzehz;->zzd(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzehz;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/zzeit;->zza(Lcom/google/android/gms/internal/zzehz;)V

    :cond_c8
    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/zzejw;->zzg(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;

    move-result-object p1

    if-eqz v4, :cond_fc

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeiv;->zznbe:Lcom/google/android/gms/internal/zzeiy;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzeiy;->zza(Lcom/google/android/gms/internal/zzekc;)Z

    move-result v0

    if-eqz v0, :cond_fc

    move v0, v1

    :goto_db
    if-eqz v0, :cond_21

    if-eqz p6, :cond_ee

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzehz;->zzc(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzehz;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/zzeit;->zza(Lcom/google/android/gms/internal/zzehz;)V

    :cond_ee
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzejw;->zzg(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;

    move-result-object p1

    goto/16 :goto_21

    :cond_fc
    move v0, v2

    goto :goto_db

    :cond_fe
    invoke-interface {v3}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    if-eqz v6, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeiv;->zznaa:Lcom/google/android/gms/internal/zzejv;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzeiv;->zznbf:Z

    invoke-virtual {v1, v0, v5, v2}, Lcom/google/android/gms/internal/zzejv;->zza(Lcom/google/android/gms/internal/zzekc;Lcom/google/android/gms/internal/zzekc;Z)I

    move-result v1

    if-ltz v1, :cond_21

    if-eqz p6, :cond_128

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzehz;->zzd(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzehz;

    move-result-object v1

    invoke-virtual {p6, v1}, Lcom/google/android/gms/internal/zzeit;->zza(Lcom/google/android/gms/internal/zzehz;)V

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/zzehz;->zzc(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzehz;

    move-result-object v1

    invoke-virtual {p6, v1}, Lcom/google/android/gms/internal/zzeit;->zza(Lcom/google/android/gms/internal/zzehz;)V

    :cond_128
    invoke-virtual {p1, p2, v3}, Lcom/google/android/gms/internal/zzejw;->zzg(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzejw;->zzg(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;

    move-result-object p1

    goto/16 :goto_21

    :cond_13a
    move-object v3, p3

    goto/16 :goto_13
.end method

.method public final zza(Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzeit;)Lcom/google/android/gms/internal/zzejw;
    .registers 15

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeiv;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzejw;->zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v9

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeiv;->zznbe:Lcom/google/android/gms/internal/zzeiy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeiy;->zzbzh()Lcom/google/android/gms/internal/zzeiw;

    move-result-object v0

    invoke-interface {v0, p1, v9, p3}, Lcom/google/android/gms/internal/zzeiw;->zza(Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzeit;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v0

    return-object v0

    :cond_2b
    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzejw;->zzk(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeiv;->zznbf:Z

    if-eqz v0, :cond_7d

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzejw;->zzbti()Ljava/util/Iterator;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeiv;->zznbe:Lcom/google/android/gms/internal/zzeiy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeiy;->zzbzk()Lcom/google/android/gms/internal/zzekc;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeiv;->zznbe:Lcom/google/android/gms/internal/zzeiy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeiy;->zzbzj()Lcom/google/android/gms/internal/zzekc;

    move-result-object v3

    const/4 v0, -0x1

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move v1, v0

    :goto_4c
    move v8, v7

    move-object v9, v6

    move v6, v7

    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekc;

    if-nez v6, :cond_67

    iget-object v10, p0, Lcom/google/android/gms/internal/zzeiv;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-virtual {v10, v5, v0}, Lcom/google/android/gms/internal/zzejv;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    mul-int/2addr v10, v1

    if-gtz v10, :cond_67

    move v6, v2

    :cond_67
    if-eqz v6, :cond_92

    iget v10, p0, Lcom/google/android/gms/internal/zzeiv;->limit:I

    if-ge v8, v10, :cond_92

    iget-object v10, p0, Lcom/google/android/gms/internal/zzeiv;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-virtual {v10, v0, v4}, Lcom/google/android/gms/internal/zzejv;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    mul-int/2addr v10, v1

    if-gtz v10, :cond_92

    move v10, v2

    :goto_77
    if-eqz v10, :cond_94

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_4f

    :cond_7d
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzejw;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeiv;->zznbe:Lcom/google/android/gms/internal/zzeiy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeiy;->zzbzj()Lcom/google/android/gms/internal/zzekc;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeiv;->zznbe:Lcom/google/android/gms/internal/zzeiy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeiy;->zzbzk()Lcom/google/android/gms/internal/zzekc;

    move-result-object v1

    move-object v4, v1

    move-object v5, v3

    move v1, v2

    move-object v3, v0

    goto :goto_4c

    :cond_92
    move v10, v7

    goto :goto_77

    :cond_94
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lcom/google/android/gms/internal/zzejw;->zzg(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v0

    move-object v9, v0

    goto :goto_4f
.end method

.method public final zza(Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;
    .registers 3

    return-object p1
.end method

.method public final zzbyr()Lcom/google/android/gms/internal/zzejv;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeiv;->zznaa:Lcom/google/android/gms/internal/zzejv;

    return-object v0
.end method

.method public final zzbzh()Lcom/google/android/gms/internal/zzeiw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeiv;->zznbe:Lcom/google/android/gms/internal/zzeiy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeiy;->zzbzh()Lcom/google/android/gms/internal/zzeiw;

    move-result-object v0

    return-object v0
.end method

.method public final zzbzi()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
