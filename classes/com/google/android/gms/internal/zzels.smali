.class public final Lcom/google/android/gms/internal/zzels;
.super Ljava/lang/Object;


# static fields
.field private static final zznfd:Ljava/util/Random;

.field private static zznfe:J

.field private static final zznff:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzels;->zznfd:Ljava/util/Random;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/zzels;->zznfe:J

    const/16 v0, 0xc

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/zzels;->zznff:[I

    return-void
.end method

.method public static declared-synchronized zzbz(J)Ljava/lang/String;
    .registers 14

    const/16 v10, 0xc

    const/4 v0, 0x0

    const-class v3, Lcom/google/android/gms/internal/zzels;

    monitor-enter v3

    :try_start_6
    sget-wide v4, Lcom/google/android/gms/internal/zzels;->zznfe:J

    cmp-long v1, p0, v4

    if-nez v1, :cond_31

    const/4 v1, 0x1

    move v2, v1

    :goto_e
    sput-wide p0, Lcom/google/android/gms/internal/zzels;->zznfe:J

    const/16 v1, 0x8

    new-array v4, v1, [C

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x7

    :goto_1c
    if-ltz v1, :cond_33

    const-string v6, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    const-wide/16 v8, 0x40

    rem-long v8, p0, v8

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v4, v1

    const-wide/16 v6, 0x40

    div-long/2addr p0, v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    :cond_31
    move v2, v0

    goto :goto_e

    :cond_33
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    if-nez v2, :cond_4a

    move v1, v0

    :goto_39
    if-ge v1, v10, :cond_4d

    sget-object v2, Lcom/google/android/gms/internal/zzels;->zznff:[I

    sget-object v4, Lcom/google/android/gms/internal/zzels;->zznfd:Ljava/util/Random;

    const/16 v6, 0x40

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_4a
    invoke-static {}, Lcom/google/android/gms/internal/zzels;->zzcbh()V

    :cond_4d
    :goto_4d
    if-ge v0, v10, :cond_5f

    const-string v1, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    sget-object v2, Lcom/google/android/gms/internal/zzels;->zznff:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_5f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_62
    .catchall {:try_start_6 .. :try_end_62} :catchall_65

    move-result-object v0

    monitor-exit v3

    return-object v0

    :catchall_65
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private static zzcbh()V
    .registers 3

    const/16 v0, 0xb

    :goto_2
    if-ltz v0, :cond_16

    sget-object v1, Lcom/google/android/gms/internal/zzels;->zznff:[I

    aget v1, v1, v0

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_17

    sget-object v1, Lcom/google/android/gms/internal/zzels;->zznff:[I

    sget-object v2, Lcom/google/android/gms/internal/zzels;->zznff:[I

    aget v2, v2, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_16
    return-void

    :cond_17
    sget-object v1, Lcom/google/android/gms/internal/zzels;->zznff:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method
