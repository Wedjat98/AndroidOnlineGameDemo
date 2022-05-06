.class public final Lcom/google/android/gms/internal/zzclu;
.super Lcom/google/android/gms/internal/zzfjm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfjm",
        "<",
        "Lcom/google/android/gms/internal/zzclu;",
        ">;"
    }
.end annotation


# instance fields
.field public zzjkg:Ljava/lang/Integer;

.field public zzjkh:Ljava/lang/Boolean;

.field public zzjki:Ljava/lang/String;

.field public zzjkj:Ljava/lang/String;

.field public zzjkk:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfjm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkh:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjki:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzclu;->zzpfd:I

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/zzfjj;)Lcom/google/android/gms/internal/zzclu;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvt()I

    move-result v0

    sparse-switch v0, :sswitch_data_64

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzfjm;->zza(Lcom/google/android/gms/internal/zzfjj;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->getPosition()I

    move-result v1

    :try_start_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcwi()I

    move-result v2

    packed-switch v2, :pswitch_data_7e

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is not a valid enum ComparisonType"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_34} :catch_34

    :catch_34
    move-exception v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzfjj;->zzmg(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzfjm;->zza(Lcom/google/android/gms/internal/zzfjj;I)Z

    goto :goto_0

    :pswitch_3c
    :try_start_3c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_42} :catch_34

    goto :goto_0

    :sswitch_43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvz()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkh:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjki:Ljava/lang/String;

    goto :goto_0

    :sswitch_55
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkj:Ljava/lang/String;

    goto :goto_0

    :sswitch_5c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkk:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_43
        0x1a -> :sswitch_4e
        0x22 -> :sswitch_55
        0x2a -> :sswitch_5c
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzclu;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzclu;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzjkh:Ljava/lang/Boolean;

    if-nez v2, :cond_2d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzclu;->zzjkh:Ljava/lang/Boolean;

    if-eqz v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzjkh:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzclu;->zzjkh:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_39
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzjki:Ljava/lang/String;

    if-nez v2, :cond_43

    iget-object v2, p1, Lcom/google/android/gms/internal/zzclu;->zzjki:Ljava/lang/String;

    if-eqz v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_43
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzjki:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzclu;->zzjki:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_4f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzjkj:Ljava/lang/String;

    if-nez v2, :cond_59

    iget-object v2, p1, Lcom/google/android/gms/internal/zzclu;->zzjkj:Ljava/lang/String;

    if-eqz v2, :cond_65

    move v0, v1

    goto :goto_4

    :cond_59
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzjkj:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzclu;->zzjkj:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    move v0, v1

    goto :goto_4

    :cond_65
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzjkk:Ljava/lang/String;

    if-nez v2, :cond_6f

    iget-object v2, p1, Lcom/google/android/gms/internal/zzclu;->zzjkk:Ljava/lang/String;

    if-eqz v2, :cond_7b

    move v0, v1

    goto :goto_4

    :cond_6f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzjkk:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzclu;->zzjkk:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    move v0, v1

    goto :goto_4

    :cond_7b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    if-eqz v2, :cond_87

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfjo;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_96

    :cond_87
    iget-object v2, p1, Lcom/google/android/gms/internal/zzclu;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/zzclu;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfjo;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto/16 :goto_4

    :cond_96
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzclu;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfjo;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_4
.end method

.method public final hashCode()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    if-nez v0, :cond_47

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkh:Ljava/lang/Boolean;

    if-nez v0, :cond_4e

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjki:Ljava/lang/String;

    if-nez v0, :cond_55

    move v0, v1

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkj:Ljava/lang/String;

    if-nez v0, :cond_5c

    move v0, v1

    :goto_2e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkk:Ljava/lang/String;

    if-nez v0, :cond_63

    move v0, v1

    :goto_36
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfjo;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6a

    :cond_45
    :goto_45
    add-int/2addr v0, v1

    return v0

    :cond_47
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_16

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkh:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjki:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_26

    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkj:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2e

    :cond_63
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkk:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_36

    :cond_6a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzclu;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfjo;->hashCode()I

    move-result v1

    goto :goto_45
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzfjj;)Lcom/google/android/gms/internal/zzfjs;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzclu;->zzh(Lcom/google/android/gms/internal/zzfjj;)Lcom/google/android/gms/internal/zzclu;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfjk;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzaa(II)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkh:Ljava/lang/Boolean;

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclu;->zzjkh:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzl(IZ)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjki:Ljava/lang/String;

    if-eqz v0, :cond_26

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclu;->zzjki:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkj:Ljava/lang/String;

    if-eqz v0, :cond_30

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclu;->zzjkj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzjkk:Ljava/lang/String;

    if-eqz v0, :cond_3a

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclu;->zzjkk:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_3a
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzfjm;->zza(Lcom/google/android/gms/internal/zzfjk;)V

    return-void
.end method

.method protected final zzq()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzfjm;->zzq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzad(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzclu;->zzjkh:Ljava/lang/Boolean;

    if-eqz v1, :cond_25

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzjkh:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfjk;->zzlg(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_25
    iget-object v1, p0, Lcom/google/android/gms/internal/zzclu;->zzjki:Ljava/lang/String;

    if-eqz v1, :cond_31

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzjki:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_31
    iget-object v1, p0, Lcom/google/android/gms/internal/zzclu;->zzjkj:Ljava/lang/String;

    if-eqz v1, :cond_3d

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzjkj:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzclu;->zzjkk:Ljava/lang/String;

    if-eqz v1, :cond_49

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclu;->zzjkk:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_49
    return v0
.end method
