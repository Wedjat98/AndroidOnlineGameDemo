.class final Lcom/google/android/gms/internal/zzcgg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zziwu:J

.field private synthetic zziwv:Lcom/google/android/gms/internal/zzcgd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcgd;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgg;->zziwv:Lcom/google/android/gms/internal/zzcgd;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzcgg;->zziwu:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgg;->zziwv:Lcom/google/android/gms/internal/zzcgd;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcgg;->zziwu:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzcgd;->zza(Lcom/google/android/gms/internal/zzcgd;J)V

    return-void
.end method
