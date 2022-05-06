.class public final Lcom/google/android/gms/internal/zzclt;
.super Lcom/google/android/gms/internal/zzfjm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfjm",
        "<",
        "Lcom/google/android/gms/internal/zzclt;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzjkb:[Lcom/google/android/gms/internal/zzclt;


# instance fields
.field public zzjkc:Lcom/google/android/gms/internal/zzclw;

.field public zzjkd:Lcom/google/android/gms/internal/zzclu;

.field public zzjke:Ljava/lang/Boolean;

.field public zzjkf:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfjm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjke:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzclt;->zzpfd:I

    return-void
.end method

.method public static zzbbc()[Lcom/google/android/gms/internal/zzclt;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzclt;->zzjkb:[Lcom/google/android/gms/internal/zzclt;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzfjq;->zzpnk:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzclt;->zzjkb:[Lcom/google/android/gms/internal/zzclt;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzclt;

    sput-object v0, Lcom/google/android/gms/internal/zzclt;->zzjkb:[Lcom/google/android/gms/internal/zzclt;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzclt;->zzjkb:[Lcom/google/android/gms/internal/zzclt;

    return-object v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/zzclt;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzclt;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    if-eqz v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzclw;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    if-nez v2, :cond_2d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    if-eqz v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzclu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_39
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzjke:Ljava/lang/Boolean;

    if-nez v2, :cond_43

    iget-object v2, p1, Lcom/google/android/gms/internal/zzclt;->zzjke:Ljava/lang/Boolean;

    if-eqz v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_43
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzjke:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzclt;->zzjke:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_4f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    if-nez v2, :cond_59

    iget-object v2, p1, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    if-eqz v2, :cond_65

    move v0, v1

    goto :goto_4

    :cond_59
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    move v0, v1

    goto :goto_4

    :cond_65
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfjo;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7f

    :cond_71
    iget-object v2, p1, Lcom/google/android/gms/internal/zzclt;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/zzclt;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfjo;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_7f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzclt;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfjo;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_4
.end method

.method public final hashCode()I
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_3f

    move v0, v1

    :goto_16
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_44

    move v0, v1

    :goto_1e
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjke:Ljava/lang/Boolean;

    if-nez v0, :cond_49

    move v0, v1

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    if-nez v0, :cond_50

    move v0, v1

    :goto_2e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfjo;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_57

    :cond_3d
    :goto_3d
    add-int/2addr v0, v1

    return v0

    :cond_3f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzclw;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_44
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzclu;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjke:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_26

    :cond_50
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2e

    :cond_57
    iget-object v1, p0, Lcom/google/android/gms/internal/zzclt;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfjo;->hashCode()I

    move-result v1

    goto :goto_3d
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzfjj;)Lcom/google/android/gms/internal/zzfjs;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvt()I

    move-result v0

    sparse-switch v0, :sswitch_data_42

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzfjm;->zza(Lcom/google/android/gms/internal/zzfjj;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    if-nez v0, :cond_19

    new-instance v0, Lcom/google/android/gms/internal/zzclw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzclw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzfjj;->zza(Lcom/google/android/gms/internal/zzfjs;)V

    goto :goto_0

    :sswitch_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    if-nez v0, :cond_2a

    new-instance v0, Lcom/google/android/gms/internal/zzclu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzclu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzfjj;->zza(Lcom/google/android/gms/internal/zzfjs;)V

    goto :goto_0

    :sswitch_30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvz()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjke:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1f
        0x18 -> :sswitch_30
        0x22 -> :sswitch_3b
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfjk;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zza(ILcom/google/android/gms/internal/zzfjs;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zza(ILcom/google/android/gms/internal/zzfjs;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjke:Ljava/lang/Boolean;

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclt;->zzjke:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzl(IZ)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    if-eqz v0, :cond_2c

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_2c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzfjm;->zza(Lcom/google/android/gms/internal/zzfjk;)V

    return-void
.end method

.method protected final zzq()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzfjm;->zzq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzb(ILcom/google/android/gms/internal/zzfjs;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzb(ILcom/google/android/gms/internal/zzfjs;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzclt;->zzjke:Ljava/lang/Boolean;

    if-eqz v1, :cond_2d

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzjke:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfjk;->zzlg(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    if-eqz v1, :cond_39

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_39
    return v0
.end method
