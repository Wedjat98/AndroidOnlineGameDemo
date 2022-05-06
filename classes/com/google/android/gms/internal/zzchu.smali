.class final Lcom/google/android/gms/internal/zzchu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final zzbxv:Ljava/net/URL;

.field private final zzgfx:[B

.field private final zzjck:Lcom/google/android/gms/internal/zzchs;

.field private final zzjcl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic zzjcm:Lcom/google/android/gms/internal/zzchq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzchq;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/zzchs;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzchs;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchu;->zzjcm:Lcom/google/android/gms/internal/zzchq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzchu;->zzbxv:Ljava/net/URL;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzchu;->zzgfx:[B

    iput-object p6, p0, Lcom/google/android/gms/internal/zzchu;->zzjck:Lcom/google/android/gms/internal/zzchs;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzchu;->mPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzchu;->zzjcl:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchu;->zzjcm:Lcom/google/android/gms/internal/zzchq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawj()V

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchu;->zzbxv:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_3d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to obtain HTTP connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_19} :catch_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_107

    :catch_19
    move-exception v9

    move-object v11, v4

    move v8, v3

    move-object v0, v4

    move-object v1, v4

    :goto_1e
    if-eqz v0, :cond_23

    :try_start_20
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_ef

    :cond_23
    :goto_23
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchu;->zzjcm:Lcom/google/android/gms/internal/zzchq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/zzcht;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzchu;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzchu;->zzjck:Lcom/google/android/gms/internal/zzchs;

    move-object v10, v4

    move-object v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/internal/zzcht;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzchs;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/internal/zzchr;)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    :goto_3c
    return-void

    :cond_3d
    :try_start_3d
    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v1, 0xee48

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_57} :catch_19
    .catchall {:try_start_3d .. :try_end_57} :catchall_107

    :try_start_57
    iget-object v1, p0, Lcom/google/android/gms/internal/zzchu;->zzjcl:Ljava/util/Map;

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchu;->zzjcl:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_65
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    :catch_81
    move-exception v9

    move-object v11, v4

    move v8, v3

    move-object v1, v0

    move-object v0, v4

    goto :goto_1e

    :cond_87
    iget-object v1, p0, Lcom/google/android/gms/internal/zzchu;->zzgfx:[B

    if-eqz v1, :cond_c7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchu;->zzjcm:Lcom/google/android/gms/internal/zzchq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzchu;->zzgfx:[B

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzclq;->zzq([B)[B

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchu;->zzjcm:Lcom/google/android/gms/internal/zzchq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v5, "Uploading data. size"

    array-length v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "Content-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v0, v1, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_c0} :catch_81
    .catchall {:try_start_57 .. :try_end_c0} :catchall_142

    move-result-object v1

    :try_start_c1
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c7} :catch_14f
    .catchall {:try_start_c1 .. :try_end_c7} :catchall_147

    :cond_c7
    :try_start_c7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ce} :catch_81
    .catchall {:try_start_c7 .. :try_end_ce} :catchall_142

    move-result-object v6

    :try_start_cf
    iget-object v1, p0, Lcom/google/android/gms/internal/zzchu;->zzjcm:Lcom/google/android/gms/internal/zzchq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzchq;->zza(Lcom/google/android/gms/internal/zzchq;Ljava/net/HttpURLConnection;)[B
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d4} :catch_157
    .catchall {:try_start_cf .. :try_end_d4} :catchall_14b

    move-result-object v5

    if-eqz v0, :cond_da

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_da
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchu;->zzjcm:Lcom/google/android/gms/internal/zzchq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v8

    new-instance v0, Lcom/google/android/gms/internal/zzcht;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchu;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzchu;->zzjck:Lcom/google/android/gms/internal/zzchs;

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcht;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzchs;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/internal/zzchr;)V

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    goto/16 :goto_3c

    :catch_ef
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzchu;->zzjcm:Lcom/google/android/gms/internal/zzchq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v5, p0, Lcom/google/android/gms/internal/zzchu;->mPackageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :catchall_107
    move-exception v0

    move-object v8, v0

    move-object v6, v4

    move-object v1, v4

    move-object v0, v4

    :goto_10c
    if-eqz v1, :cond_111

    :try_start_10e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_12b

    :cond_111
    :goto_111
    if-eqz v0, :cond_116

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_116
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchu;->zzjcm:Lcom/google/android/gms/internal/zzchq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v9

    new-instance v0, Lcom/google/android/gms/internal/zzcht;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchu;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzchu;->zzjck:Lcom/google/android/gms/internal/zzchs;

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcht;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzchs;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/internal/zzchr;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    throw v8

    :catch_12b
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzchu;->zzjcm:Lcom/google/android/gms/internal/zzchq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v5, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v7, p0, Lcom/google/android/gms/internal/zzchu;->mPackageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v5, v7, v1}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_111

    :catchall_142
    move-exception v1

    move-object v8, v1

    move-object v6, v4

    move-object v1, v4

    goto :goto_10c

    :catchall_147
    move-exception v2

    move-object v8, v2

    move-object v6, v4

    goto :goto_10c

    :catchall_14b
    move-exception v1

    move-object v8, v1

    move-object v1, v4

    goto :goto_10c

    :catch_14f
    move-exception v9

    move-object v11, v4

    move v8, v3

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_1e

    :catch_157
    move-exception v9

    move-object v11, v6

    move v8, v3

    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_1e
.end method
