.class public final Lcom/google/android/gms/internal/zzcgz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/zzcgx;",
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
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfn;->zzd(Landroid/os/Parcel;)I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_1f

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    packed-switch v3, :pswitch_data_28

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzbfn;->zzb(Landroid/os/Parcel;I)V

    goto :goto_5

    :pswitch_1a
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzbfn;->zzs(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_5

    :cond_1f
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbfn;->zzaf(Landroid/os/Parcel;I)V

    new-instance v1, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :pswitch_data_28
    .packed-switch 0x2
        :pswitch_1a
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/internal/zzcgx;

    return-object v0
.end method
