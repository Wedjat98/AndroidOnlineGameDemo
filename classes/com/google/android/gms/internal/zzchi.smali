.class public final Lcom/google/android/gms/internal/zzchi;
.super Lcom/google/android/gms/internal/zzcjl;


# instance fields
.field private final zzjbn:Lcom/google/android/gms/internal/zzchj;

.field private zzjbo:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcim;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcjl;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    new-instance v0, Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "google_app_measurement_local.db"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzchj;-><init>(Lcom/google/android/gms/internal/zzchi;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchi;->zzjbn:Lcom/google/android/gms/internal/zzchj;

    return-void
.end method

.method private final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzchi;->zzjbo:Z

    if-eqz v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzchi;->zzjbn:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzchi;->zzjbo:Z

    goto :goto_5

    :cond_12
    move-object v0, v1

    goto :goto_5
.end method

.method private final zzb(I[B)Z
    .registers 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzchi;->zzjbo:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "entry"

    invoke-virtual {v7, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v1, 0x5

    const/4 v0, 0x0

    move v6, v0

    move v0, v1

    :goto_20
    const/4 v1, 0x5

    if-ge v6, v1, :cond_118

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_25
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_35

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzchi;->zzjbo:Z
    :try_end_2e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_25 .. :try_end_2e} :catch_b4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_2e} :catch_d4
    .catchall {:try_start_25 .. :try_end_2e} :catchall_10c

    if-eqz v3, :cond_33

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_33
    const/4 v0, 0x0

    goto :goto_8

    :cond_35
    :try_start_35
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v4, 0x0

    const-string v1, "select count(1) from messages"

    const/4 v8, 0x0

    invoke-virtual {v3, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4e

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :cond_4e
    const-wide/32 v8, 0x186a0

    cmp-long v1, v4, v8

    if-ltz v1, :cond_9b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v8, "Data loss, local db full"

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    const-wide/32 v8, 0x186a0

    sub-long v4, v8, v4

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    const-string v1, "messages"

    const-string v8, "rowid in (select rowid from messages order by rowid asc limit ?)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v3, v1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v8, v1

    cmp-long v1, v8, v4

    if-eqz v1, :cond_9b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v10, "Different delete count than expected in local db. expected, received, difference"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v10, v11, v12, v4}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9b
    const-string v1, "messages"

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_35 .. :try_end_a7} :catch_b4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_35 .. :try_end_a7} :catch_d4
    .catchall {:try_start_35 .. :try_end_a7} :catchall_10c

    if-eqz v2, :cond_ac

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_ac
    if-eqz v3, :cond_b1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b1
    const/4 v0, 0x1

    goto/16 :goto_8

    :catch_b4
    move-exception v1

    :try_start_b5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v5, "Error writing entry to local database"

    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzchi;->zzjbo:Z
    :try_end_c5
    .catchall {:try_start_b5 .. :try_end_c5} :catchall_10c

    if-eqz v2, :cond_ca

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_ca
    if-eqz v3, :cond_cf

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_cf
    :goto_cf
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_20

    :catch_d4
    move-exception v1

    :try_start_d5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_f0

    instance-of v4, v1, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    if-eqz v4, :cond_f0

    int-to-long v4, v0

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_e3
    .catchall {:try_start_d5 .. :try_end_e3} :catchall_10c

    add-int/lit8 v0, v0, 0x14

    :goto_e5
    if-eqz v2, :cond_ea

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_ea
    if-eqz v3, :cond_cf

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_cf

    :cond_f0
    if-eqz v3, :cond_fb

    :try_start_f2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-eqz v4, :cond_fb

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_fb
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v5, "Error writing entry to local database"

    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzchi;->zzjbo:Z
    :try_end_10b
    .catchall {:try_start_f2 .. :try_end_10b} :catchall_10c

    goto :goto_e5

    :catchall_10c
    move-exception v0

    if-eqz v2, :cond_112

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_112
    if-eqz v3, :cond_117

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_117
    throw v0

    :cond_118
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Failed to write entry to local database"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_8
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final resetAnalyticsData()V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    if-lez v0, :cond_24

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_24} :catch_25

    :cond_24
    :goto_24
    return-void

    :catch_25
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_24
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcha;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzcha;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    array-length v1, v2

    const/high16 v3, 0x20000

    if-le v1, v3, :cond_22

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Event is too long for local database. Sending event directly to service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :goto_21
    return v0

    :cond_22
    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/zzchi;->zzb(I[B)Z

    move-result v0

    goto :goto_21
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcln;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzcln;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    array-length v1, v2

    const/high16 v3, 0x20000

    if-le v1, v3, :cond_22

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "User property too long for local database. Sending directly to service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/zzchi;->zzb(I[B)Z

    move-result v0

    goto :goto_21
.end method

.method public final bridge synthetic zzawi()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawi()V

    return-void
.end method

.method public final bridge synthetic zzawj()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawj()V

    return-void
.end method

.method public final bridge synthetic zzawk()Lcom/google/android/gms/internal/zzcgd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawk()Lcom/google/android/gms/internal/zzcgd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawl()Lcom/google/android/gms/internal/zzcgk;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawl()Lcom/google/android/gms/internal/zzcgk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawm()Lcom/google/android/gms/internal/zzcjn;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawn()Lcom/google/android/gms/internal/zzchh;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawo()Lcom/google/android/gms/internal/zzcgu;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawp()Lcom/google/android/gms/internal/zzckg;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawq()Lcom/google/android/gms/internal/zzckc;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawq()Lcom/google/android/gms/internal/zzckc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawr()Lcom/google/android/gms/internal/zzchi;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawr()Lcom/google/android/gms/internal/zzchi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaws()Lcom/google/android/gms/internal/zzcgo;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawt()Lcom/google/android/gms/internal/zzchk;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawu()Lcom/google/android/gms/internal/zzclq;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawv()Lcom/google/android/gms/internal/zzcig;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaww()Lcom/google/android/gms/internal/zzclf;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaww()Lcom/google/android/gms/internal/zzclf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawx()Lcom/google/android/gms/internal/zzcih;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawy()Lcom/google/android/gms/internal/zzchm;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawz()Lcom/google/android/gms/internal/zzchx;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaxa()Lcom/google/android/gms/internal/zzcgn;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaxa()Lcom/google/android/gms/internal/zzcgn;

    move-result-object v0

    return-object v0
.end method

.method protected final zzaxz()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzcgl;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzclq;->zza(Landroid/os/Parcelable;)[B

    move-result-object v0

    array-length v1, v0

    const/high16 v2, 0x20000

    if-le v1, v2, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Conditional user property too long for local database. Sending directly to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1a
    return v0

    :cond_1b
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzchi;->zzb(I[B)Z

    move-result v0

    goto :goto_1a
.end method

.method public final zzeb(I)Ljava/util/List;
    .registers 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbfm;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzchi;->zzjbo:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement_local.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_20

    move-object v0, v10

    goto :goto_8

    :cond_20
    const/4 v9, 0x5

    const/4 v0, 0x0

    move v12, v0

    :goto_23
    const/4 v0, 0x5

    if-ge v12, v0, :cond_1dc

    const/4 v1, 0x0

    const/4 v11, 0x0

    :try_start_28
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_28 .. :try_end_2b} :catch_20b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_2b} :catch_200
    .catchall {:try_start_28 .. :try_end_2b} :catchall_1ec

    move-result-object v0

    if-nez v0, :cond_38

    const/4 v1, 0x1

    :try_start_2f
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzchi;->zzjbo:Z
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2f .. :try_end_31} :catch_210
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f .. :try_end_31} :catch_204
    .catchall {:try_start_2f .. :try_end_31} :catchall_1f0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_36
    const/4 v0, 0x0

    goto :goto_8

    :cond_38
    :try_start_38
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "messages"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "rowid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "entry"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "rowid asc"

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_38 .. :try_end_5e} :catch_210
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_38 .. :try_end_5e} :catch_204
    .catchall {:try_start_38 .. :try_end_5e} :catchall_1f0

    move-result-object v2

    const-wide/16 v4, -0x1

    :cond_61
    :goto_61
    :try_start_61
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_186

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    if-nez v1, :cond_101

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_7b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_61 .. :try_end_7b} :catch_96
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_61 .. :try_end_7b} :catch_ce
    .catchall {:try_start_61 .. :try_end_7b} :catchall_f2

    move-result-object v3

    const/4 v1, 0x0

    :try_start_7d
    array-length v7, v6

    invoke-virtual {v3, v6, v1, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Lcom/google/android/gms/internal/zzcha;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzcha;
    :try_end_8d
    .catch Lcom/google/android/gms/internal/zzbfo; {:try_start_7d .. :try_end_8d} :catch_bc
    .catchall {:try_start_7d .. :try_end_8d} :catchall_ed

    :try_start_8d
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    if-eqz v1, :cond_61

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_95
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8d .. :try_end_95} :catch_96
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8d .. :try_end_95} :catch_ce
    .catchall {:try_start_8d .. :try_end_95} :catchall_f2

    goto :goto_61

    :catch_96
    move-exception v1

    move-object v13, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v13

    :goto_9b
    :try_start_9b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "Error reading entries from local database"

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzchi;->zzjbo:Z
    :try_end_ab
    .catchall {:try_start_9b .. :try_end_ab} :catchall_1f7

    if-eqz v1, :cond_b0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b0
    if-eqz v2, :cond_216

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v0, v9

    :cond_b6
    :goto_b6
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    move v9, v0

    goto/16 :goto_23

    :catch_bc
    move-exception v1

    :try_start_bd
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v6, "Failed to load event from local database"

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V
    :try_end_ca
    .catchall {:try_start_bd .. :try_end_ca} :catchall_ed

    :try_start_ca
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_cd
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_ca .. :try_end_cd} :catch_96
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ca .. :try_end_cd} :catch_ce
    .catchall {:try_start_ca .. :try_end_cd} :catchall_f2

    goto :goto_61

    :catch_ce
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_d2
    :try_start_d2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1be

    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    if-eqz v3, :cond_1be

    int-to-long v4, v9

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_e0
    .catchall {:try_start_d2 .. :try_end_e0} :catchall_1fd

    add-int/lit8 v0, v9, 0x14

    :goto_e2
    if-eqz v2, :cond_e7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e7
    if-eqz v1, :cond_b6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_b6

    :catchall_ed
    move-exception v1

    :try_start_ee
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_f2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_ee .. :try_end_f2} :catch_96
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ee .. :try_end_f2} :catch_ce
    .catchall {:try_start_ee .. :try_end_f2} :catchall_f2

    :catchall_f2
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_f6
    if-eqz v2, :cond_fb

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_fb
    if-eqz v1, :cond_100

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_100
    throw v0

    :cond_101
    const/4 v3, 0x1

    if-ne v1, v3, :cond_13c

    :try_start_104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_107
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_104 .. :try_end_107} :catch_96
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_104 .. :try_end_107} :catch_ce
    .catchall {:try_start_104 .. :try_end_107} :catchall_f2

    move-result-object v7

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_10a
    array-length v8, v6

    invoke-virtual {v7, v6, v1, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Lcom/google/android/gms/internal/zzcln;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzcln;
    :try_end_11a
    .catch Lcom/google/android/gms/internal/zzbfo; {:try_start_10a .. :try_end_11a} :catch_124
    .catchall {:try_start_10a .. :try_end_11a} :catchall_137

    :try_start_11a
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    :goto_11d
    if-eqz v1, :cond_61

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_122
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_11a .. :try_end_122} :catch_96
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11a .. :try_end_122} :catch_ce
    .catchall {:try_start_11a .. :try_end_122} :catchall_f2

    goto/16 :goto_61

    :catch_124
    move-exception v1

    :try_start_125
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v6, "Failed to load user property from local database"

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V
    :try_end_132
    .catchall {:try_start_125 .. :try_end_132} :catchall_137

    :try_start_132
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object v1, v3

    goto :goto_11d

    :catchall_137
    move-exception v1

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    throw v1

    :cond_13c
    const/4 v3, 0x2

    if-ne v1, v3, :cond_177

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_142
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_132 .. :try_end_142} :catch_96
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_132 .. :try_end_142} :catch_ce
    .catchall {:try_start_132 .. :try_end_142} :catchall_f2

    move-result-object v7

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_145
    array-length v8, v6

    invoke-virtual {v7, v6, v1, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Lcom/google/android/gms/internal/zzcgl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzcgl;
    :try_end_155
    .catch Lcom/google/android/gms/internal/zzbfo; {:try_start_145 .. :try_end_155} :catch_15f
    .catchall {:try_start_145 .. :try_end_155} :catchall_172

    :try_start_155
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    :goto_158
    if-eqz v1, :cond_61

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_155 .. :try_end_15d} :catch_96
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_155 .. :try_end_15d} :catch_ce
    .catchall {:try_start_155 .. :try_end_15d} :catchall_f2

    goto/16 :goto_61

    :catch_15f
    move-exception v1

    :try_start_160
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v6, "Failed to load user property from local database"

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V
    :try_end_16d
    .catchall {:try_start_160 .. :try_end_16d} :catchall_172

    :try_start_16d
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object v1, v3

    goto :goto_158

    :catchall_172
    move-exception v1

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    throw v1

    :cond_177
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v3, "Unknown record type in local database"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    goto/16 :goto_61

    :cond_186
    const-string v1, "messages"

    const-string v3, "rowid <= ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-virtual {v0, v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1ab

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v3, "Fewer entries removed from local database than expected"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_1ab
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1b1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_16d .. :try_end_1b1} :catch_96
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16d .. :try_end_1b1} :catch_ce
    .catchall {:try_start_16d .. :try_end_1b1} :catchall_f2

    if-eqz v2, :cond_1b6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1b6
    if-eqz v0, :cond_1bb

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1bb
    move-object v0, v10

    goto/16 :goto_8

    :cond_1be
    if-eqz v1, :cond_1c9

    :try_start_1c0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_1c9

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1c9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "Error reading entries from local database"

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzchi;->zzjbo:Z
    :try_end_1d9
    .catchall {:try_start_1c0 .. :try_end_1d9} :catchall_1fd

    move v0, v9

    goto/16 :goto_e2

    :cond_1dc
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_8

    :catchall_1ec
    move-exception v0

    move-object v2, v11

    goto/16 :goto_f6

    :catchall_1f0
    move-exception v1

    move-object v2, v11

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_f6

    :catchall_1f7
    move-exception v0

    move-object v13, v1

    move-object v1, v2

    move-object v2, v13

    goto/16 :goto_f6

    :catchall_1fd
    move-exception v0

    goto/16 :goto_f6

    :catch_200
    move-exception v0

    move-object v2, v11

    goto/16 :goto_d2

    :catch_204
    move-exception v1

    move-object v2, v11

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_d2

    :catch_20b
    move-exception v0

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_9b

    :catch_210
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_9b

    :cond_216
    move v0, v9

    goto/16 :goto_b6
.end method

.method public final bridge synthetic zzve()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzve()V

    return-void
.end method

.method public final bridge synthetic zzws()Lcom/google/android/gms/common/util/zzd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    return-object v0
.end method
