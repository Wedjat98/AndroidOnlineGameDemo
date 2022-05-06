.class final Lcom/google/android/gms/internal/zzecq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzews:Ljava/lang/Runnable;

.field private synthetic zzmrh:Lcom/google/android/gms/internal/zzecp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzecp;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzecq;->zzmrh:Lcom/google/android/gms/internal/zzecp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzecq;->zzews:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecq;->zzmrh:Lcom/google/android/gms/internal/zzecp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzecp;->zza(Lcom/google/android/gms/internal/zzecp;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecq;->zzews:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
