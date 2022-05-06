.class final Lcom/google/android/gms/internal/zzedv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzece;


# instance fields
.field private synthetic zzmrv:Lcom/google/android/gms/internal/zzedk;

.field private synthetic zzmti:Lcom/google/android/gms/internal/zzedn;

.field private synthetic zzmtp:Ljava/util/List;

.field private synthetic zzmtq:Lcom/google/android/gms/internal/zzedn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;Ljava/util/List;Lcom/google/android/gms/internal/zzedn;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzedv;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzedv;->zzmtp:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzedv;->zzmtq:Lcom/google/android/gms/internal/zzedn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v4, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzedn;->zzbf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    const-string v2, "Transaction"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzedv;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;Ljava/lang/String;Lcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/DatabaseError;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_af

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmtp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_20
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeeo;

    sget v1, Lcom/google/android/gms/internal/zzeep;->zzmuu:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzeeo;->zza(Lcom/google/android/gms/internal/zzeeo;I)I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzedn;->zzg(Lcom/google/android/gms/internal/zzedn;)Lcom/google/android/gms/internal/zzefh;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeeo;->zzb(Lcom/google/android/gms/internal/zzeeo;)J

    move-result-wide v2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzedn;->zzh(Lcom/google/android/gms/internal/zzedn;)Lcom/google/android/gms/internal/zzelp;

    move-result-object v6

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzefh;->zza(JZZLcom/google/android/gms/internal/zzeli;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeeo;->zzg(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzedv;->zzmtq:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeeo;->zze(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/internal/zzejw;->zzj(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzejw;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzedw;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/zzedw;-><init>(Lcom/google/android/gms/internal/zzedv;Lcom/google/android/gms/internal/zzeeo;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    new-instance v2, Lcom/google/android/gms/internal/zzegf;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeeo;->zzi(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v5

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeeo;->zze(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeik;->zzam(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    invoke-direct {v2, v3, v5, v0}, Lcom/google/android/gms/internal/zzegf;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzeik;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzedn;->zze(Lcom/google/android/gms/internal/zzedh;)V

    goto :goto_20

    :cond_80
    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzedn;->zzi(Lcom/google/android/gms/internal/zzedn;)Lcom/google/android/gms/internal/zzehs;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzedv;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzehs;->zzak(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzehs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzedn;->zzb(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzehs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzedn;->zzj(Lcom/google/android/gms/internal/zzedn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmtq:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;Ljava/util/List;)V

    :goto_9b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_fe

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzedn;->zzm(Ljava/lang/Runnable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9b

    :cond_af
    invoke-virtual {v1}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_dc

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmtp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeeo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeeo;->zzc(Lcom/google/android/gms/internal/zzeeo;)I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/zzeep;->zzmuv:I

    if-ne v2, v3, :cond_d6

    sget v2, Lcom/google/android/gms/internal/zzeep;->zzmuw:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzeeo;->zza(Lcom/google/android/gms/internal/zzeeo;I)I

    goto :goto_bc

    :cond_d6
    sget v2, Lcom/google/android/gms/internal/zzeep;->zzmus:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzeeo;->zza(Lcom/google/android/gms/internal/zzeeo;I)I

    goto :goto_bc

    :cond_dc
    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmtp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeeo;

    sget v3, Lcom/google/android/gms/internal/zzeep;->zzmuw:I

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzeeo;->zza(Lcom/google/android/gms/internal/zzeeo;I)I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzeeo;->zza(Lcom/google/android/gms/internal/zzeeo;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;

    goto :goto_e2

    :cond_f7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedv;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzedn;->zzb(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    :cond_fe
    return-void
.end method
