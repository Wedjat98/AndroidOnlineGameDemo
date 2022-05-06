.class final Lcom/google/android/gms/internal/zzcin;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjgh:Lcom/google/android/gms/internal/zzcim;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcim;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcin;->zzjgh:Lcom/google/android/gms/internal/zzcim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcin;->zzjgh:Lcom/google/android/gms/internal/zzcim;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcim;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcin;->zzjgh:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->start()V

    return-void
.end method
