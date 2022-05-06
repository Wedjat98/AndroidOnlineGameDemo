.class final Lcom/google/android/gms/internal/zzebc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeci;


# static fields
.field private static zzmnd:J


# instance fields
.field private final zzmlr:Lcom/google/android/gms/internal/zzejc;

.field private zzmne:Lcom/google/android/gms/internal/zzebk;

.field private zzmnf:Lcom/google/android/gms/internal/zzecf;

.field private zzmng:Lcom/google/android/gms/internal/zzebd;

.field private zzmnh:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/zzebc;->zzmnd:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzebi;Lcom/google/android/gms/internal/zzebk;Ljava/lang/String;Lcom/google/android/gms/internal/zzebd;Ljava/lang/String;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/google/android/gms/internal/zzebc;->zzmnd:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/zzebc;->zzmnd:J

    iput-object p2, p0, Lcom/google/android/gms/internal/zzebc;->zzmne:Lcom/google/android/gms/internal/zzebk;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzebc;->zzmng:Lcom/google/android/gms/internal/zzebd;

    new-instance v2, Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebi;->zzbub()Lcom/google/android/gms/internal/zzejd;

    move-result-object v3

    const-string v4, "Connection"

    const/16 v5, 0x19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "conn_"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzejc;-><init>(Lcom/google/android/gms/internal/zzejd;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    sget v0, Lcom/google/android/gms/internal/zzebf;->zzmnl:I

    iput v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmnh:I

    new-instance v0, Lcom/google/android/gms/internal/zzecf;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzecf;-><init>(Lcom/google/android/gms/internal/zzebi;Lcom/google/android/gms/internal/zzebk;Ljava/lang/String;Lcom/google/android/gms/internal/zzeci;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmnf:Lcom/google/android/gms/internal/zzecf;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzebe;)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmnh:I

    sget v1, Lcom/google/android/gms/internal/zzebf;->zzmnn:I

    if-eq v0, v1, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "closing realtime connection"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_19
    sget v0, Lcom/google/android/gms/internal/zzebf;->zzmnn:I

    iput v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmnh:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmnf:Lcom/google/android/gms/internal/zzecf;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmnf:Lcom/google/android/gms/internal/zzecf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecf;->close()V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzebc;->zzmnf:Lcom/google/android/gms/internal/zzecf;

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmng:Lcom/google/android/gms/internal/zzebd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzebd;->zzb(Lcom/google/android/gms/internal/zzebe;)V

    :cond_2d
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzebe;->zzmnj:Lcom/google/android/gms/internal/zzebe;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebc;->zza(Lcom/google/android/gms/internal/zzebe;)V

    return-void
.end method

.method public final open()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "Opening a connection"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmnf:Lcom/google/android/gms/internal/zzecf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecf;->open()V

    return-void
.end method

.method public final zza(Ljava/util/Map;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "t"

    const-string v2, "d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmnh:I

    sget v2, Lcom/google/android/gms/internal/zzebf;->zzmnm:I

    if-eq v1, v2, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "Tried to send on an unconnected connection"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_22
    return-void

    :cond_23
    if-eqz p2, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v2, "Sending data (contents hidden)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmnf:Lcom/google/android/gms/internal/zzecf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzecf;->send(Ljava/util/Map;)V

    goto :goto_22

    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v2, "Sending data: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v5, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2e
.end method

.method public final zzag(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_2
    const-string v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_25b

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v2, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v3, "received data message: "

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3a
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_41
    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmng:Lcom/google/android/gms/internal/zzebd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzebd;->zzah(Ljava/util/Map;)V

    :cond_46
    :goto_46
    return-void

    :cond_47
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_4c} :catch_4d

    goto :goto_3a

    :catch_4d
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v2, "Failed to parse server message: "

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_28d

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6c
    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v8, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_71
    sget-object v0, Lcom/google/android/gms/internal/zzebe;->zzmnj:Lcom/google/android/gms/internal/zzebe;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebc;->zza(Lcom/google/android/gms/internal/zzebe;)V

    goto :goto_46

    :cond_77
    :try_start_77
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_232

    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_ac

    iget-object v2, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v3, "Got control message: "

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_112

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_a5
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_ac
    .catch Ljava/lang/ClassCastException; {:try_start_77 .. :try_end_ac} :catch_4d

    :cond_ac
    :try_start_ac
    const-string v1, "t"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1f9

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const-string v1, "d"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_d9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v2, "Connection shutdown command received. Shutting down..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_d9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmng:Lcom/google/android/gms/internal/zzebd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzebd;->zzpk(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzebe;->zzmnj:Lcom/google/android/gms/internal/zzebe;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebc;->zza(Lcom/google/android/gms/internal/zzebe;)V
    :try_end_e3
    .catch Ljava/lang/ClassCastException; {:try_start_ac .. :try_end_e3} :catch_e5

    goto/16 :goto_46

    :catch_e5
    move-exception v0

    :try_start_e6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v2, "Failed to parse control message: "

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_22b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_104
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_10b
    sget-object v0, Lcom/google/android/gms/internal/zzebe;->zzmnj:Lcom/google/android/gms/internal/zzebe;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebc;->zza(Lcom/google/android/gms/internal/zzebe;)V

    goto/16 :goto_46

    :cond_112
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_117
    .catch Ljava/lang/ClassCastException; {:try_start_e6 .. :try_end_117} :catch_4d

    goto :goto_a5

    :cond_118
    :try_start_118
    const-string v2, "r"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17b

    const-string v1, "d"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_16f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzebc;->zzmne:Lcom/google/android/gms/internal/zzebk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzebk;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Got a reset; killing connection to "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Updating internalHost to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_16f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmng:Lcom/google/android/gms/internal/zzebd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzebd;->zzpj(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzebe;->zzmni:Lcom/google/android/gms/internal/zzebe;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebc;->zza(Lcom/google/android/gms/internal/zzebe;)V

    goto/16 :goto_46

    :cond_17b
    const-string v2, "h"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d0

    const-string v1, "d"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "ts"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v1, "h"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzebc;->zzmng:Lcom/google/android/gms/internal/zzebd;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/zzebd;->zzpj(Ljava/lang/String;)V

    const-string v1, "s"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmnh:I

    sget v4, Lcom/google/android/gms/internal/zzebf;->zzmnl:I

    if-ne v1, v4, :cond_46

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_1c5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v4, "realtime connection established"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1c5
    sget v1, Lcom/google/android/gms/internal/zzebf;->zzmnm:I

    iput v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmnh:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmng:Lcom/google/android/gms/internal/zzebd;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzebd;->zzc(JLjava/lang/String;)V

    goto/16 :goto_46

    :cond_1d0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v2, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v3, "Ignoring unknown control message: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1f3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1ea
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_46

    :cond_1f3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1ea

    :cond_1f9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_21e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v2, "Got invalid control message: "

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_225

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_217
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_21e
    sget-object v0, Lcom/google/android/gms/internal/zzebe;->zzmnj:Lcom/google/android/gms/internal/zzebe;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebc;->zza(Lcom/google/android/gms/internal/zzebe;)V

    goto/16 :goto_46

    :cond_225
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_22a
    .catch Ljava/lang/ClassCastException; {:try_start_118 .. :try_end_22a} :catch_e5

    goto :goto_217

    :cond_22b
    :try_start_22b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_104

    :cond_232
    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v2, "Ignoring unknown server message type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_255

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_24c
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_46

    :cond_255
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_24c

    :cond_25b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_280

    iget-object v1, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v2, "Failed to parse server message: missing message type:"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_287

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_279
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_280
    sget-object v0, Lcom/google/android/gms/internal/zzebe;->zzmnj:Lcom/google/android/gms/internal/zzebe;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebc;->zza(Lcom/google/android/gms/internal/zzebe;)V

    goto/16 :goto_46

    :cond_287
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_28c
    .catch Ljava/lang/ClassCastException; {:try_start_22b .. :try_end_28c} :catch_4d

    goto :goto_279

    :cond_28d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6c
.end method

.method public final zzck(Z)V
    .registers 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/zzebc;->zzmnf:Lcom/google/android/gms/internal/zzecf;

    if-nez p1, :cond_23

    iget v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmnh:I

    sget v1, Lcom/google/android/gms/internal/zzebf;->zzmnl:I

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "Realtime connection failed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1d
    :goto_1d
    sget-object v0, Lcom/google/android/gms/internal/zzebe;->zzmnj:Lcom/google/android/gms/internal/zzebe;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzebc;->zza(Lcom/google/android/gms/internal/zzebe;)V

    return-void

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebc;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "Realtime connection lost"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1d
.end method
