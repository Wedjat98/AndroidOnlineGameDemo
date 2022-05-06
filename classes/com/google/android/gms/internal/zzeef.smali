.class final Lcom/google/android/gms/internal/zzeef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzefz;


# instance fields
.field final synthetic zzmti:Lcom/google/android/gms/internal/zzedn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeef;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzega;)V
    .registers 3

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzega;Lcom/google/android/gms/internal/zzebl;Lcom/google/android/gms/internal/zzefw;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeef;->zzmti:Lcom/google/android/gms/internal/zzedn;

    new-instance v1, Lcom/google/android/gms/internal/zzeeg;

    invoke-direct {v1, p0, p1, p4}, Lcom/google/android/gms/internal/zzeeg;-><init>(Lcom/google/android/gms/internal/zzeef;Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzefw;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzedn;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method
