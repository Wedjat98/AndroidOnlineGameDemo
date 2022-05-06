.class final Lcom/google/android/gms/internal/zzegc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzegb;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Thread;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/Thread;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 3

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public final zza(Ljava/lang/Thread;Z)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method
