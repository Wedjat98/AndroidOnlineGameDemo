.class public final Lcom/google/android/gms/internal/zzelg;
.super Ljava/lang/Object;


# instance fields
.field private final zzldj:Ljava/lang/String;

.field private final zznex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzelg;->zzldj:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzelg;->zznex:Ljava/util/Map;

    return-void
.end method

.method public static zzqa(Ljava/lang/String;)Lcom/google/android/gms/internal/zzelg;
    .registers 4

    const-string v0, "gauth|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :try_start_f
    invoke-static {v0}, Lcom/google/android/gms/internal/zzelh;->zzqb(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v0, "token"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "auth"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/internal/zzelg;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/zzelg;-><init>(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_28} :catch_2a

    move-object v0, v2

    goto :goto_9

    :catch_2a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to parse gauth token"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final getToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelg;->zzldj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzcbf()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelg;->zznex:Ljava/util/Map;

    return-object v0
.end method
