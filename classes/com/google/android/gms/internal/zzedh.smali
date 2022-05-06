.class public abstract Lcom/google/android/gms/internal/zzedh;
.super Ljava/lang/Object;


# instance fields
.field private zzmsl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzmsm:Lcom/google/android/gms/internal/zzedi;

.field private zzmsn:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzedh;->zzmsl:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzedh;->zzmsn:Z

    return-void
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzedh;
.end method

.method public abstract zza(Lcom/google/android/gms/internal/zzehz;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeia;
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedi;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzedh;->zzmsm:Lcom/google/android/gms/internal/zzedi;

    return-void
.end method

.method public abstract zza(Lcom/google/android/gms/internal/zzeia;)V
.end method

.method public abstract zza(Lcom/google/firebase/database/DatabaseError;)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/zzeic;)Z
.end method

.method public abstract zzbvp()Lcom/google/android/gms/internal/zzeik;
.end method

.method public final zzbwc()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedh;->zzmsl:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedh;->zzmsm:Lcom/google/android/gms/internal/zzedi;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedh;->zzmsm:Lcom/google/android/gms/internal/zzedi;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzedi;->zzd(Lcom/google/android/gms/internal/zzedh;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzedh;->zzmsm:Lcom/google/android/gms/internal/zzedi;

    :cond_16
    return-void
.end method

.method public final zzbwd()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedh;->zzmsl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public abstract zzc(Lcom/google/android/gms/internal/zzedh;)Z
.end method

.method public final zzco(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzedh;->zzmsn:Z

    return-void
.end method
