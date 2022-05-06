.class final Lcom/google/android/gms/internal/zzefd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzefe;


# instance fields
.field private synthetic zzmvk:Lcom/google/android/gms/internal/zzedk;

.field private synthetic zzmvl:Lcom/google/android/gms/internal/zzeff;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefb;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeff;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefd;->zzmvk:Lcom/google/android/gms/internal/zzedk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzefd;->zzmvl:Lcom/google/android/gms/internal/zzeff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzefb;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefd;->zzmvk:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefd;->zzmvl:Lcom/google/android/gms/internal/zzeff;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/zzefb;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeff;)V

    return-void
.end method
