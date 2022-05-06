.class public final Lcom/google/firebase/database/connection/idl/zzc;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/firebase/database/connection/idl/zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzmnr:Z

.field final zzmnt:Ljava/lang/String;

.field final zzmnu:Ljava/lang/String;

.field final zzmqj:Lcom/google/firebase/database/connection/idl/zzi;

.field final zzmqk:I

.field final zzmql:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzmqm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/zze;

    invoke-direct {v0}, Lcom/google/firebase/database/connection/idl/zze;-><init>()V

    sput-object v0, Lcom/google/firebase/database/connection/idl/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzebk;Lcom/google/android/gms/internal/zzeje;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzebk;",
            "Lcom/google/android/gms/internal/zzeje;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    sget-object v0, Lcom/google/firebase/database/connection/idl/zzd;->zzmqn:[I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeje;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    const/4 v0, 0x0

    :goto_f
    new-instance v1, Lcom/google/firebase/database/connection/idl/zzi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebk;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebk;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebk;->isSecure()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/database/connection/idl/zzi;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqj:Lcom/google/firebase/database/connection/idl/zzi;

    iput v0, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqk:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmql:Ljava/util/List;

    iput-boolean p4, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnr:Z

    iput-object p5, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqm:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnt:Ljava/lang/String;

    invoke-virtual {p7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnu:Ljava/lang/String;

    return-void

    :pswitch_34
    const/4 v0, 0x1

    goto :goto_f

    :pswitch_36
    const/4 v0, 0x2

    goto :goto_f

    :pswitch_38
    const/4 v0, 0x3

    goto :goto_f

    :pswitch_3a
    const/4 v0, 0x4

    goto :goto_f

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_34
        :pswitch_36
        :pswitch_38
        :pswitch_3a
    .end packed-switch
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/idl/zzi;ILjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/connection/idl/zzi;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqj:Lcom/google/firebase/database/connection/idl/zzi;

    iput p2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqk:I

    iput-object p3, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmql:Ljava/util/List;

    iput-boolean p4, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnr:Z

    iput-object p5, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqm:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnt:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqj:Lcom/google/firebase/database/connection/idl/zzi;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqk:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmql:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zzb(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnr:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmqm:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnt:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzmnu:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
