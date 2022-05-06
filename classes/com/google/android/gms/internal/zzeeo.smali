.class final Lcom/google/android/gms/internal/zzeeo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gms/internal/zzeeo;",
        ">;"
    }
.end annotation


# instance fields
.field private retryCount:I

.field private zzmks:Lcom/google/android/gms/internal/zzedk;

.field private zzmuh:Lcom/google/firebase/database/Transaction$Handler;

.field private zzmui:Lcom/google/firebase/database/ValueEventListener;

.field private zzmuj:I

.field private zzmuk:J

.field private zzmul:Z

.field private zzmum:Lcom/google/firebase/database/DatabaseError;

.field private zzmun:J

.field private zzmuo:Lcom/google/android/gms/internal/zzekd;

.field private zzmup:Lcom/google/android/gms/internal/zzekd;

.field private zzmuq:Lcom/google/android/gms/internal/zzekd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;IZJ)V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuh:Lcom/google/firebase/database/Transaction$Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeeo;->zzmui:Lcom/google/firebase/database/ValueEventListener;

    iput p4, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuj:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzeeo;->retryCount:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzeeo;->zzmul:Z

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuk:J

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmum:Lcom/google/firebase/database/DatabaseError;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuo:Lcom/google/android/gms/internal/zzekd;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmup:Lcom/google/android/gms/internal/zzekd;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuq:Lcom/google/android/gms/internal/zzekd;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;IZJLcom/google/android/gms/internal/zzedo;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/internal/zzeeo;-><init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;IZJ)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeeo;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuj:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeeo;J)J
    .registers 4

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmun:J

    return-wide p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/android/gms/internal/zzekd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuo:Lcom/google/android/gms/internal/zzekd;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeeo;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuo:Lcom/google/android/gms/internal/zzekd;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeeo;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmum:Lcom/google/firebase/database/DatabaseError;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzeeo;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmun:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzeeo;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmup:Lcom/google/android/gms/internal/zzekd;

    return-object p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzeeo;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuj:I

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzeeo;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuq:Lcom/google/android/gms/internal/zzekd;

    return-object p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzeeo;)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzeeo;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzeeo;->retryCount:I

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/android/gms/internal/zzedk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmks:Lcom/google/android/gms/internal/zzedk;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/android/gms/internal/zzekd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmup:Lcom/google/android/gms/internal/zzekd;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/android/gms/internal/zzekd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuq:Lcom/google/android/gms/internal/zzekd;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/firebase/database/Transaction$Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuh:Lcom/google/firebase/database/Transaction$Handler;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/firebase/database/ValueEventListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmui:Lcom/google/firebase/database/ValueEventListener;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/firebase/database/DatabaseError;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmum:Lcom/google/firebase/database/DatabaseError;

    return-object v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzeeo;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzeeo;->retryCount:I

    return v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzeeo;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmul:Z

    return v0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 6

    check-cast p1, Lcom/google/android/gms/internal/zzeeo;

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuk:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzeeo;->zzmuk:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuk:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzeeo;->zzmuk:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_b

    :cond_16
    const/4 v0, 0x1

    goto :goto_b
.end method
