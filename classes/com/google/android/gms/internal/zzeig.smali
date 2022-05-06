.class final Lcom/google/android/gms/internal/zzeig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zznac:Ljava/util/ArrayList;

.field private synthetic zznad:Lcom/google/android/gms/internal/zzeif;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeif;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeig;->zznad:Lcom/google/android/gms/internal/zzeif;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeig;->zznac:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeig;->zznac:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v3

    :goto_a
    if-ge v2, v5, :cond_4b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v2, 0x1

    check-cast v1, Lcom/google/android/gms/internal/zzeib;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeig;->zznad:Lcom/google/android/gms/internal/zzeif;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeif;->zza(Lcom/google/android/gms/internal/zzeif;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeig;->zznad:Lcom/google/android/gms/internal/zzeif;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeif;->zza(Lcom/google/android/gms/internal/zzeif;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v6

    const-string v7, "Raising "

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzeib;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_45

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3a
    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v8, v7}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_40
    invoke-interface {v1}, Lcom/google/android/gms/internal/zzeib;->zzbyc()V

    move v2, v4

    goto :goto_a

    :cond_45
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3a

    :cond_4b
    return-void
.end method
