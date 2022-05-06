.class public final Lcom/google/android/gms/internal/zzcgj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/zzcgi;",
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
    .registers 27

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbfn;->zzd(Landroid/os/Parcel;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide/32 v15, -0x80000000

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_9d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v24, 0xffff

    and-int v24, v24, v3

    packed-switch v24, :pswitch_data_a8

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbfn;->zzb(Landroid/os/Parcel;I)V

    goto :goto_1c

    :pswitch_34
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbfn;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1c

    :pswitch_3b
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbfn;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1c

    :pswitch_42
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbfn;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1c

    :pswitch_49
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbfn;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1c

    :pswitch_50
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbfn;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v8

    goto :goto_1c

    :pswitch_57
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbfn;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v10

    goto :goto_1c

    :pswitch_5e
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbfn;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1c

    :pswitch_65
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbfn;->zzc(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_1c

    :pswitch_6c
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbfn;->zzc(Landroid/os/Parcel;I)Z

    move-result v14

    goto :goto_1c

    :pswitch_73
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbfn;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v15

    goto :goto_1c

    :pswitch_7a
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbfn;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    goto :goto_1c

    :pswitch_81
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbfn;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v18

    goto :goto_1c

    :pswitch_88
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbfn;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v20

    goto :goto_1c

    :pswitch_8f
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbfn;->zzg(Landroid/os/Parcel;I)I

    move-result v22

    goto :goto_1c

    :pswitch_96
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbfn;->zzc(Landroid/os/Parcel;I)Z

    move-result v23

    goto :goto_1c

    :cond_9d
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbfn;->zzaf(Landroid/os/Parcel;I)V

    new-instance v3, Lcom/google/android/gms/internal/zzcgi;

    invoke-direct/range {v3 .. v23}, Lcom/google/android/gms/internal/zzcgi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZ)V

    return-object v3

    :pswitch_data_a8
    .packed-switch 0x2
        :pswitch_34
        :pswitch_3b
        :pswitch_42
        :pswitch_49
        :pswitch_50
        :pswitch_57
        :pswitch_5e
        :pswitch_65
        :pswitch_6c
        :pswitch_73
        :pswitch_7a
        :pswitch_81
        :pswitch_88
        :pswitch_8f
        :pswitch_96
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/internal/zzcgi;

    return-object v0
.end method
