.class public final Lcom/google/android/gms/internal/zzcib;
.super Ljava/lang/Object;


# instance fields
.field private final zzdyr:J

.field private synthetic zzjdm:Lcom/google/android/gms/internal/zzchx;

.field private zzjdo:Ljava/lang/String;

.field private final zzjdp:Ljava/lang/String;

.field private final zzjdq:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzchx;Ljava/lang/String;J)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcib;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_39

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdo:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":count"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdp:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdq:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcib;->zzdyr:J

    return-void

    :cond_39
    const/4 v0, 0x0

    goto :goto_f
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzchx;Ljava/lang/String;JLcom/google/android/gms/internal/zzchy;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzcib;-><init>(Lcom/google/android/gms/internal/zzchx;Ljava/lang/String;J)V

    return-void
.end method

.method private final zzaac()V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcib;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzchx;->zza(Lcom/google/android/gms/internal/zzchx;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcib;->zzjdp:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcib;->zzjdq:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcib;->zzjdo:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final zzaae()J
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchx;->zza(Lcom/google/android/gms/internal/zzchx;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcib;->zzjdo:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final zzaad()Landroid/util/Pair;
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcib;->zzaae()J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-nez v5, :cond_21

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcib;->zzaac()V

    move-wide v0, v2

    :goto_19
    iget-wide v6, p0, Lcom/google/android/gms/internal/zzcib;->zzdyr:J

    cmp-long v5, v0, v6

    if-gez v5, :cond_31

    move-object v0, v4

    :goto_20
    return-object v0

    :cond_21
    iget-object v5, p0, Lcom/google/android/gms/internal/zzcib;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    goto :goto_19

    :cond_31
    iget-wide v6, p0, Lcom/google/android/gms/internal/zzcib;->zzdyr:J

    const/4 v5, 0x1

    shl-long/2addr v6, v5

    cmp-long v0, v0, v6

    if-lez v0, :cond_3e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcib;->zzaac()V

    move-object v0, v4

    goto :goto_20

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchx;->zza(Lcom/google/android/gms/internal/zzchx;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcib;->zzjdq:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchx;->zza(Lcom/google/android/gms/internal/zzchx;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcib;->zzjdp:Ljava/lang/String;

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcib;->zzaac()V

    if-eqz v1, :cond_5f

    cmp-long v0, v4, v2

    if-gtz v0, :cond_62

    :cond_5f
    sget-object v0, Lcom/google/android/gms/internal/zzchx;->zzjcp:Landroid/util/Pair;

    goto :goto_20

    :cond_62
    new-instance v0, Landroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_20
.end method

.method public final zzf(Ljava/lang/String;J)V
    .registers 14
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide v8, 0x7fffffffffffffffL

    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcib;->zzaae()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcib;->zzaac()V

    :cond_19
    if-nez p1, :cond_1d

    const-string p1, ""

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchx;->zza(Lcom/google/android/gms/internal/zzchx;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcib;->zzjdp:Ljava/lang/String;

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gtz v0, :cond_45

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchx;->zza(Lcom/google/android/gms/internal/zzchx;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcib;->zzjdq:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcib;->zzjdp:Ljava/lang/String;

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_44
    return-void

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclq;->zzbaz()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    and-long/2addr v0, v8

    add-long v4, v2, v6

    div-long v4, v8, v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_78

    const/4 v0, 0x1

    :goto_5d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcib;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzchx;->zza(Lcom/google/android/gms/internal/zzchx;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdq:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdp:Ljava/lang/String;

    add-long/2addr v2, v6

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_44

    :cond_78
    const/4 v0, 0x0

    goto :goto_5d
.end method
