.class public final Lcom/google/android/gms/internal/zzcln;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzcln;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final name:Ljava/lang/String;

.field private versionCode:I

.field private zzgcc:Ljava/lang/String;

.field public final zziyf:Ljava/lang/String;

.field public final zzjji:J

.field private zzjjj:Ljava/lang/Long;

.field private zzjjk:Ljava/lang/Float;

.field private zzjjl:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzclo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzclo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcln;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .registers 13

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzcln;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcln;->zzjji:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcln;->zzjjj:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcln;->zzjjk:Ljava/lang/Float;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_22

    if-eqz p6, :cond_1b

    invoke-virtual {p6}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_1b
    iput-object v0, p0, Lcom/google/android/gms/internal/zzcln;->zzjjl:Ljava/lang/Double;

    :goto_1d
    iput-object p7, p0, Lcom/google/android/gms/internal/zzcln;->zzgcc:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzcln;->zziyf:Ljava/lang/String;

    return-void

    :cond_22
    iput-object p9, p0, Lcom/google/android/gms/internal/zzcln;->zzjjl:Ljava/lang/Double;

    goto :goto_1d
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzclp;)V
    .registers 8

    iget-object v1, p1, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzclp;->zzjjm:J

    iget-object v4, p1, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/gms/internal/zzclp;->mOrigin:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzcln;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzcln;->zzjji:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcln;->zziyf:Ljava/lang/String;

    if-nez p4, :cond_1b

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcln;->zzjjj:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcln;->zzjjk:Ljava/lang/Float;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcln;->zzjjl:Ljava/lang/Double;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcln;->zzgcc:Ljava/lang/String;

    :goto_1a
    return-void

    :cond_1b
    instance-of v0, p4, Ljava/lang/Long;

    if-eqz v0, :cond_2a

    check-cast p4, Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcln;->zzjjj:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcln;->zzjjk:Ljava/lang/Float;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcln;->zzjjl:Ljava/lang/Double;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcln;->zzgcc:Ljava/lang/String;

    goto :goto_1a

    :cond_2a
    instance-of v0, p4, Ljava/lang/String;

    if-eqz v0, :cond_39

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcln;->zzjjj:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcln;->zzjjk:Ljava/lang/Float;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcln;->zzjjl:Ljava/lang/Double;

    check-cast p4, Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcln;->zzgcc:Ljava/lang/String;

    goto :goto_1a

    :cond_39
    instance-of v0, p4, Ljava/lang/Double;

    if-eqz v0, :cond_48

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcln;->zzjjj:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcln;->zzjjk:Ljava/lang/Float;

    check-cast p4, Ljava/lang/Double;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcln;->zzjjl:Ljava/lang/Double;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcln;->zzgcc:Ljava/lang/String;

    goto :goto_1a

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User attribute given of un-supported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcln;->zzjjj:Ljava/lang/Long;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcln;->zzjjj:Ljava/lang/Long;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcln;->zzjjl:Ljava/lang/Double;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcln;->zzjjl:Ljava/lang/Double;

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcln;->zzgcc:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcln;->zzgcc:Ljava/lang/String;

    goto :goto_6

    :cond_15
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzcln;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcln;->zzjji:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcln;->zzjjj:Ljava/lang/Long;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/Float;Z)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcln;->zzgcc:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcln;->zziyf:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcln;->zzjjl:Ljava/lang/Double;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/Double;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
