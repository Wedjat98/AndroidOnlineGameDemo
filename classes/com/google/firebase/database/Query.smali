.class public Lcom/google/firebase/database/Query;
.super Ljava/lang/Object;


# instance fields
.field protected final zzmkl:Lcom/google/android/gms/internal/zzedn;

.field protected final zzmks:Lcom/google/android/gms/internal/zzedk;

.field private zzmkw:Lcom/google/android/gms/internal/zzeih;

.field private final zzmkx:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iput-object p2, p0, Lcom/google/firebase/database/Query;->zzmks:Lcom/google/android/gms/internal/zzedk;

    sget-object v0, Lcom/google/android/gms/internal/zzeih;->zznae:Lcom/google/android/gms/internal/zzeih;

    iput-object v0, p0, Lcom/google/firebase/database/Query;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/Query;->zzmkx:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeih;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iput-object p2, p0, Lcom/google/firebase/database/Query;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iput-object p3, p0, Lcom/google/firebase/database/Query;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    iput-boolean p4, p0, Lcom/google/firebase/database/Query;->zzmkx:Z

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzeih;->zzbyj()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzeih;->zzbym()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzeih;->zzbyp()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzeih;->zzbyq()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_23
    const/4 v0, 0x1

    :goto_24
    const-string v1, "Validation of queries failed."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzelt;->zzb(ZLjava/lang/String;)V

    return-void

    :cond_2a
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private final zza(Lcom/google/android/gms/internal/zzekd;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 8

    invoke-static {p2}, Lcom/google/android/gms/internal/zzelv;->zzqj(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use simple values for startAt()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeih;->zzbyj()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call startAt() or equalTo() multiple times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    if-eqz p2, :cond_45

    invoke-static {p2}, Lcom/google/android/gms/internal/zzejg;->zzpz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    :goto_2d
    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzeih;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzeih;)V

    invoke-static {v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzeih;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iget-boolean v4, p0, Lcom/google/firebase/database/Query;->zzmkx:Z

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeih;Z)V

    return-object v1

    :cond_45
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private final zza(Lcom/google/android/gms/internal/zzedh;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/zzegk;->zzbxf()Lcom/google/android/gms/internal/zzegk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegk;->zzj(Lcom/google/android/gms/internal/zzedh;)V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    new-instance v1, Lcom/google/firebase/database/zzq;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/zzq;-><init>(Lcom/google/firebase/database/Query;Lcom/google/android/gms/internal/zzedh;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzedn;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzeih;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyr()Lcom/google/android/gms/internal/zzejv;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzejx;->zzcal()Lcom/google/android/gms/internal/zzejx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "You must use startAt(String value), endAt(String value) or equalTo(String value) in combination with orderByKey(). Other type of values or using the version with 2 parameters is not supported"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyj()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyk()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyl()Lcom/google/android/gms/internal/zzejg;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzn()Lcom/google/android/gms/internal/zzejg;

    move-result-object v3

    if-ne v2, v3, :cond_28

    instance-of v1, v1, Lcom/google/android/gms/internal/zzekl;

    if-nez v1, :cond_2e

    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbym()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyn()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyo()Lcom/google/android/gms/internal/zzejg;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzo()Lcom/google/android/gms/internal/zzejg;

    move-result-object v3

    if-ne v2, v3, :cond_46

    instance-of v1, v1, Lcom/google/android/gms/internal/zzekl;

    if-nez v1, :cond_82

    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyr()Lcom/google/android/gms/internal/zzejv;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzeki;->zzcap()Lcom/google/android/gms/internal/zzeki;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyj()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyk()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzekj;->zzl(Lcom/google/android/gms/internal/zzekd;)Z

    move-result v0

    if-eqz v0, :cond_7a

    :cond_6a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbym()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyn()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzekj;->zzl(Lcom/google/android/gms/internal/zzekd;)Z

    move-result v0

    if-nez v0, :cond_82

    :cond_7a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "When using orderByPriority(), values provided to startAt(), endAt(), or equalTo() must be valid priorities."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzekd;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 8

    invoke-static {p2}, Lcom/google/android/gms/internal/zzelv;->zzqj(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use simple values for endAt()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-eqz p2, :cond_2d

    invoke-static {p2}, Lcom/google/android/gms/internal/zzejg;->zzpz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    :goto_1d
    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeih;->zzbym()Z

    move-result v1

    if-eqz v1, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call endAt() or equalTo() multiple times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_1d

    :cond_2f
    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzeih;->zzb(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzeih;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzeih;)V

    invoke-static {v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzeih;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iget-boolean v4, p0, Lcom/google/firebase/database/Query;->zzmkx:Z

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeih;Z)V

    return-object v1
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzedh;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/zzegk;->zzbxf()Lcom/google/android/gms/internal/zzegk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegk;->zzi(Lcom/google/android/gms/internal/zzedh;)V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    new-instance v1, Lcom/google/firebase/database/zzr;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/zzr;-><init>(Lcom/google/firebase/database/Query;Lcom/google/android/gms/internal/zzedh;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzedn;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/zzeih;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyj()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbym()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyp()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyq()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t combine startAt(), endAt() and limit(). Use limitToFirst() or limitToLast() instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return-void
.end method

.method private final zzbsw()V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeih;->zzbyj()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call equalTo() and startAt() combined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeih;->zzbym()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call equalTo() and endAt() combined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return-void
.end method

.method private final zzbsx()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/firebase/database/Query;->zzmkx:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t combine multiple orderBy calls!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method


# virtual methods
.method public addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/zzecw;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzbsz()Lcom/google/android/gms/internal/zzeik;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzecw;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/zzeik;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzedh;)V

    return-object p1
.end method

.method public addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/zzegf;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    new-instance v2, Lcom/google/firebase/database/zzp;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/database/zzp;-><init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/ValueEventListener;)V

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzbsz()Lcom/google/android/gms/internal/zzeik;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzegf;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzeik;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzedh;)V

    return-void
.end method

.method public addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/zzegf;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzbsz()Lcom/google/android/gms/internal/zzeik;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzegf;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzeik;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzedh;)V

    return-object p1
.end method

.method public endAt(D)Lcom/google/firebase/database/Query;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/Query;->endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/zzejt;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzejt;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzekd;)V

    invoke-direct {p0, v0, p3}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzekd;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public endAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 5

    if-eqz p1, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/zzekl;

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzekl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzekd;)V

    :goto_b
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzekd;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v0

    goto :goto_b
.end method

.method public endAt(Z)Lcom/google/firebase/database/Query;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/zzejf;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzejf;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/internal/zzekd;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzekd;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(D)Lcom/google/firebase/database/Query;
    .registers 4

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbsw()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(D)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(D)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 5

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbsw()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/Query;->startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/database/Query;->endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 3

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbsw()V

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 4

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbsw()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Z)Lcom/google/firebase/database/Query;
    .registers 3

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbsw()V

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/Query;->startAt(Z)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/Query;->endAt(Z)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 4

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbsw()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public getRef()Lcom/google/firebase/database/DatabaseReference;
    .registers 4

    new-instance v0, Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;)V

    return-object v0
.end method

.method public keepSynced(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzq()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzejg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const-string v1, "Can\'t call keepSynced() on .info paths."

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    new-instance v1, Lcom/google/firebase/database/zzs;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/zzs;-><init>(Lcom/google/firebase/database/Query;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzedn;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method public limitToFirst(I)Lcom/google/firebase/database/Query;
    .registers 7

    if-gtz p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Limit must be a positive integer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeih;->zzbyp()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call limitToLast on query with previously set limit!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzeih;->zzgr(I)Lcom/google/android/gms/internal/zzeih;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/firebase/database/Query;->zzmkx:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeih;Z)V

    return-object v0
.end method

.method public limitToLast(I)Lcom/google/firebase/database/Query;
    .registers 7

    if-gtz p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Limit must be a positive integer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeih;->zzbyp()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call limitToLast on query with previously set limit!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzeih;->zzgs(I)Lcom/google/android/gms/internal/zzeih;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/firebase/database/Query;->zzmkx:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeih;Z)V

    return-object v0
.end method

.method public orderByChild(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 7

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "$key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, ".key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Can\'t use \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as path, please use orderByKey() instead!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    const-string v0, "$priority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, ".priority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Can\'t use \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as path, please use orderByPriority() instead!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    const-string v0, "$value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    const-string v0, ".value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    :cond_8c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Can\'t use \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as path, please use orderByValue() instead!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b5
    invoke-static {p1}, Lcom/google/android/gms/internal/zzelv;->zzqh(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbsx()V

    new-instance v0, Lcom/google/android/gms/internal/zzedk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->size()I

    move-result v1

    if-nez v1, :cond_ce

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t use empty path, use orderByValue() instead!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ce
    new-instance v1, Lcom/google/android/gms/internal/zzekh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzekh;-><init>(Lcom/google/android/gms/internal/zzedk;)V

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iget-object v4, p0, Lcom/google/firebase/database/Query;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzeih;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeih;Z)V

    return-object v0
.end method

.method public orderByKey()Lcom/google/firebase/database/Query;
    .registers 6

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbsx()V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-static {}, Lcom/google/android/gms/internal/zzejx;->zzcal()Lcom/google/android/gms/internal/zzejx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzeih;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzeih;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzmks:Lcom/google/android/gms/internal/zzedk;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeih;Z)V

    return-object v1
.end method

.method public orderByPriority()Lcom/google/firebase/database/Query;
    .registers 6

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbsx()V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-static {}, Lcom/google/android/gms/internal/zzeki;->zzcap()Lcom/google/android/gms/internal/zzeki;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzeih;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzeih;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzmks:Lcom/google/android/gms/internal/zzedk;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeih;Z)V

    return-object v1
.end method

.method public orderByValue()Lcom/google/firebase/database/Query;
    .registers 6

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbsx()V

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-static {}, Lcom/google/android/gms/internal/zzekn;->zzcaq()Lcom/google/android/gms/internal/zzekn;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzeih;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeih;Z)V

    return-object v0
.end method

.method public removeEventListener(Lcom/google/firebase/database/ChildEventListener;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/zzecw;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzbsz()Lcom/google/android/gms/internal/zzeik;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzecw;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/zzeik;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzedh;)V

    return-void
.end method

.method public removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/zzegf;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzbsz()Lcom/google/android/gms/internal/zzeik;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzegf;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzeik;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzedh;)V

    return-void
.end method

.method public startAt(D)Lcom/google/firebase/database/Query;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/Query;->startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/zzejt;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzejt;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzekd;)V

    invoke-direct {p0, v0, p3}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzekd;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 5

    if-eqz p1, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/zzekl;

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzekl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzekd;)V

    :goto_b
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzekd;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v0

    goto :goto_b
.end method

.method public startAt(Z)Lcom/google/firebase/database/Query;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/zzejf;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzejf;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/internal/zzekd;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzekd;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public final zzbsy()Lcom/google/android/gms/internal/zzedk;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmks:Lcom/google/android/gms/internal/zzedk;

    return-object v0
.end method

.method public final zzbsz()Lcom/google/android/gms/internal/zzeik;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzeik;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzeik;-><init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeih;)V

    return-object v0
.end method
