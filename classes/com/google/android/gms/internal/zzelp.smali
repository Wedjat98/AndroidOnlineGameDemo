.class public final Lcom/google/android/gms/internal/zzelp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeli;


# instance fields
.field private final zznfb:Lcom/google/android/gms/internal/zzeli;

.field private zznfc:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeli;J)V
    .registers 6

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzelp;->zznfc:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzelp;->zznfb:Lcom/google/android/gms/internal/zzeli;

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzelp;->zznfc:J

    return-void
.end method


# virtual methods
.method public final millis()J
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelp;->zznfb:Lcom/google/android/gms/internal/zzeli;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeli;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzelp;->zznfc:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzby(J)V
    .registers 4

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzelp;->zznfc:J

    return-void
.end method
