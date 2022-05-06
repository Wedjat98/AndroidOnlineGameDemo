.class public final Lcom/google/android/gms/internal/zzegq;
.super Ljava/lang/Object;


# static fields
.field public static final zzmxs:Lcom/google/android/gms/internal/zzegq;

.field public static final zzmxt:Lcom/google/android/gms/internal/zzegq;


# instance fields
.field private final zzmxu:Lcom/google/android/gms/internal/zzegr;

.field private final zzmxv:Lcom/google/android/gms/internal/zzeih;

.field private final zzmxw:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzegq;

    sget-object v1, Lcom/google/android/gms/internal/zzegr;->zzmxx:Lcom/google/android/gms/internal/zzegr;

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzegq;-><init>(Lcom/google/android/gms/internal/zzegr;Lcom/google/android/gms/internal/zzeih;Z)V

    sput-object v0, Lcom/google/android/gms/internal/zzegq;->zzmxs:Lcom/google/android/gms/internal/zzegq;

    new-instance v0, Lcom/google/android/gms/internal/zzegq;

    sget-object v1, Lcom/google/android/gms/internal/zzegr;->zzmxy:Lcom/google/android/gms/internal/zzegr;

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzegq;-><init>(Lcom/google/android/gms/internal/zzegr;Lcom/google/android/gms/internal/zzeih;Z)V

    sput-object v0, Lcom/google/android/gms/internal/zzegq;->zzmxt:Lcom/google/android/gms/internal/zzegq;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzegr;Lcom/google/android/gms/internal/zzeih;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegq;->zzmxu:Lcom/google/android/gms/internal/zzegr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzegq;->zzmxv:Lcom/google/android/gms/internal/zzeih;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzegq;->zzmxw:Z

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/zzeih;)Lcom/google/android/gms/internal/zzegq;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzegq;

    sget-object v1, Lcom/google/android/gms/internal/zzegr;->zzmxy:Lcom/google/android/gms/internal/zzegr;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/zzegq;-><init>(Lcom/google/android/gms/internal/zzegr;Lcom/google/android/gms/internal/zzeih;Z)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegq;->zzmxu:Lcom/google/android/gms/internal/zzegr;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegq;->zzmxv:Lcom/google/android/gms/internal/zzeih;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzegq;->zzmxw:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "OperationSource{source="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", queryParams="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tagged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbxl()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegq;->zzmxu:Lcom/google/android/gms/internal/zzegr;

    sget-object v1, Lcom/google/android/gms/internal/zzegr;->zzmxx:Lcom/google/android/gms/internal/zzegr;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final zzbxm()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegq;->zzmxw:Z

    return v0
.end method

.method public final zzbxn()Lcom/google/android/gms/internal/zzeih;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegq;->zzmxv:Lcom/google/android/gms/internal/zzeih;

    return-object v0
.end method
