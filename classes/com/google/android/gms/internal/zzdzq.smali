.class public final Lcom/google/android/gms/internal/zzdzq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzect;


# instance fields
.field private final zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzmlg:Lcom/google/firebase/FirebaseApp;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 3
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdzq;->zzmlg:Lcom/google/firebase/FirebaseApp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdzq;->zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdzq;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzq;->zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzecv;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzdzt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzdzt;-><init>(Lcom/google/android/gms/internal/zzdzq;Lcom/google/android/gms/internal/zzecv;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzq;->zzmlg:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1, v0}, Lcom/google/firebase/FirebaseApp;->zza(Lcom/google/firebase/FirebaseApp$IdTokenListener;)V

    return-void
.end method

.method public final zza(ZLcom/google/android/gms/internal/zzecu;)V
    .registers 6
    .param p2    # Lcom/google/android/gms/internal/zzecu;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzq;->zzmlg:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, p1}, Lcom/google/firebase/FirebaseApp;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzq;->zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/zzdzs;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/zzdzs;-><init>(Lcom/google/android/gms/internal/zzdzq;Lcom/google/android/gms/internal/zzecu;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzq;->zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/zzdzr;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/zzdzr;-><init>(Lcom/google/android/gms/internal/zzdzq;Lcom/google/android/gms/internal/zzecu;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
