.class public final Lcom/google/android/gms/internal/zzebk;
.super Ljava/lang/Object;


# instance fields
.field private final host:Ljava/lang/String;

.field private final secure:Z

.field private final zzjrg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebk;->host:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzebk;->zzjrg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzebk;->secure:Z

    return-void
.end method


# virtual methods
.method public final getHost()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebk;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebk;->zzjrg:Ljava/lang/String;

    return-object v0
.end method

.method public final isSecure()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzebk;->secure:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzebk;->secure:Z

    if-eqz v0, :cond_39

    const-string v0, "s"

    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzebk;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "http"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_39
    const-string v0, ""

    goto :goto_6
.end method
