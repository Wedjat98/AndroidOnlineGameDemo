.class public Lcom/google/android/gms/internal/zzcim;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzcim$zza;
    }
.end annotation


# static fields
.field private static volatile zzjev:Lcom/google/android/gms/internal/zzcim;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzata:Lcom/google/android/gms/common/util/zzd;

.field private zzdtb:Z

.field private final zzjew:Lcom/google/android/gms/internal/zzcgn;

.field private final zzjex:Lcom/google/android/gms/internal/zzchx;

.field private final zzjey:Lcom/google/android/gms/internal/zzchm;

.field private final zzjez:Lcom/google/android/gms/internal/zzcih;

.field private final zzjfa:Lcom/google/android/gms/internal/zzclf;

.field private final zzjfb:Lcom/google/android/gms/internal/zzcig;

.field private final zzjfc:Lcom/google/android/gms/measurement/AppMeasurement;

.field private final zzjfd:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private final zzjfe:Lcom/google/android/gms/internal/zzclq;

.field private final zzjff:Lcom/google/android/gms/internal/zzchk;

.field private final zzjfg:Lcom/google/android/gms/internal/zzcgo;

.field private final zzjfh:Lcom/google/android/gms/internal/zzchi;

.field private final zzjfi:Lcom/google/android/gms/internal/zzchq;

.field private final zzjfj:Lcom/google/android/gms/internal/zzckc;

.field private final zzjfk:Lcom/google/android/gms/internal/zzckg;

.field private final zzjfl:Lcom/google/android/gms/internal/zzcgu;

.field private final zzjfm:Lcom/google/android/gms/internal/zzcjn;

.field private final zzjfn:Lcom/google/android/gms/internal/zzchh;

.field private final zzjfo:Lcom/google/android/gms/internal/zzchv;

.field private final zzjfp:Lcom/google/android/gms/internal/zzcll;

.field private final zzjfq:Lcom/google/android/gms/internal/zzcgk;

.field private final zzjfr:Lcom/google/android/gms/internal/zzcgd;

.field private zzjfs:Z

.field private zzjft:Ljava/lang/Boolean;

.field private zzjfu:J

.field private zzjfv:Ljava/nio/channels/FileLock;

.field private zzjfw:Ljava/nio/channels/FileChannel;

.field private zzjfx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzjfy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzjfz:I

.field private zzjga:I

.field private zzjgb:J

.field private zzjgc:J

.field private zzjgd:Z

.field private zzjge:Z

.field private zzjgf:Z

.field private final zzjgg:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzcjm;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzdtb:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcjm;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjgb:J

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzamg()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjgg:J

    new-instance v0, Lcom/google/android/gms/internal/zzcgn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcgn;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    new-instance v0, Lcom/google/android/gms/internal/zzchx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzchx;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjex:Lcom/google/android/gms/internal/zzchx;

    new-instance v0, Lcom/google/android/gms/internal/zzchm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzchm;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjey:Lcom/google/android/gms/internal/zzchm;

    new-instance v0, Lcom/google/android/gms/internal/zzclq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzclq;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfe:Lcom/google/android/gms/internal/zzclq;

    new-instance v0, Lcom/google/android/gms/internal/zzchk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzchk;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjff:Lcom/google/android/gms/internal/zzchk;

    new-instance v0, Lcom/google/android/gms/internal/zzcgu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcgu;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfl:Lcom/google/android/gms/internal/zzcgu;

    new-instance v0, Lcom/google/android/gms/internal/zzchh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzchh;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfn:Lcom/google/android/gms/internal/zzchh;

    new-instance v0, Lcom/google/android/gms/internal/zzcgo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcgo;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfg:Lcom/google/android/gms/internal/zzcgo;

    new-instance v0, Lcom/google/android/gms/internal/zzchi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzchi;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfh:Lcom/google/android/gms/internal/zzchi;

    new-instance v0, Lcom/google/android/gms/internal/zzcgk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcgk;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfq:Lcom/google/android/gms/internal/zzcgk;

    new-instance v0, Lcom/google/android/gms/internal/zzcgd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcgd;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfr:Lcom/google/android/gms/internal/zzcgd;

    new-instance v0, Lcom/google/android/gms/internal/zzchq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzchq;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfi:Lcom/google/android/gms/internal/zzchq;

    new-instance v0, Lcom/google/android/gms/internal/zzckc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzckc;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfj:Lcom/google/android/gms/internal/zzckc;

    new-instance v0, Lcom/google/android/gms/internal/zzckg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzckg;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfk:Lcom/google/android/gms/internal/zzckg;

    new-instance v0, Lcom/google/android/gms/internal/zzcjn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcjn;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfm:Lcom/google/android/gms/internal/zzcjn;

    new-instance v0, Lcom/google/android/gms/internal/zzcll;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcll;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfp:Lcom/google/android/gms/internal/zzcll;

    new-instance v0, Lcom/google/android/gms/internal/zzchv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzchv;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfo:Lcom/google/android/gms/internal/zzchv;

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfc:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v0, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfd:Lcom/google/firebase/analytics/FirebaseAnalytics;

    new-instance v0, Lcom/google/android/gms/internal/zzclf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzclf;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfa:Lcom/google/android/gms/internal/zzclf;

    new-instance v0, Lcom/google/android/gms/internal/zzcig;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcig;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfb:Lcom/google/android/gms/internal/zzcig;

    new-instance v0, Lcom/google/android/gms/internal/zzcih;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcih;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjez:Lcom/google/android/gms/internal/zzcih;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_13e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_133

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcjn;->zzjgx:Lcom/google/android/gms/internal/zzckb;

    if-nez v2, :cond_11c

    new-instance v2, Lcom/google/android/gms/internal/zzckb;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/zzckb;-><init>(Lcom/google/android/gms/internal/zzcjn;Lcom/google/android/gms/internal/zzcjo;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/zzcjn;->zzjgx:Lcom/google/android/gms/internal/zzckb;

    :cond_11c
    iget-object v2, v1, Lcom/google/android/gms/internal/zzcjn;->zzjgx:Lcom/google/android/gms/internal/zzckb;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcjn;->zzjgx:Lcom/google/android/gms/internal/zzckb;

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_133
    :goto_133
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjez:Lcom/google/android/gms/internal/zzcih;

    new-instance v1, Lcom/google/android/gms/internal/zzcin;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcin;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    return-void

    :cond_13e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    goto :goto_133
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1f

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Bad chanel to read from"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    :try_start_25
    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-eq v2, v4, :cond_52

    const/4 v1, -0x1

    if-eq v2, v1, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v3, "Unexpected data length. Bytes read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_42} :catch_43

    goto :goto_1e

    :catch_43
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Failed to read from channel"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1e

    :cond_52
    :try_start_52
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_58} :catch_43

    move-result v0

    goto :goto_1e
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzcgi;
    .registers 30

    const-string v9, "Unknown"

    const-string v6, "Unknown"

    const/high16 v2, -0x80000000

    const-string v3, "Unknown"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v4, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "PackageManager is null, can not log app install information"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_1c
    return-object v3

    :cond_1d
    :try_start_1d
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_22} :catch_74

    move-result-object v9

    :goto_23
    if-nez v9, :cond_87

    const-string v9, "manual_install"

    :cond_27
    :goto_27
    :try_start_27
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbhf;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbhe;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/internal/zzbhe;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_4c

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbhf;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbhe;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzbhe;->zzgt(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_aa

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_47} :catch_92

    move-result-object v2

    :goto_48
    :try_start_48
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v2, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_48 .. :try_end_4c} :catch_a8

    :cond_4c
    new-instance v3, Lcom/google/android/gms/internal/zzcgi;

    int-to-long v7, v2

    const-wide/16 v10, 0x2e86

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzclq;->zzaf(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v12

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-string v17, ""

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v15, p4

    move/from16 v23, p5

    invoke-direct/range {v3 .. v23}, Lcom/google/android/gms/internal/zzcgi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    goto :goto_1c

    :catch_74
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v5, "Error retrieving installer package name. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_23

    :cond_87
    const-string v4, "com.android.vending"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const-string v9, ""

    goto :goto_27

    :catch_92
    move-exception v2

    move-object v2, v3

    :goto_94
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "Error retrieving newly installed package info. appId, appName"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto/16 :goto_1c

    :catch_a8
    move-exception v3

    goto :goto_94

    :cond_aa
    move-object v2, v3

    goto :goto_48
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcim;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzazw()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcjk;)V
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcjl;)V
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    return-void
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_20

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v2, "Bad chanel to read from"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    move v0, v1

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v4, 0x0

    :try_start_2d
    invoke-virtual {p2, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_56} :catch_57

    goto :goto_1f

    :catch_57
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1f
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcmb;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    if-nez p2, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    array-length v3, v2

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_9

    aget-object v4, v2, v1

    iget-object v5, v4, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_26

    iget-object v1, v4, Lcom/google/android/gms/internal/zzcmc;->zzjll:Ljava/lang/Long;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    :cond_26
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_32

    iget-object v1, v4, Lcom/google/android/gms/internal/zzcmc;->zzgcc:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    :cond_32
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_9

    iget-object v1, v4, Lcom/google/android/gms/internal/zzcmc;->zzjjl:Ljava/lang/Double;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_3e
    const/4 v0, 0x1

    goto :goto_9

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcha;)Z
    .registers 16

    const/4 v12, 0x0

    const/4 v9, 0x1

    const-wide v6, 0x412e848000000000L    # 1000000.0

    const/4 v8, 0x0

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    const-string v1, "currency"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgx;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ecommerce_purchase"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_113

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgx;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v0, v6

    const-wide/16 v4, 0x0

    cmpl-double v3, v0, v4

    if-nez v3, :cond_3b

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgx;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    mul-double/2addr v0, v6

    :cond_3b
    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v3, v0, v4

    if-gtz v3, :cond_fc

    const-wide/high16 v4, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v3, v0, v4

    if-ltz v3, :cond_fc

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    move-wide v6, v0

    :goto_4c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_fa

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[A-Z]{3}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fa

    const-string v1, "_ltv_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_122

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/internal/zzcgo;->zzag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzclp;

    move-result-object v0

    if-eqz v0, :cond_84

    iget-object v1, v0, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Long;

    if-nez v1, :cond_13d

    :cond_84
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    sget-object v2, Lcom/google/android/gms/internal/zzchc;->zzjbh:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzcgn;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzchd;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    :try_start_9b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v10, 0x1

    aput-object p1, v5, v10

    const/4 v10, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9b .. :try_end_b4} :catch_129

    :goto_b4
    new-instance v0, Lcom/google/android/gms/internal/zzclp;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzclp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_c6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzclp;)Z

    move-result v1

    if-nez v1, :cond_fa

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    const/16 v2, 0x9

    move-object v1, p1

    move-object v3, v12

    move-object v4, v12

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_fa
    move v0, v9

    :goto_fb
    return v0

    :cond_fc
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Data lost. Currency value is too big. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v8

    goto :goto_fb

    :cond_113
    iget-object v0, p2, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgx;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v6, v0

    goto/16 :goto_4c

    :cond_122
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_74

    :catch_129
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Error pruning currencies. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b4

    :cond_13d
    iget-object v0, v0, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v0, Lcom/google/android/gms/internal/zzclp;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzclp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto/16 :goto_c6
.end method

.method private final zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcmg;[Lcom/google/android/gms/internal/zzcmb;)[Lcom/google/android/gms/internal/zzcma;
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawl()Lcom/google/android/gms/internal/zzcgk;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/zzcgk;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcmb;[Lcom/google/android/gms/internal/zzcmg;)[Lcom/google/android/gms/internal/zzcma;

    move-result-object v0

    return-object v0
.end method

.method static zzawi()V
    .registers 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzazw()V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfe:Lcom/google/android/gms/internal/zzclq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->zzazw()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjex:Lcom/google/android/gms/internal/zzchx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->zzazw()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfn:Lcom/google/android/gms/internal/zzchh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->zzazw()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazh()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "App measurement is starting up, version"

    const-wide/16 v2, 0x2e86

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazh()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfn:Lcom/google/android/gms/internal/zzchh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchh;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzclq;->zzkj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazh()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    :goto_50
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Debug-level message logging enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfz:I

    iget v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjga:I

    if-eq v0, v1, :cond_7f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Not all components initialized"

    iget v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjfz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzcim;->zzjga:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzdtb:Z

    return-void

    :cond_83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazh()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9c

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    :cond_9c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_50
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzcgh;)V
    .registers 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcc

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcim;->zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzchc;->zzjah:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    sget-object v0, Lcom/google/android/gms/internal/zzchc;->zzjai:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "config/app/"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_fa

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_54
    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "app_instance_id"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gmp_version"

    const-string v2, "11910"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_75
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcig;->zzjs(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcly;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcig;->zzjt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_101

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_101

    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string v0, "If-Modified-Since"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    :goto_b6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjgd:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzbab()Lcom/google/android/gms/internal/zzchq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/zzciq;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/zzciq;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-static {v8}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v9

    new-instance v0, Lcom/google/android/gms/internal/zzchu;

    const/4 v4, 0x0

    move-object v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzchu;-><init>(Lcom/google/android/gms/internal/zzchq;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/zzchs;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/zzcih;->zzh(Ljava/lang/Runnable;)V
    :try_end_e0
    .catch Ljava/net/MalformedURLException; {:try_start_75 .. :try_end_e0} :catch_e2

    goto/16 :goto_1e

    :catch_e2
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v7}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_fa
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_54

    :cond_101
    move-object v5, v3

    goto :goto_b6
.end method

.method private final zzbac()Lcom/google/android/gms/internal/zzchv;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfo:Lcom/google/android/gms/internal/zzchv;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfo:Lcom/google/android/gms/internal/zzchv;

    return-object v0
.end method

.method private final zzbad()Lcom/google/android/gms/internal/zzcll;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfp:Lcom/google/android/gms/internal/zzcll;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfp:Lcom/google/android/gms/internal/zzcll;

    return-object v0
.end method

.method private final zzbae()Z
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    const-string v0, "google_app_measurement.db"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_14
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfw:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfw:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfv:Ljava/nio/channels/FileLock;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfv:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_3b
    return v0

    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_49} :catch_4b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_49} :catch_5a

    :goto_49
    const/4 v0, 0x0

    goto :goto_3b

    :catch_4b
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_49

    :catch_5a
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_49
.end method

.method private final zzbag()J
    .registers 11

    const-wide/16 v8, 0x3c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, v4, Lcom/google/android/gms/internal/zzchx;->zzjcv:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_36

    const-wide/16 v0, 0x1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzclq;->zzbaz()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    iget-object v4, v4, Lcom/google/android/gms/internal/zzchx;->zzjcv:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    :cond_36
    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long/2addr v0, v8

    div-long/2addr v0, v8

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzbai()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->zzayk()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->zzayf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private final zzbaj()V
    .registers 19
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbam()Z

    move-result v2

    if-nez v2, :cond_11

    :goto_10
    return-void

    :cond_11
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzcim;->zzjgc:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/internal/zzcim;->zzjgc:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_57

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v5, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbac()Lcom/google/android/gms/internal/zzchv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchv;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbad()Lcom/google/android/gms/internal/zzcll;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcll;->cancel()V

    goto :goto_10

    :cond_57
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzcim;->zzjgc:J

    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzazv()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbai()Z

    move-result v2

    if-nez v2, :cond_85

    :cond_69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Nothing to upload or uploading impossible"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbac()Lcom/google/android/gms/internal/zzchv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchv;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbad()Lcom/google/android/gms/internal/zzcll;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcll;->cancel()V

    goto :goto_10

    :cond_85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zzchc;->zzjbd:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->zzayl()Z

    move-result v2

    if-nez v2, :cond_b3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->zzayg()Z

    move-result v2

    if-eqz v2, :cond_132

    :cond_b3
    const/4 v2, 0x1

    move v6, v2

    :goto_b5
    if-eqz v6, :cond_148

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgn;->zzayd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_135

    const-string v3, ".none."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_135

    const-wide/16 v10, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zzchc;->zzjay:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_df
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/zzchx;->zzjcr:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/zzchx;->zzjcs:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcgo;->zzayi()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcgo;->zzayj()J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v7, v14, v16

    if-nez v7, :cond_15b

    const-wide/16 v4, 0x0

    :cond_10f
    :goto_10f
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_1d7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Next upload time is 0"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbac()Lcom/google/android/gms/internal/zzchv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchv;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbad()Lcom/google/android/gms/internal/zzcll;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcll;->cancel()V

    goto/16 :goto_10

    :cond_132
    const/4 v2, 0x0

    move v6, v2

    goto :goto_b5

    :cond_135
    const-wide/16 v10, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zzchc;->zzjax:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_df

    :cond_148
    const-wide/16 v10, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zzchc;->zzjaw:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_df

    :cond_15b
    sub-long/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    sub-long v14, v4, v14

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long v10, v4, v10

    sub-long/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sub-long v12, v4, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    add-long v4, v14, v8

    if-eqz v6, :cond_183

    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-lez v6, :cond_183

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    :cond_183
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v6

    invoke-virtual {v6, v10, v11, v2, v3}, Lcom/google/android/gms/internal/zzclq;->zzf(JJ)Z

    move-result v6

    if-nez v6, :cond_18f

    add-long v4, v10, v2

    :cond_18f
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-eqz v2, :cond_10f

    cmp-long v2, v12, v14

    if-ltz v2, :cond_10f

    const/4 v2, 0x0

    move v3, v2

    :goto_19b
    const/16 v6, 0x14

    const/4 v7, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zzchc;->zzjbf:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v3, v2, :cond_1d3

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v3

    const-wide/16 v8, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zzchc;->zzjbe:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    cmp-long v2, v4, v12

    if-gtz v2, :cond_10f

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_19b

    :cond_1d3
    const-wide/16 v4, 0x0

    goto/16 :goto_10f

    :cond_1d7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbab()Lcom/google/android/gms/internal/zzchq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchq;->zzzs()Z

    move-result v2

    if-nez v2, :cond_1fe

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "No network"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbac()Lcom/google/android/gms/internal/zzchv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchv;->zzzp()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbad()Lcom/google/android/gms/internal/zzcll;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcll;->cancel()V

    goto/16 :goto_10

    :cond_1fe
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzchx;->zzjct:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zzchc;->zzjau:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v8

    invoke-virtual {v8, v6, v7, v2, v3}, Lcom/google/android/gms/internal/zzclq;->zzf(JJ)Z

    move-result v8

    if-nez v8, :cond_27c

    add-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_229
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbac()Lcom/google/android/gms/internal/zzchv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchv;->unregister()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_262

    const-wide/16 v4, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zzchc;->zzjaz:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/zzchx;->zzjcr:Lcom/google/android/gms/internal/zzcia;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v5}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    :cond_262
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v5, "Upload scheduled in approximately ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbad()Lcom/google/android/gms/internal/zzcll;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/zzcll;->zzs(J)V

    goto/16 :goto_10

    :cond_27c
    move-wide v2, v4

    goto :goto_229
.end method

.method private final zzbam()Z
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfs:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private final zzban()V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjgd:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjge:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjgf:Z

    if-eqz v0, :cond_33

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Not stopping services. fetch, network, upload"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgd:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzcim;->zzjge:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzcim;->zzjgf:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfy:Ljava/util/List;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_4a

    :cond_5a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_32
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V
    .registers 33
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v28

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/zzclq;->zzd(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)Z

    move-result v2

    if-nez v2, :cond_26

    :cond_25
    :goto_25
    return-void

    :cond_26
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v2, :cond_34

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_25

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcig;->zzan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v4, "Dropping blacklisted event. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzclq;->zzkl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_73

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzclq;->zzkm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dd

    :cond_73
    const/4 v2, 0x1

    move v8, v2

    :goto_75
    if-nez v8, :cond_93

    const-string v2, "_err"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_93

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    const/16 v4, 0xb

    const-string v5, "_ev"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_93
    if-eqz v8, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgh;->zzaxn()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgh;->zzaxm()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-object v2, Lcom/google/android/gms/internal/zzchc;->zzjbc:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcgh;)V

    goto/16 :goto_25

    :cond_dd
    const/4 v2, 0x0

    move v8, v2

    goto :goto_75

    :cond_e0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzchm;->zzae(I)Z

    move-result v2

    if-eqz v2, :cond_102

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v4, "Logging event"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/zzchk;->zzb(Lcom/google/android/gms/internal/zzcha;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_102
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_109
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    const-string v2, "_iap"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_128

    const-string v2, "ecommerce_purchase"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    :cond_128
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/zzcim;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcha;)Z

    move-result v2

    if-nez v2, :cond_142

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_139
    .catchall {:try_start_109 .. :try_end_139} :catchall_576

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    goto/16 :goto_25

    :cond_142
    :try_start_142
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzclq;->zzjz(Ljava/lang/String;)Z

    move-result v10

    const-string v2, "_err"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbag()J

    move-result-wide v6

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    invoke-virtual/range {v5 .. v13}, Lcom/google/android/gms/internal/zzcgo;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzcgp;

    move-result-object v4

    iget-wide v6, v4, Lcom/google/android/gms/internal/zzcgp;->zziyy:J

    sget-object v2, Lcom/google/android/gms/internal/zzchc;->zzjan:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v8, v2

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_1aa

    const-wide/16 v8, 0x3e8

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_19a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v5, "Data loss. Too many events logged. appId, count"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, v4, Lcom/google/android/gms/internal/zzcgp;->zziyy:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_1a1
    .catchall {:try_start_142 .. :try_end_1a1} :catchall_576

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    goto/16 :goto_25

    :cond_1aa
    if-eqz v10, :cond_202

    :try_start_1ac
    iget-wide v6, v4, Lcom/google/android/gms/internal/zzcgp;->zziyx:J

    sget-object v2, Lcom/google/android/gms/internal/zzchc;->zzjap:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v8, v2

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_202

    const-wide/16 v8, 0x3e8

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_1e2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v5, "Data loss. Too many public events logged. appId, count"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-wide v8, v4, Lcom/google/android/gms/internal/zzcgp;->zziyx:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v5, v6, v4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    const/16 v4, 0x10

    const-string v5, "_ev"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_1f9
    .catchall {:try_start_1ac .. :try_end_1f9} :catchall_576

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    goto/16 :goto_25

    :cond_202
    if-eqz v12, :cond_255

    :try_start_204
    iget-wide v6, v4, Lcom/google/android/gms/internal/zzcgp;->zziza:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/zzchc;->zzjao:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v2, v5, v8}, Lcom/google/android/gms/internal/zzcgn;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzchd;)I

    move-result v2

    const v5, 0xf4240

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v8, v2

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_255

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_245

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v5, "Too many error events logged. appId, count"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, v4, Lcom/google/android/gms/internal/zzcgp;->zziza:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_245
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_24c
    .catchall {:try_start_204 .. :try_end_24c} :catchall_576

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    goto/16 :goto_25

    :cond_255
    :try_start_255
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgx;->zzayx()Landroid/os/Bundle;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    const-string v4, "_o"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/gms/internal/zzclq;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzclq;->zzkj(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_298

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    const-string v4, "_dbg"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/gms/internal/zzclq;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    const-string v4, "_r"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/gms/internal/zzclq;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_298
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgo;->zzjc(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2bb

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v6, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v6, v7, v4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2bb
    new-instance v11, Lcom/google/android/gms/internal/zzcgv;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzcha;->zzizu:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    move-object/from16 v12, p0

    move-object v14, v3

    invoke-direct/range {v11 .. v20}, Lcom/google/android/gms/internal/zzcgv;-><init>(Lcom/google/android/gms/internal/zzcim;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    iget-object v4, v11, Lcom/google/android/gms/internal/zzcgv;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcgo;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v2

    if-nez v2, :cond_519

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgo;->zzjf(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    cmp-long v2, v4, v6

    if-ltz v2, :cond_325

    if-eqz v10, :cond_325

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v4, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v6

    iget-object v7, v11, Lcom/google/android/gms/internal/zzcgv;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_31c
    .catchall {:try_start_255 .. :try_end_31c} :catchall_576

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    goto/16 :goto_25

    :cond_325
    :try_start_325
    new-instance v13, Lcom/google/android/gms/internal/zzcgw;

    iget-object v15, v11, Lcom/google/android/gms/internal/zzcgv;->mName:Ljava/lang/String;

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    iget-wide v0, v11, Lcom/google/android/gms/internal/zzcgv;->zzfij:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v14, v3

    invoke-direct/range {v13 .. v26}, Lcom/google/android/gms/internal/zzcgw;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v12, v11

    :goto_33e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgw;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-static {v12}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcgv;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcgv;->mAppId:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    new-instance v4, Lcom/google/android/gms/internal/zzcme;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzcme;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjlo:Ljava/lang/Integer;

    const-string v2, "android"

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjlw:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzixt:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzifm:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    const-wide/32 v6, -0x80000000

    cmp-long v2, v2, v6

    if-nez v2, :cond_52a

    const/4 v2, 0x0

    :goto_395
    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjmj:Ljava/lang/Integer;

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjma:Ljava/lang/Long;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzixs:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_535

    const/4 v2, 0x0

    :goto_3b2
    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjmf:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzchx;->zzjm(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_53f

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53f

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzcgi;->zziye:Z

    if-eqz v2, :cond_3de

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjmc:Ljava/lang/String;

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjmd:Ljava/lang/Boolean;

    :cond_3de
    :goto_3de
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjlx:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzdb:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgu;->zzayu()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjlz:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgu;->zzayv()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjly:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjmb:Ljava/lang/Long;

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjlr:Ljava/lang/Long;

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjls:Ljava/lang/Long;

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjlt:Ljava/lang/Long;

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzcgi;->zziyb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzfkk:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_435

    invoke-static {}, Lcom/google/android/gms/internal/zzcgn;->zzaye()Z

    move-result v2

    if-eqz v2, :cond_435

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjmo:Ljava/lang/String;

    :cond_435
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v2

    if-nez v2, :cond_4bd

    new-instance v2, Lcom/google/android/gms/internal/zzcgh;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/zzcgh;-><init>(Lcom/google/android/gms/internal/zzcim;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchh;->zzayz()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgh;->zzir(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgi;->zziya:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgh;->zziu(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgh;->zzis(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zzchx;->zzjn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgh;->zzit(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/zzcgh;->zzaq(J)V

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/zzcgh;->zzal(J)V

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/zzcgh;->zzam(J)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgh;->setAppVersion(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/zzcgh;->zzan(J)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgh;->zziv(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/zzcgh;->zzao(J)V

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/zzcgh;->zzap(J)V

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgh;->setMeasurementEnabled(Z)V

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/internal/zzcgi;->zziyb:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/zzcgh;->zzaz(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgh;)V

    :cond_4bd
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->getAppInstanceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/google/android/gms/internal/zzcme;->zzjme:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxd()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zziya:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgo;->zzja(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzcmg;

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjlq:[Lcom/google/android/gms/internal/zzcmg;

    const/4 v2, 0x0

    move v3, v2

    :goto_4df
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_599

    new-instance v6, Lcom/google/android/gms/internal/zzcmg;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzcmg;-><init>()V

    iget-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjlq:[Lcom/google/android/gms/internal/zzcmg;

    aput-object v6, v2, v3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzclp;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    iput-object v2, v6, Lcom/google/android/gms/internal/zzcmg;->name:Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzclp;

    iget-wide v8, v2, Lcom/google/android/gms/internal/zzclp;->zzjjm:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/zzcmg;->zzjms:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v7

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzclp;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    invoke-virtual {v7, v6, v2}, Lcom/google/android/gms/internal/zzclq;->zza(Lcom/google/android/gms/internal/zzcmg;Ljava/lang/Object;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4df

    :cond_519
    iget-wide v4, v2, Lcom/google/android/gms/internal/zzcgw;->zzizm:J

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v4, v5}, Lcom/google/android/gms/internal/zzcgv;->zza(Lcom/google/android/gms/internal/zzcim;J)Lcom/google/android/gms/internal/zzcgv;

    move-result-object v11

    iget-wide v4, v11, Lcom/google/android/gms/internal/zzcgv;->zzfij:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcgw;->zzbb(J)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v13

    move-object v12, v11

    goto/16 :goto_33e

    :cond_52a
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_395

    :cond_535
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_3b2

    :cond_53f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgu;->zzdw(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3de

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_57f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "null secure ID. appId"

    iget-object v5, v4, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "null"

    :cond_572
    :goto_572
    iput-object v2, v4, Lcom/google/android/gms/internal/zzcme;->zzjmm:Ljava/lang/String;
    :try_end_574
    .catchall {:try_start_325 .. :try_end_574} :catchall_576

    goto/16 :goto_3de

    :catchall_576
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw v2

    :cond_57f
    :try_start_57f
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_572

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v5, "empty secure ID. appId"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_598
    .catchall {:try_start_57f .. :try_end_598} :catchall_576

    goto :goto_572

    :cond_599
    :try_start_599
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcme;)J
    :try_end_5a0
    .catch Ljava/io/IOException; {:try_start_599 .. :try_end_5a0} :catch_622
    .catchall {:try_start_599 .. :try_end_5a0} :catchall_576

    move-result-wide v14

    :try_start_5a1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v13

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcgv;->zzizj:Lcom/google/android/gms/internal/zzcgx;

    if-eqz v2, :cond_66c

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcgv;->zzizj:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgx;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5af
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_637

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "_r"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5af

    const/4 v2, 0x1

    :goto_5c4
    invoke-virtual {v13, v12, v14, v15, v2}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgv;JZ)Z

    move-result v2

    if-eqz v2, :cond_5d0

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzcim;->zzjgc:J

    :cond_5d0
    :goto_5d0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzchm;->zzae(I)Z

    move-result v2

    if-eqz v2, :cond_5f7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Event recorded"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/zzchk;->zza(Lcom/google/android/gms/internal/zzcgv;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5f7
    .catchall {:try_start_5a1 .. :try_end_5f7} :catchall_576

    :cond_5f7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Background event processing time, ms"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v28

    const-wide/32 v6, 0x7a120

    add-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_25

    :catch_622
    move-exception v2

    :try_start_623
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4, v2}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5d0

    :cond_637
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v2

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcgv;->mAppId:Ljava/lang/String;

    iget-object v4, v12, Lcom/google/android/gms/internal/zzcgv;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcig;->zzao(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbag()J

    move-result-wide v4

    iget-object v6, v12, Lcom/google/android/gms/internal/zzcgv;->mAppId:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/internal/zzcgo;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzcgp;

    move-result-object v3

    if-eqz v2, :cond_66c

    iget-wide v2, v3, Lcom/google/android/gms/internal/zzcgp;->zzizb:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    iget-object v5, v12, Lcom/google/android/gms/internal/zzcgv;->mAppId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcgn;->zzix(Ljava/lang/String;)I
    :try_end_663
    .catchall {:try_start_623 .. :try_end_663} :catchall_576

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_66c

    const/4 v2, 0x1

    goto/16 :goto_5c4

    :cond_66c
    const/4 v2, 0x0

    goto/16 :goto_5c4
.end method

.method public static zzdx(Landroid/content/Context;)Lcom/google/android/gms/internal/zzcim;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcim;->zzjev:Lcom/google/android/gms/internal/zzcim;

    if-nez v0, :cond_22

    const-class v1, Lcom/google/android/gms/internal/zzcim;

    monitor-enter v1

    :try_start_11
    sget-object v0, Lcom/google/android/gms/internal/zzcim;->zzjev:Lcom/google/android/gms/internal/zzcim;

    if-nez v0, :cond_21

    new-instance v0, Lcom/google/android/gms/internal/zzcjm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcjm;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/gms/internal/zzcim;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzcim;-><init>(Lcom/google/android/gms/internal/zzcjm;)V

    sput-object v2, Lcom/google/android/gms/internal/zzcim;->zzjev:Lcom/google/android/gms/internal/zzcim;

    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_25

    :cond_22
    sget-object v0, Lcom/google/android/gms/internal/zzcim;->zzjev:Lcom/google/android/gms/internal/zzcim;

    return-object v0

    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method private final zzg(Lcom/google/android/gms/internal/zzcgi;)V
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzchx;->zzjn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-nez v2, :cond_12c

    new-instance v0, Lcom/google/android/gms/internal/zzcgh;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/zzcgh;-><init>(Lcom/google/android/gms/internal/zzcim;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchh;->zzayz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcgh;->zzir(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcgh;->zzit(Ljava/lang/String;)V

    move-object v2, v0

    move v0, v1

    :cond_41
    :goto_41
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcgh;->zzis(Ljava/lang/String;)V

    move v0, v1

    :cond_5b
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zziya:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_75

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zziya:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgi;->zziya:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcgh;->zziu(Ljava/lang/String;)V

    move v0, v1

    :cond_75
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_8d

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxi()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_8d

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzao(J)V

    move v0, v1

    :cond_8d
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a7

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a7

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcgh;->setAppVersion(Ljava/lang/String;)V

    move v0, v1

    :cond_a7
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxg()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_b7

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzan(J)V

    move v0, v1

    :cond_b7
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    if-eqz v3, :cond_cd

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_cd

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcgh;->zziv(Ljava/lang/String;)V

    move v0, v1

    :cond_cd
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxj()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_dd

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzap(J)V

    move v0, v1

    :cond_dd
    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxk()Z

    move-result v4

    if-eq v3, v4, :cond_eb

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcgh;->setMeasurementEnabled(Z)V

    move v0, v1

    :cond_eb
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixw:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_105

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixw:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxv()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_105

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgi;->zzixw:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcgh;->zziw(Ljava/lang/String;)V

    move v0, v1

    :cond_105
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzcgi;->zziyb:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxx()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_115

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzcgi;->zziyb:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzaz(J)V

    move v0, v1

    :cond_115
    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzcgi;->zziye:Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxy()Z

    move-result v4

    if-eq v3, v4, :cond_147

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzcgi;->zziye:Z

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcgh;->zzbl(Z)V

    :goto_122
    if-eqz v1, :cond_12b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgh;)V

    :cond_12b
    return-void

    :cond_12c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgh;->zzit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchh;->zzayz()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcgh;->zzir(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_41

    :cond_147
    move v1, v0

    goto :goto_122
.end method

.method private final zzg(Ljava/lang/String;J)Z
    .registers 34

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_7
    new-instance v21, Lcom/google/android/gms/internal/zzcim$zza;

    const/4 v2, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzcim$zza;-><init>(Lcom/google/android/gms/internal/zzcim;Lcom/google/android/gms/internal/zzcin;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v14

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzcim;->zzjgb:J

    move-wide/from16 v16, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_1be

    const/4 v3, 0x0

    :try_start_26
    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcgo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c7

    const-wide/16 v6, -0x1

    cmp-long v5, v16, v6

    if-eqz v5, :cond_160

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v6, v5

    :goto_49
    const-wide/16 v8, -0x1

    cmp-long v5, v16, v8

    if-eqz v5, :cond_16d

    const-string v5, "rowid <= ? and "

    :goto_51
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x94

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_7b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_7b} :catch_abf
    .catchall {:try_start_26 .. :try_end_7b} :catchall_353

    move-result v5

    if-nez v5, :cond_171

    if-eqz v3, :cond_83

    :try_start_80
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_83
    :goto_83
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    if-eqz v2, :cond_93

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_35a

    :cond_93
    const/4 v2, 0x1

    :goto_94
    if-nez v2, :cond_aaa

    const/16 v17, 0x0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzcmb;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    const/4 v12, 0x0

    const/4 v2, 0x0

    move v13, v2

    :goto_af
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_613

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/zzcig;->zzan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_360

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "Dropping blacklisted raw event. appId"

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzclq;->zzkl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_120

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzclq;->zzkm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35d

    :cond_120
    const/4 v2, 0x1

    :goto_121
    if-nez v2, :cond_adb

    const-string v3, "_err"

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_adb

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    const/16 v4, 0xb

    const-string v5, "_ev"

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzcmb;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_155
    .catchall {:try_start_80 .. :try_end_155} :catchall_1be

    move v2, v12

    move/from16 v3, v17

    :goto_158
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    move v12, v2

    move/from16 v17, v3

    goto/16 :goto_af

    :cond_160
    const/4 v5, 0x1

    :try_start_161
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v6, v5

    goto/16 :goto_49

    :cond_16d
    const-string v5, ""

    goto/16 :goto_51

    :cond_171
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_17e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_161 .. :try_end_17e} :catch_abf
    .catchall {:try_start_161 .. :try_end_17e} :catchall_353

    move-object v13, v5

    move-object v11, v3

    move-object v12, v4

    :goto_181
    :try_start_181
    const-string v3, "raw_events_metadata"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "metadata"

    aput-object v6, v4, v5

    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    const/4 v7, 0x1

    aput-object v13, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    const-string v10, "2"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_231

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Raw event metadata record is missing. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1b7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_181 .. :try_end_1b7} :catch_2e0
    .catchall {:try_start_181 .. :try_end_1b7} :catchall_abb

    if-eqz v11, :cond_83

    :try_start_1b9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1bc
    .catchall {:try_start_1b9 .. :try_end_1bc} :catchall_1be

    goto/16 :goto_83

    :catchall_1be
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw v2

    :cond_1c7
    const-wide/16 v6, -0x1

    cmp-long v5, v16, v6

    if-eqz v5, :cond_218

    const/4 v5, 0x2

    :try_start_1ce
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v6, v5

    :goto_1dc
    const-wide/16 v8, -0x1

    cmp-long v5, v16, v8

    if-eqz v5, :cond_221

    const-string v5, " and rowid <= ?"

    :goto_1e4
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x54

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " order by rowid limit 1;"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_20e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1ce .. :try_end_20e} :catch_abf
    .catchall {:try_start_1ce .. :try_end_20e} :catchall_353

    move-result v5

    if-nez v5, :cond_224

    if-eqz v3, :cond_83

    :try_start_213
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_216
    .catchall {:try_start_213 .. :try_end_216} :catchall_1be

    goto/16 :goto_83

    :cond_218
    const/4 v5, 0x1

    :try_start_219
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object v6, v5

    goto :goto_1dc

    :cond_221
    const-string v5, ""

    goto :goto_1e4

    :cond_224
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_22c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_219 .. :try_end_22c} :catch_abf
    .catchall {:try_start_219 .. :try_end_22c} :catchall_353

    move-object v13, v5

    move-object v11, v3

    move-object v12, v4

    goto/16 :goto_181

    :cond_231
    const/4 v3, 0x0

    :try_start_232
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/zzfjj;->zzn([BII)Lcom/google/android/gms/internal/zzfjj;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzcme;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzcme;-><init>()V
    :try_end_241
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_232 .. :try_end_241} :catch_2e0
    .catchall {:try_start_232 .. :try_end_241} :catchall_abb

    :try_start_241
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzfjs;->zza(Lcom/google/android/gms/internal/zzfjj;)Lcom/google/android/gms/internal/zzfjs;
    :try_end_244
    .catch Ljava/io/IOException; {:try_start_241 .. :try_end_244} :catch_2bb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_241 .. :try_end_244} :catch_2e0
    .catchall {:try_start_241 .. :try_end_244} :catchall_abb

    :try_start_244
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_25b

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v5, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_25b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/zzcgq;->zzb(Lcom/google/android/gms/internal/zzcme;)V

    const-wide/16 v4, -0x1

    cmp-long v3, v16, v4

    if-eqz v3, :cond_2d4

    const-string v5, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v6, v3

    const/4 v3, 0x1

    aput-object v13, v6, v3

    const/4 v3, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    :goto_27b
    const-string v3, "raw_events"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "rowid"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "name"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string v8, "timestamp"

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-string v8, "data"

    aput-object v8, v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_29c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_244 .. :try_end_29c} :catch_2e0
    .catchall {:try_start_244 .. :try_end_29c} :catchall_abb

    move-result-object v3

    :try_start_29d
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2fb

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v4, "Raw event data disappeared while in transaction. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2b4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29d .. :try_end_2b4} :catch_ac2
    .catchall {:try_start_29d .. :try_end_2b4} :catchall_353

    if-eqz v3, :cond_83

    :try_start_2b6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2b9
    .catchall {:try_start_2b6 .. :try_end_2b9} :catchall_1be

    goto/16 :goto_83

    :catch_2bb
    move-exception v2

    :try_start_2bc
    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2cd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2bc .. :try_end_2cd} :catch_2e0
    .catchall {:try_start_2bc .. :try_end_2cd} :catchall_abb

    if-eqz v11, :cond_83

    :try_start_2cf
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2d2
    .catchall {:try_start_2cf .. :try_end_2d2} :catchall_1be

    goto/16 :goto_83

    :cond_2d4
    :try_start_2d4
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v6, v3

    const/4 v3, 0x1

    aput-object v13, v6, v3
    :try_end_2df
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d4 .. :try_end_2df} :catch_2e0
    .catchall {:try_start_2d4 .. :try_end_2df} :catchall_abb

    goto :goto_27b

    :catch_2e0
    move-exception v2

    move-object v3, v11

    move-object v4, v12

    :goto_2e3
    :try_start_2e3
    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v5

    const-string v6, "Data loss. Error selecting raw event. appId"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v6, v4, v2}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2f4
    .catchall {:try_start_2e3 .. :try_end_2f4} :catchall_353

    if-eqz v3, :cond_83

    :try_start_2f6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2f9
    .catchall {:try_start_2f6 .. :try_end_2f9} :catchall_1be

    goto/16 :goto_83

    :cond_2fb
    const/4 v2, 0x0

    :try_start_2fc
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v6, v7}, Lcom/google/android/gms/internal/zzfjj;->zzn([BII)Lcom/google/android/gms/internal/zzfjj;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/zzcmb;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzcmb;-><init>()V
    :try_end_310
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2fc .. :try_end_310} :catch_ac2
    .catchall {:try_start_2fc .. :try_end_310} :catchall_353

    :try_start_310
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/zzfjs;->zza(Lcom/google/android/gms/internal/zzfjj;)Lcom/google/android/gms/internal/zzfjs;
    :try_end_313
    .catch Ljava/io/IOException; {:try_start_310 .. :try_end_313} :catch_334
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_310 .. :try_end_313} :catch_ac2
    .catchall {:try_start_310 .. :try_end_313} :catchall_353

    const/4 v2, 0x1

    :try_start_314
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzcgq;->zza(JLcom/google/android/gms/internal/zzcmb;)Z
    :try_end_32a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_314 .. :try_end_32a} :catch_ac2
    .catchall {:try_start_314 .. :try_end_32a} :catchall_353

    move-result v2

    if-nez v2, :cond_346

    if-eqz v3, :cond_83

    :try_start_32f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_332
    .catchall {:try_start_32f .. :try_end_332} :catchall_1be

    goto/16 :goto_83

    :catch_334
    move-exception v2

    :try_start_335
    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v5, "Data loss. Failed to merge raw event. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_346
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_349
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_335 .. :try_end_349} :catch_ac2
    .catchall {:try_start_335 .. :try_end_349} :catchall_353

    move-result v2

    if-nez v2, :cond_2fb

    if-eqz v3, :cond_83

    :try_start_34e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_83

    :catchall_353
    move-exception v2

    :goto_354
    if-eqz v3, :cond_359

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_359
    throw v2

    :cond_35a
    const/4 v2, 0x0

    goto/16 :goto_94

    :cond_35d
    const/4 v2, 0x0

    goto/16 :goto_121

    :cond_360
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/zzcig;->zzao(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_391

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzclq;->zzkn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_610

    :cond_391
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    if-nez v2, :cond_3b0

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/android/gms/internal/zzcmc;

    iput-object v5, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    :cond_3b0
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    array-length v7, v6

    const/4 v2, 0x0

    move v5, v2

    :goto_3bf
    if-ge v5, v7, :cond_3f1

    aget-object v2, v6, v5

    const-string v8, "_c"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3dd

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/zzcmc;->zzjll:Ljava/lang/Long;

    const/4 v2, 0x1

    move v3, v2

    move v2, v4

    :goto_3d8
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    goto :goto_3bf

    :cond_3dd
    const-string v8, "_r"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ad8

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/zzcmc;->zzjll:Ljava/lang/Long;

    const/4 v2, 0x1

    goto :goto_3d8

    :cond_3f1
    if-nez v3, :cond_459

    if-eqz v14, :cond_459

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v5, "Marking event as conversion"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/zzcmc;

    new-instance v3, Lcom/google/android/gms/internal/zzcmc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzcmc;-><init>()V

    const-string v5, "_c"

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcmc;->zzjll:Ljava/lang/Long;

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aput-object v3, v2, v5

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzcmb;

    iput-object v2, v3, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    :cond_459
    if-nez v4, :cond_4bf

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "Marking event as real-time"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/zzcmc;

    new-instance v3, Lcom/google/android/gms/internal/zzcmc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzcmc;-><init>()V

    const-string v4, "_r"

    iput-object v4, v3, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/zzcmc;->zzjll:Ljava/lang/Long;

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aput-object v3, v2, v4

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzcmb;

    iput-object v2, v3, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    :cond_4bf
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbag()J

    move-result-wide v4

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/internal/zzcgo;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzcgp;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/gms/internal/zzcgp;->zzizb:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/zzcgn;->zzix(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_ad4

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    const/4 v3, 0x0

    :goto_4f7
    iget-object v4, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    array-length v4, v4

    if-ge v3, v4, :cond_528

    const-string v4, "_r"

    iget-object v5, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a7

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [Lcom/google/android/gms/internal/zzcmc;

    if-lez v3, :cond_51a

    iget-object v5, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_51a
    array-length v5, v4

    if-ge v3, v5, :cond_526

    iget-object v5, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    add-int/lit8 v6, v3, 0x1

    array-length v7, v4

    sub-int/2addr v7, v3

    invoke-static {v5, v6, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_526
    iput-object v4, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    :cond_528
    :goto_528
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzclq;->zzjz(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_610

    if-eqz v14, :cond_610

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbag()J

    move-result-wide v4

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/internal/zzcgo;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzcgp;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzcgp;->zziyz:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/zzchc;->zzjaq:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzcgn;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzchd;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_610

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Too many conversions. Not logging as conversion. appId"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v7, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    array-length v8, v7

    const/4 v3, 0x0

    move v6, v3

    :goto_592
    if-ge v6, v8, :cond_5bc

    aget-object v3, v7, v6

    const-string v9, "_c"

    iget-object v10, v3, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5ab

    move v4, v5

    :goto_5a1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    move-object v4, v3

    goto :goto_592

    :cond_5a7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4f7

    :cond_5ab
    const-string v9, "_err"

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad0

    const/4 v3, 0x1

    move-object/from16 v29, v4

    move v4, v3

    move-object/from16 v3, v29

    goto :goto_5a1

    :cond_5bc
    if-eqz v5, :cond_5e8

    if-eqz v4, :cond_5e8

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/android/gms/internal/zzcmc;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v3, v5}, Lcom/google/android/gms/common/util/zza;->zza([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/internal/zzcmc;

    iput-object v3, v2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    move/from16 v4, v17

    :goto_5d2
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    add-int/lit8 v3, v12, 0x1

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcmb;

    aput-object v2, v5, v12

    move v2, v3

    move v3, v4

    goto/16 :goto_158

    :cond_5e8
    if-eqz v4, :cond_5f9

    const-string v2, "_err"

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcmc;->zzjll:Ljava/lang/Long;

    move/from16 v4, v17

    goto :goto_5d2

    :cond_5f9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Did not find conversion parameter. appId"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_610
    move/from16 v4, v17

    goto :goto_5d2

    :cond_613
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_62b

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/zzcmb;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    :cond_62b
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcme;->zzjlq:[Lcom/google/android/gms/internal/zzcmg;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzcim;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcmg;[Lcom/google/android/gms/internal/zzcmb;)[Lcom/google/android/gms/internal/zzcma;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzjmi:[Lcom/google/android/gms/internal/zzcma;

    sget-object v2, Lcom/google/android/gms/internal/zzchc;->zzjac:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_91d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v2

    const-string v5, "measurement.event_sampling_enabled"

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/zzcig;->zzam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91d

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    array-length v2, v2

    new-array v0, v2, [Lcom/google/android/gms/internal/zzcmb;

    move-object/from16 v24, v0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzclq;->zzbaz()Ljava/security/SecureRandom;

    move-result-object v25

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    const/4 v2, 0x0

    move/from16 v20, v2

    :goto_695
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_8e4

    aget-object v28, v26, v20

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    const-string v3, "_ep"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_725

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    const-string v2, "_en"

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzclq;->zza(Lcom/google/android/gms/internal/zzcmb;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzcgw;

    if-nez v3, :cond_6d3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/zzcgo;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d3
    iget-object v2, v3, Lcom/google/android/gms/internal/zzcgw;->zzizo:Ljava/lang/Long;

    if-nez v2, :cond_8e0

    iget-object v2, v3, Lcom/google/android/gms/internal/zzcgw;->zzizp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v2, v4, v6

    if-lez v2, :cond_6f6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    const-string v4, "_sr"

    iget-object v5, v3, Lcom/google/android/gms/internal/zzcgw;->zzizp:Ljava/lang/Long;

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzclq;->zza([Lcom/google/android/gms/internal/zzcmc;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/zzcmc;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    :cond_6f6
    iget-object v2, v3, Lcom/google/android/gms/internal/zzcgw;->zzizq:Ljava/lang/Boolean;

    if-eqz v2, :cond_719

    iget-object v2, v3, Lcom/google/android/gms/internal/zzcgw;->zzizq:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_719

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    const-string v3, "_efs"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zzclq;->zza([Lcom/google/android/gms/internal/zzcmc;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/zzcmc;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    :cond_719
    add-int/lit8 v2, v18, 0x1

    aput-object v28, v24, v18

    :cond_71d
    :goto_71d
    add-int/lit8 v3, v20, 0x1

    move/from16 v20, v3

    move/from16 v18, v2

    goto/16 :goto_695

    :cond_725
    const/4 v2, 0x1

    const-string v3, "_dbg"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcmb;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_acc

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcig;->zzap(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    :goto_74a
    if-gtz v19, :cond_766

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Sample rate must be positive. event, rate"

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v18, 0x1

    aput-object v28, v24, v18

    goto :goto_71d

    :cond_766
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcgw;

    if-nez v2, :cond_ac9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcgo;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v3

    if-nez v3, :cond_7c0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Event being bundled has no eventAggregate. appId, eventName"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/zzcgw;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x1

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/zzcgw;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    :cond_7c0
    :goto_7c0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    const-string v2, "_eid"

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzclq;->zza(Lcom/google/android/gms/internal/zzcmb;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_801

    const/4 v4, 0x1

    :goto_7d0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    move/from16 v0, v19

    if-ne v0, v5, :cond_803

    add-int/lit8 v2, v18, 0x1

    aput-object v28, v24, v18

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_71d

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcgw;->zzizo:Ljava/lang/Long;

    if-nez v4, :cond_7ef

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcgw;->zzizp:Ljava/lang/Long;

    if-nez v4, :cond_7ef

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcgw;->zzizq:Ljava/lang/Boolean;

    if-eqz v4, :cond_71d

    :cond_7ef
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzcgw;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_71d

    :cond_801
    const/4 v4, 0x0

    goto :goto_7d0

    :cond_803
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_853

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    const-string v5, "_sr"

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/zzclq;->zza([Lcom/google/android/gms/internal/zzcmc;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/zzcmc;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    add-int/lit8 v2, v18, 0x1

    aput-object v28, v24, v18

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_83c

    const/4 v4, 0x0

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzcgw;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v3

    :cond_83c
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/zzcgw;->zzbc(J)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_71d

    :cond_853
    iget-wide v6, v3, Lcom/google/android/gms/internal/zzcgw;->zzizn:J

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-ltz v5, :cond_8cb

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    const-string v5, "_efs"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/zzclq;->zza([Lcom/google/android/gms/internal/zzcmc;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/zzcmc;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    const-string v5, "_sr"

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/zzclq;->zza([Lcom/google/android/gms/internal/zzcmc;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/zzcmc;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    add-int/lit8 v2, v18, 0x1

    aput-object v28, v24, v18

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8b4

    const/4 v4, 0x0

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzcgw;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v3

    :cond_8b4
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/zzcgw;->zzbc(J)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_71d

    :cond_8cb
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8e0

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6}, Lcom/google/android/gms/internal/zzcgw;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8e0
    move/from16 v2, v18

    goto/16 :goto_71d

    :cond_8e4
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    array-length v2, v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_8fb

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/zzcmb;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    :cond_8fb
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_903
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcgw;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgw;)V

    goto :goto_903

    :cond_91d
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzjls:Ljava/lang/Long;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzjlt:Ljava/lang/Long;

    const/4 v2, 0x0

    :goto_935
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    array-length v3, v3

    if-ge v2, v3, :cond_975

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcme;->zzjls:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_95a

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjls:Ljava/lang/Long;

    :cond_95a
    iget-object v4, v3, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcme;->zzjlt:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_972

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/google/android/gms/internal/zzcme;->zzjlt:Ljava/lang/Long;

    :cond_972
    add-int/lit8 v2, v2, 0x1

    goto :goto_935

    :cond_975
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v7

    if-nez v7, :cond_a09

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Bundling raw events w/o app info. appId"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_99c
    :goto_99c
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    array-length v2, v2

    if-lez v2, :cond_9d8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcig;->zzjs(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcly;

    move-result-object v2

    if-eqz v2, :cond_9b7

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcly;->zzjkw:Ljava/lang/Long;

    if-nez v3, :cond_a8e

    :cond_9b7
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcme;->zzixs:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a75

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzjmn:Ljava/lang/Long;

    :goto_9cd
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcme;Z)Z

    :cond_9d8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgj:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgo;->zzah(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9ea
    .catchall {:try_start_34e .. :try_end_9ea} :catchall_1be

    move-result-object v2

    :try_start_9eb
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9f9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9eb .. :try_end_9f9} :catch_a96
    .catchall {:try_start_9eb .. :try_end_9f9} :catchall_1be

    :goto_9f9
    :try_start_9f9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_a00
    .catchall {:try_start_9f9 .. :try_end_a00} :catchall_1be

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    const/4 v2, 0x1

    :goto_a08
    return v2

    :cond_a09
    :try_start_a09
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    array-length v2, v2

    if-lez v2, :cond_99c

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcgh;->zzaxf()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_a71

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_a1e
    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjlv:Ljava/lang/Long;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcgh;->zzaxe()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_ac6

    :goto_a2c
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_a73

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_a36
    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzjlu:Ljava/lang/Long;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcgh;->zzaxo()V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcgh;->zzaxl()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzjmg:Ljava/lang/Integer;

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzjls:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/zzcgh;->zzal(J)V

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzjlt:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/zzcgh;->zzam(J)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcgh;->zzaxw()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzixw:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgh;)V

    goto/16 :goto_99c

    :cond_a71
    const/4 v4, 0x0

    goto :goto_a1e

    :cond_a73
    const/4 v2, 0x0

    goto :goto_a36

    :cond_a75
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Did not find measurement config or missing version info. appId"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_9cd

    :cond_a8e
    iget-object v2, v2, Lcom/google/android/gms/internal/zzcly;->zzjkw:Ljava/lang/Long;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcme;->zzjmn:Ljava/lang/Long;

    goto/16 :goto_9cd

    :catch_a96
    move-exception v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "Failed to remove unused event metadata. appId"

    invoke-static {v6}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_9f9

    :cond_aaa
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_ab1
    .catchall {:try_start_a09 .. :try_end_ab1} :catchall_1be

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    const/4 v2, 0x0

    goto/16 :goto_a08

    :catchall_abb
    move-exception v2

    move-object v3, v11

    goto/16 :goto_354

    :catch_abf
    move-exception v2

    goto/16 :goto_2e3

    :catch_ac2
    move-exception v2

    move-object v4, v12

    goto/16 :goto_2e3

    :cond_ac6
    move-wide v2, v4

    goto/16 :goto_a2c

    :cond_ac9
    move-object v3, v2

    goto/16 :goto_7c0

    :cond_acc
    move/from16 v19, v2

    goto/16 :goto_74a

    :cond_ad0
    move-object v3, v4

    move v4, v5

    goto/16 :goto_5a1

    :cond_ad4
    move/from16 v17, v2

    goto/16 :goto_528

    :cond_ad8
    move v2, v4

    goto/16 :goto_3d8

    :cond_adb
    move v2, v12

    move/from16 v3, v17

    goto/16 :goto_158
.end method

.method private final zzjw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgi;
    .registers 26
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "No app data available; dropping"

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_26
    return-object v3

    :cond_27
    :try_start_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbhf;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbhe;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzbhe;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5c

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "App version does not match; dropping. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_59
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_59} :catch_5b

    const/4 v3, 0x0

    goto :goto_26

    :catch_5b
    move-exception v3

    :cond_5c
    new-instance v3, Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxg()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxh()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxi()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxj()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxk()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxd()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxx()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxy()Z

    move-result v23

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v23}, Lcom/google/android/gms/internal/zzcgi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    goto :goto_26
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final isEnabled()Z
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgn;->zzaya()Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_13
    return v0

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    const-string v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcgn;->zziy(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzchx;->zzbn(Z)Z

    move-result v0

    goto :goto_13

    :cond_2b
    invoke-static {}, Lcom/google/android/gms/common/api/internal/zzbz;->zzaji()Z

    move-result v1

    if-nez v1, :cond_22

    const/4 v0, 0x1

    goto :goto_22
.end method

.method protected final start()V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->zzayh()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjcr:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjcr:Lcom/google/android/gms/internal/zzcia;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjcw:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_61

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Persisting first open"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgg:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjcw:Lcom/google/android/gms/internal/zzcia;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgg:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    :cond_61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzazv()Z

    move-result v0

    if-nez v0, :cond_e7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzclq;->zzeb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_86

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_86
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzclq;->zzeb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbhf;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbhe;->zzamu()Z

    move-result v0

    if-nez v0, :cond_d6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcid;->zzbk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_c0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcla;->zzk(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_d6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_d6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_e3
    :goto_e3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V

    return-void

    :cond_e7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchh;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchx;->zzazm()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_182

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchh;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzchx;->zzjo(Ljava/lang/String;)V

    :cond_10e
    :goto_10e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzchx;->zzjcx:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcic;->zzazr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjn;->zzjp(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchh;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcjn;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcim;->zzazv()Z

    move-result v1

    if-eqz v1, :cond_174

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzckg;->zzbar()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchx;->zzazq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_174

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_174

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_po"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto"

    const-string v3, "_ou"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzcjn;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_174
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzckg;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    goto/16 :goto_e3

    :cond_182
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchh;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazh()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchx;->zzazp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfk:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckg;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfk:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckg;->zzyc()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchh;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzchx;->zzjo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjcw:Lcom/google/android/gms/internal/zzcia;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgg:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjcx:Lcom/google/android/gms/internal/zzcic;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcic;->zzjq(Ljava/lang/String;)V

    goto/16 :goto_10e
.end method

.method protected final zza(ILjava/lang/Throwable;[B)V
    .registers 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    if-nez p3, :cond_11

    const/4 v0, 0x0

    :try_start_f
    new-array p3, v0, [B

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfx:Ljava/util/List;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/zzcim;->zzjfx:Ljava/util/List;
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_105

    const/16 v3, 0xc8

    if-eq p1, v3, :cond_1e

    const/16 v3, 0xcc

    if-ne p1, v3, :cond_114

    :cond_1e
    if-nez p2, :cond_114

    :try_start_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzchx;->zzjcr:Lcom/google/android/gms/internal/zzcia;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzchx;->zzjcs:Lcom/google/android/gms/internal/zzcia;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    array-length v6, p3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V
    :try_end_5a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_5a} :catch_b0
    .catchall {:try_start_20 .. :try_end_5a} :catchall_105

    :try_start_5a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8
    :try_end_86
    .catchall {:try_start_5a .. :try_end_86} :catchall_a7

    :try_start_86
    const-string v6, "queue"

    const-string v7, "rowid=?"

    invoke-virtual {v0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_5e

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_98
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_86 .. :try_end_98} :catch_98
    .catchall {:try_start_86 .. :try_end_98} :catchall_a7

    :catch_98
    move-exception v0

    :try_start_99
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Failed to delete a bundle in a queue table"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
    :try_end_a7
    .catchall {:try_start_99 .. :try_end_a7} :catchall_a7

    :catchall_a7
    move-exception v0

    :try_start_a8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw v0
    :try_end_b0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a8 .. :try_end_b0} :catch_b0
    .catchall {:try_start_a8 .. :try_end_b0} :catchall_105

    :catch_b0
    move-exception v0

    :try_start_b1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgc:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v2, "Disable upload, time"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcim;->zzjgc:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d9
    .catchall {:try_start_b1 .. :try_end_d9} :catchall_105

    :goto_d9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjge:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    return-void

    :cond_df
    :try_start_df
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_e6
    .catchall {:try_start_df .. :try_end_e6} :catchall_a7

    :try_start_e6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzbab()Lcom/google/android/gms/internal/zzchq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchq;->zzzs()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbai()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzbah()V

    :goto_100
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgc:J
    :try_end_104
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e6 .. :try_end_104} :catch_b0
    .catchall {:try_start_e6 .. :try_end_104} :catchall_105

    goto :goto_d9

    :catchall_105
    move-exception v0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjge:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    throw v0

    :cond_10c
    const-wide/16 v2, -0x1

    :try_start_10e
    iput-wide v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgb:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V
    :try_end_113
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10e .. :try_end_113} :catch_b0
    .catchall {:try_start_10e .. :try_end_113} :catchall_105

    goto :goto_100

    :cond_114
    :try_start_114
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v3, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p2}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjcs:Lcom/google/android/gms/internal/zzcia;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_13c

    const/16 v0, 0x1ad

    if-ne p1, v0, :cond_152

    :cond_13c
    move v0, v2

    :goto_13d
    if-eqz v0, :cond_14e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjct:Lcom/google/android/gms/internal/zzcia;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    :cond_14e
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V
    :try_end_151
    .catchall {:try_start_114 .. :try_end_151} :catchall_105

    goto :goto_d9

    :cond_152
    move v0, v1

    goto :goto_13d
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcha;Ljava/lang/String;)[B
    .registers 27
    .param p1    # Lcom/google/android/gms/internal/zzcha;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-static {}, Lcom/google/android/gms/internal/zzcim;->zzawi()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    new-instance v19, Lcom/google/android/gms/internal/zzcmd;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/gms/internal/zzcmd;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v22

    if-nez v22, :cond_45

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v5, "Log and bundle not available. package_name"

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    new-array v4, v4, [B
    :try_end_3d
    .catchall {:try_start_1f .. :try_end_3d} :catchall_316

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    :goto_44
    return-object v4

    :cond_45
    :try_start_45
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->zzaxk()Z

    move-result v4

    if-nez v4, :cond_65

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v5, "Log and bundle disabled. package_name"

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    new-array v4, v4, [B
    :try_end_5d
    .catchall {:try_start_45 .. :try_end_5d} :catchall_316

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    goto :goto_44

    :cond_65
    :try_start_65
    const-string v4, "_iap"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7d

    const-string v4, "ecommerce_purchase"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    :cond_7d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzcim;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcha;)Z

    move-result v4

    if-nez v4, :cond_9a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v5, "Failed to handle purchase event at single event bundle creation. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9a
    new-instance v23, Lcom/google/android/gms/internal/zzcme;

    invoke-direct/range {v23 .. v23}, Lcom/google/android/gms/internal/zzcme;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/gms/internal/zzcme;

    const/4 v5, 0x0

    aput-object v23, v4, v5

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjlo:Ljava/lang/Integer;

    const-string v4, "android"

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjlw:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->zzaxh()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzixt:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzifm:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->zzaxg()J

    move-result-wide v4

    const-wide/32 v6, -0x80000000

    cmp-long v6, v4, v6

    if-nez v6, :cond_1eb

    const/4 v4, 0x0

    :goto_dc
    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjmj:Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->zzaxi()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjma:Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzixs:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->zzaxj()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjmf:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_122

    invoke-static {}, Lcom/google/android/gms/internal/zzcgn;->zzaye()Z

    move-result v4

    if-eqz v4, :cond_122

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcgn;->zziz(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_122

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjmo:Ljava/lang/String;

    :cond_122
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzchx;->zzjm(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->zzaxy()Z

    move-result v4

    if-eqz v4, :cond_150

    if-eqz v5, :cond_150

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_150

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjmc:Ljava/lang/String;

    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjmd:Ljava/lang/Boolean;

    :cond_150
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjlx:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzdb:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgu;->zzayu()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjlz:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgu;->zzayv()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjly:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->getAppInstanceId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjme:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->zzaxd()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zziya:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcgo;->zzja(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/zzcmg;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjlq:[Lcom/google/android/gms/internal/zzcmg;

    const/4 v4, 0x0

    move v5, v4

    :goto_1af
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_1f2

    new-instance v7, Lcom/google/android/gms/internal/zzcmg;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzcmg;-><init>()V

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjlq:[Lcom/google/android/gms/internal/zzcmg;

    aput-object v7, v4, v5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzclp;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    iput-object v4, v7, Lcom/google/android/gms/internal/zzcmg;->name:Ljava/lang/String;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzclp;

    iget-wide v8, v4, Lcom/google/android/gms/internal/zzclp;->zzjjm:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v7, Lcom/google/android/gms/internal/zzcmg;->zzjms:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v8

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzclp;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    invoke-virtual {v8, v7, v4}, Lcom/google/android/gms/internal/zzclq;->zza(Lcom/google/android/gms/internal/zzcmg;Ljava/lang/Object;)V

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1af

    :cond_1eb
    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_dc

    :cond_1f2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgx;->zzayx()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "_iap"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_221

    const-string v5, "_c"

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v5

    const-string v6, "Marking in-app purchase as real-time"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    const-string v5, "_r"

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_221
    const-string v5, "_o"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzclq;->zzkj(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_256

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v5

    const-string v6, "_dbg"

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/gms/internal/zzclq;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v5

    const-string v6, "_r"

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/gms/internal/zzclq;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_256
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v6}, Lcom/google/android/gms/internal/zzcgo;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v5

    if-nez v5, :cond_2ff

    const-wide/16 v20, 0x0

    new-instance v5, Lcom/google/android/gms/internal/zzcgw;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/gms/internal/zzcha;->zzizu:J

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v6, p2

    invoke-direct/range {v5 .. v18}, Lcom/google/android/gms/internal/zzcgw;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgw;)V

    move-wide/from16 v12, v20

    :goto_28c
    new-instance v5, Lcom/google/android/gms/internal/zzcgv;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzcha;->zzizu:J

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object v14, v4

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/internal/zzcgv;-><init>(Lcom/google/android/gms/internal/zzcim;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    new-instance v8, Lcom/google/android/gms/internal/zzcmb;

    invoke-direct {v8}, Lcom/google/android/gms/internal/zzcmb;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/gms/internal/zzcmb;

    const/4 v6, 0x0

    aput-object v8, v4, v6

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    iget-wide v6, v5, Lcom/google/android/gms/internal/zzcgv;->zzfij:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v8, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    iget-object v4, v5, Lcom/google/android/gms/internal/zzcgv;->mName:Ljava/lang/String;

    iput-object v4, v8, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    iget-wide v6, v5, Lcom/google/android/gms/internal/zzcgv;->zzizi:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v8, Lcom/google/android/gms/internal/zzcmb;->zzjlj:Ljava/lang/Long;

    iget-object v4, v5, Lcom/google/android/gms/internal/zzcgv;->zzizj:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgx;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/zzcmc;

    iput-object v4, v8, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    const/4 v4, 0x0

    iget-object v6, v5, Lcom/google/android/gms/internal/zzcgv;->zzizj:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcgx;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v4

    :goto_2d7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v10, Lcom/google/android/gms/internal/zzcmc;

    invoke-direct {v10}, Lcom/google/android/gms/internal/zzcmc;-><init>()V

    iget-object v11, v8, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    add-int/lit8 v7, v6, 0x1

    aput-object v10, v11, v6

    iput-object v4, v10, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    iget-object v6, v5, Lcom/google/android/gms/internal/zzcgv;->zzizj:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/zzcgx;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v6

    invoke-virtual {v6, v10, v4}, Lcom/google/android/gms/internal/zzclq;->zza(Lcom/google/android/gms/internal/zzcmc;Ljava/lang/Object;)V

    move v6, v7

    goto :goto_2d7

    :cond_2ff
    iget-wide v12, v5, Lcom/google/android/gms/internal/zzcgw;->zzizm:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/gms/internal/zzcha;->zzizu:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/zzcgw;->zzbb(J)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcgw;->zzayw()Lcom/google/android/gms/internal/zzcgw;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgw;)V
    :try_end_314
    .catchall {:try_start_65 .. :try_end_314} :catchall_316

    goto/16 :goto_28c

    :catchall_316
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw v4

    :cond_31f
    :try_start_31f
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcme;->zzjlq:[Lcom/google/android/gms/internal/zzcmg;

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzcim;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcmg;[Lcom/google/android/gms/internal/zzcmb;)[Lcom/google/android/gms/internal/zzcma;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjmi:[Lcom/google/android/gms/internal/zzcma;

    iget-object v4, v8, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjls:Ljava/lang/Long;

    iget-object v4, v8, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjlt:Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->zzaxf()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3ea

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_34f
    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/google/android/gms/internal/zzcme;->zzjlv:Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->zzaxe()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_405

    :goto_35d
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3ed

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_367
    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjlu:Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->zzaxo()V

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/zzcgh;->zzaxl()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjmg:Ljava/lang/Integer;

    const-wide/16 v4, 0x2e86

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjmb:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjlr:Ljava/lang/Long;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjmh:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjls:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzal(J)V

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcme;->zzjlt:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzam(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgh;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_3c5
    .catchall {:try_start_31f .. :try_end_3c5} :catchall_316

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    :try_start_3cc
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/zzfjs;->zzho()I

    move-result v4

    new-array v4, v4, [B

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/zzfjk;->zzo([BII)Lcom/google/android/gms/internal/zzfjk;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/zzfjs;->zza(Lcom/google/android/gms/internal/zzfjk;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzfjk;->zzcwt()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zzclq;->zzq([B)[B
    :try_end_3e7
    .catch Ljava/io/IOException; {:try_start_3cc .. :try_end_3e7} :catch_3f0

    move-result-object v4

    goto/16 :goto_44

    :cond_3ea
    const/4 v6, 0x0

    goto/16 :goto_34f

    :cond_3ed
    const/4 v4, 0x0

    goto/16 :goto_367

    :catch_3f0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v5

    const-string v6, "Data loss. Failed to bundle and serialize. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    goto/16 :goto_44

    :cond_405
    move-wide v4, v6

    goto/16 :goto_35d
.end method

.method public final zzawk()Lcom/google/android/gms/internal/zzcgd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfr:Lcom/google/android/gms/internal/zzcgd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfr:Lcom/google/android/gms/internal/zzcgd;

    return-object v0
.end method

.method public final zzawl()Lcom/google/android/gms/internal/zzcgk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfq:Lcom/google/android/gms/internal/zzcgk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfq:Lcom/google/android/gms/internal/zzcgk;

    return-object v0
.end method

.method public final zzawm()Lcom/google/android/gms/internal/zzcjn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfm:Lcom/google/android/gms/internal/zzcjn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfm:Lcom/google/android/gms/internal/zzcjn;

    return-object v0
.end method

.method public final zzawn()Lcom/google/android/gms/internal/zzchh;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfn:Lcom/google/android/gms/internal/zzchh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfn:Lcom/google/android/gms/internal/zzchh;

    return-object v0
.end method

.method public final zzawo()Lcom/google/android/gms/internal/zzcgu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfl:Lcom/google/android/gms/internal/zzcgu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfl:Lcom/google/android/gms/internal/zzcgu;

    return-object v0
.end method

.method public final zzawp()Lcom/google/android/gms/internal/zzckg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfk:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfk:Lcom/google/android/gms/internal/zzckg;

    return-object v0
.end method

.method public final zzawq()Lcom/google/android/gms/internal/zzckc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfj:Lcom/google/android/gms/internal/zzckc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfj:Lcom/google/android/gms/internal/zzckc;

    return-object v0
.end method

.method public final zzawr()Lcom/google/android/gms/internal/zzchi;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfh:Lcom/google/android/gms/internal/zzchi;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfh:Lcom/google/android/gms/internal/zzchi;

    return-object v0
.end method

.method public final zzaws()Lcom/google/android/gms/internal/zzcgo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfg:Lcom/google/android/gms/internal/zzcgo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfg:Lcom/google/android/gms/internal/zzcgo;

    return-object v0
.end method

.method public final zzawt()Lcom/google/android/gms/internal/zzchk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjff:Lcom/google/android/gms/internal/zzchk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjff:Lcom/google/android/gms/internal/zzchk;

    return-object v0
.end method

.method public final zzawu()Lcom/google/android/gms/internal/zzclq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfe:Lcom/google/android/gms/internal/zzclq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfe:Lcom/google/android/gms/internal/zzclq;

    return-object v0
.end method

.method public final zzawv()Lcom/google/android/gms/internal/zzcig;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfb:Lcom/google/android/gms/internal/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfb:Lcom/google/android/gms/internal/zzcig;

    return-object v0
.end method

.method public final zzaww()Lcom/google/android/gms/internal/zzclf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfa:Lcom/google/android/gms/internal/zzclf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfa:Lcom/google/android/gms/internal/zzclf;

    return-object v0
.end method

.method public final zzawx()Lcom/google/android/gms/internal/zzcih;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjez:Lcom/google/android/gms/internal/zzcih;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjez:Lcom/google/android/gms/internal/zzcih;

    return-object v0
.end method

.method public final zzawy()Lcom/google/android/gms/internal/zzchm;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjey:Lcom/google/android/gms/internal/zzchm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjey:Lcom/google/android/gms/internal/zzchm;

    return-object v0
.end method

.method public final zzawz()Lcom/google/android/gms/internal/zzchx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjex:Lcom/google/android/gms/internal/zzchx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjex:Lcom/google/android/gms/internal/zzchx;

    return-object v0
.end method

.method public final zzaxa()Lcom/google/android/gms/internal/zzcgn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    return-object v0
.end method

.method protected final zzazv()Z
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjft:Ljava/lang/Boolean;

    if-eqz v1, :cond_36

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjfu:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjft:Ljava/lang/Boolean;

    if-eqz v1, :cond_97

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjft:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_97

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcim;->zzjfu:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-lez v1, :cond_97

    :cond_36
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjfu:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzclq;->zzeb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzclq;->zzeb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbhf;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbhe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbhe;->zzamu()Z

    move-result v1

    if-nez v1, :cond_72

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcid;->zzbk(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzcla;->zzk(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_73

    :cond_72
    const/4 v0, 0x1

    :cond_73
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjft:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjft:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchh;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzclq;->zzkg(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjft:Ljava/lang/Boolean;

    :cond_97
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjft:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzazx()Lcom/google/android/gms/internal/zzchm;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjey:Lcom/google/android/gms/internal/zzchm;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjey:Lcom/google/android/gms/internal/zzchm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjey:Lcom/google/android/gms/internal/zzchm;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method final zzazy()Lcom/google/android/gms/internal/zzcih;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjez:Lcom/google/android/gms/internal/zzcih;

    return-object v0
.end method

.method public final zzazz()Lcom/google/android/gms/measurement/AppMeasurement;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfc:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;)V
    .registers 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :goto_2d
    return-void

    :cond_2e
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v0, :cond_36

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_2d

    :cond_36
    new-instance v8, Lcom/google/android/gms/internal/zzcgl;

    invoke-direct {v8, p1}, Lcom/google/android/gms/internal/zzcgl;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    iput-boolean v6, v8, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_44
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, v8, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgo;->zzah(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgl;

    move-result-object v5

    if-eqz v5, :cond_7b

    iget-object v0, v5, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-object v4, v5, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7b
    if-eqz v5, :cond_13c

    iget-boolean v0, v5, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    if-eqz v0, :cond_13c

    iget-object v0, v5, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iput-object v0, v8, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-wide v0, v5, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    iput-wide v0, v8, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    iget-wide v0, v5, Lcom/google/android/gms/internal/zzcgl;->zziyl:J

    iput-wide v0, v8, Lcom/google/android/gms/internal/zzcgl;->zziyl:J

    iget-object v0, v5, Lcom/google/android/gms/internal/zzcgl;->zziyj:Ljava/lang/String;

    iput-object v0, v8, Lcom/google/android/gms/internal/zzcgl;->zziyj:Ljava/lang/String;

    iget-object v0, v5, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    iput-object v0, v8, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    iget-boolean v0, v5, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    iput-boolean v0, v8, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    new-instance v0, Lcom/google/android/gms/internal/zzcln;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    iget-object v2, v5, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzcln;->zzjji:J

    iget-object v4, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcln;->zziyf:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    move v7, v6

    :goto_b3
    iget-boolean v0, v8, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    if-eqz v0, :cond_101

    iget-object v6, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    new-instance v0, Lcom/google/android/gms/internal/zzclp;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-object v3, v6, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    iget-wide v4, v6, Lcom/google/android/gms/internal/zzcln;->zzjji:J

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzclp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzclp;)Z

    move-result v1

    if-eqz v1, :cond_169

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v8, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_ef
    if-eqz v7, :cond_101

    iget-object v0, v8, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    if-eqz v0, :cond_101

    new-instance v0, Lcom/google/android/gms/internal/zzcha;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcha;-><init>(Lcom/google/android/gms/internal/zzcha;J)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzcim;->zzc(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    :cond_101
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgl;)Z

    move-result v0

    if-eqz v0, :cond_18a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Conditional property added"

    iget-object v2, v8, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_12c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_133
    .catchall {:try_start_44 .. :try_end_133} :catchall_160

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    goto/16 :goto_2d

    :cond_13c
    :try_start_13c
    iget-object v0, v8, Lcom/google/android/gms/internal/zzcgl;->zziyj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    new-instance v0, Lcom/google/android/gms/internal/zzcln;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    iget-object v4, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcln;->zziyf:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z
    :try_end_15e
    .catchall {:try_start_13c .. :try_end_15e} :catchall_160

    goto/16 :goto_b3

    :catchall_160
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw v0

    :cond_169
    :try_start_169
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v8, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_ef

    :cond_18a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Too many conditional properties, ignoring"

    iget-object v2, v8, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1af
    .catchall {:try_start_169 .. :try_end_1af} :catchall_160

    goto/16 :goto_12c

    :cond_1b1
    move v7, v6

    goto/16 :goto_b3
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V
    .registers 16
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-object v5, p2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/internal/zzcha;->zzizu:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzclq;->zzd(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)Z

    move-result v2

    if-nez v2, :cond_20

    :goto_1f
    return-void

    :cond_20
    iget-boolean v2, p2, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v2, :cond_28

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_1f

    :cond_28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_2f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_b1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Invalid time querying timed out conditional properties"

    invoke-static {v5}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v3, v4, v8}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5f
    :goto_5f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcgl;

    if-eqz v2, :cond_5f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v8, "User property timed out"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v8, v9, v10, v11}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcgl;->zziyk:Lcom/google/android/gms/internal/zzcha;

    if-eqz v4, :cond_9c

    new-instance v4, Lcom/google/android/gms/internal/zzcha;

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcgl;->zziyk:Lcom/google/android/gms/internal/zzcha;

    invoke-direct {v4, v8, v6, v7}, Lcom/google/android/gms/internal/zzcha;-><init>(Lcom/google/android/gms/internal/zzcha;J)V

    invoke-direct {p0, v4, p2}, Lcom/google/android/gms/internal/zzcim;->zzc(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    :cond_9c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v4

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/zzcgo;->zzai(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_2f .. :try_end_a7} :catchall_a8

    goto :goto_5f

    :catchall_a8
    move-exception v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw v2

    :cond_b1
    :try_start_b1
    const-string v3, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const/4 v8, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcgo;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_5b

    :cond_c5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_14d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Invalid time querying expired conditional properties"

    invoke-static {v5}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v3, v4, v8}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_f1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_fe
    :goto_fe
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_161

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcgl;

    if-eqz v2, :cond_fe

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v8

    const-string v9, "User property expired"

    iget-object v10, v2, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v8, v5, v9}, Lcom/google/android/gms/internal/zzcgo;->zzaf(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    if-eqz v8, :cond_141

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_141
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v8

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v8, v5, v2}, Lcom/google/android/gms/internal/zzcgo;->zzai(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    :cond_14d
    const-string v3, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const/4 v8, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcgo;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_f1

    :cond_161
    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v3, 0x0

    move v4, v3

    :goto_16b
    if-ge v4, v8, :cond_17e

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/google/android/gms/internal/zzcha;

    new-instance v9, Lcom/google/android/gms/internal/zzcha;

    invoke-direct {v9, v3, v6, v7}, Lcom/google/android/gms/internal/zzcha;-><init>(Lcom/google/android/gms/internal/zzcha;J)V

    invoke-direct {p0, v9, p2}, Lcom/google/android/gms/internal/zzcim;->zzc(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_16b

    :cond_17e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_225

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v8, "Invalid time querying triggered conditional properties"

    invoke-static {v5}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v8, v5, v2, v3}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_1b7
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1c4
    :goto_1c4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/zzcgl;

    move-object v9, v0

    if-eqz v9, :cond_1c4

    iget-object v8, v9, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    new-instance v2, Lcom/google/android/gms/internal/zzclp;

    iget-object v3, v9, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v4, v9, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-object v5, v8, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzclp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzclp;)Z

    move-result v3

    if-eqz v3, :cond_23d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "User property triggered"

    iget-object v5, v9, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v8, v12}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_20a
    iget-object v3, v9, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    if-eqz v3, :cond_213

    iget-object v3, v9, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_213
    new-instance v3, Lcom/google/android/gms/internal/zzcln;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzcln;-><init>(Lcom/google/android/gms/internal/zzclp;)V

    iput-object v3, v9, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgl;)Z

    goto :goto_1c4

    :cond_225
    const-string v4, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v3, v8, v5

    const/4 v3, 0x2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-virtual {v2, v4, v8}, Lcom/google/android/gms/internal/zzcgo;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_1b7

    :cond_23d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "Too many active user properties, ignoring"

    iget-object v5, v9, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v8, v12}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_20a

    :cond_25d
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzcim;->zzc(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    move-object v0, v10

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v3, 0x0

    move v4, v3

    :goto_26a
    if-ge v4, v5, :cond_27d

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/google/android/gms/internal/zzcha;

    new-instance v8, Lcom/google/android/gms/internal/zzcha;

    invoke-direct {v8, v3, v6, v7}, Lcom/google/android/gms/internal/zzcha;-><init>(Lcom/google/android/gms/internal/zzcha;J)V

    invoke-direct {p0, v8, p2}, Lcom/google/android/gms/internal/zzcim;->zzc(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_26a

    :cond_27d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_284
    .catchall {:try_start_b1 .. :try_end_284} :catchall_a8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    goto/16 :goto_1f
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcha;Ljava/lang/String;)V
    .registers 27
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "No app data available; dropping event"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_25
    return-void

    :cond_26
    :try_start_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbhf;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbhe;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzbhe;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_77

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "App version does not match; dropping event. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_58
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_58} :catch_59

    goto :goto_25

    :catch_59
    move-exception v3

    const-string v3, "_ui"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_77
    new-instance v3, Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxg()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxh()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxi()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxj()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxk()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxd()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxx()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxy()Z

    move-result v23

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v23}, Lcom/google/android/gms/internal/zzcgi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    goto/16 :goto_25
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcjl;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfz:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfz:I

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v4, 0x18

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v0, :cond_1f

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_16

    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzclq;->zzkd(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    :cond_3e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const-string v3, "_ev"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_16

    :cond_4a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzclq;->zzl(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_85

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_79

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_71

    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_79

    :cond_71
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    :cond_79
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const-string v3, "_ev"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_16

    :cond_85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzclq;->zzm(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_16

    new-instance v0, Lcom/google/android/gms/internal/zzclp;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcln;->zziyf:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzcln;->zzjji:J

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzclp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Setting user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_c0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzclp;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V

    if-eqz v1, :cond_f6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "User property set"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ed
    .catchall {:try_start_c0 .. :try_end_ed} :catchall_11e

    :goto_ed
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    goto/16 :goto_16

    :cond_f6
    :try_start_f6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Too many unique user properties are set. Ignoring user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_11d
    .catchall {:try_start_f6 .. :try_end_11d} :catchall_11e

    goto :goto_ed

    :catchall_11e
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw v0
.end method

.method final zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 14
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/16 v7, 0x130

    const/4 v0, 0x1

    const/16 v6, 0x194

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    if-nez p4, :cond_19

    const/4 v3, 0x0

    :try_start_17
    new-array p4, v3, [B

    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "onConfigFetched. Response size"

    array-length v5, p4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_10c

    :try_start_32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v4

    const/16 v3, 0xc8

    if-eq p2, v3, :cond_44

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_44

    if-ne p2, v7, :cond_6e

    :cond_44
    if-nez p3, :cond_6e

    move v3, v0

    :goto_47
    if-nez v4, :cond_70

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v2, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_61
    .catchall {:try_start_32 .. :try_end_61} :catchall_103

    :try_start_61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_10c

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjgd:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    :goto_6d
    return-void

    :cond_6e
    move v3, v1

    goto :goto_47

    :cond_70
    if-nez v3, :cond_74

    if-ne p2, v6, :cond_12f

    :cond_74
    if-eqz p5, :cond_b4

    :try_start_76
    const-string v0, "Last-Modified"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_7e
    if-eqz v0, :cond_b6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b6

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_8d
    if-eq p2, v6, :cond_91

    if-ne p2, v7, :cond_b8

    :cond_91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcig;->zzjs(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcly;

    move-result-object v0

    if-nez v0, :cond_cf

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzcig;->zzb(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_a4
    .catchall {:try_start_76 .. :try_end_a4} :catchall_103

    move-result v0

    if-nez v0, :cond_cf

    :try_start_a7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_10c

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjgd:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    goto :goto_6d

    :cond_b4
    move-object v0, v2

    goto :goto_7e

    :cond_b6
    move-object v0, v2

    goto :goto_8d

    :cond_b8
    :try_start_b8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v2

    invoke-virtual {v2, p1, p4, v0}, Lcom/google/android/gms/internal/zzcig;->zzb(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_bf
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_103

    move-result v0

    if-nez v0, :cond_cf

    :try_start_c2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V
    :try_end_c9
    .catchall {:try_start_c2 .. :try_end_c9} :catchall_10c

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjgd:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    goto :goto_6d

    :cond_cf
    :try_start_cf
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/zzcgh;->zzar(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgh;)V

    if-ne p2, v6, :cond_113

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazg()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v2, "Config not found. Using empty config. appId"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_ee
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzbab()Lcom/google/android/gms/internal/zzchq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchq;->zzzs()Z

    move-result v0

    if-eqz v0, :cond_12a

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbai()Z

    move-result v0

    if-eqz v0, :cond_12a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzbah()V
    :try_end_101
    .catchall {:try_start_cf .. :try_end_101} :catchall_103

    goto/16 :goto_5a

    :catchall_103
    move-exception v0

    :try_start_104
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw v0
    :try_end_10c
    .catchall {:try_start_104 .. :try_end_10c} :catchall_10c

    :catchall_10c
    move-exception v0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjgd:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    throw v0

    :cond_113
    :try_start_113
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v2, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, p4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_ee

    :cond_12a
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V

    goto/16 :goto_5a

    :cond_12f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/zzcgh;->zzas(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgh;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzcig;->zzju(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzchx;->zzjcs:Lcom/google/android/gms/internal/zzcia;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    const/16 v2, 0x1f7

    if-eq p2, v2, :cond_16e

    const/16 v2, 0x1ad

    if-ne p2, v2, :cond_184

    :cond_16e
    :goto_16e
    if-eqz v0, :cond_17f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjct:Lcom/google/android/gms/internal/zzcia;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    :cond_17f
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V
    :try_end_182
    .catchall {:try_start_113 .. :try_end_182} :catchall_103

    goto/16 :goto_5a

    :cond_184
    move v0, v1

    goto :goto_16e
.end method

.method public final zzbaa()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfd:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public final zzbab()Lcom/google/android/gms/internal/zzchq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfi:Lcom/google/android/gms/internal/zzchq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfi:Lcom/google/android/gms/internal/zzchq;

    return-object v0
.end method

.method final zzbaf()J
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjcw:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1b

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjgg:J

    :goto_1a
    return-wide v0

    :cond_1b
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgg:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1a
.end method

.method public final zzbah()V
    .registers 15
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgf:Z

    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzckg;->zzbas()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Upload data called on the client side before use of service was decided"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_29b

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgf:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    :goto_2a
    return-void

    :cond_2b
    :try_start_2b
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Upload called in the client side when service should be used"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_29b

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgf:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    goto :goto_2a

    :cond_45
    :try_start_45
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgc:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_57

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_29b

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgf:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    goto :goto_2a

    :cond_57
    :try_start_57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjfx:Ljava/util/List;

    if-eqz v2, :cond_79

    const/4 v2, 0x1

    :goto_63
    if-eqz v2, :cond_7b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Uploading requested multiple times"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_57 .. :try_end_72} :catchall_29b

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgf:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    goto :goto_2a

    :cond_79
    const/4 v2, 0x0

    goto :goto_63

    :cond_7b
    :try_start_7b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzbab()Lcom/google/android/gms/internal/zzchq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchq;->zzzs()Z

    move-result v2

    if-nez v2, :cond_9c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V
    :try_end_95
    .catchall {:try_start_7b .. :try_end_95} :catchall_29b

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgf:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    goto :goto_2a

    :cond_9c
    :try_start_9c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Lcom/google/android/gms/internal/zzcgn;->zzayc()J

    move-result-wide v2

    sub-long v2, v10, v2

    const/4 v4, 0x0

    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/gms/internal/zzcim;->zzg(Ljava/lang/String;J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzchx;->zzjcr:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_d3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v5, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v2, v10, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->zzayf()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgb:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_f3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->zzaym()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgb:J

    :cond_f3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    sget-object v3, Lcom/google/android/gms/internal/zzchc;->zzjaj:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/zzcgn;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzchd;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/gms/internal/zzchc;->zzjak:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/internal/zzcgn;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzchd;)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v5

    invoke-virtual {v5, v4, v2, v3}, Lcom/google/android/gms/internal/zzcgo;->zzl(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_276

    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_11b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2cf

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/zzcme;

    iget-object v7, v2, Lcom/google/android/gms/internal/zzcme;->zzjmc:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11b

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcme;->zzjmc:Ljava/lang/String;

    move-object v6, v2

    :goto_136
    if-eqz v6, :cond_2cc

    const/4 v2, 0x0

    move v5, v2

    :goto_13a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_2cc

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/zzcme;

    iget-object v7, v2, Lcom/google/android/gms/internal/zzcme;->zzjmc:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1d6

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcme;->zzjmc:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d6

    const/4 v2, 0x0

    invoke-interface {v3, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    move-object v6, v2

    :goto_160
    new-instance v7, Lcom/google/android/gms/internal/zzcmd;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzcmd;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzcme;

    iput-object v2, v7, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzcgn;->zzaye()Z

    move-result v2

    if-eqz v2, :cond_1db

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzcgn;->zziz(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1db

    const/4 v2, 0x1

    move v3, v2

    :goto_186
    const/4 v2, 0x0

    move v5, v2

    :goto_188
    iget-object v2, v7, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    array-length v2, v2

    if-ge v5, v2, :cond_1de

    iget-object v9, v7, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/zzcme;

    aput-object v2, v9, v5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v7, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    aget-object v2, v2, v5

    const-wide/16 v12, 0x2e86

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v2, Lcom/google/android/gms/internal/zzcme;->zzjmb:Ljava/lang/Long;

    iget-object v2, v7, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    aget-object v2, v2, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v2, Lcom/google/android/gms/internal/zzcme;->zzjlr:Ljava/lang/Long;

    iget-object v2, v7, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    aget-object v2, v2, v5

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v2, Lcom/google/android/gms/internal/zzcme;->zzjmh:Ljava/lang/Boolean;

    if-nez v3, :cond_1d2

    iget-object v2, v7, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    aget-object v2, v2, v5

    const/4 v9, 0x0

    iput-object v9, v2, Lcom/google/android/gms/internal/zzcme;->zzjmo:Ljava/lang/String;

    :cond_1d2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_188

    :cond_1d6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_13a

    :cond_1db
    const/4 v2, 0x0

    move v3, v2

    goto :goto_186

    :cond_1de
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zzchm;->zzae(I)Z

    move-result v3

    if-eqz v3, :cond_2c9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/zzchk;->zza(Lcom/google/android/gms/internal/zzcmd;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_1f3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/zzclq;->zzb(Lcom/google/android/gms/internal/zzcmd;)[B

    move-result-object v6

    sget-object v2, Lcom/google/android/gms/internal/zzchc;->zzjat:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0
    :try_end_205
    .catchall {:try_start_9c .. :try_end_205} :catchall_29b

    :try_start_205
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27e

    const/4 v2, 0x1

    :goto_211
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjfx:Ljava/util/List;

    if-eqz v2, :cond_280

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v8, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :goto_225
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzchx;->zzjcs:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    const-string v2, "?"

    iget-object v8, v7, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    array-length v8, v8

    if-lez v8, :cond_23c

    iget-object v2, v7, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    :cond_23c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v7

    const-string v8, "Uploading data. app, uncompressed size, data"

    array-length v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v2, v10, v3}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjge:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzbab()Lcom/google/android/gms/internal/zzchq;

    move-result-object v3

    new-instance v8, Lcom/google/android/gms/internal/zzcip;

    invoke-direct {v8, p0}, Lcom/google/android/gms/internal/zzcip;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v10

    new-instance v2, Lcom/google/android/gms/internal/zzchu;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzchu;-><init>(Lcom/google/android/gms/internal/zzchq;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/zzchs;)V

    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/zzcih;->zzh(Ljava/lang/Runnable;)V
    :try_end_276
    .catch Ljava/net/MalformedURLException; {:try_start_205 .. :try_end_276} :catch_288
    .catchall {:try_start_205 .. :try_end_276} :catchall_29b

    :cond_276
    :goto_276
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgf:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    goto/16 :goto_2a

    :cond_27e
    const/4 v2, 0x0

    goto :goto_211

    :cond_280
    :try_start_280
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjfx:Ljava/util/List;
    :try_end_287
    .catch Ljava/net/MalformedURLException; {:try_start_280 .. :try_end_287} :catch_288
    .catchall {:try_start_280 .. :try_end_287} :catchall_29b

    goto :goto_225

    :catch_288
    move-exception v2

    :try_start_289
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v9}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_29a
    .catchall {:try_start_289 .. :try_end_29a} :catchall_29b

    goto :goto_276

    :catchall_29b
    move-exception v2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzcim;->zzjgf:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    throw v2

    :cond_2a3
    const-wide/16 v2, -0x1

    :try_start_2a5
    iput-wide v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgb:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzcgn;->zzayc()J

    move-result-wide v4

    sub-long v4, v10, v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcgo;->zzba(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_276

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v2

    if-eqz v2, :cond_276

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcgh;)V
    :try_end_2c8
    .catchall {:try_start_2a5 .. :try_end_2c8} :catchall_29b

    goto :goto_276

    :cond_2c9
    move-object v3, v2

    goto/16 :goto_1f3

    :cond_2cc
    move-object v6, v3

    goto/16 :goto_160

    :cond_2cf
    move-object v6, v5

    goto/16 :goto_136
.end method

.method final zzbak()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjga:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjga:I

    return-void
.end method

.method final zzbal()V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfs:Z

    if-nez v0, :cond_63

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazh()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "This instance being marked as an uploader"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbam()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbae()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfw:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcim;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchh;->zzaza()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    if-le v0, v1, :cond_64

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    :goto_5d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfs:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V

    :cond_63
    return-void

    :cond_64
    if-ge v0, v1, :cond_5d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjfw:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzcim;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5d

    :cond_84
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Storage version upgrade failed. Previous, current version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5d
.end method

.method public final zzbo(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V

    return-void
.end method

.method final zzc(Lcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;)V
    .registers 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    :goto_26
    return-void

    :cond_27
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v0, :cond_2f

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_26

    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_36
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgo;->zzah(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgl;

    move-result-object v3

    if-eqz v3, :cond_bc

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Removing conditional user property"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgo;->zzai(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v3, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    if-eqz v0, :cond_82

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgo;->zzaf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_82
    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    if-eqz v0, :cond_ac

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    if-eqz v0, :cond_95

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgx;->zzayx()Landroid/os/Bundle;

    move-result-object v2

    :cond_95
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    iget-wide v4, v4, Lcom/google/android/gms/internal/zzcha;->zzizu:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzcha;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzcim;->zzc(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    :cond_ac
    :goto_ac
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_b3
    .catchall {:try_start_36 .. :try_end_b3} :catchall_dc

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    goto/16 :goto_26

    :cond_bc
    :try_start_bc
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Conditional user property doesn\'t exist"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_db
    .catchall {:try_start_bc .. :try_end_db} :catchall_dc

    goto :goto_ac

    :catchall_dc
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw v0
.end method

.method final zzc(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_12
    return-void

    :cond_13
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v0, :cond_1b

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_12

    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Removing user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_39
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgo;->zzaf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "User property removed"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_65
    .catchall {:try_start_39 .. :try_end_65} :catchall_6d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    goto :goto_12

    :catchall_6d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw v0
.end method

.method final zzd(Lcom/google/android/gms/internal/zzcgi;)V
    .registers 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    :try_start_18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v4, "apps"

    const-string v5, "app_id=?"

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    const-string v5, "events"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "user_attributes"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "conditional_properties"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "raw_events"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "raw_events_metadata"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "queue"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "audience_filter_values"

    const-string v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v4

    if-lez v0, :cond_7e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "Reset analytics data. app, records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v2, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_7e} :catch_91

    :cond_7e
    :goto_7e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    iget-boolean v4, p1, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    iget-boolean v5, p1, Lcom/google/android/gms/internal/zzcgi;->zziye:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcim;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcim;->zzf(Lcom/google/android/gms/internal/zzcgi;)V

    return-void

    :catch_91
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-static {v2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7e
.end method

.method final zzd(Lcom/google/android/gms/internal/zzcgl;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcim;->zzjw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;)V

    :cond_b
    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/zzcgi;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/zzcgl;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcim;->zzjw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzcim;->zzc(Lcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;)V

    :cond_b
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzcgi;)V
    .registers 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :goto_1a
    return-void

    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcgh;->zzar(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgh;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcig;->zzjv(Ljava/lang/String;)V

    :cond_4e
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v0, :cond_56

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_1a

    :cond_56
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzcgi;->zziyc:J

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    :cond_64
    iget v0, p1, Lcom/google/android/gms/internal/zzcgi;->zziyd:I

    if-eqz v0, :cond_37c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Incorrect app type, assuming installed app. appId, appType"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_84
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_8b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v0

    if-eqz v0, :cond_13f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;
    :try_end_cf
    .catchall {:try_start_8b .. :try_end_cf} :catchall_26a

    :try_start_cf
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v3, v7

    const-string v7, "events"

    const-string v8, "app_id=?"

    invoke-virtual {v0, v7, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    const-string v8, "user_attributes"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "conditional_properties"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "apps"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "raw_events"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "raw_events_metadata"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "event_filters"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "property_filters"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "audience_filter_values"

    const-string v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v7

    if-lez v0, :cond_13e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v7, "Deleted application data. app, records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v7, v2, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_cf .. :try_end_13e} :catch_256
    .catchall {:try_start_cf .. :try_end_13e} :catchall_26a

    :cond_13e
    :goto_13e
    const/4 v0, 0x0

    :cond_13f
    if-eqz v0, :cond_172

    :try_start_141
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_172

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_172

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_pv"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcha;

    const-string v1, "_au"

    new-instance v2, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgx;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    :cond_172
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    const/4 v0, 0x0

    if-nez v6, :cond_273

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const-string v2, "_f"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgo;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v0

    :cond_184
    :goto_184
    if-nez v0, :cond_360

    const-wide/16 v0, 0x1

    const-wide/32 v2, 0x36ee80

    div-long v2, v4, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    if-nez v6, :cond_31d

    new-instance v2, Lcom/google/android/gms/internal/zzcln;

    const-string v3, "_fot"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_c"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_r"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_uwa"

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_pfo"

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_sys"

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_sysu"

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_284

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f8
    :goto_1f8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    const-string v2, "first_open_count"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgo;->zzal(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_218

    const-string v2, "_pfo"

    invoke-virtual {v8, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_218
    new-instance v0, Lcom/google/android/gms/internal/zzcha;

    const-string v1, "_f"

    new-instance v2, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgx;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    :cond_229
    :goto_229
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_et"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/internal/zzcha;

    const-string v1, "_e"

    new-instance v2, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgx;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    :cond_246
    :goto_246
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_24d
    .catchall {:try_start_141 .. :try_end_24d} :catchall_26a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    goto/16 :goto_1a

    :catch_256
    move-exception v0

    :try_start_257
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v3, "Error deleting application data. appId, error"

    invoke-static {v2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_268
    .catchall {:try_start_257 .. :try_end_268} :catchall_26a

    goto/16 :goto_13e

    :catchall_26a
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw v0

    :cond_273
    const/4 v1, 0x1

    if-ne v6, v1, :cond_184

    :try_start_276
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const-string v2, "_v"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgo;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgw;
    :try_end_281
    .catchall {:try_start_276 .. :try_end_281} :catchall_26a

    move-result-object v0

    goto/16 :goto_184

    :cond_284
    const/4 v1, 0x0

    :try_start_285
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbhf;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbhe;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbhe;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_291
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_285 .. :try_end_291} :catch_2ed
    .catchall {:try_start_285 .. :try_end_291} :catchall_26a

    move-result-object v0

    move-object v1, v0

    :goto_293
    if-eqz v1, :cond_2c1

    :try_start_295
    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_2c1

    const/4 v0, 0x0

    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v6, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_302

    const-string v1, "_uwa"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_2ad
    new-instance v2, Lcom/google/android/gms/internal/zzcln;

    const-string v3, "_fi"

    if-eqz v0, :cond_304

    const-wide/16 v0, 0x1

    :goto_2b5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V
    :try_end_2c1
    .catchall {:try_start_295 .. :try_end_2c1} :catchall_26a

    :cond_2c1
    const/4 v1, 0x0

    :try_start_2c2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbhf;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbhe;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbhe;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2ce
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c2 .. :try_end_2ce} :catch_307
    .catchall {:try_start_2c2 .. :try_end_2ce} :catchall_26a

    move-result-object v0

    :goto_2cf
    if-eqz v0, :cond_1f8

    :try_start_2d1
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2de

    const-string v1, "_sys"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2de
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1f8

    const-string v0, "_sysu"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_1f8

    :catch_2ed
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Package info is null, first open report might be inaccurate. appId"

    iget-object v6, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v6, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_293

    :cond_302
    const/4 v0, 0x1

    goto :goto_2ad

    :cond_304
    const-wide/16 v0, 0x0

    goto :goto_2b5

    :catch_307
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Application info is null, first open report might be inaccurate. appId"

    iget-object v6, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v6, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_2cf

    :cond_31d
    const/4 v2, 0x1

    if-ne v6, v2, :cond_229

    new-instance v2, Lcom/google/android/gms/internal/zzcln;

    const-string v3, "_fvt"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_c"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_r"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/internal/zzcha;

    const-string v1, "_v"

    new-instance v2, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgx;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    goto/16 :goto_229

    :cond_360
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzcgi;->zzixy:Z

    if-eqz v0, :cond_246

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzcha;

    const-string v1, "_cd"

    new-instance v2, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgx;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V
    :try_end_37a
    .catchall {:try_start_2d1 .. :try_end_37a} :catchall_26a

    goto/16 :goto_246

    :cond_37c
    move v6, v0

    goto/16 :goto_84
.end method

.method final zzi(Ljava/lang/Runnable;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfy:Ljava/util/List;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfy:Ljava/util/List;

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzjx(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcio;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcio;-><init>(Lcom/google/android/gms/internal/zzcim;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcih;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v2, 0x7530

    :try_start_f
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f .. :try_end_17} :catch_2e
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_17} :catch_18
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_17} :catch_2c

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Failed to get app instance id. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_17

    :catch_2c
    move-exception v0

    goto :goto_19

    :catch_2e
    move-exception v0

    goto :goto_19
.end method

.method public final zzws()Lcom/google/android/gms/common/util/zzd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    return-object v0
.end method

.method final zzxf()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzdtb:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method
