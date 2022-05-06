.class final Lcom/google/android/gms/internal/zzeln;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private synthetic zznfa:Lcom/google/android/gms/internal/zzelm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzelm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeln;->zznfa:Lcom/google/android/gms/internal/zzelm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeln;->zznfa:Lcom/google/android/gms/internal/zzelm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzelm;->zznez:Lcom/google/android/gms/internal/zzelk;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzelk;->zzi(Ljava/lang/Throwable;)V

    return-void
.end method
