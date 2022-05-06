.class public final Lcom/google/android/gms/plus/internal/zzo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/plus/internal/zzn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 15

    const/4 v10, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfn;->zzd(Landroid/os/Parcel;)I

    move-result v11

    const/4 v1, 0x0

    move-object v9, v10

    move-object v8, v10

    move-object v7, v10

    move-object v6, v10

    move-object v5, v10

    move-object v4, v10

    move-object v3, v10

    move-object v2, v10

    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v11, :cond_5a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v12, 0xffff

    and-int/2addr v12, v0

    sparse-switch v12, :sswitch_data_64

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfn;->zzb(Landroid/os/Parcel;I)V

    goto :goto_e

    :sswitch_23
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfn;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :sswitch_28
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfn;->zzaa(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :sswitch_2d
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfn;->zzaa(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :sswitch_32
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfn;->zzaa(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v5

    goto :goto_e

    :sswitch_37
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfn;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    :sswitch_3c
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfn;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_e

    :sswitch_41
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfn;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :sswitch_46
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfn;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_e

    :sswitch_4b
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfn;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_e

    :sswitch_50
    sget-object v10, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v10}, Lcom/google/android/gms/internal/zzbfn;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    move-object v10, v0

    goto :goto_e

    :cond_5a
    invoke-static {p1, v11}, Lcom/google/android/gms/internal/zzbfn;->zzaf(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/plus/internal/zzn;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/plus/internal/zzn;-><init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V

    return-object v0

    nop

    :sswitch_data_64
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_28
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_32
        0x5 -> :sswitch_37
        0x6 -> :sswitch_3c
        0x7 -> :sswitch_41
        0x8 -> :sswitch_4b
        0x9 -> :sswitch_50
        0x3e8 -> :sswitch_46
    .end sparse-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/plus/internal/zzn;

    return-object v0
.end method
