.class public final Lcom/google/android/gms/internal/zzecr;
.super Ljava/lang/Object;


# instance fields
.field private final zzmlr:Lcom/google/android/gms/internal/zzejc;

.field private zzmra:J

.field private zzmrc:D

.field private zzmrd:D

.field private final zzmri:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzmrj:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzejd;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecr;->zzmra:J

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecr;->zzmrc:D

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecr;->zzmrj:J

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecr;->zzmrd:D

    iput-object p1, p0, Lcom/google/android/gms/internal/zzecr;->zzmri:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/zzejc;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzejc;-><init>(Lcom/google/android/gms/internal/zzejd;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzecr;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    return-void
.end method


# virtual methods
.method public final zzbs(J)Lcom/google/android/gms/internal/zzecr;
    .registers 5

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecr;->zzmra:J

    return-object p0
.end method

.method public final zzbt(J)Lcom/google/android/gms/internal/zzecr;
    .registers 5

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecr;->zzmrj:J

    return-object p0
.end method

.method public final zzbvk()Lcom/google/android/gms/internal/zzecp;
    .registers 14

    new-instance v1, Lcom/google/android/gms/internal/zzecp;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzecr;->zzmri:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzecr;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzecr;->zzmra:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzecr;->zzmrj:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzecr;->zzmrd:D

    iget-wide v10, p0, Lcom/google/android/gms/internal/zzecr;->zzmrc:D

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/zzecp;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzejc;JJDDLcom/google/android/gms/internal/zzecq;)V

    return-object v1
.end method

.method public final zzi(D)Lcom/google/android/gms/internal/zzecr;
    .registers 5

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecr;->zzmrd:D

    return-object p0
.end method

.method public final zzj(D)Lcom/google/android/gms/internal/zzecr;
    .registers 5

    const-wide v0, 0x3fe6666666666666L    # 0.7

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecr;->zzmrc:D

    return-object p0
.end method
