.class public final Lcom/google/android/gms/internal/zzeil;
.super Ljava/lang/Object;


# instance fields
.field private final zzmzz:Lcom/google/android/gms/internal/zzeik;

.field private final zznaq:Lcom/google/android/gms/internal/zzeio;

.field private zznar:Lcom/google/android/gms/internal/zzein;

.field private final zznas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzedh;",
            ">;"
        }
    .end annotation
.end field

.field private final zznat:Lcom/google/android/gms/internal/zzeid;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzein;)V
    .registers 10

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeil;->zzmzz:Lcom/google/android/gms/internal/zzeik;

    new-instance v0, Lcom/google/android/gms/internal/zzeiu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyr()Lcom/google/android/gms/internal/zzejv;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeiu;-><init>(Lcom/google/android/gms/internal/zzejv;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeih;->zzbyx()Lcom/google/android/gms/internal/zzeiw;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzeio;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzeio;-><init>(Lcom/google/android/gms/internal/zzeiw;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzeil;->zznaq:Lcom/google/android/gms/internal/zzeio;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzein;->zzbze()Lcom/google/android/gms/internal/zzehx;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzein;->zzbzc()Lcom/google/android/gms/internal/zzehx;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyr()Lcom/google/android/gms/internal/zzejv;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzejw;->zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzehx;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzeiu;->zza(Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzeit;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzehx;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object v5

    invoke-interface {v1, v4, v5, v6}, Lcom/google/android/gms/internal/zzeiw;->zza(Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzeit;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/zzehx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzehx;->zzbxz()Z

    move-result v2

    const/4 v6, 0x0

    invoke-direct {v5, v0, v2, v6}, Lcom/google/android/gms/internal/zzehx;-><init>(Lcom/google/android/gms/internal/zzejw;ZZ)V

    new-instance v0, Lcom/google/android/gms/internal/zzehx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzehx;->zzbxz()Z

    move-result v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzeiw;->zzbzi()Z

    move-result v1

    invoke-direct {v0, v4, v2, v1}, Lcom/google/android/gms/internal/zzehx;-><init>(Lcom/google/android/gms/internal/zzejw;ZZ)V

    new-instance v1, Lcom/google/android/gms/internal/zzein;

    invoke-direct {v1, v0, v5}, Lcom/google/android/gms/internal/zzein;-><init>(Lcom/google/android/gms/internal/zzehx;Lcom/google/android/gms/internal/zzehx;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeil;->zznar:Lcom/google/android/gms/internal/zzein;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzeid;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzeid;-><init>(Lcom/google/android/gms/internal/zzeik;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznat:Lcom/google/android/gms/internal/zzeid;

    return-void
.end method

.method private final zza(Ljava/util/List;Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzedh;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzehz;",
            ">;",
            "Lcom/google/android/gms/internal/zzejw;",
            "Lcom/google/android/gms/internal/zzedh;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzeia;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeil;->zznat:Lcom/google/android/gms/internal/zzeid;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/gms/internal/zzeid;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzejw;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/zzedh;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedh;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedh;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    const/4 v3, -0x1

    if-eqz p2, :cond_50

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zzmzz:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzedh;

    new-instance v5, Lcom/google/android/gms/internal/zzehy;

    invoke-direct {v5, v0, p2, v2}, Lcom/google/android/gms/internal/zzehy;-><init>(Lcom/google/android/gms/internal/zzedh;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzedk;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_29
    move-object v4, v1

    :goto_2a
    if-eqz p1, :cond_6a

    const/4 v0, 0x0

    move v1, v0

    move v2, v3

    :goto_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_56

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzedh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzedh;->zzc(Lcom/google/android/gms/internal/zzedh;)Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedh;->zzbwd()Z

    move-result v0

    if-nez v0, :cond_57

    move v2, v1

    :cond_4c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    :cond_50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    goto :goto_2a

    :cond_56
    move v1, v2

    :cond_57
    if-eq v1, v3, :cond_69

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzedh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedh;->zzbwc()V

    :cond_69
    :goto_69
    return-object v4

    :cond_6a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_70
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzedh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedh;->zzbwc()V

    goto :goto_70

    :cond_80
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_69
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzeim;
    .registers 8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzego;->zzbxk()Lcom/google/android/gms/internal/zzegp;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzegp;->zzmxo:Lcom/google/android/gms/internal/zzegp;

    if-ne v0, v1, :cond_f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzego;->zzbxj()Lcom/google/android/gms/internal/zzegq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegq;->zzbxn()Lcom/google/android/gms/internal/zzeih;

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznar:Lcom/google/android/gms/internal/zzein;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeil;->zznaq:Lcom/google/android/gms/internal/zzeio;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzeio;->zza(Lcom/google/android/gms/internal/zzein;Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzeir;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzeir;->zznar:Lcom/google/android/gms/internal/zzein;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeil;->zznar:Lcom/google/android/gms/internal/zzein;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzeir;->zznav:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzeir;->zznar:Lcom/google/android/gms/internal/zzein;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzein;->zzbzc()Lcom/google/android/gms/internal/zzehx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzehx;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/gms/internal/zzeil;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzedh;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzeim;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeir;->zznav:Ljava/util/List;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/zzeim;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzedh;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzbyz()Lcom/google/android/gms/internal/zzeik;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zzmzz:Lcom/google/android/gms/internal/zzeik;

    return-object v0
.end method

.method public final zzbza()Lcom/google/android/gms/internal/zzekd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznar:Lcom/google/android/gms/internal/zzein;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzein;->zzbze()Lcom/google/android/gms/internal/zzehx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehx;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    return-object v0
.end method

.method public final zzbzb()Lcom/google/android/gms/internal/zzekd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznar:Lcom/google/android/gms/internal/zzein;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzein;->zzbzc()Lcom/google/android/gms/internal/zzehx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehx;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    return-object v0
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzedh;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedh;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzeia;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznar:Lcom/google/android/gms/internal/zzein;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzein;->zzbzc()Lcom/google/android/gms/internal/zzehx;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehx;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzehz;->zzc(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzehz;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehx;->zzbxz()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehx;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzehz;->zza(Lcom/google/android/gms/internal/zzejw;)Lcom/google/android/gms/internal/zzehz;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehx;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object v0

    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/zzeil;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzedh;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzr(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznar:Lcom/google/android/gms/internal/zzein;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzein;->zzbzf()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeil;->zzmzz:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    :cond_24
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    :goto_28
    return-object v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method
