.class final Lcom/google/android/gms/internal/zzejp;
.super Ljava/lang/Object;


# instance fields
.field private zzncd:Ljava/lang/StringBuilder;

.field private zznce:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/gms/internal/zzejg;",
            ">;"
        }
    .end annotation
.end field

.field private zzncf:I

.field private zzncg:I

.field private zznch:Z

.field private final zznci:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzedk;",
            ">;"
        }
    .end annotation
.end field

.field private final zzncj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zznck:Lcom/google/android/gms/internal/zzejr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzejr;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncd:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zznce:Ljava/util/Stack;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncf:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzejp;->zznch:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zznci:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncj:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejp;->zznck:Lcom/google/android/gms/internal/zzejr;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzejp;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejp;->zzcad()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzejp;Lcom/google/android/gms/internal/zzejg;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzejp;->zzn(Lcom/google/android/gms/internal/zzejg;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzejp;Lcom/google/android/gms/internal/zzejy;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzejp;->zzb(Lcom/google/android/gms/internal/zzejy;)V

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzejg;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejg;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzelt;->zzqf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzejp;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zznci:Ljava/util/List;

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzejy;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzejy",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejp;->zzcab()V

    iget v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncg:I

    iput v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncf:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncd:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/android/gms/internal/zzekf;->zzndd:Lcom/google/android/gms/internal/zzekf;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzejy;->zza(Lcom/google/android/gms/internal/zzekf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzejp;->zznch:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zznck:Lcom/google/android/gms/internal/zzejr;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzejr;->zze(Lcom/google/android/gms/internal/zzejp;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejp;->zzcae()V

    :cond_20
    return-void
.end method

.method private final zzbzy()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncd:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzejp;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncj:Ljava/util/List;

    return-object v0
.end method

.method private final zzcab()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejp;->zzbzy()Z

    move-result v0

    if-nez v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncd:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncd:Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncg:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzejp;->zzgt(I)Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzejg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejp;->zzncd:Ljava/lang/StringBuilder;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzejp;->zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzejg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncd:Ljava/lang/StringBuilder;

    const-string v2, ":("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzejp;->zznch:Z

    :cond_3a
    return-void
.end method

.method private final zzcac()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncg:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncg:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejp;->zzbzy()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncd:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzejp;->zznch:Z

    return-void
.end method

.method private final zzcad()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncg:I

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Can\'t finish hashing in the middle processing a child"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzelt;->zzb(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejp;->zzbzy()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejp;->zzcae()V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncj:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private final zzcae()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejp;->zzbzy()Z

    move-result v0

    const-string v1, "Can\'t end range without starting a range!"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzelt;->zzb(ZLjava/lang/String;)V

    const/4 v0, 0x0

    :goto_a
    iget v1, p0, Lcom/google/android/gms/internal/zzejp;->zzncg:I

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejp;->zzncd:Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncd:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncf:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzejp;->zzgt(I)Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejp;->zzncd:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzelt;->zzqe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejp;->zzncj:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejp;->zznci:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncd:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzejp;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejp;->zzcac()V

    return-void
.end method

.method private final zzgt(I)Lcom/google/android/gms/internal/zzedk;
    .registers 5

    new-array v2, p1, [Lcom/google/android/gms/internal/zzejg;

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, p1, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zznce:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzejg;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/zzedk;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzedk;-><init>([Lcom/google/android/gms/internal/zzejg;)V

    return-object v0
.end method

.method private final zzn(Lcom/google/android/gms/internal/zzejg;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejp;->zzcab()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzejp;->zznch:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncd:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncd:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzejp;->zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzejg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncd:Ljava/lang/StringBuilder;

    const-string v1, ":("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncg:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejp;->zznce:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ne v0, v1, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zznce:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :goto_29
    iget v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncg:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzejp;->zznch:Z

    return-void

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zznce:Ljava/util/Stack;

    iget v1, p0, Lcom/google/android/gms/internal/zzejp;->zzncg:I

    invoke-virtual {v0, v1, p1}, Ljava/util/Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_29
.end method


# virtual methods
.method public final zzbzz()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncd:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public final zzcaa()Lcom/google/android/gms/internal/zzedk;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzejp;->zzncg:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzejp;->zzgt(I)Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    return-object v0
.end method
